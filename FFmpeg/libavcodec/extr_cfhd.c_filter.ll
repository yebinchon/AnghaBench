; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cfhd.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cfhd.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32*, i64, i32, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %432, %8
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %435

23:                                               ; preds = %19
  %24 = load i32, i32* %18, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %147

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = mul i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 11, %31
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = mul i64 1, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 4, %37
  %39 = sub nsw i32 %32, %38
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = mul i64 2, %41
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = add nsw i32 %45, 4
  %47 = ashr i32 %46, 3
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = mul i64 0, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %48, %53
  %55 = ashr i32 %54, 1
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %18, align 4
  %58 = mul nsw i32 2, %57
  %59 = add nsw i32 %58, 0
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = mul i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  store i32 %55, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %26
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %18, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 0
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %10, align 8
  %73 = mul i64 %71, %72
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @av_clip_uintp2_c(i32 %75, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %10, align 8
  %84 = mul i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %66, %26
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = mul i64 0, %88
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 5, %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = mul i64 1, %94
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 4, %97
  %99 = add nsw i32 %92, %98
  %100 = load i32*, i32** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = mul i64 2, %101
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %99, %104
  %106 = add nsw i32 %105, 4
  %107 = ashr i32 %106, 3
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = mul i64 0, %110
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %108, %113
  %115 = ashr i32 %114, 1
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %18, align 4
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = mul i64 %120, %121
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32 %115, i32* %123, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %86
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %18, align 4
  %129 = mul nsw i32 2, %128
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %10, align 8
  %133 = mul i64 %131, %132
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @av_clip_uintp2_c(i32 %135, i32 %136)
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %10, align 8
  %144 = mul i64 %142, %143
  %145 = getelementptr inbounds i32, i32* %138, i64 %144
  store i32 %137, i32* %145, align 4
  br label %146

146:                                              ; preds = %126, %86
  br label %431

147:                                              ; preds = %23
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %293

152:                                              ; preds = %147
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %12, align 8
  %157 = mul i64 %155, %156
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 5, %159
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %12, align 8
  %166 = mul i64 %164, %165
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 4, %168
  %170 = add nsw i32 %160, %169
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sub nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %12, align 8
  %176 = mul i64 %174, %175
  %177 = getelementptr inbounds i32, i32* %171, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %170, %178
  %180 = add nsw i32 %179, 4
  %181 = ashr i32 %180, 3
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %14, align 8
  %187 = mul i64 %185, %186
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %182, %189
  %191 = ashr i32 %190, 1
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* %18, align 4
  %194 = mul nsw i32 2, %193
  %195 = add nsw i32 %194, 0
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %10, align 8
  %198 = mul i64 %196, %197
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  store i32 %191, i32* %199, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %222

202:                                              ; preds = %152
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %18, align 4
  %205 = mul nsw i32 2, %204
  %206 = add nsw i32 %205, 0
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %10, align 8
  %209 = mul i64 %207, %208
  %210 = getelementptr inbounds i32, i32* %203, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @av_clip_uintp2_c(i32 %211, i32 %212)
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %18, align 4
  %216 = mul nsw i32 2, %215
  %217 = add nsw i32 %216, 0
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %10, align 8
  %220 = mul i64 %218, %219
  %221 = getelementptr inbounds i32, i32* %214, i64 %220
  store i32 %213, i32* %221, align 4
  br label %222

222:                                              ; preds = %202, %152
  %223 = load i32*, i32** %11, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %12, align 8
  %227 = mul i64 %225, %226
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 11, %229
  %231 = load i32*, i32** %11, align 8
  %232 = load i32, i32* %18, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %12, align 8
  %236 = mul i64 %234, %235
  %237 = getelementptr inbounds i32, i32* %231, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 4, %238
  %240 = sub nsw i32 %230, %239
  %241 = load i32*, i32** %11, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sub nsw i32 %242, 2
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %12, align 8
  %246 = mul i64 %244, %245
  %247 = getelementptr inbounds i32, i32* %241, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %240, %248
  %250 = add nsw i32 %249, 4
  %251 = ashr i32 %250, 3
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = load i32*, i32** %13, align 8
  %254 = load i32, i32* %18, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %14, align 8
  %257 = mul i64 %255, %256
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %252, %259
  %261 = ashr i32 %260, 1
  %262 = load i32*, i32** %9, align 8
  %263 = load i32, i32* %18, align 4
  %264 = mul nsw i32 2, %263
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %10, align 8
  %268 = mul i64 %266, %267
  %269 = getelementptr inbounds i32, i32* %262, i64 %268
  store i32 %261, i32* %269, align 4
  %270 = load i32, i32* %16, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %292

272:                                              ; preds = %222
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* %18, align 4
  %275 = mul nsw i32 2, %274
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* %10, align 8
  %279 = mul i64 %277, %278
  %280 = getelementptr inbounds i32, i32* %273, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @av_clip_uintp2_c(i32 %281, i32 %282)
  %284 = load i32*, i32** %9, align 8
  %285 = load i32, i32* %18, align 4
  %286 = mul nsw i32 2, %285
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* %10, align 8
  %290 = mul i64 %288, %289
  %291 = getelementptr inbounds i32, i32* %284, i64 %290
  store i32 %283, i32* %291, align 4
  br label %292

292:                                              ; preds = %272, %222
  br label %430

293:                                              ; preds = %147
  %294 = load i32*, i32** %11, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %12, align 8
  %299 = mul i64 %297, %298
  %300 = getelementptr inbounds i32, i32* %294, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %11, align 8
  %303 = load i32, i32* %18, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %12, align 8
  %307 = mul i64 %305, %306
  %308 = getelementptr inbounds i32, i32* %302, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %301, %309
  %311 = add nsw i32 %310, 4
  %312 = ashr i32 %311, 3
  store i32 %312, i32* %17, align 4
  %313 = load i32, i32* %17, align 4
  %314 = load i32*, i32** %11, align 8
  %315 = load i32, i32* %18, align 4
  %316 = sext i32 %315 to i64
  %317 = load i64, i64* %12, align 8
  %318 = mul i64 %316, %317
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %313, %320
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* %14, align 8
  %326 = mul i64 %324, %325
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %321, %328
  %330 = ashr i32 %329, 1
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* %18, align 4
  %333 = mul nsw i32 2, %332
  %334 = add nsw i32 %333, 0
  %335 = sext i32 %334 to i64
  %336 = load i64, i64* %10, align 8
  %337 = mul i64 %335, %336
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  store i32 %330, i32* %338, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %361

341:                                              ; preds = %293
  %342 = load i32*, i32** %9, align 8
  %343 = load i32, i32* %18, align 4
  %344 = mul nsw i32 2, %343
  %345 = add nsw i32 %344, 0
  %346 = sext i32 %345 to i64
  %347 = load i64, i64* %10, align 8
  %348 = mul i64 %346, %347
  %349 = getelementptr inbounds i32, i32* %342, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %16, align 4
  %352 = call i32 @av_clip_uintp2_c(i32 %350, i32 %351)
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* %18, align 4
  %355 = mul nsw i32 2, %354
  %356 = add nsw i32 %355, 0
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* %10, align 8
  %359 = mul i64 %357, %358
  %360 = getelementptr inbounds i32, i32* %353, i64 %359
  store i32 %352, i32* %360, align 4
  br label %361

361:                                              ; preds = %341, %293
  %362 = load i32*, i32** %11, align 8
  %363 = load i32, i32* %18, align 4
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = load i64, i64* %12, align 8
  %367 = mul i64 %365, %366
  %368 = getelementptr inbounds i32, i32* %362, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %11, align 8
  %371 = load i32, i32* %18, align 4
  %372 = sub nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = load i64, i64* %12, align 8
  %375 = mul i64 %373, %374
  %376 = getelementptr inbounds i32, i32* %370, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %369, %377
  %379 = add nsw i32 %378, 4
  %380 = ashr i32 %379, 3
  store i32 %380, i32* %17, align 4
  %381 = load i32, i32* %17, align 4
  %382 = load i32*, i32** %11, align 8
  %383 = load i32, i32* %18, align 4
  %384 = sext i32 %383 to i64
  %385 = load i64, i64* %12, align 8
  %386 = mul i64 %384, %385
  %387 = getelementptr inbounds i32, i32* %382, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %381, %388
  %390 = load i32*, i32** %13, align 8
  %391 = load i32, i32* %18, align 4
  %392 = sext i32 %391 to i64
  %393 = load i64, i64* %14, align 8
  %394 = mul i64 %392, %393
  %395 = getelementptr inbounds i32, i32* %390, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %389, %396
  %398 = ashr i32 %397, 1
  %399 = load i32*, i32** %9, align 8
  %400 = load i32, i32* %18, align 4
  %401 = mul nsw i32 2, %400
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = load i64, i64* %10, align 8
  %405 = mul i64 %403, %404
  %406 = getelementptr inbounds i32, i32* %399, i64 %405
  store i32 %398, i32* %406, align 4
  %407 = load i32, i32* %16, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %429

409:                                              ; preds = %361
  %410 = load i32*, i32** %9, align 8
  %411 = load i32, i32* %18, align 4
  %412 = mul nsw i32 2, %411
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = load i64, i64* %10, align 8
  %416 = mul i64 %414, %415
  %417 = getelementptr inbounds i32, i32* %410, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %16, align 4
  %420 = call i32 @av_clip_uintp2_c(i32 %418, i32 %419)
  %421 = load i32*, i32** %9, align 8
  %422 = load i32, i32* %18, align 4
  %423 = mul nsw i32 2, %422
  %424 = add nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = load i64, i64* %10, align 8
  %427 = mul i64 %425, %426
  %428 = getelementptr inbounds i32, i32* %421, i64 %427
  store i32 %420, i32* %428, align 4
  br label %429

429:                                              ; preds = %409, %361
  br label %430

430:                                              ; preds = %429, %292
  br label %431

431:                                              ; preds = %430, %146
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %18, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %18, align 4
  br label %19

435:                                              ; preds = %19
  ret void
}

declare dso_local i32 @av_clip_uintp2_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
