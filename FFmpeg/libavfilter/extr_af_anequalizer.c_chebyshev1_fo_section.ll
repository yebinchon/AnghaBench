; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev1_fo_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev1_fo_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, double, i32, double, i32, i32, double, i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double, double, double, double, double, double)* @chebyshev1_fo_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chebyshev1_fo_section(%struct.TYPE_3__* %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8) #0 {
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
  br i1 %23, label %24, label %171

24:                                               ; preds = %21, %9
  %25 = load double, double* %13, align 8
  %26 = load double, double* %13, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %16, align 8
  %29 = load double, double* %16, align 8
  %30 = fmul double %28, %29
  %31 = load double, double* %14, align 8
  %32 = load double, double* %14, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* %12, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %12, align 8
  %37 = fmul double %35, %36
  %38 = fadd double %30, %37
  %39 = fmul double %27, %38
  %40 = load double, double* %14, align 8
  %41 = fmul double 2.000000e+00, %40
  %42 = load double, double* %16, align 8
  %43 = fmul double %41, %42
  %44 = load double, double* %15, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %13, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %13, align 8
  %49 = fmul double %47, %48
  %50 = fadd double %39, %49
  %51 = load double, double* %14, align 8
  %52 = load double, double* %14, align 8
  %53 = fmul double %51, %52
  %54 = fadd double %50, %53
  %55 = load double, double* %17, align 8
  %56 = fdiv double %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store double %56, double* %58, align 8
  %59 = load double, double* %18, align 8
  %60 = fmul double 2.000000e+00, %59
  %61 = load double, double* %13, align 8
  %62 = load double, double* %13, align 8
  %63 = fmul double %61, %62
  %64 = load double, double* %16, align 8
  %65 = load double, double* %16, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %14, align 8
  %68 = load double, double* %14, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %12, align 8
  %71 = fmul double %69, %70
  %72 = load double, double* %12, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %66, %73
  %75 = fmul double %63, %74
  %76 = load double, double* %14, align 8
  %77 = load double, double* %14, align 8
  %78 = fmul double %76, %77
  %79 = fsub double %75, %78
  %80 = fmul double %60, %79
  %81 = load double, double* %17, align 8
  %82 = fdiv double %80, %81
  %83 = fptosi double %82 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load double, double* %13, align 8
  %87 = load double, double* %13, align 8
  %88 = fmul double %86, %87
  %89 = load double, double* %16, align 8
  %90 = load double, double* %16, align 8
  %91 = fmul double %89, %90
  %92 = load double, double* %14, align 8
  %93 = load double, double* %14, align 8
  %94 = fmul double %92, %93
  %95 = load double, double* %12, align 8
  %96 = fmul double %94, %95
  %97 = load double, double* %12, align 8
  %98 = fmul double %96, %97
  %99 = fadd double %91, %98
  %100 = fmul double %88, %99
  %101 = load double, double* %14, align 8
  %102 = fmul double 2.000000e+00, %101
  %103 = load double, double* %16, align 8
  %104 = fmul double %102, %103
  %105 = load double, double* %15, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %13, align 8
  %108 = fmul double %106, %107
  %109 = fsub double %100, %108
  %110 = load double, double* %14, align 8
  %111 = load double, double* %14, align 8
  %112 = fmul double %110, %111
  %113 = fadd double %109, %112
  %114 = load double, double* %17, align 8
  %115 = fdiv double %113, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store double %115, double* %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  store double 0.000000e+00, double* %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store i32 1, i32* %123, align 8
  %124 = load double, double* %18, align 8
  %125 = fmul double 2.000000e+00, %124
  %126 = load double, double* %13, align 8
  %127 = load double, double* %13, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %11, align 8
  %130 = load double, double* %11, align 8
  %131 = fmul double %129, %130
  %132 = load double, double* %12, align 8
  %133 = load double, double* %12, align 8
  %134 = fmul double %132, %133
  %135 = fadd double %131, %134
  %136 = fmul double %128, %135
  %137 = fsub double %136, 1.000000e+00
  %138 = fmul double %125, %137
  %139 = load double, double* %17, align 8
  %140 = fdiv double %138, %139
  %141 = fptosi double %140 to i32
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load double, double* %13, align 8
  %145 = load double, double* %13, align 8
  %146 = fmul double %144, %145
  %147 = load double, double* %11, align 8
  %148 = load double, double* %11, align 8
  %149 = fmul double %147, %148
  %150 = load double, double* %12, align 8
  %151 = load double, double* %12, align 8
  %152 = fmul double %150, %151
  %153 = fadd double %149, %152
  %154 = fmul double %146, %153
  %155 = load double, double* %11, align 8
  %156 = fmul double 2.000000e+00, %155
  %157 = load double, double* %15, align 8
  %158 = fmul double %156, %157
  %159 = load double, double* %13, align 8
  %160 = fmul double %158, %159
  %161 = fsub double %154, %160
  %162 = fadd double %161, 1.000000e+00
  %163 = load double, double* %17, align 8
  %164 = fdiv double %162, %163
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 7
  store double %164, double* %166, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 8
  store i32 0, i32* %168, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 9
  store double 0.000000e+00, double* %170, align 8
  br label %379

