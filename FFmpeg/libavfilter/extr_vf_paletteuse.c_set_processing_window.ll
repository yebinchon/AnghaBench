; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_set_processing_window.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_set_processing_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32** }

@DIFF_MODE_RECTANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i32*, i32*)* @set_processing_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_processing_window(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %21, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %22, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %366

49:                                               ; preds = %9
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DIFF_MODE_RECTANGLE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %366

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %24, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %25, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i64*
  store i64* %67, i64** %26, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i64*
  store i64* %73, i64** %27, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %28, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %29, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 2
  store i32 %89, i32* %30, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 2
  store i32 %95, i32* %31, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %32, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %33, align 4
  br label %106

106:                                              ; preds = %132, %53
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %25, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i64*, i64** %26, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %30, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64*, i64** %27, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %31, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 4
  %127 = call i32 @memcmp(i64* %116, i64* %122, i32 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %110, %106
  %131 = phi i1 [ false, %106 ], [ %129, %110 ]
  br i1 %131, label %132, label %151

132:                                              ; preds = %130
  %133 = load i32*, i32** %29, align 8
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %33, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32*, i32** %28, align 8
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %32, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @memcpy(i32* %138, i32* %144, i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %20, align 4
  br label %106

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %178, %151
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load i64*, i64** %26, align 8
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* %30, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %157, i64 %161
  %163 = load i64*, i64** %27, align 8
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %31, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %163, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %171, 4
  %173 = call i32 @memcmp(i64* %162, i64* %168, i32 %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  br label %176

176:                                              ; preds = %156, %152
  %177 = phi i1 [ false, %152 ], [ %175, %156 ]
  br i1 %177, label %178, label %197

178:                                              ; preds = %176
  %179 = load i32*, i32** %29, align 8
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %33, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32*, i32** %28, align 8
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %32, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @memcpy(i32* %184, i32* %190, i32 %193)
  %195 = load i32, i32* %25, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %25, align 4
  br label %152

197:                                              ; preds = %176
  %198 = load i32, i32* %25, align 4
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* %20, align 4
  %201 = sub nsw i32 %199, %200
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %241, %197
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %24, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %244

206:                                              ; preds = %202
  store i32 1, i32* %34, align 4
  %207 = load i32, i32* %20, align 4
  store i32 %207, i32* %23, align 4
  br label %208

208:                                              ; preds = %234, %206
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %25, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %237

212:                                              ; preds = %208
  %213 = load i64*, i64** %26, align 8
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %30, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %213, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64*, i64** %27, align 8
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %31, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %222, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %221, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %212
  store i32 0, i32* %34, align 4
  br label %237

233:                                              ; preds = %212
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %208

237:                                              ; preds = %232, %208
  %238 = load i32, i32* %34, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  br label %244

241:                                              ; preds = %237
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %19, align 4
  br label %202

244:                                              ; preds = %240, %202
  br label %245

245:                                              ; preds = %284, %244
  %246 = load i32, i32* %24, align 4
  %247 = load i32, i32* %19, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %287

249:                                              ; preds = %245
  store i32 1, i32* %35, align 4
  %250 = load i32, i32* %20, align 4
  store i32 %250, i32* %23, align 4
  br label %251

251:                                              ; preds = %277, %249
  %252 = load i32, i32* %23, align 4
  %253 = load i32, i32* %25, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %280

255:                                              ; preds = %251
  %256 = load i64*, i64** %26, align 8
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %30, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32, i32* %24, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %256, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %27, align 8
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* %31, align 4
  %268 = mul nsw i32 %266, %267
  %269 = load i32, i32* %24, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %265, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %264, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %255
  store i32 0, i32* %35, align 4
  br label %280

276:                                              ; preds = %255
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %23, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %23, align 4
  br label %251

280:                                              ; preds = %275, %251
  %281 = load i32, i32* %35, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  br label %287

284:                                              ; preds = %280
  %285 = load i32, i32* %24, align 4
  %286 = add nsw i32 %285, -1
  store i32 %286, i32* %24, align 4
  br label %245

287:                                              ; preds = %283, %245
  %288 = load i32, i32* %24, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32, i32* %19, align 4
  %291 = sub nsw i32 %289, %290
  store i32 %291, i32* %21, align 4
  %292 = load i32, i32* %19, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %319

294:                                              ; preds = %287
  %295 = load i32, i32* %20, align 4
  store i32 %295, i32* %23, align 4
  br label %296

296:                                              ; preds = %315, %294
  %297 = load i32, i32* %23, align 4
  %298 = load i32, i32* %25, align 4
  %299 = icmp sle i32 %297, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %296
  %301 = load i32*, i32** %29, align 8
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %33, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %301, i64 %305
  %307 = load i32*, i32** %28, align 8
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* %32, align 4
  %310 = mul nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %19, align 4
  %314 = call i32 @memcpy(i32* %306, i32* %312, i32 %313)
  br label %315

315:                                              ; preds = %300
  %316 = load i32, i32* %23, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %23, align 4
  br label %296

318:                                              ; preds = %296
  br label %319

319:                                              ; preds = %318, %287
  %320 = load i32, i32* %24, align 4
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, 1
  %325 = icmp ne i32 %320, %324
  br i1 %325, label %326, label %365

326:                                              ; preds = %319
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = sub nsw i32 %329, 1
  %331 = load i32, i32* %24, align 4
  %332 = sub nsw i32 %330, %331
  store i32 %332, i32* %36, align 4
  %333 = load i32, i32* %20, align 4
  store i32 %333, i32* %23, align 4
  br label %334

334:                                              ; preds = %361, %326
  %335 = load i32, i32* %23, align 4
  %336 = load i32, i32* %25, align 4
  %337 = icmp sle i32 %335, %336
  br i1 %337, label %338, label %364

338:                                              ; preds = %334
  %339 = load i32*, i32** %29, align 8
  %340 = load i32, i32* %23, align 4
  %341 = load i32, i32* %33, align 4
  %342 = mul nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %24, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32*, i32** %28, align 8
  %350 = load i32, i32* %23, align 4
  %351 = load i32, i32* %32, align 4
  %352 = mul nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  %355 = load i32, i32* %24, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %36, align 4
  %360 = call i32 @memcpy(i32* %348, i32* %358, i32 %359)
  br label %361

361:                                              ; preds = %338
  %362 = load i32, i32* %23, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %23, align 4
  br label %334

364:                                              ; preds = %334
  br label %365

365:                                              ; preds = %364, %319
  br label %366

366:                                              ; preds = %365, %49, %9
  %367 = load i32, i32* %19, align 4
  %368 = load i32*, i32** %15, align 8
  store i32 %367, i32* %368, align 4
  %369 = load i32, i32* %20, align 4
  %370 = load i32*, i32** %16, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* %21, align 4
  %372 = load i32*, i32** %17, align 8
  store i32 %371, i32* %372, align 4
  %373 = load i32, i32* %22, align 4
  %374 = load i32*, i32** %18, align 8
  store i32 %373, i32* %374, align 4
  ret void
}

declare dso_local i32 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
