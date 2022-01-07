; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_select.c_Curl_poll.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_select.c_Curl_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i64, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.curltime = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.curltime, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.curltime, align 4
  %20 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = bitcast %struct.curltime* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %24 = icmp ne %struct.pollfd* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %32 = load i32, i32* %16, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i64 %33
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %15, align 4
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %16, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %16, align 4
  br label %26

45:                                               ; preds = %39, %26
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @Curl_wait_ms(i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %4, align 4
  br label %350

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %17, align 4
  %58 = call i64 (...) @Curl_now()
  %59 = bitcast %struct.curltime* %19 to i64*
  store i64 %58, i64* %59, align 4
  %60 = bitcast %struct.curltime* %14 to i8*
  %61 = bitcast %struct.curltime* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  br label %62

62:                                               ; preds = %56, %53
  %63 = call i32 @FD_ZERO(%struct.TYPE_8__* %10)
  %64 = call i32 @FD_ZERO(%struct.TYPE_8__* %11)
  %65 = call i32 @FD_ZERO(%struct.TYPE_8__* %12)
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %190, %62
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %193

70:                                               ; preds = %66
  %71 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %71, i64 %73
  %75 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %76, i64 %78
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %190

85:                                               ; preds = %70
  %86 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %86, i64 %88
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @VERIFY_SOCK(i64 %91)
  %93 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %94 = load i32, i32* %16, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i64 %95
  %97 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @POLLIN, align 4
  %100 = load i32, i32* @POLLOUT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @POLLPRI, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @POLLRDNORM, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @POLLWRNORM, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @POLLRDBAND, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %98, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %189

112:                                              ; preds = %85
  %113 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %113, i64 %115
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %122, i64 %124
  %126 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %13, align 8
  br label %128

128:                                              ; preds = %121, %112
  %129 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %130 = load i32, i32* %16, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %129, i64 %131
  %133 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @POLLRDNORM, align 4
  %136 = load i32, i32* @POLLIN, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %142 = load i32, i32* %16, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %141, i64 %143
  %145 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @FD_SET(i64 %146, %struct.TYPE_8__* %10)
  br label %148

148:                                              ; preds = %140, %128
  %149 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %150 = load i32, i32* %16, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %149, i64 %151
  %153 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @POLLWRNORM, align 4
  %156 = load i32, i32* @POLLOUT, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %148
  %161 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %162 = load i32, i32* %16, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %161, i64 %163
  %165 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @FD_SET(i64 %166, %struct.TYPE_8__* %11)
  br label %168

168:                                              ; preds = %160, %148
  %169 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %170 = load i32, i32* %16, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %169, i64 %171
  %173 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @POLLRDBAND, align 4
  %176 = load i32, i32* @POLLPRI, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %168
  %181 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %182 = load i32, i32* %16, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %181, i64 %183
  %185 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @FD_SET(i64 %186, %struct.TYPE_8__* %12)
  br label %188

188:                                              ; preds = %180, %168
  br label %189

189:                                              ; preds = %188, %85
  br label %190

190:                                              ; preds = %189, %84
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %66

193:                                              ; preds = %66
  %194 = load i32, i32* %7, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %198

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %197, %196
  %199 = phi %struct.timeval* [ null, %196 ], [ %8, %197 ]
  store %struct.timeval* %199, %struct.timeval** %9, align 8
  br label %200

200:                                              ; preds = %248, %198
  %201 = load i32, i32* %7, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i32, i32* %17, align 4
  %205 = sdiv i32 %204, 1000
  %206 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %17, align 4
  %208 = srem i32 %207, 1000
  %209 = mul nsw i32 %208, 1000
  %210 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %209, i32* %210, align 4
  br label %218

211:                                              ; preds = %200
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 0, i32* %215, align 4
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %203
  %219 = load i64, i64* %13, align 8
  %220 = trunc i64 %219 to i32
  %221 = add nsw i32 %220, 1
  %222 = load %struct.timeval*, %struct.timeval** %9, align 8
  %223 = call i32 @select(i32 %221, %struct.TYPE_8__* %10, %struct.TYPE_8__* %11, %struct.TYPE_8__* %12, %struct.timeval* %222)
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = icmp ne i32 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %251

227:                                              ; preds = %218
  %228 = load i32, i32* @SOCKERRNO, align 4
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load i32, i32* %20, align 4
  %233 = call i64 @ERROR_NOT_EINTR(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %251

236:                                              ; preds = %231, %227
  %237 = load i32, i32* %7, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = call i32 (...) @ELAPSED_MS()
  %242 = sub nsw i32 %240, %241
  store i32 %242, i32* %17, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp sle i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  store i32 0, i32* %18, align 4
  br label %251

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %236
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %18, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %200, label %251

251:                                              ; preds = %248, %245, %235, %226
  %252 = load i32, i32* %18, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 -1, i32* %4, align 4
  br label %350

255:                                              ; preds = %251
  %256 = load i32, i32* %18, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %350

259:                                              ; preds = %255
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %260

260:                                              ; preds = %345, %259
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp ult i32 %261, %262
  br i1 %263, label %264, label %348

264:                                              ; preds = %260
  %265 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %266 = load i32, i32* %16, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %265, i64 %267
  %269 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %268, i32 0, i32 1
  store i32 0, i32* %269, align 8
  %270 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %271 = load i32, i32* %16, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %270, i64 %272
  %274 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %264
  br label %345

279:                                              ; preds = %264
  %280 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %281 = load i32, i32* %16, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %280, i64 %282
  %284 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @FD_ISSET(i64 %285, %struct.TYPE_8__* %10)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %279
  %289 = load i32, i32* @POLLIN, align 4
  %290 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %291 = load i32, i32* %16, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %290, i64 %292
  %294 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %289
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %288, %279
  %298 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %299 = load i32, i32* %16, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %298, i64 %300
  %302 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @FD_ISSET(i64 %303, %struct.TYPE_8__* %11)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %297
  %307 = load i32, i32* @POLLOUT, align 4
  %308 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %309 = load i32, i32* %16, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %308, i64 %310
  %312 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %307
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %306, %297
  %316 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %317 = load i32, i32* %16, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %316, i64 %318
  %320 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i64 @FD_ISSET(i64 %321, %struct.TYPE_8__* %12)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %315
  %325 = load i32, i32* @POLLPRI, align 4
  %326 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %327 = load i32, i32* %16, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %326, i64 %328
  %330 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %325
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %324, %315
  %334 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %335 = load i32, i32* %16, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %334, i64 %336
  %338 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %333
  %342 = load i32, i32* %18, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %18, align 4
  br label %344

344:                                              ; preds = %341, %333
  br label %345

345:                                              ; preds = %344, %278
  %346 = load i32, i32* %16, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %16, align 4
  br label %260

348:                                              ; preds = %260
  %349 = load i32, i32* %18, align 4
  store i32 %349, i32* %4, align 4
  br label %350

350:                                              ; preds = %348, %258, %254, %49
  %351 = load i32, i32* %4, align 4
  ret i32 %351
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Curl_wait_ms(i32) #2

declare dso_local i64 @Curl_now(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(%struct.TYPE_8__*) #2

declare dso_local i32 @VERIFY_SOCK(i64) #2

declare dso_local i32 @FD_SET(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @select(i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.timeval*) #2

declare dso_local i64 @ERROR_NOT_EINTR(i32) #2

declare dso_local i32 @ELAPSED_MS(...) #2

declare dso_local i64 @FD_ISSET(i64, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
