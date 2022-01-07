; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_OpenSocks.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_OpenSocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_10__ = type { i64* }
%struct.sockaddr_in = type { i16, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.hostent = type { i64, i64* }
%struct.sockaddr = type { i32 }

@qfalse = common dso_local global i8* null, align 8
@usingSocks = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Opening connection to SOCKS server.\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@socks_socket = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"WARNING: NET_OpenSocks: socket: %s\0A\00", align 1
@net_socksServer = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: NET_OpenSocks: gethostbyname: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\0A\00", align 1
@net_socksPort = common dso_local global %struct.TYPE_9__* null, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"NET_OpenSocks: connect: %s\0A\00", align 1
@net_socksUsername = common dso_local global %struct.TYPE_7__* null, align 8
@net_socksPassword = common dso_local global %struct.TYPE_10__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"NET_OpenSocks: send: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"NET_OpenSocks: recv: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"NET_OpenSocks: bad response\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"NET_OpenSocks: request denied\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"NET_OpenSocks: authentication failed\0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"NET_OpenSocks: request denied: %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"NET_OpenSocks: relay address is not IPV4: %i\0A\00", align 1
@socksRelayAddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_OpenSocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i8*, i8** @qfalse, align 8
  store i8* %11, i8** @usingSocks, align 8
  %12 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @AF_INET, align 8
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  %16 = call i32 @socket(i64 %13, i32 %14, i32 %15)
  store i32 %16, i32* @socks_socket, align 4
  %17 = load i32, i32* @INVALID_SOCKET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = call i32 (...) @WSAGetLastError()
  store i32 %20, i32* %4, align 4
  %21 = call zeroext i8 (...) @NET_ErrorString()
  %22 = zext i8 %21 to i32
  %23 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %313

24:                                               ; preds = %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_socksServer, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hostent* @gethostbyname(i32 %27)
  store %struct.hostent* %28, %struct.hostent** %5, align 8
  %29 = load %struct.hostent*, %struct.hostent** %5, align 8
  %30 = icmp eq %struct.hostent* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = call i32 (...) @WSAGetLastError()
  store i32 %32, i32* %4, align 4
  %33 = call zeroext i8 (...) @NET_ErrorString()
  %34 = zext i8 %33 to i32
  %35 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %313

36:                                               ; preds = %24
  %37 = load %struct.hostent*, %struct.hostent** %5, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %313

44:                                               ; preds = %36
  %45 = load i64, i64* @AF_INET, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 3
  store i64 %45, i64* %46, align 8
  %47 = load %struct.hostent*, %struct.hostent** %5, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @net_socksPort, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i16
  %60 = call i8* @htons(i16 signext %59)
  %61 = ptrtoint i8* %60 to i16
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 %61, i16* %62, align 8
  %63 = load i32, i32* @socks_socket, align 4
  %64 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %65 = call i32 @connect(i32 %63, %struct.sockaddr* %64, i32 24)
  %66 = load i32, i32* @SOCKET_ERROR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %44
  %69 = call i32 (...) @WSAGetLastError()
  store i32 %69, i32* %4, align 4
  %70 = call zeroext i8 (...) @NET_ErrorString()
  %71 = zext i8 %70 to i32
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %313

73:                                               ; preds = %44
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %73
  %86 = load i8*, i8** @qtrue, align 8
  store i8* %86, i8** %7, align 8
  br label %89

87:                                               ; preds = %79
  %88 = load i8*, i8** @qfalse, align 8
  store i8* %88, i8** %7, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8 5, i8* %90, align 16
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  store i8 2, i8* %94, align 1
  store i32 4, i32* %6, align 4
  br label %97

95:                                               ; preds = %89
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  store i8 1, i8* %96, align 1
  store i32 3, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %98, align 2
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 2
  store i8 2, i8* %102, align 2
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i32, i32* @socks_socket, align 4
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @send(i32 %104, i8* %105, i32 %106, i32 0)
  %108 = load i32, i32* @SOCKET_ERROR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = call i32 (...) @WSAGetLastError()
  store i32 %111, i32* %4, align 4
  %112 = call zeroext i8 (...) @NET_ErrorString()
  %113 = zext i8 %112 to i32
  %114 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %313

115:                                              ; preds = %103
  %116 = load i32, i32* @socks_socket, align 4
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %118 = call i32 @recv(i32 %116, i8* %117, i32 64, i32 0)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @SOCKET_ERROR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = call i32 (...) @WSAGetLastError()
  store i32 %123, i32* %4, align 4
  %124 = call zeroext i8 (...) @NET_ErrorString()
  %125 = zext i8 %124 to i32
  %126 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  br label %313

127:                                              ; preds = %115
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 2
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %132 = load i8, i8* %131, align 16
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 5
  br i1 %134, label %135, label %137

135:                                              ; preds = %130, %127
  %136 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %313

137:                                              ; preds = %130
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  switch i32 %140, label %143 [
    i32 0, label %141
    i32 2, label %142
  ]

141:                                              ; preds = %137
  br label %145

142:                                              ; preds = %137
  br label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %313

145:                                              ; preds = %142, %141
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %236

150:                                              ; preds = %145
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = call i32 @strlen(i64* %153)
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = call i32 @strlen(i64* %157)
  store i32 %158, i32* %10, align 4
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8 1, i8* %159, align 16
  %160 = load i32, i32* %9, align 4
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  store i8 %161, i8* %162, align 1
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %150
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 2
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @memcpy(i8* %166, i64* %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %150
  %173 = load i32, i32* %10, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 2, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %177
  store i8 %174, i8* %178, align 1
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %172
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 3, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %184
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @memcpy(i8* %185, i64* %188, i32 %189)
  br label %191

191:                                              ; preds = %181, %172
  %192 = load i32, i32* @socks_socket, align 4
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 3, %194
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %195, %196
  %198 = call i32 @send(i32 %192, i8* %193, i32 %197, i32 0)
  %199 = load i32, i32* @SOCKET_ERROR, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %191
  %202 = call i32 (...) @WSAGetLastError()
  store i32 %202, i32* %4, align 4
  %203 = call zeroext i8 (...) @NET_ErrorString()
  %204 = zext i8 %203 to i32
  %205 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %313

206:                                              ; preds = %191
  %207 = load i32, i32* @socks_socket, align 4
  %208 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %209 = call i32 @recv(i32 %207, i8* %208, i32 64, i32 0)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @SOCKET_ERROR, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = call i32 (...) @WSAGetLastError()
  store i32 %214, i32* %4, align 4
  %215 = call zeroext i8 (...) @NET_ErrorString()
  %216 = zext i8 %215 to i32
  %217 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  br label %313

218:                                              ; preds = %206
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 2
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %223 = load i8, i8* %222, align 16
  %224 = zext i8 %223 to i32
  %225 = icmp ne i32 %224, 1
  br i1 %225, label %226, label %228

226:                                              ; preds = %221, %218
  %227 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %313

228:                                              ; preds = %221
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %313

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %145
  %237 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8 5, i8* %237, align 16
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  store i8 3, i8* %238, align 1
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %239, align 2
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 3
  store i8 1, i8* %240, align 1
  %241 = load i32, i32* @INADDR_ANY, align 4
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 4
  %243 = bitcast i8* %242 to i32*
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %2, align 4
  %245 = trunc i32 %244 to i16
  %246 = call i8* @htons(i16 signext %245)
  %247 = ptrtoint i8* %246 to i16
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 8
  %249 = bitcast i8* %248 to i16*
  store i16 %247, i16* %249, align 8
  %250 = load i32, i32* @socks_socket, align 4
  %251 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %252 = call i32 @send(i32 %250, i8* %251, i32 10, i32 0)
  %253 = load i32, i32* @SOCKET_ERROR, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %236
  %256 = call i32 (...) @WSAGetLastError()
  store i32 %256, i32* %4, align 4
  %257 = call zeroext i8 (...) @NET_ErrorString()
  %258 = zext i8 %257 to i32
  %259 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %258)
  br label %313

260:                                              ; preds = %236
  %261 = load i32, i32* @socks_socket, align 4
  %262 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %263 = call i32 @recv(i32 %261, i8* %262, i32 64, i32 0)
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @SOCKET_ERROR, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = call i32 (...) @WSAGetLastError()
  store i32 %268, i32* %4, align 4
  %269 = call zeroext i8 (...) @NET_ErrorString()
  %270 = zext i8 %269 to i32
  %271 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %270)
  br label %313

