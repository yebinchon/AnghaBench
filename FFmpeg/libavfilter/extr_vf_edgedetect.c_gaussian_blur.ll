; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_gaussian_blur.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_gaussian_blur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32, i32*, i32)* @gaussian_blur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaussian_blur(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @memcpy(i32* %17, i32* %18, i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %7
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %13, align 8
  br label %44

44:                                               ; preds = %31, %7
  store i32 2, i32* %16, align 4
  br label %45

45:                                               ; preds = %355, %44
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 2
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %358

50:                                               ; preds = %45
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %50
  store i32 2, i32* %15, align 4
  br label %65

65:                                               ; preds = %315, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 2
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %318

70:                                               ; preds = %65
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 -2, %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 2, %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %79, %88
  %90 = mul nsw i32 %89, 2
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 -2, %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 2, %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %99, %108
  %110 = mul nsw i32 %109, 4
  %111 = add nsw i32 %90, %110
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 -2, %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 2, %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %119, %127
  %129 = mul nsw i32 %128, 5
  %130 = add nsw i32 %111, %129
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = mul nsw i32 -2, %132
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %14, align 4
  %142 = mul nsw i32 2, %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %139, %148
  %150 = mul nsw i32 %149, 4
  %151 = add nsw i32 %130, %150
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = mul nsw i32 -2, %153
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %154, %155
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 2, %162
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %163, %164
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %161, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %160, %169
  %171 = mul nsw i32 %170, 2
  %172 = add nsw i32 %151, %171
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sub nsw i32 0, %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %175, %176
  %178 = sub nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %183, %184
  %186 = sub nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %181, %189
  %191 = mul nsw i32 %190, 4
  %192 = add nsw i32 %172, %191
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sub nsw i32 0, %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %195, %196
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %201, %209
  %211 = mul nsw i32 %210, 9
  %212 = add nsw i32 %192, %211
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sub nsw i32 0, %214
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %213, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %220, %227
  %229 = mul nsw i32 %228, 12
  %230 = add nsw i32 %212, %229
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sub nsw i32 0, %232
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %233, %234
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %231, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %13, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %241, %242
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %240, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %239, %247
  %249 = mul nsw i32 %248, 9
  %250 = add nsw i32 %230, %249
  %251 = load i32*, i32** %13, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sub nsw i32 0, %252
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %253, %254
  %256 = add nsw i32 %255, 2
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %261, %262
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %260, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %259, %267
  %269 = mul nsw i32 %268, 4
  %270 = add nsw i32 %250, %269
  %271 = load i32*, i32** %13, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sub nsw i32 %272, 2
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %276, 5
  %278 = add nsw i32 %270, %277
  %279 = load i32*, i32** %13, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 %284, 12
  %286 = add nsw i32 %278, %285
  %287 = load i32*, i32** %13, align 8
  %288 = load i32, i32* %15, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %291, 15
  %293 = add nsw i32 %286, %292
  %294 = load i32*, i32** %13, align 8
  %295 = load i32, i32* %15, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %299, 12
  %301 = add nsw i32 %293, %300
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %15, align 4
  %304 = add nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = mul nsw i32 %307, 5
  %309 = add nsw i32 %301, %308
  %310 = sdiv i32 %309, 159
  %311 = load i32*, i32** %11, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  store i32 %310, i32* %314, align 4
  br label %315

315:                                              ; preds = %70
  %316 = load i32, i32* %15, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %15, align 4
  br label %65

318:                                              ; preds = %65
  %319 = load i32, i32* %9, align 4
  %320 = icmp sgt i32 %319, 2
  br i1 %320, label %321, label %331

321:                                              ; preds = %318
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %11, align 8
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %326, i32* %330, align 4
  br label %331

331:                                              ; preds = %321, %318
  %332 = load i32, i32* %9, align 4
  %333 = icmp sgt i32 %332, 3
  br i1 %333, label %334, label %346

334:                                              ; preds = %331
  %335 = load i32*, i32** %13, align 8
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32*, i32** %11, align 8
  %342 = load i32, i32* %15, align 4
  %343 = add nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  store i32 %340, i32* %345, align 4
  br label %346

346:                                              ; preds = %334, %331
  %347 = load i32, i32* %12, align 4
  %348 = load i32*, i32** %11, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32* %350, i32** %11, align 8
  %351 = load i32, i32* %14, align 4
  %352 = load i32*, i32** %13, align 8
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32* %354, i32** %13, align 8
  br label %355

355:                                              ; preds = %346
  %356 = load i32, i32* %16, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %16, align 4
  br label %45

358:                                              ; preds = %45
  %359 = load i32, i32* %10, align 4
  %360 = icmp sgt i32 %359, 2
  br i1 %360, label %361, label %374

361:                                              ; preds = %358
  %362 = load i32*, i32** %11, align 8
  %363 = load i32*, i32** %13, align 8
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @memcpy(i32* %362, i32* %363, i32 %364)
  %366 = load i32, i32* %12, align 4
  %367 = load i32*, i32** %11, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  store i32* %369, i32** %11, align 8
  %370 = load i32, i32* %14, align 4
  %371 = load i32*, i32** %13, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %13, align 8
  br label %374

374:                                              ; preds = %361, %358
  %375 = load i32, i32* %10, align 4
  %376 = icmp sgt i32 %375, 3
  br i1 %376, label %377, label %382

377:                                              ; preds = %374
  %378 = load i32*, i32** %11, align 8
  %379 = load i32*, i32** %13, align 8
  %380 = load i32, i32* %9, align 4
  %381 = call i32 @memcpy(i32* %378, i32* %379, i32 %380)
  br label %382

382:                                              ; preds = %377, %374
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
