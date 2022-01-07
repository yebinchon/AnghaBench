; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_7_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_7_0(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %31, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 14
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %25, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 14
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to float*
  store float* %50, float** %26, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 14
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to float*
  store float* %58, float** %24, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 14
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to float*
  store float* %66, float** %29, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 14
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to float*
  store float* %74, float** %30, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 14
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 5
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to float*
  store float* %82, float** %27, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 14
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 6
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to float*
  store float* %90, float** %28, align 8
  %91 = load float, float* %14, align 4
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fsub float 1.000000e+00, %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = call float @powf(float %93, i32 %96)
  %98 = load float, float* %15, align 4
  %99 = fadd float %98, 1.000000e+00
  %100 = fmul float %99, 5.000000e-01
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 8
  %104 = call float @powf(float %100, i32 %103)
  %105 = fmul float %97, %104
  %106 = load float, float* %13, align 4
  %107 = fmul float %105, %106
  store float %107, float* %21, align 4
  %108 = load float, float* %14, align 4
  %109 = fadd float %108, 1.000000e+00
  %110 = fmul float 5.000000e-01, %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = call float @powf(float %110, i32 %113)
  %115 = load float, float* %15, align 4
  %116 = fadd float %115, 1.000000e+00
  %117 = fmul float %116, 5.000000e-01
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = call float @powf(float %117, i32 %120)
  %122 = fmul float %114, %121
  %123 = load float, float* %13, align 4
  %124 = fmul float %122, %123
  store float %124, float* %17, align 4
  %125 = load float, float* %14, align 4
  %126 = fneg float %125
  %127 = fadd float %126, 1.000000e+00
  %128 = fmul float 5.000000e-01, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call float @powf(float %128, i32 %131)
  %133 = load float, float* %15, align 4
  %134 = fadd float %133, 1.000000e+00
  %135 = fmul float %134, 5.000000e-01
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = call float @powf(float %135, i32 %138)
  %140 = fmul float %132, %139
  %141 = load float, float* %13, align 4
  %142 = fmul float %140, %141
  store float %142, float* %18, align 4
  %143 = load float, float* %14, align 4
  %144 = fadd float %143, 1.000000e+00
  %145 = fmul float 5.000000e-01, %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call float @powf(float %145, i32 %148)
  %150 = load float, float* %15, align 4
  %151 = fadd float %150, 1.000000e+00
  %152 = fmul float %151, 5.000000e-01
  %153 = fsub float 1.000000e+00, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call float @powf(float %153, i32 %156)
  %158 = fmul float %149, %157
  %159 = load float, float* %13, align 4
  %160 = fmul float %158, %159
  store float %160, float* %22, align 4
  %161 = load float, float* %14, align 4
  %162 = fneg float %161
  %163 = fadd float %162, 1.000000e+00
  %164 = fmul float 5.000000e-01, %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call float @powf(float %164, i32 %167)
  %169 = load float, float* %15, align 4
  %170 = fadd float %169, 1.000000e+00
  %171 = fmul float %170, 5.000000e-01
  %172 = fsub float 1.000000e+00, %171
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call float @powf(float %172, i32 %175)
  %177 = fmul float %168, %176
  %178 = load float, float* %13, align 4
  %179 = fmul float %177, %178
  store float %179, float* %23, align 4
  %180 = load float, float* %14, align 4
  %181 = fadd float %180, 1.000000e+00
  %182 = fmul float 5.000000e-01, %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call float @powf(float %182, i32 %185)
  %187 = load float, float* %15, align 4
  %188 = call float @llvm.fabs.f32(float %187)
  %189 = fsub float 1.000000e+00, %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call float @powf(float %189, i32 %192)
  %194 = fmul float %186, %193
  %195 = load float, float* %13, align 4
  %196 = fmul float %194, %195
  store float %196, float* %19, align 4
  %197 = load float, float* %14, align 4
  %198 = fneg float %197
  %199 = fadd float %198, 1.000000e+00
  %200 = fmul float 5.000000e-01, %199
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call float @powf(float %200, i32 %203)
  %205 = load float, float* %15, align 4
  %206 = call float @llvm.fabs.f32(float %205)
  %207 = fsub float 1.000000e+00, %206
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call float @powf(float %207, i32 %210)
  %212 = fmul float %204, %211
  %213 = load float, float* %13, align 4
  %214 = fmul float %212, %213
  store float %214, float* %20, align 4
  %215 = load float, float* %17, align 4
  %216 = load float, float* %10, align 4
  %217 = call float @cosf(float %216) #4
  %218 = fmul float %215, %217
  %219 = load float*, float** %25, align 8
  %220 = load i32, i32* %16, align 4
  %221 = mul nsw i32 2, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %219, i64 %222
  store float %218, float* %223, align 4
  %224 = load float, float* %17, align 4
  %225 = load float, float* %10, align 4
  %226 = call float @sinf(float %225) #4
  %227 = fmul float %224, %226
  %228 = load float*, float** %25, align 8
  %229 = load i32, i32* %16, align 4
  %230 = mul nsw i32 2, %229
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %228, i64 %232
  store float %227, float* %233, align 4
  %234 = load float, float* %18, align 4
  %235 = load float, float* %11, align 4
  %236 = call float @cosf(float %235) #4
  %237 = fmul float %234, %236
  %238 = load float*, float** %26, align 8
  %239 = load i32, i32* %16, align 4
  %240 = mul nsw i32 2, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %238, i64 %241
  store float %237, float* %242, align 4
  %243 = load float, float* %18, align 4
  %244 = load float, float* %11, align 4
  %245 = call float @sinf(float %244) #4
  %246 = fmul float %243, %245
  %247 = load float*, float** %26, align 8
  %248 = load i32, i32* %16, align 4
  %249 = mul nsw i32 2, %248
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %247, i64 %251
  store float %246, float* %252, align 4
  %253 = load float, float* %21, align 4
  %254 = load float, float* %12, align 4
  %255 = call float @cosf(float %254) #4
  %256 = fmul float %253, %255
  %257 = load float*, float** %24, align 8
  %258 = load i32, i32* %16, align 4
  %259 = mul nsw i32 2, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %257, i64 %260
  store float %256, float* %261, align 4
  %262 = load float, float* %21, align 4
  %263 = load float, float* %12, align 4
  %264 = call float @sinf(float %263) #4
  %265 = fmul float %262, %264
  %266 = load float*, float** %24, align 8
  %267 = load i32, i32* %16, align 4
  %268 = mul nsw i32 2, %267
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %266, i64 %270
  store float %265, float* %271, align 4
  %272 = load float, float* %22, align 4
  %273 = load float, float* %10, align 4
  %274 = call float @cosf(float %273) #4
  %275 = fmul float %272, %274
  %276 = load float*, float** %29, align 8
  %277 = load i32, i32* %16, align 4
  %278 = mul nsw i32 2, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %276, i64 %279
  store float %275, float* %280, align 4
  %281 = load float, float* %22, align 4
  %282 = load float, float* %10, align 4
  %283 = call float @sinf(float %282) #4
  %284 = fmul float %281, %283
  %285 = load float*, float** %29, align 8
  %286 = load i32, i32* %16, align 4
  %287 = mul nsw i32 2, %286
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %285, i64 %289
  store float %284, float* %290, align 4
  %291 = load float, float* %23, align 4
  %292 = load float, float* %11, align 4
  %293 = call float @cosf(float %292) #4
  %294 = fmul float %291, %293
  %295 = load float*, float** %30, align 8
  %296 = load i32, i32* %16, align 4
  %297 = mul nsw i32 2, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %295, i64 %298
  store float %294, float* %299, align 4
  %300 = load float, float* %23, align 4
  %301 = load float, float* %11, align 4
  %302 = call float @sinf(float %301) #4
  %303 = fmul float %300, %302
  %304 = load float*, float** %30, align 8
  %305 = load i32, i32* %16, align 4
  %306 = mul nsw i32 2, %305
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %304, i64 %308
  store float %303, float* %309, align 4
  %310 = load float, float* %19, align 4
  %311 = load float, float* %10, align 4
  %312 = call float @cosf(float %311) #4
  %313 = fmul float %310, %312
  %314 = load float*, float** %27, align 8
  %315 = load i32, i32* %16, align 4
  %316 = mul nsw i32 2, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %314, i64 %317
  store float %313, float* %318, align 4
  %319 = load float, float* %19, align 4
  %320 = load float, float* %10, align 4
  %321 = call float @sinf(float %320) #4
  %322 = fmul float %319, %321
  %323 = load float*, float** %27, align 8
  %324 = load i32, i32* %16, align 4
  %325 = mul nsw i32 2, %324
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %323, i64 %327
  store float %322, float* %328, align 4
  %329 = load float, float* %20, align 4
  %330 = load float, float* %11, align 4
  %331 = call float @cosf(float %330) #4
  %332 = fmul float %329, %331
  %333 = load float*, float** %28, align 8
  %334 = load i32, i32* %16, align 4
  %335 = mul nsw i32 2, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %333, i64 %336
  store float %332, float* %337, align 4
  %338 = load float, float* %20, align 4
  %339 = load float, float* %11, align 4
  %340 = call float @sinf(float %339) #4
  %341 = fmul float %338, %340
  %342 = load float*, float** %28, align 8
  %343 = load i32, i32* %16, align 4
  %344 = mul nsw i32 2, %343
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, float* %342, i64 %346
  store float %341, float* %347, align 4
  ret void
}

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

; Function Attrs: nounwind
declare dso_local float @sinf(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
