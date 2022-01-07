; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane3d2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane3d2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, float** }

@CURRENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, float*, float*)* @filter_plane3d2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_plane3d2(%struct.TYPE_5__* %0, i32 %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %9, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sitofp i32 %69 to float
  store float %70, float* %14, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = fsub float 1.000000e+00, %73
  store float %74, float* %15, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load float**, float*** %76, align 8
  %78 = load i64, i64* @CURRENT, align 8
  %79 = getelementptr inbounds float*, float** %77, i64 %78
  %80 = load float*, float** %79, align 8
  store float* %80, float** %16, align 8
  %81 = call float @sqrtf(float 3.000000e+00) #3
  %82 = fmul float %81, 5.000000e-01
  store float %82, float* %17, align 4
  store float 0x3FD5555560000000, float* %18, align 4
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %365, %4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %368

87:                                               ; preds = %83
  store i32 0, i32* %20, align 4
  br label %88

88:                                               ; preds = %361, %87
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %364

92:                                               ; preds = %88
  %93 = load float*, float** %16, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %19, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %93, i64 %99
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 %101, %102
  %104 = mul nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %100, i64 %105
  store float* %106, float** %23, align 8
  %107 = load float*, float** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %19, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %107, i64 %113
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %10, align 4
  %117 = mul nsw i32 %115, %116
  %118 = mul nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %114, i64 %119
  store float* %120, float** %24, align 8
  %121 = load float*, float** %8, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %19, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %121, i64 %127
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 %129, %130
  %132 = mul nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %128, i64 %133
  store float* %134, float** %25, align 8
  store i32 0, i32* %21, align 4
  br label %135

135:                                              ; preds = %357, %92
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %360

139:                                              ; preds = %135
  store i32 0, i32* %22, align 4
  br label %140

140:                                              ; preds = %341, %139
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %344

144:                                              ; preds = %140
  %145 = load float*, float** %24, align 8
  %146 = load i32, i32* %22, align 4
  %147 = mul nsw i32 2, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %145, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load float*, float** %25, align 8
  %152 = load i32, i32* %22, align 4
  %153 = mul nsw i32 2, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %151, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fadd float %150, %156
  store float %157, float* %36, align 4
  %158 = load float*, float** %24, align 8
  %159 = load i32, i32* %22, align 4
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %158, i64 %162
  %164 = load float, float* %163, align 4
  %165 = load float*, float** %25, align 8
  %166 = load i32, i32* %22, align 4
  %167 = mul nsw i32 2, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %165, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fadd float %164, %171
  store float %172, float* %37, align 4
  %173 = load float*, float** %23, align 8
  %174 = load i32, i32* %22, align 4
  %175 = mul nsw i32 2, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %173, i64 %176
  %178 = load float, float* %177, align 4
  %179 = load float, float* %36, align 4
  %180 = fadd float %178, %179
  store float %180, float* %26, align 4
  %181 = load float*, float** %23, align 8
  %182 = load i32, i32* %22, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load float, float* %37, align 4
  %189 = fadd float %187, %188
  store float %189, float* %27, align 4
  %190 = load float, float* %17, align 4
  %191 = load float*, float** %25, align 8
  %192 = load i32, i32* %22, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  %196 = load float, float* %195, align 4
  %197 = load float*, float** %24, align 8
  %198 = load i32, i32* %22, align 4
  %199 = mul nsw i32 2, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %197, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fsub float %196, %202
  %204 = fmul float %190, %203
  store float %204, float* %28, align 4
  %205 = load float, float* %17, align 4
  %206 = load float*, float** %24, align 8
  %207 = load i32, i32* %22, align 4
  %208 = mul nsw i32 2, %207
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %206, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float*, float** %25, align 8
  %214 = load i32, i32* %22, align 4
  %215 = mul nsw i32 2, %214
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %213, i64 %217
  %219 = load float, float* %218, align 4
  %220 = fsub float %212, %219
  %221 = fmul float %205, %220
  store float %221, float* %29, align 4
  %222 = load float*, float** %23, align 8
  %223 = load i32, i32* %22, align 4
  %224 = mul nsw i32 2, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %222, i64 %225
  %227 = load float, float* %226, align 4
  %228 = load float, float* %36, align 4
  %229 = fmul float 5.000000e-01, %228
  %230 = fsub float %227, %229
  %231 = load float, float* %29, align 4
  %232 = fadd float %230, %231
  store float %232, float* %30, align 4
  %233 = load float, float* %30, align 4
  %234 = load float, float* %29, align 4
  %235 = fsub float %233, %234
  %236 = load float, float* %29, align 4
  %237 = fsub float %235, %236
  store float %237, float* %32, align 4
  %238 = load float*, float** %23, align 8
  %239 = load i32, i32* %22, align 4
  %240 = mul nsw i32 2, %239
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %238, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float, float* %37, align 4
  %246 = fmul float 5.000000e-01, %245
  %247 = fsub float %244, %246
  %248 = load float, float* %28, align 4
  %249 = fadd float %247, %248
  store float %249, float* %31, align 4
  %250 = load float, float* %31, align 4
  %251 = load float, float* %28, align 4
  %252 = fsub float %250, %251
  %253 = load float, float* %28, align 4
  %254 = fsub float %252, %253
  store float %254, float* %33, align 4
  %255 = load float, float* %26, align 4
  %256 = load float, float* %26, align 4
  %257 = fmul float %255, %256
  %258 = load float, float* %27, align 4
  %259 = load float, float* %27, align 4
  %260 = fmul float %258, %259
  %261 = fadd float %257, %260
  %262 = fadd float %261, 0x3CD203AFA0000000
  store float %262, float* %35, align 4
  %263 = load float, float* %35, align 4
  %264 = load float, float* %14, align 4
  %265 = fsub float %263, %264
  %266 = load float, float* %35, align 4
  %267 = fdiv float %265, %266
  %268 = load float, float* %15, align 4
  %269 = call float @FFMAX(float %267, float %268)
  store float %269, float* %34, align 4
  %270 = load float, float* %34, align 4
  %271 = load float, float* %26, align 4
  %272 = fmul float %271, %270
  store float %272, float* %26, align 4
  %273 = load float, float* %34, align 4
  %274 = load float, float* %27, align 4
  %275 = fmul float %274, %273
  store float %275, float* %27, align 4
  %276 = load float, float* %30, align 4
  %277 = load float, float* %30, align 4
  %278 = fmul float %276, %277
  %279 = load float, float* %31, align 4
  %280 = load float, float* %31, align 4
  %281 = fmul float %279, %280
  %282 = fadd float %278, %281
  %283 = fadd float %282, 0x3CD203AFA0000000
  store float %283, float* %35, align 4
  %284 = load float, float* %35, align 4
  %285 = load float, float* %14, align 4
  %286 = fsub float %284, %285
  %287 = load float, float* %35, align 4
  %288 = fdiv float %286, %287
  %289 = load float, float* %15, align 4
  %290 = call float @FFMAX(float %288, float %289)
  store float %290, float* %34, align 4
  %291 = load float, float* %34, align 4
  %292 = load float, float* %30, align 4
  %293 = fmul float %292, %291
  store float %293, float* %30, align 4
  %294 = load float, float* %34, align 4
  %295 = load float, float* %31, align 4
  %296 = fmul float %295, %294
  store float %296, float* %31, align 4
  %297 = load float, float* %32, align 4
  %298 = load float, float* %32, align 4
  %299 = fmul float %297, %298
  %300 = load float, float* %33, align 4
  %301 = load float, float* %33, align 4
  %302 = fmul float %300, %301
  %303 = fadd float %299, %302
  %304 = fadd float %303, 0x3CD203AFA0000000
  store float %304, float* %35, align 4
  %305 = load float, float* %35, align 4
  %306 = load float, float* %14, align 4
  %307 = fsub float %305, %306
  %308 = load float, float* %35, align 4
  %309 = fdiv float %307, %308
  %310 = load float, float* %15, align 4
  %311 = call float @FFMAX(float %309, float %310)
  store float %311, float* %34, align 4
  %312 = load float, float* %34, align 4
  %313 = load float, float* %32, align 4
  %314 = fmul float %313, %312
  store float %314, float* %32, align 4
  %315 = load float, float* %34, align 4
  %316 = load float, float* %33, align 4
  %317 = fmul float %316, %315
  store float %317, float* %33, align 4
  %318 = load float, float* %26, align 4
  %319 = load float, float* %30, align 4
  %320 = fadd float %318, %319
  %321 = load float, float* %32, align 4
  %322 = fadd float %320, %321
  %323 = fmul float %322, 0x3FD5555560000000
  %324 = load float*, float** %23, align 8
  %325 = load i32, i32* %22, align 4
  %326 = mul nsw i32 2, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %324, i64 %327
  store float %323, float* %328, align 4
  %329 = load float, float* %27, align 4
  %330 = load float, float* %31, align 4
  %331 = fadd float %329, %330
  %332 = load float, float* %33, align 4
  %333 = fadd float %331, %332
  %334 = fmul float %333, 0x3FD5555560000000
  %335 = load float*, float** %23, align 8
  %336 = load i32, i32* %22, align 4
  %337 = mul nsw i32 2, %336
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %335, i64 %339
  store float %334, float* %340, align 4
  br label %341

341:                                              ; preds = %144
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %140

344:                                              ; preds = %140
  %345 = load i32, i32* %13, align 4
  %346 = load float*, float** %23, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds float, float* %346, i64 %347
  store float* %348, float** %23, align 8
  %349 = load i32, i32* %13, align 4
  %350 = load float*, float** %24, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds float, float* %350, i64 %351
  store float* %352, float** %24, align 8
  %353 = load i32, i32* %13, align 4
  %354 = load float*, float** %25, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds float, float* %354, i64 %355
  store float* %356, float** %25, align 8
  br label %357

357:                                              ; preds = %344
  %358 = load i32, i32* %21, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %21, align 4
  br label %135

360:                                              ; preds = %135
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %20, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %20, align 4
  br label %88

364:                                              ; preds = %88
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %19, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %19, align 4
  br label %83

368:                                              ; preds = %83
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local float @FFMAX(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
