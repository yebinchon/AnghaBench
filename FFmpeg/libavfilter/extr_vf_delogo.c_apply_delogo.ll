; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_delogo.c_apply_delogo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_delogo.c_apply_delogo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32)* @apply_delogo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_delogo(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = bitcast %struct.TYPE_3__* %15 to i64*
  store i64 %6, i64* %53, align 4
  store i32* %0, i32** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %54 = load i32, i32* %22, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i8* @FFMAX(i32 %55, i32 0)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %44, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %24, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %20, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i8* @FFMAX(i32 %62, i32 0)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %45, align 4
  %65 = load i32, i32* %23, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i8* @FFMAX(i32 %66, i32 0)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %46, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %25, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %21, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i8* @FFMAX(i32 %73, i32 0)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %47, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %44, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %48, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %24, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %45, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %49, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %46, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %50, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %25, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %47, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %51, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %50, align 4
  %96 = load i32, i32* %19, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %48, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32* %102, i32** %39, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %50, align 4
  %105 = load i32, i32* %19, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %49, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %41, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load i32, i32* %51, align 4
  %114 = load i32, i32* %19, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %48, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %40, align 8
  %121 = load i32, i32* %28, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %14
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @av_image_copy_plane(i32* %124, i32 %125, i32* %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %123, %14
  %132 = load i32, i32* %50, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %17, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32*, i32** %16, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %16, align 8
  %139 = load i32, i32* %50, align 4
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* %19, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32*, i32** %18, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %18, align 8
  %146 = load i32, i32* %50, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %30, align 4
  br label %148

148:                                              ; preds = %523, %131
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %51, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %526

152:                                              ; preds = %148
  %153 = load i32*, i32** %39, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %30, align 4
  %156 = load i32, i32* %50, align 4
  %157 = sub nsw i32 %155, %156
  %158 = mul nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %39, align 8
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %30, align 4
  %165 = load i32, i32* %50, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sub nsw i32 %166, 1
  %168 = mul nsw i32 %163, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %162, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %161, %171
  %173 = load i32*, i32** %39, align 8
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %30, align 4
  %176 = load i32, i32* %50, align 4
  %177 = sub nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  %179 = mul nsw i32 %174, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %172, %182
  store i32 %183, i32* %42, align 4
  %184 = load i32*, i32** %41, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %50, align 4
  %188 = sub nsw i32 %186, %187
  %189 = mul nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %184, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %41, align 8
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %30, align 4
  %196 = load i32, i32* %50, align 4
  %197 = sub nsw i32 %195, %196
  %198 = sub nsw i32 %197, 1
  %199 = mul nsw i32 %194, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %193, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %192, %202
  %204 = load i32*, i32** %41, align 8
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %30, align 4
  %207 = load i32, i32* %50, align 4
  %208 = sub nsw i32 %206, %207
  %209 = add nsw i32 %208, 1
  %210 = mul nsw i32 %205, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %204, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %203, %213
  store i32 %214, i32* %43, align 4
  %215 = load i32, i32* %48, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %29, align 4
  %217 = load i32*, i32** %16, align 8
  %218 = load i32, i32* %48, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  store i32* %221, i32** %37, align 8
  %222 = load i32*, i32** %18, align 8
  %223 = load i32, i32* %48, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32* %226, i32** %38, align 8
  br label %227

227:                                              ; preds = %507, %152
  %228 = load i32, i32* %29, align 4
  %229 = load i32, i32* %49, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %514

231:                                              ; preds = %227
  %232 = load i32, i32* %27, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %256

234:                                              ; preds = %231
  %235 = load i32, i32* %30, align 4
  %236 = load i32, i32* %50, align 4
  %237 = add nsw i32 %236, 1
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %254, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %30, align 4
  %241 = load i32, i32* %51, align 4
  %242 = sub nsw i32 %241, 1
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %254, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %29, align 4
  %246 = load i32, i32* %48, align 4
  %247 = add nsw i32 %246, 1
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %29, align 4
  %251 = load i32, i32* %49, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %249, %244, %239, %234
  %255 = load i32*, i32** %37, align 8
  store i32 0, i32* %255, align 4
  br label %507

256:                                              ; preds = %249, %231
  %257 = load i32, i32* %49, align 4
  %258 = load i32, i32* %29, align 4
  %259 = sub nsw i32 %257, %258
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* %50, align 4
  %262 = sub nsw i32 %260, %261
  %263 = mul nsw i32 %259, %262
  %264 = load i32, i32* %51, align 4
  %265 = load i32, i32* %30, align 4
  %266 = sub nsw i32 %264, %265
  %267 = mul nsw i32 %263, %266
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %267, %269
  store i32 %270, i32* %32, align 4
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %48, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* %30, align 4
  %275 = load i32, i32* %50, align 4
  %276 = sub nsw i32 %274, %275
  %277 = mul nsw i32 %273, %276
  %278 = load i32, i32* %51, align 4
  %279 = load i32, i32* %30, align 4
  %280 = sub nsw i32 %278, %279
  %281 = mul nsw i32 %277, %280
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %281, %283
  store i32 %284, i32* %33, align 4
  %285 = load i32, i32* %29, align 4
  %286 = load i32, i32* %48, align 4
  %287 = sub nsw i32 %285, %286
  %288 = load i32, i32* %49, align 4
  %289 = load i32, i32* %29, align 4
  %290 = sub nsw i32 %288, %289
  %291 = mul nsw i32 %287, %290
  %292 = load i32, i32* %51, align 4
  %293 = load i32, i32* %30, align 4
  %294 = sub nsw i32 %292, %293
  %295 = mul nsw i32 %291, %294
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %295, %297
  store i32 %298, i32* %34, align 4
  %299 = load i32, i32* %29, align 4
  %300 = load i32, i32* %48, align 4
  %301 = sub nsw i32 %299, %300
  %302 = load i32, i32* %49, align 4
  %303 = load i32, i32* %29, align 4
  %304 = sub nsw i32 %302, %303
  %305 = mul nsw i32 %301, %304
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* %50, align 4
  %308 = sub nsw i32 %306, %307
  %309 = mul nsw i32 %305, %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %309, %311
  store i32 %312, i32* %35, align 4
  %313 = load i32, i32* %42, align 4
  %314 = load i32, i32* %32, align 4
  %315 = mul i32 %313, %314
  %316 = load i32, i32* %43, align 4
  %317 = load i32, i32* %33, align 4
  %318 = mul i32 %316, %317
  %319 = add i32 %315, %318
  %320 = load i32*, i32** %39, align 8
  %321 = load i32, i32* %29, align 4
  %322 = load i32, i32* %48, align 4
  %323 = sub nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %320, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %39, align 8
  %328 = load i32, i32* %29, align 4
  %329 = load i32, i32* %48, align 4
  %330 = sub nsw i32 %328, %329
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %327, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %326, %334
  %336 = load i32*, i32** %39, align 8
  %337 = load i32, i32* %29, align 4
  %338 = load i32, i32* %48, align 4
  %339 = sub nsw i32 %337, %338
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %336, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %335, %343
  %345 = load i32, i32* %34, align 4
  %346 = mul nsw i32 %344, %345
  %347 = add i32 %319, %346
  %348 = load i32*, i32** %40, align 8
  %349 = load i32, i32* %29, align 4
  %350 = load i32, i32* %48, align 4
  %351 = sub nsw i32 %349, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %348, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** %40, align 8
  %356 = load i32, i32* %29, align 4
  %357 = load i32, i32* %48, align 4
  %358 = sub nsw i32 %356, %357
  %359 = sub nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %355, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %354, %362
  %364 = load i32*, i32** %40, align 8
  %365 = load i32, i32* %29, align 4
  %366 = load i32, i32* %48, align 4
  %367 = sub nsw i32 %365, %366
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %364, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %363, %371
  %373 = load i32, i32* %35, align 4
  %374 = mul nsw i32 %372, %373
  %375 = add i32 %347, %374
  store i32 %375, i32* %31, align 4
  %376 = load i32, i32* %32, align 4
  %377 = load i32, i32* %33, align 4
  %378 = add nsw i32 %376, %377
  %379 = load i32, i32* %34, align 4
  %380 = add nsw i32 %378, %379
  %381 = load i32, i32* %35, align 4
  %382 = add nsw i32 %380, %381
  %383 = mul i32 %382, 3
  store i32 %383, i32* %36, align 4
  %384 = load i32, i32* %31, align 4
  %385 = load i32, i32* %36, align 4
  %386 = ashr i32 %385, 1
  %387 = add nsw i32 %384, %386
  %388 = load i32, i32* %36, align 4
  %389 = sdiv i32 %387, %388
  store i32 %389, i32* %31, align 4
  %390 = load i32, i32* %30, align 4
  %391 = load i32, i32* %23, align 4
  %392 = load i32, i32* %26, align 4
  %393 = add i32 %391, %392
  %394 = icmp uge i32 %390, %393
  br i1 %394, label %395, label %420

395:                                              ; preds = %256
  %396 = load i32, i32* %30, align 4
  %397 = load i32, i32* %23, align 4
  %398 = load i32, i32* %25, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32, i32* %26, align 4
  %401 = sub i32 %399, %400
  %402 = icmp ult i32 %396, %401
  br i1 %402, label %403, label %420

403:                                              ; preds = %395
  %404 = load i32, i32* %29, align 4
  %405 = load i32, i32* %22, align 4
  %406 = load i32, i32* %26, align 4
  %407 = add i32 %405, %406
  %408 = icmp uge i32 %404, %407
  br i1 %408, label %409, label %420

409:                                              ; preds = %403
  %410 = load i32, i32* %29, align 4
  %411 = load i32, i32* %22, align 4
  %412 = load i32, i32* %24, align 4
  %413 = add nsw i32 %411, %412
  %414 = load i32, i32* %26, align 4
  %415 = sub i32 %413, %414
  %416 = icmp ult i32 %410, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %409
  %418 = load i32, i32* %31, align 4
  %419 = load i32*, i32** %37, align 8
  store i32 %418, i32* %419, align 4
  br label %506

420:                                              ; preds = %409, %403, %395, %256
  store i32 0, i32* %52, align 4
  %421 = load i32, i32* %29, align 4
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* %26, align 4
  %424 = add i32 %422, %423
  %425 = icmp ult i32 %421, %424
  br i1 %425, label %426, label %435

426:                                              ; preds = %420
  %427 = load i32, i32* %52, align 4
  %428 = load i32, i32* %22, align 4
  %429 = load i32, i32* %29, align 4
  %430 = sub nsw i32 %428, %429
  %431 = load i32, i32* %26, align 4
  %432 = add i32 %430, %431
  %433 = call i8* @FFMAX(i32 %427, i32 %432)
  %434 = ptrtoint i8* %433 to i32
  store i32 %434, i32* %52, align 4
  br label %456

435:                                              ; preds = %420
  %436 = load i32, i32* %29, align 4
  %437 = load i32, i32* %22, align 4
  %438 = load i32, i32* %24, align 4
  %439 = add nsw i32 %437, %438
  %440 = load i32, i32* %26, align 4
  %441 = sub i32 %439, %440
  %442 = icmp uge i32 %436, %441
  br i1 %442, label %443, label %455

443:                                              ; preds = %435
  %444 = load i32, i32* %52, align 4
  %445 = load i32, i32* %29, align 4
  %446 = load i32, i32* %22, align 4
  %447 = load i32, i32* %24, align 4
  %448 = add nsw i32 %446, %447
  %449 = sub nsw i32 %448, 1
  %450 = load i32, i32* %26, align 4
  %451 = sub i32 %449, %450
  %452 = sub i32 %445, %451
  %453 = call i8* @FFMAX(i32 %444, i32 %452)
  %454 = ptrtoint i8* %453 to i32
  store i32 %454, i32* %52, align 4
  br label %455

455:                                              ; preds = %443, %435
  br label %456

456:                                              ; preds = %455, %426
  %457 = load i32, i32* %30, align 4
  %458 = load i32, i32* %23, align 4
  %459 = load i32, i32* %26, align 4
  %460 = add i32 %458, %459
  %461 = icmp ult i32 %457, %460
  br i1 %461, label %462, label %471

462:                                              ; preds = %456
  %463 = load i32, i32* %52, align 4
  %464 = load i32, i32* %23, align 4
  %465 = load i32, i32* %30, align 4
  %466 = sub nsw i32 %464, %465
  %467 = load i32, i32* %26, align 4
  %468 = add i32 %466, %467
  %469 = call i8* @FFMAX(i32 %463, i32 %468)
  %470 = ptrtoint i8* %469 to i32
  store i32 %470, i32* %52, align 4
  br label %492

471:                                              ; preds = %456
  %472 = load i32, i32* %30, align 4
  %473 = load i32, i32* %23, align 4
  %474 = load i32, i32* %25, align 4
  %475 = add nsw i32 %473, %474
  %476 = load i32, i32* %26, align 4
  %477 = sub i32 %475, %476
  %478 = icmp uge i32 %472, %477
  br i1 %478, label %479, label %491

479:                                              ; preds = %471
  %480 = load i32, i32* %52, align 4
  %481 = load i32, i32* %30, align 4
  %482 = load i32, i32* %23, align 4
  %483 = load i32, i32* %25, align 4
  %484 = add nsw i32 %482, %483
  %485 = sub nsw i32 %484, 1
  %486 = load i32, i32* %26, align 4
  %487 = sub i32 %485, %486
  %488 = sub i32 %481, %487
  %489 = call i8* @FFMAX(i32 %480, i32 %488)
  %490 = ptrtoint i8* %489 to i32
  store i32 %490, i32* %52, align 4
  br label %491

491:                                              ; preds = %479, %471
  br label %492

492:                                              ; preds = %491, %462
  %493 = load i32*, i32** %38, align 8
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %52, align 4
  %496 = mul i32 %494, %495
  %497 = load i32, i32* %31, align 4
  %498 = load i32, i32* %26, align 4
  %499 = load i32, i32* %52, align 4
  %500 = sub i32 %498, %499
  %501 = mul i32 %497, %500
  %502 = add i32 %496, %501
  %503 = load i32, i32* %26, align 4
  %504 = udiv i32 %502, %503
  %505 = load i32*, i32** %37, align 8
  store i32 %504, i32* %505, align 4
  br label %506

506:                                              ; preds = %492, %417
  br label %507

507:                                              ; preds = %506, %254
  %508 = load i32, i32* %29, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %29, align 4
  %510 = load i32*, i32** %37, align 8
  %511 = getelementptr inbounds i32, i32* %510, i32 1
  store i32* %511, i32** %37, align 8
  %512 = load i32*, i32** %38, align 8
  %513 = getelementptr inbounds i32, i32* %512, i32 1
  store i32* %513, i32** %38, align 8
  br label %227

514:                                              ; preds = %227
  %515 = load i32, i32* %17, align 4
  %516 = load i32*, i32** %16, align 8
  %517 = sext i32 %515 to i64
  %518 = getelementptr inbounds i32, i32* %516, i64 %517
  store i32* %518, i32** %16, align 8
  %519 = load i32, i32* %19, align 4
  %520 = load i32*, i32** %18, align 8
  %521 = sext i32 %519 to i64
  %522 = getelementptr inbounds i32, i32* %520, i64 %521
  store i32* %522, i32** %18, align 8
  br label %523

523:                                              ; preds = %514
  %524 = load i32, i32* %30, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %30, align 4
  br label %148

526:                                              ; preds = %148
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
