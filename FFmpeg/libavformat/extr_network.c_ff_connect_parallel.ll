; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_connect_parallel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_connect_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.ConnectionAttempt = type { i32, i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pollfd = type { i32, i32, %struct.TYPE_7__*, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Original list of addresses\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Interleaved list of addresses\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Starting connection attempt to %s port %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Connected attempt failed: %s\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@NEXT_ATTEMPT_DELAY_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Successfully connected to %s port %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Connection attempt to %s port %s failed: %s\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Connection to %s failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_connect_parallel(%struct.addrinfo* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, i32* %4, void (i8*, i32)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca void (i8*, i32)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [3 x %struct.ConnectionAttempt], align 16
  %17 = alloca [3 x %struct.pollfd], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [100 x i8], align 16
  %26 = alloca [100 x i8], align 16
  %27 = alloca [20 x i8], align 16
  store %struct.addrinfo* %0, %struct.addrinfo** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i32* %4, i32** %13, align 8
  store void (i8*, i32)* %5, void (i8*, i32)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %18, align 4
  %28 = call i64 (...) @av_gettime_relative()
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 0
  %34 = bitcast %struct.ConnectionAttempt* %33 to %struct.pollfd*
  %35 = call i32 @FF_ARRAY_ELEMS(%struct.pollfd* %34)
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 0
  %39 = bitcast %struct.ConnectionAttempt* %38 to %struct.pollfd*
  %40 = call i32 @FF_ARRAY_ELEMS(%struct.pollfd* %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %7
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %44 = call i32 @print_address_list(%struct.TYPE_8__* %42, %struct.addrinfo* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %46 = call i32 @interleave_addrinfo(%struct.addrinfo* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %49 = call i32 @print_address_list(%struct.TYPE_8__* %47, %struct.addrinfo* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %369, %94, %41
  %51 = load i32, i32* %18, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %55 = icmp ne %struct.addrinfo* %54, null
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ true, %50 ], [ %55, %53 ]
  br i1 %57, label %58, label %370

58:                                               ; preds = %56
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %150

62:                                               ; preds = %58
  %63 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %64 = icmp ne %struct.addrinfo* %63, null
  br i1 %64, label %65, label %150

65:                                               ; preds = %62
  %66 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %74 = load i32, i32* @NI_NUMERICHOST, align 4
  %75 = load i32, i32* @NI_NUMERICSERV, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @getnameinfo(i32 %68, i32 %71, i8* %72, i32 100, i8* %73, i32 20, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %82 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %78, i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %84
  %86 = bitcast %struct.ConnectionAttempt* %85 to %struct.pollfd*
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %89 = load void (i8*, i32)*, void (i8*, i32)** %14, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @start_connect_attempt(%struct.pollfd* %86, %struct.addrinfo** %9, i32 %87, %struct.TYPE_8__* %88, void (i8*, i32)* %89, i8* %90)
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %23, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %65
  %95 = load i32, i32* %23, align 4
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %97 = call i32 @av_strerror(i32 %95, i8* %96, i32 100)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %101 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %98, i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  br label %50

102:                                              ; preds = %65
  %103 = load i32, i32* %23, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  store i32 0, i32* %19, align 4
  br label %106

106:                                              ; preds = %117, %105
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 16
  %116 = call i32 @closesocket(i32 %115)
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %106

120:                                              ; preds = %106
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 16
  %126 = load i32*, i32** %13, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %8, align 4
  br label %408

127:                                              ; preds = %102
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 16
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 16
  %137 = load i32, i32* @POLLOUT, align 4
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %140, i32 0, i32 4
  store i32 %137, i32* %141, align 8
  %142 = call i64 (...) @av_gettime_relative()
  %143 = load i32, i32* @NEXT_ATTEMPT_DELAY_MS, align 4
  %144 = mul nsw i32 %143, 1000
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %142, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %127, %62, %58
  %151 = load i32, i32* %18, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @av_assert0(i32 %153)
  %155 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 0
  %156 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %22, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %163 = icmp ne %struct.addrinfo* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @FFMIN(i32 %165, i32 %166)
  store i32 %167, i32* %22, align 4
  br label %168

168:                                              ; preds = %164, %161, %150
  %169 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 0
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = call i64 (...) @av_gettime_relative()
  %174 = sub nsw i64 %172, %173
  %175 = sdiv i64 %174, 1000
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = call i32 @ff_poll_interrupt(%struct.pollfd* %169, i32 %170, i32 %176, i32* %178)
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %168
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* @ETIMEDOUT, align 4
  %185 = call i32 @AVERROR(i32 %184)
  %186 = icmp ne i32 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %370

188:                                              ; preds = %182, %168
  store i32 0, i32* %19, align 4
  br label %189

189:                                              ; preds = %366, %188
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %18, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %369

193:                                              ; preds = %189
  store i32 0, i32* %23, align 4
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 16
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %275

200:                                              ; preds = %193
  store i32 4, i32* %24, align 4
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 16
  %206 = load i32, i32* @SOL_SOCKET, align 4
  %207 = load i32, i32* @SO_ERROR, align 4
  %208 = call i64 @getsockopt(i32 %205, i32 %206, i32 %207, i32* %23, i32* %24)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = call i32 (...) @ff_neterrno()
  store i32 %211, i32* %23, align 4
  br label %219

212:                                              ; preds = %200
  %213 = load i32, i32* %23, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %23, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %23, align 4
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %210
  %220 = load i32, i32* %23, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %274

222:                                              ; preds = %219
  store i32 0, i32* %20, align 4
  br label %223

223:                                              ; preds = %239, %222
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %223
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 16
  %237 = call i32 @closesocket(i32 %236)
  br label %238

238:                                              ; preds = %231, %227
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %20, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %20, align 4
  br label %223

242:                                              ; preds = %223
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %244
  %246 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 16
  %248 = load i32*, i32** %13, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %250
  %252 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %251, i32 0, i32 2
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %257
  %259 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %258, i32 0, i32 2
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %264 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %265 = load i32, i32* @NI_NUMERICHOST, align 4
  %266 = load i32, i32* @NI_NUMERICSERV, align 4
  %267 = or i32 %265, %266
  %268 = call i32 @getnameinfo(i32 %255, i32 %262, i8* %263, i32 100, i8* %264, i32 20, i32 %267)
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %270 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %271 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %272 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %273 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %269, i32 %270, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %271, i8* %272)
  store i32 0, i32* %8, align 4
  br label %408

274:                                              ; preds = %219
  br label %275

275:                                              ; preds = %274, %193
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %277
  %279 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = call i64 (...) @av_gettime_relative()
  %283 = icmp slt i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %275
  %285 = load i32, i32* %23, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* @ETIMEDOUT, align 4
  %289 = call i32 @AVERROR(i32 %288)
  store i32 %289, i32* %23, align 4
  br label %290

290:                                              ; preds = %287, %284, %275
  %291 = load i32, i32* %23, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  br label %366

294:                                              ; preds = %290
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %297, i32 0, i32 2
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %304, i32 0, i32 2
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %310 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %311 = load i32, i32* @NI_NUMERICHOST, align 4
  %312 = load i32, i32* @NI_NUMERICSERV, align 4
  %313 = or i32 %311, %312
  %314 = call i32 @getnameinfo(i32 %301, i32 %308, i8* %309, i32 100, i8* %310, i32 20, i32 %313)
  %315 = load i32, i32* %23, align 4
  %316 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %317 = call i32 @av_strerror(i32 %315, i8* %316, i32 100)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %319 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %320 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %321 = getelementptr inbounds [20 x i8], [20 x i8]* %27, i64 0, i64 0
  %322 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %323 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %318, i32 %319, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %320, i8* %321, i8* %322)
  %324 = load i32, i32* %19, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 16
  %329 = call i32 @closesocket(i32 %328)
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %331
  %333 = bitcast %struct.ConnectionAttempt* %332 to %struct.pollfd*
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %336
  %338 = bitcast %struct.ConnectionAttempt* %337 to %struct.pollfd*
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* %19, align 4
  %341 = sub nsw i32 %339, %340
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = mul i64 %343, 32
  %345 = trunc i64 %344 to i32
  %346 = call i32 @memmove(%struct.pollfd* %333, %struct.pollfd* %338, i32 %345)
  %347 = load i32, i32* %19, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 %348
  %350 = load i32, i32* %19, align 4
  %351 = add nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [3 x %struct.pollfd], [3 x %struct.pollfd]* %17, i64 0, i64 %352
  %354 = load i32, i32* %18, align 4
  %355 = load i32, i32* %19, align 4
  %356 = sub nsw i32 %354, %355
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = mul i64 %358, 32
  %360 = trunc i64 %359 to i32
  %361 = call i32 @memmove(%struct.pollfd* %349, %struct.pollfd* %353, i32 %360)
  %362 = load i32, i32* %19, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %19, align 4
  %364 = load i32, i32* %18, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %18, align 4
  br label %366

366:                                              ; preds = %294, %293
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  br label %189

369:                                              ; preds = %189
  br label %50

370:                                              ; preds = %187, %56
  store i32 0, i32* %19, align 4
  br label %371

371:                                              ; preds = %382, %370
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %18, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %385

375:                                              ; preds = %371
  %376 = load i32, i32* %19, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [3 x %struct.ConnectionAttempt], [3 x %struct.ConnectionAttempt]* %16, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.ConnectionAttempt, %struct.ConnectionAttempt* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 16
  %381 = call i32 @closesocket(i32 %380)
  br label %382

382:                                              ; preds = %375
  %383 = load i32, i32* %19, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %19, align 4
  br label %371

385:                                              ; preds = %371
  %386 = load i32, i32* %23, align 4
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load i32, i32* @ECONNREFUSED, align 4
  %390 = call i32 @AVERROR(i32 %389)
  store i32 %390, i32* %23, align 4
  br label %391

391:                                              ; preds = %388, %385
  %392 = load i32, i32* %23, align 4
  %393 = load i32, i32* @AVERROR_EXIT, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %395, label %406

395:                                              ; preds = %391
  %396 = load i32, i32* %23, align 4
  %397 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %398 = call i32 @av_strerror(i32 %396, i8* %397, i32 100)
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %400 = load i32, i32* @AV_LOG_ERROR, align 4
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %405 = call i32 (%struct.TYPE_8__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_8__* %399, i32 %400, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %403, i8* %404)
  br label %406

406:                                              ; preds = %395, %391
  %407 = load i32, i32* %23, align 4
  store i32 %407, i32* %8, align 4
  br label %408

408:                                              ; preds = %406, %242, %120
  %409 = load i32, i32* %8, align 4
  ret i32 %409
}

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.pollfd*) #1

declare dso_local i32 @print_address_list(%struct.TYPE_8__*, %struct.addrinfo*, i8*) #1

declare dso_local i32 @interleave_addrinfo(%struct.addrinfo*) #1

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @start_connect_attempt(%struct.pollfd*, %struct.addrinfo**, i32, %struct.TYPE_8__*, void (i8*, i32)*, i8*) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_poll_interrupt(%struct.pollfd*, i32, i32, i32*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ff_neterrno(...) #1

declare dso_local i32 @memmove(%struct.pollfd*, %struct.pollfd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
