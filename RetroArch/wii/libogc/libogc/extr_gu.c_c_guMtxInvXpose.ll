; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxInvXpose.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxInvXpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_guMtxInvXpose(float** %0, float** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  %5 = alloca float**, align 8
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca float, align 4
  store float** %0, float*** %4, align 8
  store float** %1, float*** %5, align 8
  %9 = load float**, float*** %4, align 8
  %10 = load float**, float*** %5, align 8
  %11 = icmp eq float** %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load float**, float*** %6, align 8
  store float** %13, float*** %7, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load float**, float*** %5, align 8
  store float** %15, float*** %7, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load float**, float*** %4, align 8
  %18 = getelementptr inbounds float*, float** %17, i64 0
  %19 = load float*, float** %18, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load float**, float*** %4, align 8
  %23 = getelementptr inbounds float*, float** %22, i64 1
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fmul float %21, %26
  %28 = load float**, float*** %4, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 2
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  %32 = load float, float* %31, align 4
  %33 = fmul float %27, %32
  %34 = load float**, float*** %4, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  %38 = load float, float* %37, align 4
  %39 = load float**, float*** %4, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  %43 = load float, float* %42, align 4
  %44 = fmul float %38, %43
  %45 = load float**, float*** %4, align 8
  %46 = getelementptr inbounds float*, float** %45, i64 2
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = fmul float %44, %49
  %51 = fadd float %33, %50
  %52 = load float**, float*** %4, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 0
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = load float**, float*** %4, align 8
  %58 = getelementptr inbounds float*, float** %57, i64 1
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 0
  %61 = load float, float* %60, align 4
  %62 = fmul float %56, %61
  %63 = load float**, float*** %4, align 8
  %64 = getelementptr inbounds float*, float** %63, i64 2
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = fadd float %51, %68
  %70 = load float**, float*** %4, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 2
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  %74 = load float, float* %73, align 4
  %75 = load float**, float*** %4, align 8
  %76 = getelementptr inbounds float*, float** %75, i64 1
  %77 = load float*, float** %76, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = fmul float %74, %79
  %81 = load float**, float*** %4, align 8
  %82 = getelementptr inbounds float*, float** %81, i64 0
  %83 = load float*, float** %82, align 8
  %84 = getelementptr inbounds float, float* %83, i64 2
  %85 = load float, float* %84, align 4
  %86 = fmul float %80, %85
  %87 = fsub float %69, %86
  %88 = load float**, float*** %4, align 8
  %89 = getelementptr inbounds float*, float** %88, i64 1
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  %92 = load float, float* %91, align 4
  %93 = load float**, float*** %4, align 8
  %94 = getelementptr inbounds float*, float** %93, i64 0
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %92, %97
  %99 = load float**, float*** %4, align 8
  %100 = getelementptr inbounds float*, float** %99, i64 2
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  %103 = load float, float* %102, align 4
  %104 = fmul float %98, %103
  %105 = fsub float %87, %104
  %106 = load float**, float*** %4, align 8
  %107 = getelementptr inbounds float*, float** %106, i64 0
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds float, float* %108, i64 0
  %110 = load float, float* %109, align 4
  %111 = load float**, float*** %4, align 8
  %112 = getelementptr inbounds float*, float** %111, i64 2
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load float, float* %114, align 4
  %116 = fmul float %110, %115
  %117 = load float**, float*** %4, align 8
  %118 = getelementptr inbounds float*, float** %117, i64 1
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 2
  %121 = load float, float* %120, align 4
  %122 = fmul float %116, %121
  %123 = fsub float %105, %122
  store float %123, float* %8, align 4
  %124 = load float, float* %8, align 4
  %125 = fcmp oeq float %124, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %415

127:                                              ; preds = %16
  %128 = load float, float* %8, align 4
  %129 = fdiv float 1.000000e+00, %128
  store float %129, float* %8, align 4
  %130 = load float**, float*** %4, align 8
  %131 = getelementptr inbounds float*, float** %130, i64 1
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 1
  %134 = load float, float* %133, align 4
  %135 = load float**, float*** %4, align 8
  %136 = getelementptr inbounds float*, float** %135, i64 2
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 2
  %139 = load float, float* %138, align 4
  %140 = fmul float %134, %139
  %141 = load float**, float*** %4, align 8
  %142 = getelementptr inbounds float*, float** %141, i64 2
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load float, float* %144, align 4
  %146 = load float**, float*** %4, align 8
  %147 = getelementptr inbounds float*, float** %146, i64 1
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 2
  %150 = load float, float* %149, align 4
  %151 = fmul float %145, %150
  %152 = fsub float %140, %151
  %153 = load float, float* %8, align 4
  %154 = fmul float %152, %153
  %155 = load float**, float*** %7, align 8
  %156 = getelementptr inbounds float*, float** %155, i64 0
  %157 = load float*, float** %156, align 8
  %158 = getelementptr inbounds float, float* %157, i64 0
  store float %154, float* %158, align 4
  %159 = load float**, float*** %4, align 8
  %160 = getelementptr inbounds float*, float** %159, i64 1
  %161 = load float*, float** %160, align 8
  %162 = getelementptr inbounds float, float* %161, i64 0
  %163 = load float, float* %162, align 4
  %164 = load float**, float*** %4, align 8
  %165 = getelementptr inbounds float*, float** %164, i64 2
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 2
  %168 = load float, float* %167, align 4
  %169 = fmul float %163, %168
  %170 = load float**, float*** %4, align 8
  %171 = getelementptr inbounds float*, float** %170, i64 2
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds float, float* %172, i64 0
  %174 = load float, float* %173, align 4
  %175 = load float**, float*** %4, align 8
  %176 = getelementptr inbounds float*, float** %175, i64 1
  %177 = load float*, float** %176, align 8
  %178 = getelementptr inbounds float, float* %177, i64 2
  %179 = load float, float* %178, align 4
  %180 = fmul float %174, %179
  %181 = fsub float %169, %180
  %182 = fneg float %181
  %183 = load float, float* %8, align 4
  %184 = fmul float %182, %183
  %185 = load float**, float*** %7, align 8
  %186 = getelementptr inbounds float*, float** %185, i64 0
  %187 = load float*, float** %186, align 8
  %188 = getelementptr inbounds float, float* %187, i64 1
  store float %184, float* %188, align 4
  %189 = load float**, float*** %4, align 8
  %190 = getelementptr inbounds float*, float** %189, i64 1
  %191 = load float*, float** %190, align 8
  %192 = getelementptr inbounds float, float* %191, i64 0
  %193 = load float, float* %192, align 4
  %194 = load float**, float*** %4, align 8
  %195 = getelementptr inbounds float*, float** %194, i64 2
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 1
  %198 = load float, float* %197, align 4
  %199 = fmul float %193, %198
  %200 = load float**, float*** %4, align 8
  %201 = getelementptr inbounds float*, float** %200, i64 2
  %202 = load float*, float** %201, align 8
  %203 = getelementptr inbounds float, float* %202, i64 0
  %204 = load float, float* %203, align 4
  %205 = load float**, float*** %4, align 8
  %206 = getelementptr inbounds float*, float** %205, i64 1
  %207 = load float*, float** %206, align 8
  %208 = getelementptr inbounds float, float* %207, i64 1
  %209 = load float, float* %208, align 4
  %210 = fmul float %204, %209
  %211 = fsub float %199, %210
  %212 = load float, float* %8, align 4
  %213 = fmul float %211, %212
  %214 = load float**, float*** %7, align 8
  %215 = getelementptr inbounds float*, float** %214, i64 0
  %216 = load float*, float** %215, align 8
  %217 = getelementptr inbounds float, float* %216, i64 2
  store float %213, float* %217, align 4
  %218 = load float**, float*** %4, align 8
  %219 = getelementptr inbounds float*, float** %218, i64 0
  %220 = load float*, float** %219, align 8
  %221 = getelementptr inbounds float, float* %220, i64 1
  %222 = load float, float* %221, align 4
  %223 = load float**, float*** %4, align 8
  %224 = getelementptr inbounds float*, float** %223, i64 2
  %225 = load float*, float** %224, align 8
  %226 = getelementptr inbounds float, float* %225, i64 2
  %227 = load float, float* %226, align 4
  %228 = fmul float %222, %227
  %229 = load float**, float*** %4, align 8
  %230 = getelementptr inbounds float*, float** %229, i64 2
  %231 = load float*, float** %230, align 8
  %232 = getelementptr inbounds float, float* %231, i64 1
  %233 = load float, float* %232, align 4
  %234 = load float**, float*** %4, align 8
  %235 = getelementptr inbounds float*, float** %234, i64 0
  %236 = load float*, float** %235, align 8
  %237 = getelementptr inbounds float, float* %236, i64 2
  %238 = load float, float* %237, align 4
  %239 = fmul float %233, %238
  %240 = fsub float %228, %239
  %241 = fneg float %240
  %242 = load float, float* %8, align 4
  %243 = fmul float %241, %242
  %244 = load float**, float*** %7, align 8
  %245 = getelementptr inbounds float*, float** %244, i64 1
  %246 = load float*, float** %245, align 8
  %247 = getelementptr inbounds float, float* %246, i64 0
  store float %243, float* %247, align 4
  %248 = load float**, float*** %4, align 8
  %249 = getelementptr inbounds float*, float** %248, i64 0
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 0
  %252 = load float, float* %251, align 4
  %253 = load float**, float*** %4, align 8
  %254 = getelementptr inbounds float*, float** %253, i64 2
  %255 = load float*, float** %254, align 8
  %256 = getelementptr inbounds float, float* %255, i64 2
  %257 = load float, float* %256, align 4
  %258 = fmul float %252, %257
  %259 = load float**, float*** %4, align 8
  %260 = getelementptr inbounds float*, float** %259, i64 2
  %261 = load float*, float** %260, align 8
  %262 = getelementptr inbounds float, float* %261, i64 0
  %263 = load float, float* %262, align 4
  %264 = load float**, float*** %4, align 8
  %265 = getelementptr inbounds float*, float** %264, i64 0
  %266 = load float*, float** %265, align 8
  %267 = getelementptr inbounds float, float* %266, i64 2
  %268 = load float, float* %267, align 4
  %269 = fmul float %263, %268
  %270 = fsub float %258, %269
  %271 = load float, float* %8, align 4
  %272 = fmul float %270, %271
  %273 = load float**, float*** %7, align 8
  %274 = getelementptr inbounds float*, float** %273, i64 1
  %275 = load float*, float** %274, align 8
  %276 = getelementptr inbounds float, float* %275, i64 1
  store float %272, float* %276, align 4
  %277 = load float**, float*** %4, align 8
  %278 = getelementptr inbounds float*, float** %277, i64 0
  %279 = load float*, float** %278, align 8
  %280 = getelementptr inbounds float, float* %279, i64 0
  %281 = load float, float* %280, align 4
  %282 = load float**, float*** %4, align 8
  %283 = getelementptr inbounds float*, float** %282, i64 2
  %284 = load float*, float** %283, align 8
  %285 = getelementptr inbounds float, float* %284, i64 1
  %286 = load float, float* %285, align 4
  %287 = fmul float %281, %286
  %288 = load float**, float*** %4, align 8
  %289 = getelementptr inbounds float*, float** %288, i64 2
  %290 = load float*, float** %289, align 8
  %291 = getelementptr inbounds float, float* %290, i64 0
  %292 = load float, float* %291, align 4
  %293 = load float**, float*** %4, align 8
  %294 = getelementptr inbounds float*, float** %293, i64 0
  %295 = load float*, float** %294, align 8
  %296 = getelementptr inbounds float, float* %295, i64 1
  %297 = load float, float* %296, align 4
  %298 = fmul float %292, %297
  %299 = fsub float %287, %298
  %300 = fneg float %299
  %301 = load float, float* %8, align 4
  %302 = fmul float %300, %301
  %303 = load float**, float*** %7, align 8
  %304 = getelementptr inbounds float*, float** %303, i64 1
  %305 = load float*, float** %304, align 8
  %306 = getelementptr inbounds float, float* %305, i64 2
  store float %302, float* %306, align 4
  %307 = load float**, float*** %4, align 8
  %308 = getelementptr inbounds float*, float** %307, i64 0
  %309 = load float*, float** %308, align 8
  %310 = getelementptr inbounds float, float* %309, i64 1
  %311 = load float, float* %310, align 4
  %312 = load float**, float*** %4, align 8
  %313 = getelementptr inbounds float*, float** %312, i64 1
  %314 = load float*, float** %313, align 8
  %315 = getelementptr inbounds float, float* %314, i64 2
  %316 = load float, float* %315, align 4
  %317 = fmul float %311, %316
  %318 = load float**, float*** %4, align 8
  %319 = getelementptr inbounds float*, float** %318, i64 1
  %320 = load float*, float** %319, align 8
  %321 = getelementptr inbounds float, float* %320, i64 1
  %322 = load float, float* %321, align 4
  %323 = load float**, float*** %4, align 8
  %324 = getelementptr inbounds float*, float** %323, i64 0
  %325 = load float*, float** %324, align 8
  %326 = getelementptr inbounds float, float* %325, i64 2
  %327 = load float, float* %326, align 4
  %328 = fmul float %322, %327
  %329 = fsub float %317, %328
  %330 = load float, float* %8, align 4
  %331 = fmul float %329, %330
  %332 = load float**, float*** %7, align 8
  %333 = getelementptr inbounds float*, float** %332, i64 2
  %334 = load float*, float** %333, align 8
  %335 = getelementptr inbounds float, float* %334, i64 0
  store float %331, float* %335, align 4
  %336 = load float**, float*** %4, align 8
  %337 = getelementptr inbounds float*, float** %336, i64 0
  %338 = load float*, float** %337, align 8
  %339 = getelementptr inbounds float, float* %338, i64 0
  %340 = load float, float* %339, align 4
  %341 = load float**, float*** %4, align 8
  %342 = getelementptr inbounds float*, float** %341, i64 1
  %343 = load float*, float** %342, align 8
  %344 = getelementptr inbounds float, float* %343, i64 2
  %345 = load float, float* %344, align 4
  %346 = fmul float %340, %345
  %347 = load float**, float*** %4, align 8
  %348 = getelementptr inbounds float*, float** %347, i64 1
  %349 = load float*, float** %348, align 8
  %350 = getelementptr inbounds float, float* %349, i64 0
  %351 = load float, float* %350, align 4
  %352 = load float**, float*** %4, align 8
  %353 = getelementptr inbounds float*, float** %352, i64 0
  %354 = load float*, float** %353, align 8
  %355 = getelementptr inbounds float, float* %354, i64 2
  %356 = load float, float* %355, align 4
  %357 = fmul float %351, %356
  %358 = fsub float %346, %357
  %359 = fneg float %358
  %360 = load float, float* %8, align 4
  %361 = fmul float %359, %360
  %362 = load float**, float*** %7, align 8
  %363 = getelementptr inbounds float*, float** %362, i64 2
  %364 = load float*, float** %363, align 8
  %365 = getelementptr inbounds float, float* %364, i64 1
  store float %361, float* %365, align 4
  %366 = load float**, float*** %4, align 8
  %367 = getelementptr inbounds float*, float** %366, i64 0
  %368 = load float*, float** %367, align 8
  %369 = getelementptr inbounds float, float* %368, i64 0
  %370 = load float, float* %369, align 4
  %371 = load float**, float*** %4, align 8
  %372 = getelementptr inbounds float*, float** %371, i64 1
  %373 = load float*, float** %372, align 8
  %374 = getelementptr inbounds float, float* %373, i64 1
  %375 = load float, float* %374, align 4
  %376 = fmul float %370, %375
  %377 = load float**, float*** %4, align 8
  %378 = getelementptr inbounds float*, float** %377, i64 1
  %379 = load float*, float** %378, align 8
  %380 = getelementptr inbounds float, float* %379, i64 0
  %381 = load float, float* %380, align 4
  %382 = load float**, float*** %4, align 8
  %383 = getelementptr inbounds float*, float** %382, i64 0
  %384 = load float*, float** %383, align 8
  %385 = getelementptr inbounds float, float* %384, i64 1
  %386 = load float, float* %385, align 4
  %387 = fmul float %381, %386
  %388 = fsub float %376, %387
  %389 = load float, float* %8, align 4
  %390 = fmul float %388, %389
  %391 = load float**, float*** %7, align 8
  %392 = getelementptr inbounds float*, float** %391, i64 2
  %393 = load float*, float** %392, align 8
  %394 = getelementptr inbounds float, float* %393, i64 2
  store float %390, float* %394, align 4
  %395 = load float**, float*** %7, align 8
  %396 = getelementptr inbounds float*, float** %395, i64 0
  %397 = load float*, float** %396, align 8
  %398 = getelementptr inbounds float, float* %397, i64 3
  store float 0.000000e+00, float* %398, align 4
  %399 = load float**, float*** %7, align 8
  %400 = getelementptr inbounds float*, float** %399, i64 1
  %401 = load float*, float** %400, align 8
  %402 = getelementptr inbounds float, float* %401, i64 3
  store float 0.000000e+00, float* %402, align 4
  %403 = load float**, float*** %7, align 8
  %404 = getelementptr inbounds float*, float** %403, i64 2
  %405 = load float*, float** %404, align 8
  %406 = getelementptr inbounds float, float* %405, i64 3
  store float 0.000000e+00, float* %406, align 4
  %407 = load float**, float*** %7, align 8
  %408 = load float**, float*** %6, align 8
  %409 = icmp eq float** %407, %408
  br i1 %409, label %410, label %414

410:                                              ; preds = %127
  %411 = load float**, float*** %6, align 8
  %412 = load float**, float*** %5, align 8
  %413 = call i32 @c_guMtxCopy(float** %411, float** %412)
  br label %414

414:                                              ; preds = %410, %127
  store i32 1, i32* %3, align 4
  br label %415

415:                                              ; preds = %414, %126
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @c_guMtxCopy(float**, float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
