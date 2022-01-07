; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_yule_filter_stereo_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_yule_filter_stereo_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, float*, float*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*, i32)* @yule_filter_stereo_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yule_filter_stereo_samples(%struct.TYPE_3__* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load double*, double** %18, align 8
  store double* %19, double** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load double*, double** %21, align 8
  store double* %22, double** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load float*, float** %24, align 8
  store float* %25, float** %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load float*, float** %27, align 8
  store float* %28, float** %12, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  store i32 -20, i32* %16, align 4
  br label %32

32:                                               ; preds = %59, %4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load float*, float** %11, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %36, i64 %40
  %42 = load float, float* %41, align 4
  %43 = call i32 @fabs(float %42)
  %44 = sitofp i32 %43 to double
  %45 = fcmp ogt double %44, 1.000000e-10
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = load float*, float** %12, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %47, i64 %51
  %53 = load float, float* %52, align 4
  %54 = call i32 @fabs(float %53)
  %55 = sitofp i32 %54 to double
  %56 = fcmp ogt double %55, 1.000000e-10
  br i1 %56, label %57, label %58

57:                                               ; preds = %46, %35
  br label %62

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %32

62:                                               ; preds = %57, %32
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load float*, float** %67, align 8
  %69 = call i32 @memset(float* %68, i32 0, i32 8)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load float*, float** %71, align 8
  %73 = call i32 @memset(float* %72, i32 0, i32 8)
  br label %74

74:                                               ; preds = %65, %62
  br label %75

75:                                               ; preds = %638, %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %8, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %639

79:                                               ; preds = %75
  %80 = load float*, float** %6, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  %82 = load float, float* %81, align 4
  %83 = load float*, float** %12, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  store float %82, float* %86, align 4
  %87 = fpext float %82 to double
  %88 = load double*, double** %10, align 8
  %89 = getelementptr inbounds double, double* %88, i64 0
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  store double %91, double* %13, align 8
  %92 = load float*, float** %6, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %12, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %95, i64 %98
  store float %94, float* %99, align 4
  %100 = fpext float %94 to double
  %101 = load double*, double** %10, align 8
  %102 = getelementptr inbounds double, double* %101, i64 0
  %103 = load double, double* %102, align 8
  %104 = fmul double %100, %103
  store double %104, double* %14, align 8
  %105 = load float*, float** %12, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = load double*, double** %10, align 8
  %113 = getelementptr inbounds double, double* %112, i64 1
  %114 = load double, double* %113, align 8
  %115 = fmul double %111, %114
  %116 = load float*, float** %11, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %116, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = load double*, double** %9, align 8
  %124 = getelementptr inbounds double, double* %123, i64 1
  %125 = load double, double* %124, align 8
  %126 = fmul double %122, %125
  %127 = fsub double %115, %126
  %128 = load double, double* %13, align 8
  %129 = fadd double %128, %127
  store double %129, double* %13, align 8
  %130 = load float*, float** %12, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %130, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = load double*, double** %10, align 8
  %138 = getelementptr inbounds double, double* %137, i64 1
  %139 = load double, double* %138, align 8
  %140 = fmul double %136, %139
  %141 = load float*, float** %11, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %141, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = load double*, double** %9, align 8
  %149 = getelementptr inbounds double, double* %148, i64 1
  %150 = load double, double* %149, align 8
  %151 = fmul double %147, %150
  %152 = fsub double %140, %151
  %153 = load double, double* %14, align 8
  %154 = fadd double %153, %152
  store double %154, double* %14, align 8
  %155 = load float*, float** %12, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sub nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %155, i64 %158
  %160 = load float, float* %159, align 4
  %161 = fpext float %160 to double
  %162 = load double*, double** %10, align 8
  %163 = getelementptr inbounds double, double* %162, i64 2
  %164 = load double, double* %163, align 8
  %165 = fmul double %161, %164
  %166 = load float*, float** %11, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sub nsw i32 %167, 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %166, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fpext float %171 to double
  %173 = load double*, double** %9, align 8
  %174 = getelementptr inbounds double, double* %173, i64 2
  %175 = load double, double* %174, align 8
  %176 = fmul double %172, %175
  %177 = fsub double %165, %176
  %178 = load double, double* %13, align 8
  %179 = fadd double %178, %177
  store double %179, double* %13, align 8
  %180 = load float*, float** %12, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sub nsw i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %180, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = load double*, double** %10, align 8
  %188 = getelementptr inbounds double, double* %187, i64 2
  %189 = load double, double* %188, align 8
  %190 = fmul double %186, %189
  %191 = load float*, float** %11, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sub nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fpext float %196 to double
  %198 = load double*, double** %9, align 8
  %199 = getelementptr inbounds double, double* %198, i64 2
  %200 = load double, double* %199, align 8
  %201 = fmul double %197, %200
  %202 = fsub double %190, %201
  %203 = load double, double* %14, align 8
  %204 = fadd double %203, %202
  store double %204, double* %14, align 8
  %205 = load float*, float** %12, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %206, 6
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %205, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fpext float %210 to double
  %212 = load double*, double** %10, align 8
  %213 = getelementptr inbounds double, double* %212, i64 3
  %214 = load double, double* %213, align 8
  %215 = fmul double %211, %214
  %216 = load float*, float** %11, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sub nsw i32 %217, 6
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %216, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fpext float %221 to double
  %223 = load double*, double** %9, align 8
  %224 = getelementptr inbounds double, double* %223, i64 3
  %225 = load double, double* %224, align 8
  %226 = fmul double %222, %225
  %227 = fsub double %215, %226
  %228 = load double, double* %13, align 8
  %229 = fadd double %228, %227
  store double %229, double* %13, align 8
  %230 = load float*, float** %12, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sub nsw i32 %231, 5
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %230, i64 %233
  %235 = load float, float* %234, align 4
  %236 = fpext float %235 to double
  %237 = load double*, double** %10, align 8
  %238 = getelementptr inbounds double, double* %237, i64 3
  %239 = load double, double* %238, align 8
  %240 = fmul double %236, %239
  %241 = load float*, float** %11, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sub nsw i32 %242, 5
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %241, i64 %244
  %246 = load float, float* %245, align 4
  %247 = fpext float %246 to double
  %248 = load double*, double** %9, align 8
  %249 = getelementptr inbounds double, double* %248, i64 3
  %250 = load double, double* %249, align 8
  %251 = fmul double %247, %250
  %252 = fsub double %240, %251
  %253 = load double, double* %14, align 8
  %254 = fadd double %253, %252
  store double %254, double* %14, align 8
  %255 = load float*, float** %12, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sub nsw i32 %256, 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %255, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fpext float %260 to double
  %262 = load double*, double** %10, align 8
  %263 = getelementptr inbounds double, double* %262, i64 4
  %264 = load double, double* %263, align 8
  %265 = fmul double %261, %264
  %266 = load float*, float** %11, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sub nsw i32 %267, 8
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %266, i64 %269
  %271 = load float, float* %270, align 4
  %272 = fpext float %271 to double
  %273 = load double*, double** %9, align 8
  %274 = getelementptr inbounds double, double* %273, i64 4
  %275 = load double, double* %274, align 8
  %276 = fmul double %272, %275
  %277 = fsub double %265, %276
  %278 = load double, double* %13, align 8
  %279 = fadd double %278, %277
  store double %279, double* %13, align 8
  %280 = load float*, float** %12, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sub nsw i32 %281, 7
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %280, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fpext float %285 to double
  %287 = load double*, double** %10, align 8
  %288 = getelementptr inbounds double, double* %287, i64 4
  %289 = load double, double* %288, align 8
  %290 = fmul double %286, %289
  %291 = load float*, float** %11, align 8
  %292 = load i32, i32* %15, align 4
  %293 = sub nsw i32 %292, 7
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %291, i64 %294
  %296 = load float, float* %295, align 4
  %297 = fpext float %296 to double
  %298 = load double*, double** %9, align 8
  %299 = getelementptr inbounds double, double* %298, i64 4
  %300 = load double, double* %299, align 8
  %301 = fmul double %297, %300
  %302 = fsub double %290, %301
  %303 = load double, double* %14, align 8
  %304 = fadd double %303, %302
  store double %304, double* %14, align 8
  %305 = load float*, float** %12, align 8
  %306 = load i32, i32* %15, align 4
  %307 = sub nsw i32 %306, 10
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %305, i64 %308
  %310 = load float, float* %309, align 4
  %311 = fpext float %310 to double
  %312 = load double*, double** %10, align 8
  %313 = getelementptr inbounds double, double* %312, i64 5
  %314 = load double, double* %313, align 8
  %315 = fmul double %311, %314
  %316 = load float*, float** %11, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sub nsw i32 %317, 10
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds float, float* %316, i64 %319
  %321 = load float, float* %320, align 4
  %322 = fpext float %321 to double
  %323 = load double*, double** %9, align 8
  %324 = getelementptr inbounds double, double* %323, i64 5
  %325 = load double, double* %324, align 8
  %326 = fmul double %322, %325
  %327 = fsub double %315, %326
  %328 = load double, double* %13, align 8
  %329 = fadd double %328, %327
  store double %329, double* %13, align 8
  %330 = load float*, float** %12, align 8
  %331 = load i32, i32* %15, align 4
  %332 = sub nsw i32 %331, 9
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %330, i64 %333
  %335 = load float, float* %334, align 4
  %336 = fpext float %335 to double
  %337 = load double*, double** %10, align 8
  %338 = getelementptr inbounds double, double* %337, i64 5
  %339 = load double, double* %338, align 8
  %340 = fmul double %336, %339
  %341 = load float*, float** %11, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sub nsw i32 %342, 9
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %341, i64 %344
  %346 = load float, float* %345, align 4
  %347 = fpext float %346 to double
  %348 = load double*, double** %9, align 8
  %349 = getelementptr inbounds double, double* %348, i64 5
  %350 = load double, double* %349, align 8
  %351 = fmul double %347, %350
  %352 = fsub double %340, %351
  %353 = load double, double* %14, align 8
  %354 = fadd double %353, %352
  store double %354, double* %14, align 8
  %355 = load float*, float** %12, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sub nsw i32 %356, 12
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %355, i64 %358
  %360 = load float, float* %359, align 4
  %361 = fpext float %360 to double
  %362 = load double*, double** %10, align 8
  %363 = getelementptr inbounds double, double* %362, i64 6
  %364 = load double, double* %363, align 8
  %365 = fmul double %361, %364
  %366 = load float*, float** %11, align 8
  %367 = load i32, i32* %15, align 4
  %368 = sub nsw i32 %367, 12
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %366, i64 %369
  %371 = load float, float* %370, align 4
  %372 = fpext float %371 to double
  %373 = load double*, double** %9, align 8
  %374 = getelementptr inbounds double, double* %373, i64 6
  %375 = load double, double* %374, align 8
  %376 = fmul double %372, %375
  %377 = fsub double %365, %376
  %378 = load double, double* %13, align 8
  %379 = fadd double %378, %377
  store double %379, double* %13, align 8
  %380 = load float*, float** %12, align 8
  %381 = load i32, i32* %15, align 4
  %382 = sub nsw i32 %381, 11
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %380, i64 %383
  %385 = load float, float* %384, align 4
  %386 = fpext float %385 to double
  %387 = load double*, double** %10, align 8
  %388 = getelementptr inbounds double, double* %387, i64 6
  %389 = load double, double* %388, align 8
  %390 = fmul double %386, %389
  %391 = load float*, float** %11, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sub nsw i32 %392, 11
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %391, i64 %394
  %396 = load float, float* %395, align 4
  %397 = fpext float %396 to double
  %398 = load double*, double** %9, align 8
  %399 = getelementptr inbounds double, double* %398, i64 6
  %400 = load double, double* %399, align 8
  %401 = fmul double %397, %400
  %402 = fsub double %390, %401
  %403 = load double, double* %14, align 8
  %404 = fadd double %403, %402
  store double %404, double* %14, align 8
  %405 = load float*, float** %12, align 8
  %406 = load i32, i32* %15, align 4
  %407 = sub nsw i32 %406, 14
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds float, float* %405, i64 %408
  %410 = load float, float* %409, align 4
  %411 = fpext float %410 to double
  %412 = load double*, double** %10, align 8
  %413 = getelementptr inbounds double, double* %412, i64 7
  %414 = load double, double* %413, align 8
  %415 = fmul double %411, %414
  %416 = load float*, float** %11, align 8
  %417 = load i32, i32* %15, align 4
  %418 = sub nsw i32 %417, 14
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %416, i64 %419
  %421 = load float, float* %420, align 4
  %422 = fpext float %421 to double
  %423 = load double*, double** %9, align 8
  %424 = getelementptr inbounds double, double* %423, i64 7
  %425 = load double, double* %424, align 8
  %426 = fmul double %422, %425
  %427 = fsub double %415, %426
  %428 = load double, double* %13, align 8
  %429 = fadd double %428, %427
  store double %429, double* %13, align 8
  %430 = load float*, float** %12, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sub nsw i32 %431, 13
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds float, float* %430, i64 %433
  %435 = load float, float* %434, align 4
  %436 = fpext float %435 to double
  %437 = load double*, double** %10, align 8
  %438 = getelementptr inbounds double, double* %437, i64 7
  %439 = load double, double* %438, align 8
  %440 = fmul double %436, %439
  %441 = load float*, float** %11, align 8
  %442 = load i32, i32* %15, align 4
  %443 = sub nsw i32 %442, 13
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %441, i64 %444
  %446 = load float, float* %445, align 4
  %447 = fpext float %446 to double
  %448 = load double*, double** %9, align 8
  %449 = getelementptr inbounds double, double* %448, i64 7
  %450 = load double, double* %449, align 8
  %451 = fmul double %447, %450
  %452 = fsub double %440, %451
  %453 = load double, double* %14, align 8
  %454 = fadd double %453, %452
  store double %454, double* %14, align 8
  %455 = load float*, float** %12, align 8
  %456 = load i32, i32* %15, align 4
  %457 = sub nsw i32 %456, 16
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %455, i64 %458
  %460 = load float, float* %459, align 4
  %461 = fpext float %460 to double
  %462 = load double*, double** %10, align 8
  %463 = getelementptr inbounds double, double* %462, i64 8
  %464 = load double, double* %463, align 8
  %465 = fmul double %461, %464
  %466 = load float*, float** %11, align 8
  %467 = load i32, i32* %15, align 4
  %468 = sub nsw i32 %467, 16
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float, float* %466, i64 %469
  %471 = load float, float* %470, align 4
  %472 = fpext float %471 to double
  %473 = load double*, double** %9, align 8
  %474 = getelementptr inbounds double, double* %473, i64 8
  %475 = load double, double* %474, align 8
  %476 = fmul double %472, %475
  %477 = fsub double %465, %476
  %478 = load double, double* %13, align 8
  %479 = fadd double %478, %477
  store double %479, double* %13, align 8
  %480 = load float*, float** %12, align 8
  %481 = load i32, i32* %15, align 4
  %482 = sub nsw i32 %481, 15
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %480, i64 %483
  %485 = load float, float* %484, align 4
  %486 = fpext float %485 to double
  %487 = load double*, double** %10, align 8
  %488 = getelementptr inbounds double, double* %487, i64 8
  %489 = load double, double* %488, align 8
  %490 = fmul double %486, %489
  %491 = load float*, float** %11, align 8
  %492 = load i32, i32* %15, align 4
  %493 = sub nsw i32 %492, 15
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float, float* %491, i64 %494
  %496 = load float, float* %495, align 4
  %497 = fpext float %496 to double
  %498 = load double*, double** %9, align 8
  %499 = getelementptr inbounds double, double* %498, i64 8
  %500 = load double, double* %499, align 8
  %501 = fmul double %497, %500
  %502 = fsub double %490, %501
  %503 = load double, double* %14, align 8
  %504 = fadd double %503, %502
  store double %504, double* %14, align 8
  %505 = load float*, float** %12, align 8
  %506 = load i32, i32* %15, align 4
  %507 = sub nsw i32 %506, 18
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %505, i64 %508
  %510 = load float, float* %509, align 4
  %511 = fpext float %510 to double
  %512 = load double*, double** %10, align 8
  %513 = getelementptr inbounds double, double* %512, i64 9
  %514 = load double, double* %513, align 8
  %515 = fmul double %511, %514
  %516 = load float*, float** %11, align 8
  %517 = load i32, i32* %15, align 4
  %518 = sub nsw i32 %517, 18
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %516, i64 %519
  %521 = load float, float* %520, align 4
  %522 = fpext float %521 to double
  %523 = load double*, double** %9, align 8
  %524 = getelementptr inbounds double, double* %523, i64 9
  %525 = load double, double* %524, align 8
  %526 = fmul double %522, %525
  %527 = fsub double %515, %526
  %528 = load double, double* %13, align 8
  %529 = fadd double %528, %527
  store double %529, double* %13, align 8
  %530 = load float*, float** %12, align 8
  %531 = load i32, i32* %15, align 4
  %532 = sub nsw i32 %531, 17
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float, float* %530, i64 %533
  %535 = load float, float* %534, align 4
  %536 = fpext float %535 to double
  %537 = load double*, double** %10, align 8
  %538 = getelementptr inbounds double, double* %537, i64 9
  %539 = load double, double* %538, align 8
  %540 = fmul double %536, %539
  %541 = load float*, float** %11, align 8
  %542 = load i32, i32* %15, align 4
  %543 = sub nsw i32 %542, 17
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds float, float* %541, i64 %544
  %546 = load float, float* %545, align 4
  %547 = fpext float %546 to double
  %548 = load double*, double** %9, align 8
  %549 = getelementptr inbounds double, double* %548, i64 9
  %550 = load double, double* %549, align 8
  %551 = fmul double %547, %550
  %552 = fsub double %540, %551
  %553 = load double, double* %14, align 8
  %554 = fadd double %553, %552
  store double %554, double* %14, align 8
  %555 = load float*, float** %12, align 8
  %556 = load i32, i32* %15, align 4
  %557 = sub nsw i32 %556, 20
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds float, float* %555, i64 %558
  %560 = load float, float* %559, align 4
  %561 = fpext float %560 to double
  %562 = load double*, double** %10, align 8
  %563 = getelementptr inbounds double, double* %562, i64 10
  %564 = load double, double* %563, align 8
  %565 = fmul double %561, %564
  %566 = load float*, float** %11, align 8
  %567 = load i32, i32* %15, align 4
  %568 = sub nsw i32 %567, 20
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds float, float* %566, i64 %569
  %571 = load float, float* %570, align 4
  %572 = fpext float %571 to double
  %573 = load double*, double** %9, align 8
  %574 = getelementptr inbounds double, double* %573, i64 10
  %575 = load double, double* %574, align 8
  %576 = fmul double %572, %575
  %577 = fsub double %565, %576
  %578 = load double, double* %13, align 8
  %579 = fadd double %578, %577
  store double %579, double* %13, align 8
  %580 = load float*, float** %12, align 8
  %581 = load i32, i32* %15, align 4
  %582 = sub nsw i32 %581, 19
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %580, i64 %583
  %585 = load float, float* %584, align 4
  %586 = fpext float %585 to double
  %587 = load double*, double** %10, align 8
  %588 = getelementptr inbounds double, double* %587, i64 10
  %589 = load double, double* %588, align 8
  %590 = fmul double %586, %589
  %591 = load float*, float** %11, align 8
  %592 = load i32, i32* %15, align 4
  %593 = sub nsw i32 %592, 19
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float, float* %591, i64 %594
  %596 = load float, float* %595, align 4
  %597 = fpext float %596 to double
  %598 = load double*, double** %9, align 8
  %599 = getelementptr inbounds double, double* %598, i64 10
  %600 = load double, double* %599, align 8
  %601 = fmul double %597, %600
  %602 = fsub double %590, %601
  %603 = load double, double* %14, align 8
  %604 = fadd double %603, %602
  store double %604, double* %14, align 8
  %605 = load double, double* %13, align 8
  %606 = fptrunc double %605 to float
  %607 = load float*, float** %11, align 8
  %608 = load i32, i32* %15, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds float, float* %607, i64 %609
  store float %606, float* %610, align 4
  %611 = load float*, float** %7, align 8
  %612 = getelementptr inbounds float, float* %611, i64 0
  store float %606, float* %612, align 4
  %613 = load double, double* %14, align 8
  %614 = fptrunc double %613 to float
  %615 = load float*, float** %11, align 8
  %616 = load i32, i32* %15, align 4
  %617 = add nsw i32 %616, 1
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds float, float* %615, i64 %618
  store float %614, float* %619, align 4
  %620 = load float*, float** %7, align 8
  %621 = getelementptr inbounds float, float* %620, i64 1
  store float %614, float* %621, align 4
  %622 = load float*, float** %6, align 8
  %623 = getelementptr inbounds float, float* %622, i64 2
  store float* %623, float** %6, align 8
  %624 = load float*, float** %7, align 8
  %625 = getelementptr inbounds float, float* %624, i64 2
  store float* %625, float** %7, align 8
  %626 = load i32, i32* %15, align 4
  %627 = add nsw i32 %626, 2
  store i32 %627, i32* %15, align 4
  %628 = icmp eq i32 %627, 256
  br i1 %628, label %629, label %638

629:                                              ; preds = %79
  %630 = load float*, float** %11, align 8
  %631 = load float*, float** %11, align 8
  %632 = getelementptr inbounds float, float* %631, i64 236
  %633 = call i32 @memcpy(float* %630, float* %632, i32 80)
  %634 = load float*, float** %12, align 8
  %635 = load float*, float** %12, align 8
  %636 = getelementptr inbounds float, float* %635, i64 236
  %637 = call i32 @memcpy(float* %634, float* %636, i32 80)
  store i32 20, i32* %15, align 4
  br label %638

638:                                              ; preds = %629, %79
  br label %75

639:                                              ; preds = %75
  %640 = load i32, i32* %15, align 4
  %641 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %642 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %641, i32 0, i32 4
  store i32 %640, i32* %642, align 8
  ret void
}

declare dso_local i32 @fabs(float) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
