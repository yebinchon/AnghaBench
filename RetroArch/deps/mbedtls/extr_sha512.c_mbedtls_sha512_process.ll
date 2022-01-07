; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_sha512.c_mbedtls_sha512_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@K = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_process(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [80 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 3
  %28 = call i32 @GET_UINT64_BE(i64 %24, i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %121, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 80
  br i1 %35, label %36, label %124

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = ashr i64 %41, 19
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 %47, 45
  %49 = or i64 %42, %48
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = ashr i64 %54, 61
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %60, 3
  %62 = or i64 %55, %61
  %63 = xor i64 %49, %62
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = ashr i64 %68, 6
  %70 = xor i64 %63, %69
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, 15
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = ashr i64 %81, 1
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 15
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 %87, 63
  %89 = or i64 %82, %88
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 15
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = ashr i64 %94, 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 15
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 %100, 56
  %102 = or i64 %95, %101
  %103 = xor i64 %89, %102
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 15
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = ashr i64 %108, 7
  %110 = xor i64 %103, %109
  %111 = add nsw i64 %76, %110
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %112, 16
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %111, %116
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %119
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %36
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %33

124:                                              ; preds = %33
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %9, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %10, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %11, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 3
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %12, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 4
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %13, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 5
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %14, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 6
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %15, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 7
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %758, %124
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %13, align 8
  %168 = ashr i64 %167, 14
  %169 = load i64, i64* %13, align 8
  %170 = shl i64 %169, 50
  %171 = or i64 %168, %170
  %172 = load i64, i64* %13, align 8
  %173 = ashr i64 %172, 18
  %174 = load i64, i64* %13, align 8
  %175 = shl i64 %174, 46
  %176 = or i64 %173, %175
  %177 = xor i64 %171, %176
  %178 = load i64, i64* %13, align 8
  %179 = ashr i64 %178, 41
  %180 = load i64, i64* %13, align 8
  %181 = shl i64 %180, 23
  %182 = or i64 %179, %181
  %183 = xor i64 %177, %182
  %184 = add nsw i64 %166, %183
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %15, align 8
  %189 = xor i64 %187, %188
  %190 = and i64 %186, %189
  %191 = xor i64 %185, %190
  %192 = add nsw i64 %184, %191
  %193 = load i32*, i32** @K, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %192, %198
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %199, %203
  store i64 %204, i64* %6, align 8
  %205 = load i64, i64* %9, align 8
  %206 = ashr i64 %205, 28
  %207 = load i64, i64* %9, align 8
  %208 = shl i64 %207, 36
  %209 = or i64 %206, %208
  %210 = load i64, i64* %9, align 8
  %211 = ashr i64 %210, 34
  %212 = load i64, i64* %9, align 8
  %213 = shl i64 %212, 30
  %214 = or i64 %211, %213
  %215 = xor i64 %209, %214
  %216 = load i64, i64* %9, align 8
  %217 = ashr i64 %216, 39
  %218 = load i64, i64* %9, align 8
  %219 = shl i64 %218, 25
  %220 = or i64 %217, %219
  %221 = xor i64 %215, %220
  %222 = load i64, i64* %9, align 8
  %223 = load i64, i64* %10, align 8
  %224 = and i64 %222, %223
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %9, align 8
  %227 = load i64, i64* %10, align 8
  %228 = or i64 %226, %227
  %229 = and i64 %225, %228
  %230 = or i64 %224, %229
  %231 = add nsw i64 %221, %230
  store i64 %231, i64* %7, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* %12, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %12, align 8
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %7, align 8
  %237 = add nsw i64 %235, %236
  store i64 %237, i64* %16, align 8
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %12, align 8
  %242 = ashr i64 %241, 14
  %243 = load i64, i64* %12, align 8
  %244 = shl i64 %243, 50
  %245 = or i64 %242, %244
  %246 = load i64, i64* %12, align 8
  %247 = ashr i64 %246, 18
  %248 = load i64, i64* %12, align 8
  %249 = shl i64 %248, 46
  %250 = or i64 %247, %249
  %251 = xor i64 %245, %250
  %252 = load i64, i64* %12, align 8
  %253 = ashr i64 %252, 41
  %254 = load i64, i64* %12, align 8
  %255 = shl i64 %254, 23
  %256 = or i64 %253, %255
  %257 = xor i64 %251, %256
  %258 = add nsw i64 %240, %257
  %259 = load i64, i64* %14, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* %14, align 8
  %263 = xor i64 %261, %262
  %264 = and i64 %260, %263
  %265 = xor i64 %259, %264
  %266 = add nsw i64 %258, %265
  %267 = load i32*, i32** @K, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %266, %272
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %273, %277
  store i64 %278, i64* %6, align 8
  %279 = load i64, i64* %16, align 8
  %280 = ashr i64 %279, 28
  %281 = load i64, i64* %16, align 8
  %282 = shl i64 %281, 36
  %283 = or i64 %280, %282
  %284 = load i64, i64* %16, align 8
  %285 = ashr i64 %284, 34
  %286 = load i64, i64* %16, align 8
  %287 = shl i64 %286, 30
  %288 = or i64 %285, %287
  %289 = xor i64 %283, %288
  %290 = load i64, i64* %16, align 8
  %291 = ashr i64 %290, 39
  %292 = load i64, i64* %16, align 8
  %293 = shl i64 %292, 25
  %294 = or i64 %291, %293
  %295 = xor i64 %289, %294
  %296 = load i64, i64* %16, align 8
  %297 = load i64, i64* %9, align 8
  %298 = and i64 %296, %297
  %299 = load i64, i64* %10, align 8
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* %9, align 8
  %302 = or i64 %300, %301
  %303 = and i64 %299, %302
  %304 = or i64 %298, %303
  %305 = add nsw i64 %295, %304
  store i64 %305, i64* %7, align 8
  %306 = load i64, i64* %6, align 8
  %307 = load i64, i64* %11, align 8
  %308 = add nsw i64 %307, %306
  store i64 %308, i64* %11, align 8
  %309 = load i64, i64* %6, align 8
  %310 = load i64, i64* %7, align 8
  %311 = add nsw i64 %309, %310
  store i64 %311, i64* %15, align 8
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %5, align 4
  %314 = load i64, i64* %14, align 8
  %315 = load i64, i64* %11, align 8
  %316 = ashr i64 %315, 14
  %317 = load i64, i64* %11, align 8
  %318 = shl i64 %317, 50
  %319 = or i64 %316, %318
  %320 = load i64, i64* %11, align 8
  %321 = ashr i64 %320, 18
  %322 = load i64, i64* %11, align 8
  %323 = shl i64 %322, 46
  %324 = or i64 %321, %323
  %325 = xor i64 %319, %324
  %326 = load i64, i64* %11, align 8
  %327 = ashr i64 %326, 41
  %328 = load i64, i64* %11, align 8
  %329 = shl i64 %328, 23
  %330 = or i64 %327, %329
  %331 = xor i64 %325, %330
  %332 = add nsw i64 %314, %331
  %333 = load i64, i64* %13, align 8
  %334 = load i64, i64* %11, align 8
  %335 = load i64, i64* %12, align 8
  %336 = load i64, i64* %13, align 8
  %337 = xor i64 %335, %336
  %338 = and i64 %334, %337
  %339 = xor i64 %333, %338
  %340 = add nsw i64 %332, %339
  %341 = load i32*, i32** @K, align 8
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %340, %346
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %347, %351
  store i64 %352, i64* %6, align 8
  %353 = load i64, i64* %15, align 8
  %354 = ashr i64 %353, 28
  %355 = load i64, i64* %15, align 8
  %356 = shl i64 %355, 36
  %357 = or i64 %354, %356
  %358 = load i64, i64* %15, align 8
  %359 = ashr i64 %358, 34
  %360 = load i64, i64* %15, align 8
  %361 = shl i64 %360, 30
  %362 = or i64 %359, %361
  %363 = xor i64 %357, %362
  %364 = load i64, i64* %15, align 8
  %365 = ashr i64 %364, 39
  %366 = load i64, i64* %15, align 8
  %367 = shl i64 %366, 25
  %368 = or i64 %365, %367
  %369 = xor i64 %363, %368
  %370 = load i64, i64* %15, align 8
  %371 = load i64, i64* %16, align 8
  %372 = and i64 %370, %371
  %373 = load i64, i64* %9, align 8
  %374 = load i64, i64* %15, align 8
  %375 = load i64, i64* %16, align 8
  %376 = or i64 %374, %375
  %377 = and i64 %373, %376
  %378 = or i64 %372, %377
  %379 = add nsw i64 %369, %378
  store i64 %379, i64* %7, align 8
  %380 = load i64, i64* %6, align 8
  %381 = load i64, i64* %10, align 8
  %382 = add nsw i64 %381, %380
  store i64 %382, i64* %10, align 8
  %383 = load i64, i64* %6, align 8
  %384 = load i64, i64* %7, align 8
  %385 = add nsw i64 %383, %384
  store i64 %385, i64* %14, align 8
  %386 = load i32, i32* %5, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %5, align 4
  %388 = load i64, i64* %13, align 8
  %389 = load i64, i64* %10, align 8
  %390 = ashr i64 %389, 14
  %391 = load i64, i64* %10, align 8
  %392 = shl i64 %391, 50
  %393 = or i64 %390, %392
  %394 = load i64, i64* %10, align 8
  %395 = ashr i64 %394, 18
  %396 = load i64, i64* %10, align 8
  %397 = shl i64 %396, 46
  %398 = or i64 %395, %397
  %399 = xor i64 %393, %398
  %400 = load i64, i64* %10, align 8
  %401 = ashr i64 %400, 41
  %402 = load i64, i64* %10, align 8
  %403 = shl i64 %402, 23
  %404 = or i64 %401, %403
  %405 = xor i64 %399, %404
  %406 = add nsw i64 %388, %405
  %407 = load i64, i64* %12, align 8
  %408 = load i64, i64* %10, align 8
  %409 = load i64, i64* %11, align 8
  %410 = load i64, i64* %12, align 8
  %411 = xor i64 %409, %410
  %412 = and i64 %408, %411
  %413 = xor i64 %407, %412
  %414 = add nsw i64 %406, %413
  %415 = load i32*, i32** @K, align 8
  %416 = load i32, i32* %5, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %414, %420
  %422 = load i32, i32* %5, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %421, %425
  store i64 %426, i64* %6, align 8
  %427 = load i64, i64* %14, align 8
  %428 = ashr i64 %427, 28
  %429 = load i64, i64* %14, align 8
  %430 = shl i64 %429, 36
  %431 = or i64 %428, %430
  %432 = load i64, i64* %14, align 8
  %433 = ashr i64 %432, 34
  %434 = load i64, i64* %14, align 8
  %435 = shl i64 %434, 30
  %436 = or i64 %433, %435
  %437 = xor i64 %431, %436
  %438 = load i64, i64* %14, align 8
  %439 = ashr i64 %438, 39
  %440 = load i64, i64* %14, align 8
  %441 = shl i64 %440, 25
  %442 = or i64 %439, %441
  %443 = xor i64 %437, %442
  %444 = load i64, i64* %14, align 8
  %445 = load i64, i64* %15, align 8
  %446 = and i64 %444, %445
  %447 = load i64, i64* %16, align 8
  %448 = load i64, i64* %14, align 8
  %449 = load i64, i64* %15, align 8
  %450 = or i64 %448, %449
  %451 = and i64 %447, %450
  %452 = or i64 %446, %451
  %453 = add nsw i64 %443, %452
  store i64 %453, i64* %7, align 8
  %454 = load i64, i64* %6, align 8
  %455 = load i64, i64* %9, align 8
  %456 = add nsw i64 %455, %454
  store i64 %456, i64* %9, align 8
  %457 = load i64, i64* %6, align 8
  %458 = load i64, i64* %7, align 8
  %459 = add nsw i64 %457, %458
  store i64 %459, i64* %13, align 8
  %460 = load i32, i32* %5, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %5, align 4
  %462 = load i64, i64* %12, align 8
  %463 = load i64, i64* %9, align 8
  %464 = ashr i64 %463, 14
  %465 = load i64, i64* %9, align 8
  %466 = shl i64 %465, 50
  %467 = or i64 %464, %466
  %468 = load i64, i64* %9, align 8
  %469 = ashr i64 %468, 18
  %470 = load i64, i64* %9, align 8
  %471 = shl i64 %470, 46
  %472 = or i64 %469, %471
  %473 = xor i64 %467, %472
  %474 = load i64, i64* %9, align 8
  %475 = ashr i64 %474, 41
  %476 = load i64, i64* %9, align 8
  %477 = shl i64 %476, 23
  %478 = or i64 %475, %477
  %479 = xor i64 %473, %478
  %480 = add nsw i64 %462, %479
  %481 = load i64, i64* %11, align 8
  %482 = load i64, i64* %9, align 8
  %483 = load i64, i64* %10, align 8
  %484 = load i64, i64* %11, align 8
  %485 = xor i64 %483, %484
  %486 = and i64 %482, %485
  %487 = xor i64 %481, %486
  %488 = add nsw i64 %480, %487
  %489 = load i32*, i32** @K, align 8
  %490 = load i32, i32* %5, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  %495 = add nsw i64 %488, %494
  %496 = load i32, i32* %5, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %497
  %499 = load i64, i64* %498, align 8
  %500 = add nsw i64 %495, %499
  store i64 %500, i64* %6, align 8
  %501 = load i64, i64* %13, align 8
  %502 = ashr i64 %501, 28
  %503 = load i64, i64* %13, align 8
  %504 = shl i64 %503, 36
  %505 = or i64 %502, %504
  %506 = load i64, i64* %13, align 8
  %507 = ashr i64 %506, 34
  %508 = load i64, i64* %13, align 8
  %509 = shl i64 %508, 30
  %510 = or i64 %507, %509
  %511 = xor i64 %505, %510
  %512 = load i64, i64* %13, align 8
  %513 = ashr i64 %512, 39
  %514 = load i64, i64* %13, align 8
  %515 = shl i64 %514, 25
  %516 = or i64 %513, %515
  %517 = xor i64 %511, %516
  %518 = load i64, i64* %13, align 8
  %519 = load i64, i64* %14, align 8
  %520 = and i64 %518, %519
  %521 = load i64, i64* %15, align 8
  %522 = load i64, i64* %13, align 8
  %523 = load i64, i64* %14, align 8
  %524 = or i64 %522, %523
  %525 = and i64 %521, %524
  %526 = or i64 %520, %525
  %527 = add nsw i64 %517, %526
  store i64 %527, i64* %7, align 8
  %528 = load i64, i64* %6, align 8
  %529 = load i64, i64* %16, align 8
  %530 = add nsw i64 %529, %528
  store i64 %530, i64* %16, align 8
  %531 = load i64, i64* %6, align 8
  %532 = load i64, i64* %7, align 8
  %533 = add nsw i64 %531, %532
  store i64 %533, i64* %12, align 8
  %534 = load i32, i32* %5, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %5, align 4
  %536 = load i64, i64* %11, align 8
  %537 = load i64, i64* %16, align 8
  %538 = ashr i64 %537, 14
  %539 = load i64, i64* %16, align 8
  %540 = shl i64 %539, 50
  %541 = or i64 %538, %540
  %542 = load i64, i64* %16, align 8
  %543 = ashr i64 %542, 18
  %544 = load i64, i64* %16, align 8
  %545 = shl i64 %544, 46
  %546 = or i64 %543, %545
  %547 = xor i64 %541, %546
  %548 = load i64, i64* %16, align 8
  %549 = ashr i64 %548, 41
  %550 = load i64, i64* %16, align 8
  %551 = shl i64 %550, 23
  %552 = or i64 %549, %551
  %553 = xor i64 %547, %552
  %554 = add nsw i64 %536, %553
  %555 = load i64, i64* %10, align 8
  %556 = load i64, i64* %16, align 8
  %557 = load i64, i64* %9, align 8
  %558 = load i64, i64* %10, align 8
  %559 = xor i64 %557, %558
  %560 = and i64 %556, %559
  %561 = xor i64 %555, %560
  %562 = add nsw i64 %554, %561
  %563 = load i32*, i32** @K, align 8
  %564 = load i32, i32* %5, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = add nsw i64 %562, %568
  %570 = load i32, i32* %5, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %571
  %573 = load i64, i64* %572, align 8
  %574 = add nsw i64 %569, %573
  store i64 %574, i64* %6, align 8
  %575 = load i64, i64* %12, align 8
  %576 = ashr i64 %575, 28
  %577 = load i64, i64* %12, align 8
  %578 = shl i64 %577, 36
  %579 = or i64 %576, %578
  %580 = load i64, i64* %12, align 8
  %581 = ashr i64 %580, 34
  %582 = load i64, i64* %12, align 8
  %583 = shl i64 %582, 30
  %584 = or i64 %581, %583
  %585 = xor i64 %579, %584
  %586 = load i64, i64* %12, align 8
  %587 = ashr i64 %586, 39
  %588 = load i64, i64* %12, align 8
  %589 = shl i64 %588, 25
  %590 = or i64 %587, %589
  %591 = xor i64 %585, %590
  %592 = load i64, i64* %12, align 8
  %593 = load i64, i64* %13, align 8
  %594 = and i64 %592, %593
  %595 = load i64, i64* %14, align 8
  %596 = load i64, i64* %12, align 8
  %597 = load i64, i64* %13, align 8
  %598 = or i64 %596, %597
  %599 = and i64 %595, %598
  %600 = or i64 %594, %599
  %601 = add nsw i64 %591, %600
  store i64 %601, i64* %7, align 8
  %602 = load i64, i64* %6, align 8
  %603 = load i64, i64* %15, align 8
  %604 = add nsw i64 %603, %602
  store i64 %604, i64* %15, align 8
  %605 = load i64, i64* %6, align 8
  %606 = load i64, i64* %7, align 8
  %607 = add nsw i64 %605, %606
  store i64 %607, i64* %11, align 8
  %608 = load i32, i32* %5, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %5, align 4
  %610 = load i64, i64* %10, align 8
  %611 = load i64, i64* %15, align 8
  %612 = ashr i64 %611, 14
  %613 = load i64, i64* %15, align 8
  %614 = shl i64 %613, 50
  %615 = or i64 %612, %614
  %616 = load i64, i64* %15, align 8
  %617 = ashr i64 %616, 18
  %618 = load i64, i64* %15, align 8
  %619 = shl i64 %618, 46
  %620 = or i64 %617, %619
  %621 = xor i64 %615, %620
  %622 = load i64, i64* %15, align 8
  %623 = ashr i64 %622, 41
  %624 = load i64, i64* %15, align 8
  %625 = shl i64 %624, 23
  %626 = or i64 %623, %625
  %627 = xor i64 %621, %626
  %628 = add nsw i64 %610, %627
  %629 = load i64, i64* %9, align 8
  %630 = load i64, i64* %15, align 8
  %631 = load i64, i64* %16, align 8
  %632 = load i64, i64* %9, align 8
  %633 = xor i64 %631, %632
  %634 = and i64 %630, %633
  %635 = xor i64 %629, %634
  %636 = add nsw i64 %628, %635
  %637 = load i32*, i32** @K, align 8
  %638 = load i32, i32* %5, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  %643 = add nsw i64 %636, %642
  %644 = load i32, i32* %5, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %645
  %647 = load i64, i64* %646, align 8
  %648 = add nsw i64 %643, %647
  store i64 %648, i64* %6, align 8
  %649 = load i64, i64* %11, align 8
  %650 = ashr i64 %649, 28
  %651 = load i64, i64* %11, align 8
  %652 = shl i64 %651, 36
  %653 = or i64 %650, %652
  %654 = load i64, i64* %11, align 8
  %655 = ashr i64 %654, 34
  %656 = load i64, i64* %11, align 8
  %657 = shl i64 %656, 30
  %658 = or i64 %655, %657
  %659 = xor i64 %653, %658
  %660 = load i64, i64* %11, align 8
  %661 = ashr i64 %660, 39
  %662 = load i64, i64* %11, align 8
  %663 = shl i64 %662, 25
  %664 = or i64 %661, %663
  %665 = xor i64 %659, %664
  %666 = load i64, i64* %11, align 8
  %667 = load i64, i64* %12, align 8
  %668 = and i64 %666, %667
  %669 = load i64, i64* %13, align 8
  %670 = load i64, i64* %11, align 8
  %671 = load i64, i64* %12, align 8
  %672 = or i64 %670, %671
  %673 = and i64 %669, %672
  %674 = or i64 %668, %673
  %675 = add nsw i64 %665, %674
  store i64 %675, i64* %7, align 8
  %676 = load i64, i64* %6, align 8
  %677 = load i64, i64* %14, align 8
  %678 = add nsw i64 %677, %676
  store i64 %678, i64* %14, align 8
  %679 = load i64, i64* %6, align 8
  %680 = load i64, i64* %7, align 8
  %681 = add nsw i64 %679, %680
  store i64 %681, i64* %10, align 8
  %682 = load i32, i32* %5, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %5, align 4
  %684 = load i64, i64* %9, align 8
  %685 = load i64, i64* %14, align 8
  %686 = ashr i64 %685, 14
  %687 = load i64, i64* %14, align 8
  %688 = shl i64 %687, 50
  %689 = or i64 %686, %688
  %690 = load i64, i64* %14, align 8
  %691 = ashr i64 %690, 18
  %692 = load i64, i64* %14, align 8
  %693 = shl i64 %692, 46
  %694 = or i64 %691, %693
  %695 = xor i64 %689, %694
  %696 = load i64, i64* %14, align 8
  %697 = ashr i64 %696, 41
  %698 = load i64, i64* %14, align 8
  %699 = shl i64 %698, 23
  %700 = or i64 %697, %699
  %701 = xor i64 %695, %700
  %702 = add nsw i64 %684, %701
  %703 = load i64, i64* %16, align 8
  %704 = load i64, i64* %14, align 8
  %705 = load i64, i64* %15, align 8
  %706 = load i64, i64* %16, align 8
  %707 = xor i64 %705, %706
  %708 = and i64 %704, %707
  %709 = xor i64 %703, %708
  %710 = add nsw i64 %702, %709
  %711 = load i32*, i32** @K, align 8
  %712 = load i32, i32* %5, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32, i32* %711, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = sext i32 %715 to i64
  %717 = add nsw i64 %710, %716
  %718 = load i32, i32* %5, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [80 x i64], [80 x i64]* %8, i64 0, i64 %719
  %721 = load i64, i64* %720, align 8
  %722 = add nsw i64 %717, %721
  store i64 %722, i64* %6, align 8
  %723 = load i64, i64* %10, align 8
  %724 = ashr i64 %723, 28
  %725 = load i64, i64* %10, align 8
  %726 = shl i64 %725, 36
  %727 = or i64 %724, %726
  %728 = load i64, i64* %10, align 8
  %729 = ashr i64 %728, 34
  %730 = load i64, i64* %10, align 8
  %731 = shl i64 %730, 30
  %732 = or i64 %729, %731
  %733 = xor i64 %727, %732
  %734 = load i64, i64* %10, align 8
  %735 = ashr i64 %734, 39
  %736 = load i64, i64* %10, align 8
  %737 = shl i64 %736, 25
  %738 = or i64 %735, %737
  %739 = xor i64 %733, %738
  %740 = load i64, i64* %10, align 8
  %741 = load i64, i64* %11, align 8
  %742 = and i64 %740, %741
  %743 = load i64, i64* %12, align 8
  %744 = load i64, i64* %10, align 8
  %745 = load i64, i64* %11, align 8
  %746 = or i64 %744, %745
  %747 = and i64 %743, %746
  %748 = or i64 %742, %747
  %749 = add nsw i64 %739, %748
  store i64 %749, i64* %7, align 8
  %750 = load i64, i64* %6, align 8
  %751 = load i64, i64* %13, align 8
  %752 = add nsw i64 %751, %750
  store i64 %752, i64* %13, align 8
  %753 = load i64, i64* %6, align 8
  %754 = load i64, i64* %7, align 8
  %755 = add nsw i64 %753, %754
  store i64 %755, i64* %9, align 8
  %756 = load i32, i32* %5, align 4
  %757 = add nsw i32 %756, 1
  store i32 %757, i32* %5, align 4
  br label %758

758:                                              ; preds = %165
  %759 = load i32, i32* %5, align 4
  %760 = icmp slt i32 %759, 80
  br i1 %760, label %165, label %761

761:                                              ; preds = %758
  %762 = load i64, i64* %9, align 8
  %763 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %764 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %763, i32 0, i32 0
  %765 = load i64*, i64** %764, align 8
  %766 = getelementptr inbounds i64, i64* %765, i64 0
  %767 = load i64, i64* %766, align 8
  %768 = add nsw i64 %767, %762
  store i64 %768, i64* %766, align 8
  %769 = load i64, i64* %10, align 8
  %770 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %771 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %770, i32 0, i32 0
  %772 = load i64*, i64** %771, align 8
  %773 = getelementptr inbounds i64, i64* %772, i64 1
  %774 = load i64, i64* %773, align 8
  %775 = add nsw i64 %774, %769
  store i64 %775, i64* %773, align 8
  %776 = load i64, i64* %11, align 8
  %777 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %778 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %777, i32 0, i32 0
  %779 = load i64*, i64** %778, align 8
  %780 = getelementptr inbounds i64, i64* %779, i64 2
  %781 = load i64, i64* %780, align 8
  %782 = add nsw i64 %781, %776
  store i64 %782, i64* %780, align 8
  %783 = load i64, i64* %12, align 8
  %784 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %785 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %784, i32 0, i32 0
  %786 = load i64*, i64** %785, align 8
  %787 = getelementptr inbounds i64, i64* %786, i64 3
  %788 = load i64, i64* %787, align 8
  %789 = add nsw i64 %788, %783
  store i64 %789, i64* %787, align 8
  %790 = load i64, i64* %13, align 8
  %791 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %792 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %791, i32 0, i32 0
  %793 = load i64*, i64** %792, align 8
  %794 = getelementptr inbounds i64, i64* %793, i64 4
  %795 = load i64, i64* %794, align 8
  %796 = add nsw i64 %795, %790
  store i64 %796, i64* %794, align 8
  %797 = load i64, i64* %14, align 8
  %798 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %799 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %798, i32 0, i32 0
  %800 = load i64*, i64** %799, align 8
  %801 = getelementptr inbounds i64, i64* %800, i64 5
  %802 = load i64, i64* %801, align 8
  %803 = add nsw i64 %802, %797
  store i64 %803, i64* %801, align 8
  %804 = load i64, i64* %15, align 8
  %805 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %806 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %805, i32 0, i32 0
  %807 = load i64*, i64** %806, align 8
  %808 = getelementptr inbounds i64, i64* %807, i64 6
  %809 = load i64, i64* %808, align 8
  %810 = add nsw i64 %809, %804
  store i64 %810, i64* %808, align 8
  %811 = load i64, i64* %16, align 8
  %812 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %813 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %812, i32 0, i32 0
  %814 = load i64*, i64** %813, align 8
  %815 = getelementptr inbounds i64, i64* %814, i64 7
  %816 = load i64, i64* %815, align 8
  %817 = add nsw i64 %816, %811
  store i64 %817, i64* %815, align 8
  ret void
}

declare dso_local i32 @GET_UINT64_BE(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
