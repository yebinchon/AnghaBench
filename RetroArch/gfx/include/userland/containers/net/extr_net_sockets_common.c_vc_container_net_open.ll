; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.addrinfo* }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@VC_CONTAINER_NET_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"vc_container_net_open: platform initialization failure: %d\00", align 1
@VC_CONTAINER_NET_ERROR_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"vc_container_net_open: malloc fail for VC_CONTAINER_NET_T\00", align 1
@VC_CONTAINER_NET_OPEN_FLAG_STREAM = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_OPEN_FLAG_FORCE_MASK = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"vc_container_net_open: invalid address forcing flag\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"vc_container_net_open: unable to get address info: %d\00", align 1
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"vc_container_net_open: failed to open socket: %d\00", align 1
@INFINITE_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addrinfo* @vc_container_net_open(i8* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %17 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %17, i64* %16, align 8
  %18 = call i64 (...) @vc_container_net_private_init()
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* @VC_CONTAINER_NET_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i64, i64* %15, align 8
  %24 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64*, i64** %9, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %15, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  br label %255

31:                                               ; preds = %4
  %32 = call i64 @malloc(i32 64)
  %33 = inttoptr i64 %32 to %struct.addrinfo*
  store %struct.addrinfo* %33, %struct.addrinfo** %10, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %35 = icmp ne %struct.addrinfo* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i64*, i64** %9, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @VC_CONTAINER_NET_ERROR_NO_MEMORY, align 8
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (...) @vc_container_net_private_deinit()
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  br label %255

45:                                               ; preds = %31
  %46 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %47 = call i32 @memset(%struct.addrinfo* %46, i32 0, i32 64)
  %48 = load i64, i64* @INVALID_SOCKET, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VC_CONTAINER_NET_OPEN_FLAG_STREAM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 131, i32 130
  %60 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %69

62:                                               ; preds = %45
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 132, i32 133
  %67 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %55
  %70 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 64)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @VC_CONTAINER_NET_OPEN_FLAG_FORCE_MASK, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %83 [
    i32 0, label %74
    i32 129, label %77
    i32 128, label %80
  ]

74:                                               ; preds = %69
  %75 = load i32, i32* @AF_UNSPEC, align 4
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 10
  store i32 %75, i32* %76, align 8
  br label %86

77:                                               ; preds = %69
  %78 = load i32, i32* @AF_INET, align 4
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 10
  store i32 %78, i32* %79, align 8
  br label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @AF_INET6, align 4
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 10
  store i32 %81, i32* %82, align 8
  br label %86

83:                                               ; preds = %69
  %84 = load i64, i64* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 8
  store i64 %84, i64* %15, align 8
  %85 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %246

86:                                               ; preds = %80, %77, %74
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @VC_CONTAINER_NET_OPEN_FLAG_STREAM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @SOCK_STREAM, align 4
  br label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @SOCK_DGRAM, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 9
  store i32 %96, i32* %97, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @getaddrinfo(i8* %98, i8* %99, %struct.addrinfo* %11, %struct.addrinfo** %12)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = call i64 (...) @vc_container_net_private_last_error()
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  br label %246

107:                                              ; preds = %95
  %108 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %108, %struct.addrinfo** %13, align 8
  br label %109

109:                                              ; preds = %215, %107
  %110 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %111 = icmp ne %struct.addrinfo* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* @INVALID_SOCKET, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ false, %109 ], [ %115, %112 ]
  br i1 %117, label %118, label %219

118:                                              ; preds = %116
  %119 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %120 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %123 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @socket(i32 %121, i32 %124, i32 %127)
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @INVALID_SOCKET, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = call i64 (...) @vc_container_net_private_last_error()
  store i64 %133, i64* %15, align 8
  br label %215

134:                                              ; preds = %118
  %135 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %191 [
    i32 131, label %138
    i32 132, label %152
    i32 130, label %153
    i32 133, label %173
  ]

138:                                              ; preds = %134
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %141 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %144 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @connect(i64 %139, i32 %142, i32 %145)
  %147 = load i32, i32* @SOCKET_ERROR, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = call i64 (...) @vc_container_net_private_last_error()
  store i64 %150, i64* %15, align 8
  br label %151

