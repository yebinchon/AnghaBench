; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_fo_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_fo_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, double, i32, double, i32, i32, double, i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double, double, double, double, double, double)* @chebyshev2_fo_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chebyshev2_fo_section(%struct.TYPE_3__* %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  store double %8, double* %18, align 8
  %19 = load double, double* %18, align 8
  %20 = fcmp oeq double %19, 1.000000e+00
  br i1 %20, label %24, label %21

21:                                               ; preds = %9
  %22 = load double, double* %18, align 8
  %23 = fcmp oeq double %22, -1.000000e+00
  br i1 %23, label %24, label %167

24:                                               ; preds = %21, %9
  %25 = load double, double* %14, align 8
  %26 = load double, double* %14, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %13, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* %13, align 8
  %31 = fmul double %29, %30
  %32 = load double, double* %13, align 8
  %33 = fmul double 2.000000e+00, %32
  %34 = load double, double* %14, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %16, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %15, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %31, %39
  %41 = load double, double* %16, align 8
  %42 = load double, double* %16, align 8
  %43 = fmul double %41, %42
  %44 = fadd double %40, %43
  %45 = load double, double* %14, align 8
  %46 = load double, double* %14, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %12, align 8
  %49 = fmul double %47, %48
  %50 = load double, double* %12, align 8
  %51 = fmul double %49, %50
  %52 = fadd double %44, %51
  %53 = load double, double* %17, align 8
  %54 = fdiv double %52, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store double %54, double* %56, align 8
  %57 = load double, double* %18, align 8
  %58 = fmul double 2.000000e+00, %57
  %59 = load double, double* %14, align 8
  %60 = load double, double* %14, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* %13, align 8
  %63 = fmul double %61, %62
  %64 = load double, double* %13, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* %16, align 8
  %67 = load double, double* %16, align 8
  %68 = fmul double %66, %67
  %69 = fsub double %65, %68
  %70 = load double, double* %14, align 8
  %71 = load double, double* %14, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %12, align 8
  %74 = fmul double %72, %73
  %75 = load double, double* %12, align 8
  %76 = fmul double %74, %75
  %77 = fsub double %69, %76
  %78 = fmul double %58, %77
  %79 = load double, double* %17, align 8
  %80 = fdiv double %78, %79
  %81 = fptosi double %80 to i32
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load double, double* %14, align 8
  %85 = load double, double* %14, align 8
  %86 = fmul double %84, %85
  %87 = load double, double* %13, align 8
  %88 = fmul double %86, %87
  %89 = load double, double* %13, align 8
  %90 = fmul double %88, %89
  %91 = load double, double* %13, align 8
  %92 = fmul double 2.000000e+00, %91
  %93 = load double, double* %14, align 8
  %94 = fmul double %92, %93
  %95 = load double, double* %16, align 8
  %96 = fmul double %94, %95
  %97 = load double, double* %15, align 8
  %98 = fmul double %96, %97
  %99 = fsub double %90, %98
  %100 = load double, double* %16, align 8
  %101 = load double, double* %16, align 8
  %102 = fmul double %100, %101
  %103 = fadd double %99, %102
  %104 = load double, double* %14, align 8
  %105 = load double, double* %14, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %12, align 8
  %108 = fmul double %106, %107
  %109 = load double, double* %12, align 8
  %110 = fmul double %108, %109
  %111 = fadd double %103, %110
  %112 = load double, double* %17, align 8
  %113 = fdiv double %111, %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store double %113, double* %115, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 0, i32* %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store double 0.000000e+00, double* %119, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  store i32 1, i32* %121, align 8
  %122 = load double, double* %18, align 8
  %123 = fmul double 2.000000e+00, %122
  %124 = load double, double* %13, align 8
  %125 = load double, double* %13, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* %11, align 8
  %128 = load double, double* %11, align 8
  %129 = fmul double %127, %128
  %130 = fsub double %126, %129
  %131 = load double, double* %12, align 8
  %132 = load double, double* %12, align 8
  %133 = fmul double %131, %132
  %134 = fsub double %130, %133
  %135 = fmul double %123, %134
  %136 = load double, double* %17, align 8
  %137 = fdiv double %135, %136
  %138 = fptosi double %137 to i32
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load double, double* %13, align 8
  %142 = load double, double* %13, align 8
  %143 = fmul double %141, %142
  %144 = load double, double* %13, align 8
  %145 = fmul double 2.000000e+00, %144
  %146 = load double, double* %11, align 8
  %147 = fmul double %145, %146
  %148 = load double, double* %15, align 8
  %149 = fmul double %147, %148
  %150 = fsub double %143, %149
  %151 = load double, double* %11, align 8
  %152 = load double, double* %11, align 8
  %153 = fmul double %151, %152
  %154 = fadd double %150, %153
  %155 = load double, double* %12, align 8
  %156 = load double, double* %12, align 8
  %157 = fmul double %155, %156
  %158 = fadd double %154, %157
  %159 = load double, double* %17, align 8
  %160 = fdiv double %158, %159
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 7
  store double %160, double* %162, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 8
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 9
  store double 0.000000e+00, double* %166, align 8
  br label %404

167:                                              ; preds = %21
  %168 = load double, double* %14, align 8
  %169 = load double, double* %14, align 8
  %170 = fmul double %168, %169
  %171 = load double, double* %13, align 8
  %172 = fmul double %170, %171
  %173 = load double, double* %13, align 8
  %174 = fmul double %172, %173
  %175 = load double, double* %14, align 8
  %176 = fmul double 2.000000e+00, %175
  %177 = load double, double* %16, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %15, align 8
  %180 = fmul double %178, %179
  %181 = load double, double* %13, align 8
  %182 = fmul double %180, %181
  %183 = fadd double %174, %182
  %184 = load double, double* %16, align 8
  %185 = load double, double* %16, align 8
  %186 = fmul double %184, %185
  %187 = fadd double %183, %186
  %188 = load double, double* %14, align 8
  %189 = load double, double* %14, align 8
  %190 = fmul double %188, %189
  %191 = load double, double* %12, align 8
  %192 = fmul double %190, %191
  %193 = load double, double* %12, align 8
  %194 = fmul double %192, %193
  %195 = fadd double %187, %194
  %196 = load double, double* %17, align 8
  %197 = fdiv double %195, %196
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  store double %197, double* %199, align 8
  %200 = load double, double* %18, align 8
  %201 = fmul double -4.000000e+00, %200
  %202 = load double, double* %16, align 8
  %203 = load double, double* %16, align 8
  %204 = fmul double %202, %203
  %205 = load double, double* %14, align 8
  %206 = load double, double* %14, align 8
  %207 = fmul double %205, %206
  %208 = load double, double* %12, align 8
  %209 = fmul double %207, %208
  %210 = load double, double* %12, align 8
  %211 = fmul double %209, %210
  %212 = fadd double %204, %211
  %213 = load double, double* %14, align 8
  %214 = load double, double* %16, align 8
  %215 = fmul double %213, %214
  %216 = load double, double* %15, align 8
  %217 = fmul double %215, %216
  %218 = load double, double* %13, align 8
  %219 = fmul double %217, %218
  %220 = fadd double %212, %219
  %221 = fmul double %201, %220
  %222 = load double, double* %17, align 8
  %223 = fdiv double %221, %222
  %224 = fptosi double %223 to i32
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load double, double* %16, align 8
  %228 = load double, double* %16, align 8
  %229 = fmul double %227, %228
  %230 = load double, double* %14, align 8
  %231 = load double, double* %14, align 8
  %232 = fmul double %230, %231
  %233 = load double, double* %12, align 8
  %234 = fmul double %232, %233
  %235 = load double, double* %12, align 8
  %236 = fmul double %234, %235
  %237 = fadd double %229, %236
  %238 = load double, double* %18, align 8
  %239 = fmul double 2.000000e+00, %238
  %240 = load double, double* %18, align 8
  %241 = fmul double %239, %240
  %242 = fadd double 1.000000e+00, %241
  %243 = fmul double %237, %242
  %244 = load double, double* %14, align 8
  %245 = load double, double* %14, align 8
  %246 = fmul double %244, %245
  %247 = load double, double* %13, align 8
  %248 = fmul double %246, %247
  %249 = load double, double* %13, align 8
  %250 = fmul double %248, %249
  %251 = fsub double %243, %250
  %252 = fmul double 2.000000e+00, %251
  %253 = load double, double* %17, align 8
  %254 = fdiv double %252, %253
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  store double %254, double* %256, align 8
  %257 = load double, double* %18, align 8
  %258 = fmul double -4.000000e+00, %257
  %259 = load double, double* %16, align 8
  %260 = load double, double* %16, align 8
  %261 = fmul double %259, %260
  %262 = load double, double* %14, align 8
  %263 = load double, double* %14, align 8
  %264 = fmul double %262, %263
  %265 = load double, double* %12, align 8
  %266 = fmul double %264, %265
  %267 = load double, double* %12, align 8
  %268 = fmul double %266, %267
  %269 = fadd double %261, %268
  %270 = load double, double* %14, align 8
  %271 = load double, double* %16, align 8
  %272 = fmul double %270, %271
  %273 = load double, double* %15, align 8
  %274 = fmul double %272, %273
  %275 = load double, double* %13, align 8
  %276 = fmul double %274, %275
  %277 = fsub double %269, %276
  %278 = fmul double %258, %277
  %279 = load double, double* %17, align 8
  %280 = fdiv double %278, %279
  %281 = fptosi double %280 to i32
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load double, double* %14, align 8
  %285 = load double, double* %14, align 8
  %286 = fmul double %284, %285
  %287 = load double, double* %13, align 8
  %288 = fmul double %286, %287
  %289 = load double, double* %13, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %14, align 8
  %292 = fmul double 2.000000e+00, %291
  %293 = load double, double* %16, align 8
  %294 = fmul double %292, %293
  %295 = load double, double* %15, align 8
  %296 = fmul double %294, %295
  %297 = load double, double* %13, align 8
  %298 = fmul double %296, %297
  %299 = fsub double %290, %298
  %300 = load double, double* %16, align 8
  %301 = load double, double* %16, align 8
  %302 = fmul double %300, %301
  %303 = fadd double %299, %302
  %304 = load double, double* %14, align 8
  %305 = load double, double* %14, align 8
  %306 = fmul double %304, %305
  %307 = load double, double* %12, align 8
  %308 = fmul double %306, %307
  %309 = load double, double* %12, align 8
  %310 = fmul double %308, %309
  %311 = fadd double %303, %310
  %312 = load double, double* %17, align 8
  %313 = fdiv double %311, %312
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 4
  store double %313, double* %315, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 5
  store i32 1, i32* %317, align 8
  %318 = load double, double* %18, align 8
  %319 = fmul double -4.000000e+00, %318
  %320 = load double, double* %11, align 8
  %321 = load double, double* %11, align 8
  %322 = fmul double %320, %321
  %323 = load double, double* %12, align 8
  %324 = load double, double* %12, align 8
  %325 = fmul double %323, %324
  %326 = fadd double %322, %325
  %327 = load double, double* %11, align 8
  %328 = load double, double* %15, align 8
  %329 = fmul double %327, %328
  %330 = load double, double* %13, align 8
  %331 = fmul double %329, %330
  %332 = fadd double %326, %331
  %333 = fmul double %319, %332
  %334 = load double, double* %17, align 8
  %335 = fdiv double %333, %334
  %336 = fptosi double %335 to i32
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 6
  store i32 %336, i32* %338, align 4
  %339 = load double, double* %11, align 8
  %340 = load double, double* %11, align 8
  %341 = fmul double %339, %340
  %342 = load double, double* %12, align 8
  %343 = load double, double* %12, align 8
  %344 = fmul double %342, %343
  %345 = fadd double %341, %344
  %346 = load double, double* %18, align 8
  %347 = fmul double 2.000000e+00, %346
  %348 = load double, double* %18, align 8
  %349 = fmul double %347, %348
  %350 = fadd double 1.000000e+00, %349
  %351 = fmul double %345, %350
  %352 = load double, double* %13, align 8
  %353 = load double, double* %13, align 8
  %354 = fmul double %352, %353
  %355 = fsub double %351, %354
  %356 = fmul double 2.000000e+00, %355
  %357 = load double, double* %17, align 8
  %358 = fdiv double %356, %357
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 7
  store double %358, double* %360, align 8
  %361 = load double, double* %18, align 8
  %362 = fmul double -4.000000e+00, %361
  %363 = load double, double* %11, align 8
  %364 = load double, double* %11, align 8
  %365 = fmul double %363, %364
  %366 = load double, double* %12, align 8
  %367 = load double, double* %12, align 8
  %368 = fmul double %366, %367
  %369 = fadd double %365, %368
  %370 = load double, double* %11, align 8
  %371 = load double, double* %15, align 8
  %372 = fmul double %370, %371
  %373 = load double, double* %13, align 8
  %374 = fmul double %372, %373
  %375 = fsub double %369, %374
  %376 = fmul double %362, %375
  %377 = load double, double* %17, align 8
  %378 = fdiv double %376, %377
  %379 = fptosi double %378 to i32
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 8
  store i32 %379, i32* %381, align 8
  %382 = load double, double* %13, align 8
  %383 = load double, double* %13, align 8
  %384 = fmul double %382, %383
  %385 = load double, double* %11, align 8
  %386 = fmul double 2.000000e+00, %385
  %387 = load double, double* %15, align 8
  %388 = fmul double %386, %387
  %389 = load double, double* %13, align 8
  %390 = fmul double %388, %389
  %391 = fsub double %384, %390
  %392 = load double, double* %11, align 8
  %393 = load double, double* %11, align 8
  %394 = fmul double %392, %393
  %395 = fadd double %391, %394
  %396 = load double, double* %12, align 8
  %397 = load double, double* %12, align 8
  %398 = fmul double %396, %397
  %399 = fadd double %395, %398
  %400 = load double, double* %17, align 8
  %401 = fdiv double %399, %400
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 9
  store double %401, double* %403, align 8
  br label %404

404:                                              ; preds = %167, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