272:                                              ; preds = %260
  %273 = load i32, i32* %6, align 4
  %274 = icmp slt i32 %273, 2
  br i1 %274, label %280, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %277 = load i8, i8* %276, align 16
  %278 = zext i8 %277 to i32
  %279 = icmp ne i32 %278, 5
  br i1 %279, label %280, label %282

280:                                              ; preds = %275, %272
  %281 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %313

282:                                              ; preds = %275
  %283 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %290)
  br label %313

292:                                              ; preds = %282
  %293 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 3
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %295, 1
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 3
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %300)
  br label %313

302:                                              ; preds = %292
  %303 = load i64, i64* @AF_INET, align 8
  store i64 %303, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 3), align 4
  %304 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 4
  %305 = bitcast i8* %304 to i32*
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 2, i32 0), align 4
  %307 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 8
  %308 = bitcast i8* %307 to i16*
  %309 = load i16, i16* %308, align 8
  store i16 %309, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 0), align 4
  %310 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 1), align 4
  %311 = call i32 @memset(i32 %310, i32 0, i32 8)
  %312 = load i8*, i8** @qtrue, align 8
  store i8* %312, i8** @usingSocks, align 8
  br label %313

313:                                              ; preds = %302, %297, %287, %280, %267, %255, %233, %226, %213, %201, %143, %135, %122, %110, %68, %42, %31, %19
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local zeroext i8 @NET_ErrorString(...) #1

declare dso_local %struct.hostent* @gethostbyname(i32) #1

declare dso_local i8* @htons(i16 signext) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
