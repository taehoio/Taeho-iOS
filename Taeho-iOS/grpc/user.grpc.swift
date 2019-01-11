//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: user.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf
import RxSwift

internal protocol User_UserRegisterCall: ClientCallUnary {}

fileprivate final class User_UserRegisterCallBase: ClientCallUnaryBase<User_RegisterRequest, User_RegisterResponse>, User_UserRegisterCall {
  override class var method: String { return "/user.User/Register" }
}

internal protocol User_UserLogInCall: ClientCallUnary {}

fileprivate final class User_UserLogInCallBase: ClientCallUnaryBase<User_LogInRequest, User_LogInResponse>, User_UserLogInCall {
  override class var method: String { return "/user.User/LogIn" }
}

internal protocol User_UserSignInWithGoogleCall: ClientCallUnary {}

fileprivate final class User_UserSignInWithGoogleCallBase: ClientCallUnaryBase<User_SignInWithGoogleRequest, User_SignInWithGoogleResponse>, User_UserSignInWithGoogleCall {
  override class var method: String { return "/user.User/SignInWithGoogle" }
}

internal protocol User_UserGetCall: ClientCallUnary {}

fileprivate final class User_UserGetCallBase: ClientCallUnaryBase<User_GetRequest, User_GetResponse>, User_UserGetCall {
  override class var method: String { return "/user.User/Get" }
}


/// Instantiate User_UserServiceClient, then call methods of this protocol to make API calls.
internal protocol User_UserService: ServiceClient {
  /// Synchronous. Unary.
  func register(_ request: User_RegisterRequest) throws -> User_RegisterResponse
  /// Asynchronous. Unary.
  func register(_ request: User_RegisterRequest, completion: @escaping (User_RegisterResponse?, CallResult) -> Void) throws -> User_UserRegisterCall

  /// Synchronous. Unary.
  func logIn(_ request: User_LogInRequest) throws -> User_LogInResponse
  /// Asynchronous. Unary.
  func logIn(_ request: User_LogInRequest, completion: @escaping (User_LogInResponse?, CallResult) -> Void) throws -> User_UserLogInCall

  /// Synchronous. Unary.
  func signInWithGoogle(_ request: User_SignInWithGoogleRequest) throws -> User_SignInWithGoogleResponse
  /// Asynchronous. Unary.
  func signInWithGoogle(_ request: User_SignInWithGoogleRequest, completion: @escaping (User_SignInWithGoogleResponse?, CallResult) -> Void) throws -> User_UserSignInWithGoogleCall

  /// Synchronous. Unary.
  func get(_ request: User_GetRequest) throws -> User_GetResponse
  /// Asynchronous. Unary.
  func get(_ request: User_GetRequest, completion: @escaping (User_GetResponse?, CallResult) -> Void) throws -> User_UserGetCall

}

internal final class User_UserServiceClient: ServiceClientBase, User_UserService {
  /// Synchronous. Unary.
  internal func register(_ request: User_RegisterRequest) throws -> User_RegisterResponse {
    return try User_UserRegisterCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func register(_ request: User_RegisterRequest, completion: @escaping (User_RegisterResponse?, CallResult) -> Void) throws -> User_UserRegisterCall {
    return try User_UserRegisterCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func logIn(_ request: User_LogInRequest) throws -> User_LogInResponse {
    return try User_UserLogInCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func logIn(_ request: User_LogInRequest, completion: @escaping (User_LogInResponse?, CallResult) -> Void) throws -> User_UserLogInCall {
    return try User_UserLogInCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func signInWithGoogle(_ request: User_SignInWithGoogleRequest) throws -> User_SignInWithGoogleResponse {
    return try User_UserSignInWithGoogleCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func signInWithGoogle(_ request: User_SignInWithGoogleRequest, completion: @escaping (User_SignInWithGoogleResponse?, CallResult) -> Void) throws -> User_UserSignInWithGoogleCall {
    return try User_UserSignInWithGoogleCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func get(_ request: User_GetRequest) throws -> User_GetResponse {
    return try User_UserGetCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func get(_ request: User_GetRequest, completion: @escaping (User_GetResponse?, CallResult) -> Void) throws -> User_UserGetCall {
    return try User_UserGetCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

internal extension User_UserServiceClient {
  /// RxSwift. Unary.
  internal func register(_ request: User_RegisterRequest, metadata customMetadata: Metadata?) -> Observable<User_RegisterResponse> {
    return Observable.create { observer in
      _ = try? User_UserRegisterCallBase(self.channel)
        .start(request: request, metadata: customMetadata ?? self.metadata, completion: { resp, result in
          guard let resp: User_RegisterResponse = resp else {
            observer.onError(RPCError.callError(result))
            return
          }
          observer.onNext(resp)
        })
      return Disposables.create()
    }
  }

  /// RxSwift. Unary.
  internal func logIn(_ request: User_LogInRequest, metadata customMetadata: Metadata?) -> Observable<User_LogInResponse> {
    return Observable.create { observer in
      _ = try? User_UserLogInCallBase(self.channel)
        .start(request: request, metadata: customMetadata ?? self.metadata, completion: { resp, result in
          guard let resp: User_LogInResponse = resp else {
            observer.onError(RPCError.callError(result))
            return
          }
          observer.onNext(resp)
        })
      return Disposables.create()
    }
  }

  /// RxSwift. Unary.
  internal func signInWithGoogle(_ request: User_SignInWithGoogleRequest, metadata customMetadata: Metadata?) -> Observable<User_SignInWithGoogleResponse> {
    return Observable.create { observer in
      _ = try? User_UserSignInWithGoogleCallBase(self.channel)
        .start(request: request, metadata: customMetadata ?? self.metadata, completion: { resp, result in
          guard let resp: User_SignInWithGoogleResponse = resp else {
            observer.onError(RPCError.callError(result))
            return
          }
          observer.onNext(resp)
        })
      return Disposables.create()
    }
  }

  /// RxSwift. Unary.
  internal func get(_ request: User_GetRequest, metadata customMetadata: Metadata?) -> Observable<User_GetResponse> {
    return Observable.create { observer in
      _ = try? User_UserGetCallBase(self.channel)
        .start(request: request, metadata: customMetadata ?? self.metadata, completion: { resp, result in
          guard let resp: User_GetResponse = resp else {
            observer.onError(RPCError.callError(result))
            return
          }
          observer.onNext(resp)
        })
      return Disposables.create()
    }
  }

}