151:                                              ; preds = %149, %138
  br label %191

152:                                              ; preds = %134
  br label %191

153:                                              ; preds = %134
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @vc_container_net_private_set_reusable(i64 %154, i32 1)
  %156 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %157 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @socket_clear_address(i32 %158)
  %160 = load i64, i64* %16, align 8
  %161 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %162 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @bind(i64 %160, i32 %163, i32 %166)
  %168 = load i32, i32* @SOCKET_ERROR, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %153
  %171 = call i64 (...) @vc_container_net_private_last_error()
  store i64 %171, i64* %15, align 8
  br label %172

172:                                              ; preds = %170, %153
  br label %191

173:                                              ; preds = %134
  %174 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @socket_clear_address(i32 %176)
  %178 = load i64, i64* %16, align 8
  %179 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %180 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %183 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @bind(i64 %178, i32 %181, i32 %184)
  %186 = load i32, i32* @SOCKET_ERROR, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %173
  %189 = call i64 (...) @vc_container_net_private_last_error()
  store i64 %189, i64* %15, align 8
  br label %190

190:                                              ; preds = %188, %173
  br label %191

191:                                              ; preds = %134, %190, %172, %152, %151
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* @VC_CONTAINER_NET_SUCCESS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %197 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %200 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  %201 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %202 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %201, i32 0, i32 6
  %203 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %204 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %207 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @memcpy(i32* %202, i32 %205, i32 %208)
  br label %214

210:                                              ; preds = %191
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @vc_container_net_private_close(i64 %211)
  %213 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %213, i64* %16, align 8
  br label %214

214:                                              ; preds = %210, %195
  br label %215

215:                                              ; preds = %214, %132
  %216 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 11
  %218 = load %struct.addrinfo*, %struct.addrinfo** %217, align 8
  store %struct.addrinfo* %218, %struct.addrinfo** %13, align 8
  br label %109

219:                                              ; preds = %116
  %220 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %221 = call i32 @freeaddrinfo(%struct.addrinfo* %220)
  %222 = load i64, i64* %16, align 8
  %223 = load i64, i64* @INVALID_SOCKET, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i64, i64* %15, align 8
  %227 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %226)
  br label %246

228:                                              ; preds = %219
  %229 = load i64, i64* %16, align 8
  %230 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %231 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %16, align 8
  %233 = call i32 @vc_container_net_private_maximum_datagram_size(i64 %232)
  %234 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %235 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* @INFINITE_TIMEOUT_MS, align 4
  %237 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %238 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load i64*, i64** %9, align 8
  %240 = icmp ne i64* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %228
  %242 = load i64, i64* @VC_CONTAINER_NET_SUCCESS, align 8
  %243 = load i64*, i64** %9, align 8
  store i64 %242, i64* %243, align 8
  br label %244

244:                                              ; preds = %241, %228
  %245 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %245, %struct.addrinfo** %5, align 8
  br label %255

246:                                              ; preds = %225, %103, %83
  %247 = load i64*, i64** %9, align 8
  %248 = icmp ne i64* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i64, i64* %15, align 8
  %251 = load i64*, i64** %9, align 8
  store i64 %250, i64* %251, align 8
  br label %252

252:                                              ; preds = %249, %246
  %253 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %254 = call i32 @vc_container_net_close(%struct.addrinfo* %253)
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  br label %255

255:                                              ; preds = %252, %244, %42, %30
  %256 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  ret %struct.addrinfo* %256
}

declare dso_local i64 @vc_container_net_private_init(...) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @vc_container_net_private_deinit(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @vc_container_net_private_last_error(...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i64, i32, i32) #1

declare dso_local i32 @vc_container_net_private_set_reusable(i64, i32) #1

declare dso_local i32 @socket_clear_address(i32) #1

declare dso_local i32 @bind(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vc_container_net_private_close(i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @vc_container_net_private_maximum_datagram_size(i64) #1

declare dso_local i32 @vc_container_net_close(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