171:                                              ; preds = %21
  %172 = load double, double* %16, align 8
  %173 = load double, double* %16, align 8
  %174 = fmul double %172, %173
  %175 = load double, double* %14, align 8
  %176 = load double, double* %14, align 8
  %177 = fmul double %175, %176
  %178 = load double, double* %12, align 8
  %179 = fmul double %177, %178
  %180 = load double, double* %12, align 8
  %181 = fmul double %179, %180
  %182 = fadd double %174, %181
  %183 = load double, double* %13, align 8
  %184 = fmul double %182, %183
  %185 = load double, double* %13, align 8
  %186 = fmul double %184, %185
  %187 = load double, double* %14, align 8
  %188 = fmul double 2.000000e+00, %187
  %189 = load double, double* %16, align 8
  %190 = fmul double %188, %189
  %191 = load double, double* %15, align 8
  %192 = fmul double %190, %191
  %193 = load double, double* %13, align 8
  %194 = fmul double %192, %193
  %195 = fadd double %186, %194
  %196 = load double, double* %14, align 8
  %197 = load double, double* %14, align 8
  %198 = fmul double %196, %197
  %199 = fadd double %195, %198
  %200 = load double, double* %17, align 8
  %201 = fdiv double %199, %200
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store double %201, double* %203, align 8
  %204 = load double, double* %18, align 8
  %205 = fmul double -4.000000e+00, %204
  %206 = load double, double* %14, align 8
  %207 = load double, double* %14, align 8
  %208 = fmul double %206, %207
  %209 = load double, double* %14, align 8
  %210 = load double, double* %16, align 8
  %211 = fmul double %209, %210
  %212 = load double, double* %15, align 8
  %213 = fmul double %211, %212
  %214 = load double, double* %13, align 8
  %215 = fmul double %213, %214
  %216 = fadd double %208, %215
  %217 = fmul double %205, %216
  %218 = load double, double* %17, align 8
  %219 = fdiv double %217, %218
  %220 = fptosi double %219 to i32
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  %223 = load double, double* %14, align 8
  %224 = load double, double* %14, align 8
  %225 = fmul double %223, %224
  %226 = load double, double* %18, align 8
  %227 = fmul double 2.000000e+00, %226
  %228 = load double, double* %18, align 8
  %229 = fmul double %227, %228
  %230 = fadd double 1.000000e+00, %229
  %231 = fmul double %225, %230
  %232 = load double, double* %16, align 8
  %233 = load double, double* %16, align 8
  %234 = fmul double %232, %233
  %235 = load double, double* %14, align 8
  %236 = load double, double* %14, align 8
  %237 = fmul double %235, %236
  %238 = load double, double* %12, align 8
  %239 = fmul double %237, %238
  %240 = load double, double* %12, align 8
  %241 = fmul double %239, %240
  %242 = fadd double %234, %241
  %243 = load double, double* %13, align 8
  %244 = fmul double %242, %243
  %245 = load double, double* %13, align 8
  %246 = fmul double %244, %245
  %247 = fsub double %231, %246
  %248 = fmul double 2.000000e+00, %247
  %249 = load double, double* %17, align 8
  %250 = fdiv double %248, %249
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  store double %250, double* %252, align 8
  %253 = load double, double* %18, align 8
  %254 = fmul double -4.000000e+00, %253
  %255 = load double, double* %14, align 8
  %256 = load double, double* %14, align 8
  %257 = fmul double %255, %256
  %258 = load double, double* %14, align 8
  %259 = load double, double* %16, align 8
  %260 = fmul double %258, %259
  %261 = load double, double* %15, align 8
  %262 = fmul double %260, %261
  %263 = load double, double* %13, align 8
  %264 = fmul double %262, %263
  %265 = fsub double %257, %264
  %266 = fmul double %254, %265
  %267 = load double, double* %17, align 8
  %268 = fdiv double %266, %267
  %269 = fptosi double %268 to i32
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 8
  %272 = load double, double* %16, align 8
  %273 = load double, double* %16, align 8
  %274 = fmul double %272, %273
  %275 = load double, double* %14, align 8
  %276 = load double, double* %14, align 8
  %277 = fmul double %275, %276
  %278 = load double, double* %12, align 8
  %279 = fmul double %277, %278
  %280 = load double, double* %12, align 8
  %281 = fmul double %279, %280
  %282 = fadd double %274, %281
  %283 = load double, double* %13, align 8
  %284 = fmul double %282, %283
  %285 = load double, double* %13, align 8
  %286 = fmul double %284, %285
  %287 = load double, double* %14, align 8
  %288 = fmul double 2.000000e+00, %287
  %289 = load double, double* %16, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %15, align 8
  %292 = fmul double %290, %291
  %293 = load double, double* %13, align 8
  %294 = fmul double %292, %293
  %295 = fsub double %286, %294
  %296 = load double, double* %14, align 8
  %297 = load double, double* %14, align 8
  %298 = fmul double %296, %297
  %299 = fadd double %295, %298
  %300 = load double, double* %17, align 8
  %301 = fdiv double %299, %300
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 4
  store double %301, double* %303, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 5
  store i32 1, i32* %305, align 8
  %306 = load double, double* %18, align 8
  %307 = fmul double -4.000000e+00, %306
  %308 = load double, double* %11, align 8
  %309 = load double, double* %15, align 8
  %310 = fmul double %308, %309
  %311 = load double, double* %13, align 8
  %312 = fmul double %310, %311
  %313 = fadd double 1.000000e+00, %312
  %314 = fmul double %307, %313
  %315 = load double, double* %17, align 8
  %316 = fdiv double %314, %315
  %317 = fptosi double %316 to i32
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 6
  store i32 %317, i32* %319, align 4
  %320 = load double, double* %18, align 8
  %321 = fmul double 2.000000e+00, %320
  %322 = load double, double* %18, align 8
  %323 = fmul double %321, %322
  %324 = fadd double 1.000000e+00, %323
  %325 = load double, double* %11, align 8
  %326 = load double, double* %11, align 8
  %327 = fmul double %325, %326
  %328 = load double, double* %12, align 8
  %329 = load double, double* %12, align 8
  %330 = fmul double %328, %329
  %331 = fadd double %327, %330
  %332 = load double, double* %13, align 8
  %333 = fmul double %331, %332
  %334 = load double, double* %13, align 8
  %335 = fmul double %333, %334
  %336 = fsub double %324, %335
  %337 = fmul double 2.000000e+00, %336
  %338 = load double, double* %17, align 8
  %339 = fdiv double %337, %338
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 7
  store double %339, double* %341, align 8
  %342 = load double, double* %18, align 8
  %343 = fmul double -4.000000e+00, %342
  %344 = load double, double* %11, align 8
  %345 = load double, double* %15, align 8
  %346 = fmul double %344, %345
  %347 = load double, double* %13, align 8
  %348 = fmul double %346, %347
  %349 = fsub double 1.000000e+00, %348
  %350 = fmul double %343, %349
  %351 = load double, double* %17, align 8
  %352 = fdiv double %350, %351
  %353 = fptosi double %352 to i32
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 8
  store i32 %353, i32* %355, align 8
  %356 = load double, double* %11, align 8
  %357 = load double, double* %11, align 8
  %358 = fmul double %356, %357
  %359 = load double, double* %12, align 8
  %360 = load double, double* %12, align 8
  %361 = fmul double %359, %360
  %362 = fadd double %358, %361
  %363 = load double, double* %13, align 8
  %364 = fmul double %362, %363
  %365 = load double, double* %13, align 8
  %366 = fmul double %364, %365
  %367 = load double, double* %11, align 8
  %368 = fmul double 2.000000e+00, %367
  %369 = load double, double* %15, align 8
  %370 = fmul double %368, %369
  %371 = load double, double* %13, align 8
  %372 = fmul double %370, %371
  %373 = fsub double %366, %372
  %374 = fadd double %373, 1.000000e+00
  %375 = load double, double* %17, align 8
  %376 = fdiv double %374, %375
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 9
  store double %376, double* %378, align 8
  br label %379

379:                                              ; preds = %171, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
