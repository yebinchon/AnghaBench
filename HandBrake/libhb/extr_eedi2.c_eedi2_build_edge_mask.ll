; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_build_edge_mask.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_build_edge_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_build_edge_mask(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load i32, i32* %14, align 4
  %30 = mul nsw i32 %29, 10
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %16, align 4
  %32 = mul nsw i32 %31, 81
  store i32 %32, i32* %16, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sdiv i32 %34, 2
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @memset(i8* %33, i32 0, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %21, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %22, align 8
  store i32 1, i32* %20, align 4
  br label %56

56:                                               ; preds = %591, %9
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %594

61:                                               ; preds = %56
  store i32 1, i32* %19, align 4
  br label %62

62:                                               ; preds = %571, %61
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %18, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %574

67:                                               ; preds = %62
  %68 = load i8*, i8** %21, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %73, %79
  %81 = call i32 @abs(i32 %80) #3
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %115

83:                                               ; preds = %67
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8*, i8** %22, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %89, %95
  %97 = call i32 @abs(i32 %96) #3
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %115

99:                                               ; preds = %83
  %100 = load i8*, i8** %21, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %22, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %105, %111
  %113 = call i32 @abs(i32 %112) #3
  %114 = icmp slt i32 %113, 10
  br i1 %114, label %223, label %115

115:                                              ; preds = %99, %83, %67
  %116 = load i8*, i8** %21, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %122, %129
  %131 = call i32 @abs(i32 %130) #3
  %132 = icmp slt i32 %131, 10
  br i1 %132, label %133, label %224

133:                                              ; preds = %115
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8*, i8** %22, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 %140, %147
  %149 = call i32 @abs(i32 %148) #3
  %150 = icmp slt i32 %149, 10
  br i1 %150, label %151, label %224

151:                                              ; preds = %133
  %152 = load i8*, i8** %21, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %22, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = sub nsw i32 %158, %165
  %167 = call i32 @abs(i32 %166) #3
  %168 = icmp slt i32 %167, 10
  br i1 %168, label %169, label %224

169:                                              ; preds = %151
  %170 = load i8*, i8** %21, align 8
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = sub nsw i32 %176, %183
  %185 = call i32 @abs(i32 %184) #3
  %186 = icmp slt i32 %185, 10
  br i1 %186, label %187, label %224

187:                                              ; preds = %169
  %188 = load i8*, i8** %12, align 8
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %22, align 8
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %194, %201
  %203 = call i32 @abs(i32 %202) #3
  %204 = icmp slt i32 %203, 10
  br i1 %204, label %205, label %224

205:                                              ; preds = %187
  %206 = load i8*, i8** %21, align 8
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = load i8*, i8** %22, align 8
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = sub nsw i32 %212, %219
  %221 = call i32 @abs(i32 %220) #3
  %222 = icmp slt i32 %221, 10
  br i1 %222, label %223, label %224

223:                                              ; preds = %205, %99
  br label %571

224:                                              ; preds = %205, %187, %169, %151, %133, %115
  %225 = load i8*, i8** %21, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = load i8*, i8** %21, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %231, %237
  %239 = load i8*, i8** %21, align 8
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add nsw i32 %238, %245
  %247 = load i8*, i8** %12, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = add nsw i32 %246, %253
  %255 = load i8*, i8** %12, align 8
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = add nsw i32 %254, %260
  %262 = load i8*, i8** %12, align 8
  %263 = load i32, i32* %19, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = add nsw i32 %261, %268
  %270 = load i8*, i8** %22, align 8
  %271 = load i32, i32* %19, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = add nsw i32 %269, %276
  %278 = load i8*, i8** %22, align 8
  %279 = load i32, i32* %19, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %277, %283
  %285 = load i8*, i8** %22, align 8
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = add nsw i32 %284, %291
  store i32 %292, i32* %23, align 4
  %293 = load i8*, i8** %21, align 8
  %294 = load i32, i32* %19, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %293, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = load i8*, i8** %21, align 8
  %301 = load i32, i32* %19, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %300, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = mul nsw i32 %299, %306
  %308 = load i8*, i8** %21, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = load i8*, i8** %21, align 8
  %315 = load i32, i32* %19, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 %313, %319
  %321 = add nsw i32 %307, %320
  %322 = load i8*, i8** %21, align 8
  %323 = load i32, i32* %19, align 4
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = load i8*, i8** %21, align 8
  %330 = load i32, i32* %19, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = mul nsw i32 %328, %335
  %337 = add nsw i32 %321, %336
  %338 = load i8*, i8** %12, align 8
  %339 = load i32, i32* %19, align 4
  %340 = sub nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %338, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = load i8*, i8** %12, align 8
  %346 = load i32, i32* %19, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = mul nsw i32 %344, %351
  %353 = add nsw i32 %337, %352
  %354 = load i8*, i8** %12, align 8
  %355 = load i32, i32* %19, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = load i8*, i8** %12, align 8
  %361 = load i32, i32* %19, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = mul nsw i32 %359, %365
  %367 = add nsw i32 %353, %366
  %368 = load i8*, i8** %12, align 8
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = load i8*, i8** %12, align 8
  %376 = load i32, i32* %19, align 4
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = mul nsw i32 %374, %381
  %383 = add nsw i32 %367, %382
  %384 = load i8*, i8** %22, align 8
  %385 = load i32, i32* %19, align 4
  %386 = sub nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %384, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = load i8*, i8** %22, align 8
  %392 = load i32, i32* %19, align 4
  %393 = sub nsw i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %391, i64 %394
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = mul nsw i32 %390, %397
  %399 = add nsw i32 %383, %398
  %400 = load i8*, i8** %22, align 8
  %401 = load i32, i32* %19, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = load i8*, i8** %22, align 8
  %407 = load i32, i32* %19, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = mul nsw i32 %405, %411
  %413 = add nsw i32 %399, %412
  %414 = load i8*, i8** %22, align 8
  %415 = load i32, i32* %19, align 4
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %414, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = load i8*, i8** %22, align 8
  %422 = load i32, i32* %19, align 4
  %423 = add nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = zext i8 %426 to i32
  %428 = mul nsw i32 %420, %427
  %429 = add nsw i32 %413, %428
  store i32 %429, i32* %24, align 4
  %430 = load i32, i32* %24, align 4
  %431 = mul nsw i32 9, %430
  %432 = load i32, i32* %23, align 4
  %433 = load i32, i32* %23, align 4
  %434 = mul nsw i32 %432, %433
  %435 = sub nsw i32 %431, %434
  %436 = load i32, i32* %16, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %224
  br label %571

439:                                              ; preds = %224
  %440 = load i8*, i8** %12, align 8
  %441 = load i32, i32* %19, align 4
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %440, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = load i8*, i8** %12, align 8
  %448 = load i32, i32* %19, align 4
  %449 = sub nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %447, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  %454 = sub nsw i32 %446, %453
  store i32 %454, i32* %25, align 4
  %455 = load i8*, i8** %21, align 8
  %456 = load i32, i32* %19, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  %459 = load i8, i8* %458, align 1
  %460 = zext i8 %459 to i32
  %461 = load i8*, i8** %22, align 8
  %462 = load i32, i32* %19, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i32
  %467 = sub nsw i32 %460, %466
  %468 = call i32 @abs(i32 %467) #3
  %469 = load i8*, i8** %21, align 8
  %470 = load i32, i32* %19, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = load i8, i8* %472, align 1
  %474 = zext i8 %473 to i32
  %475 = load i8*, i8** %12, align 8
  %476 = load i32, i32* %19, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %475, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i32
  %481 = sub nsw i32 %474, %480
  %482 = call i32 @abs(i32 %481) #3
  %483 = call i32 @MAX(i32 %468, i32 %482)
  %484 = load i8*, i8** %12, align 8
  %485 = load i32, i32* %19, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i8, i8* %484, i64 %486
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i32
  %490 = load i8*, i8** %22, align 8
  %491 = load i32, i32* %19, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %490, i64 %492
  %494 = load i8, i8* %493, align 1
  %495 = zext i8 %494 to i32
  %496 = sub nsw i32 %489, %495
  %497 = call i32 @abs(i32 %496) #3
  %498 = call i32 @MAX(i32 %483, i32 %497)
  store i32 %498, i32* %26, align 4
  %499 = load i32, i32* %25, align 4
  %500 = load i32, i32* %25, align 4
  %501 = mul nsw i32 %499, %500
  %502 = load i32, i32* %26, align 4
  %503 = load i32, i32* %26, align 4
  %504 = mul nsw i32 %502, %503
  %505 = add nsw i32 %501, %504
  %506 = load i32, i32* %14, align 4
  %507 = icmp sge i32 %505, %506
  br i1 %507, label %508, label %513

508:                                              ; preds = %439
  %509 = load i8*, i8** %10, align 8
  %510 = load i32, i32* %19, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %509, i64 %511
  store i8 -1, i8* %512, align 1
  br label %571

513:                                              ; preds = %439
  %514 = load i8*, i8** %12, align 8
  %515 = load i32, i32* %19, align 4
  %516 = sub nsw i32 %515, 1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8, i8* %514, i64 %517
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i32
  %521 = load i8*, i8** %12, align 8
  %522 = load i32, i32* %19, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i32
  %527 = mul nsw i32 2, %526
  %528 = sub nsw i32 %520, %527
  %529 = load i8*, i8** %12, align 8
  %530 = load i32, i32* %19, align 4
  %531 = add nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8, i8* %529, i64 %532
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i32
  %536 = add nsw i32 %528, %535
  store i32 %536, i32* %27, align 4
  %537 = load i8*, i8** %21, align 8
  %538 = load i32, i32* %19, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8, i8* %537, i64 %539
  %541 = load i8, i8* %540, align 1
  %542 = zext i8 %541 to i32
  %543 = load i8*, i8** %12, align 8
  %544 = load i32, i32* %19, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  %547 = load i8, i8* %546, align 1
  %548 = zext i8 %547 to i32
  %549 = mul nsw i32 2, %548
  %550 = sub nsw i32 %542, %549
  %551 = load i8*, i8** %22, align 8
  %552 = load i32, i32* %19, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %551, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = zext i8 %555 to i32
  %557 = add nsw i32 %550, %556
  store i32 %557, i32* %28, align 4
  %558 = load i32, i32* %27, align 4
  %559 = call i32 @abs(i32 %558) #3
  %560 = load i32, i32* %28, align 4
  %561 = call i32 @abs(i32 %560) #3
  %562 = add nsw i32 %559, %561
  %563 = load i32, i32* %15, align 4
  %564 = icmp sge i32 %562, %563
  br i1 %564, label %565, label %570

565:                                              ; preds = %513
  %566 = load i8*, i8** %10, align 8
  %567 = load i32, i32* %19, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* %566, i64 %568
  store i8 -1, i8* %569, align 1
  br label %570

570:                                              ; preds = %565, %513
  br label %571

571:                                              ; preds = %570, %508, %438, %223
  %572 = load i32, i32* %19, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %19, align 4
  br label %62

574:                                              ; preds = %62
  %575 = load i32, i32* %11, align 4
  %576 = load i8*, i8** %10, align 8
  %577 = sext i32 %575 to i64
  %578 = getelementptr inbounds i8, i8* %576, i64 %577
  store i8* %578, i8** %10, align 8
  %579 = load i32, i32* %13, align 4
  %580 = load i8*, i8** %21, align 8
  %581 = sext i32 %579 to i64
  %582 = getelementptr inbounds i8, i8* %580, i64 %581
  store i8* %582, i8** %21, align 8
  %583 = load i32, i32* %13, align 4
  %584 = load i8*, i8** %12, align 8
  %585 = sext i32 %583 to i64
  %586 = getelementptr inbounds i8, i8* %584, i64 %585
  store i8* %586, i8** %12, align 8
  %587 = load i32, i32* %13, align 4
  %588 = load i8*, i8** %22, align 8
  %589 = sext i32 %587 to i64
  %590 = getelementptr inbounds i8, i8* %588, i64 %589
  store i8* %590, i8** %22, align 8
  br label %591

591:                                              ; preds = %574
  %592 = load i32, i32* %20, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %20, align 4
  br label %56

594:                                              ; preds = %56
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
