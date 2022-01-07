; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_6_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_6_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_6_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_6_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
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
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %17, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 16
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %27, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 16
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to float*
  store float* %50, float** %28, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 16
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to float*
  store float* %58, float** %25, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 16
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to float*
  store float* %66, float** %31, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 16
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to float*
  store float* %74, float** %26, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 16
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 5
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to float*
  store float* %82, float** %29, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 16
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 6
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to float*
  store float* %90, float** %30, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_lfe(i32 %93, i32 %94, i32 %97, i32 %100, float* %18, float* %13, i32 %103)
  %105 = load float, float* %14, align 4
  %106 = call float @llvm.fabs.f32(float %105)
  %107 = fsub float 1.000000e+00, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = call float @powf(float %107, i32 %110)
  %112 = load float, float* %15, align 4
  %113 = fadd float %112, 1.000000e+00
  %114 = fmul float %113, 5.000000e-01
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = call float @powf(float %114, i32 %117)
  %119 = fmul float %111, %118
  %120 = load float, float* %13, align 4
  %121 = fmul float %119, %120
  store float %121, float* %23, align 4
  %122 = load float, float* %14, align 4
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fsub float 1.000000e+00, %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = call float @powf(float %124, i32 %127)
  %129 = load float, float* %15, align 4
  %130 = fsub float 1.000000e+00, %129
  %131 = fmul float %130, 5.000000e-01
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = call float @powf(float %131, i32 %134)
  %136 = fmul float %128, %135
  %137 = load float, float* %13, align 4
  %138 = fmul float %136, %137
  store float %138, float* %24, align 4
  %139 = load float, float* %14, align 4
  %140 = fadd float %139, 1.000000e+00
  %141 = fmul float 5.000000e-01, %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call float @powf(float %141, i32 %144)
  %146 = load float, float* %15, align 4
  %147 = fadd float %146, 1.000000e+00
  %148 = fmul float %147, 5.000000e-01
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call float @powf(float %148, i32 %151)
  %153 = fmul float %145, %152
  %154 = load float, float* %13, align 4
  %155 = fmul float %153, %154
  store float %155, float* %19, align 4
  %156 = load float, float* %14, align 4
  %157 = fneg float %156
  %158 = fadd float %157, 1.000000e+00
  %159 = fmul float 5.000000e-01, %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call float @powf(float %159, i32 %162)
  %164 = load float, float* %15, align 4
  %165 = fadd float %164, 1.000000e+00
  %166 = fmul float %165, 5.000000e-01
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call float @powf(float %166, i32 %169)
  %171 = fmul float %163, %170
  %172 = load float, float* %13, align 4
  %173 = fmul float %171, %172
  store float %173, float* %20, align 4
  %174 = load float, float* %14, align 4
  %175 = fadd float %174, 1.000000e+00
  %176 = fmul float 5.000000e-01, %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call float @powf(float %176, i32 %179)
  %181 = load float, float* %15, align 4
  %182 = fadd float %181, 1.000000e+00
  %183 = fmul float %182, 5.000000e-01
  %184 = fsub float 1.000000e+00, %183
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call float @powf(float %184, i32 %187)
  %189 = fmul float %180, %188
  %190 = load float, float* %13, align 4
  %191 = fmul float %189, %190
  store float %191, float* %21, align 4
  %192 = load float, float* %14, align 4
  %193 = fneg float %192
  %194 = fadd float %193, 1.000000e+00
  %195 = fmul float 5.000000e-01, %194
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call float @powf(float %195, i32 %198)
  %200 = load float, float* %15, align 4
  %201 = fadd float %200, 1.000000e+00
  %202 = fmul float %201, 5.000000e-01
  %203 = fsub float 1.000000e+00, %202
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call float @powf(float %203, i32 %206)
  %208 = fmul float %199, %207
  %209 = load float, float* %13, align 4
  %210 = fmul float %208, %209
  store float %210, float* %22, align 4
  %211 = load float, float* %19, align 4
  %212 = load float, float* %10, align 4
  %213 = call float @cosf(float %212) #4
  %214 = fmul float %211, %213
  %215 = load float*, float** %27, align 8
  %216 = load i32, i32* %16, align 4
  %217 = mul nsw i32 2, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %215, i64 %218
  store float %214, float* %219, align 4
  %220 = load float, float* %19, align 4
  %221 = load float, float* %10, align 4
  %222 = call float @sinf(float %221) #4
  %223 = fmul float %220, %222
  %224 = load float*, float** %27, align 8
  %225 = load i32, i32* %16, align 4
  %226 = mul nsw i32 2, %225
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %224, i64 %228
  store float %223, float* %229, align 4
  %230 = load float, float* %20, align 4
  %231 = load float, float* %11, align 4
  %232 = call float @cosf(float %231) #4
  %233 = fmul float %230, %232
  %234 = load float*, float** %28, align 8
  %235 = load i32, i32* %16, align 4
  %236 = mul nsw i32 2, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %234, i64 %237
  store float %233, float* %238, align 4
  %239 = load float, float* %20, align 4
  %240 = load float, float* %11, align 4
  %241 = call float @sinf(float %240) #4
  %242 = fmul float %239, %241
  %243 = load float*, float** %28, align 8
  %244 = load i32, i32* %16, align 4
  %245 = mul nsw i32 2, %244
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %243, i64 %247
  store float %242, float* %248, align 4
  %249 = load float, float* %23, align 4
  %250 = load float, float* %12, align 4
  %251 = call float @cosf(float %250) #4
  %252 = fmul float %249, %251
  %253 = load float*, float** %25, align 8
  %254 = load i32, i32* %16, align 4
  %255 = mul nsw i32 2, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %253, i64 %256
  store float %252, float* %257, align 4
  %258 = load float, float* %23, align 4
  %259 = load float, float* %12, align 4
  %260 = call float @sinf(float %259) #4
  %261 = fmul float %258, %260
  %262 = load float*, float** %25, align 8
  %263 = load i32, i32* %16, align 4
  %264 = mul nsw i32 2, %263
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %262, i64 %266
  store float %261, float* %267, align 4
  %268 = load float, float* %18, align 4
  %269 = load float, float* %12, align 4
  %270 = call float @cosf(float %269) #4
  %271 = fmul float %268, %270
  %272 = load float*, float** %31, align 8
  %273 = load i32, i32* %16, align 4
  %274 = mul nsw i32 2, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %272, i64 %275
  store float %271, float* %276, align 4
  %277 = load float, float* %18, align 4
  %278 = load float, float* %12, align 4
  %279 = call float @sinf(float %278) #4
  %280 = fmul float %277, %279
  %281 = load float*, float** %31, align 8
  %282 = load i32, i32* %16, align 4
  %283 = mul nsw i32 2, %282
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %281, i64 %285
  store float %280, float* %286, align 4
  %287 = load float, float* %21, align 4
  %288 = load float, float* %10, align 4
  %289 = call float @cosf(float %288) #4
  %290 = fmul float %287, %289
  %291 = load float*, float** %29, align 8
  %292 = load i32, i32* %16, align 4
  %293 = mul nsw i32 2, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %291, i64 %294
  store float %290, float* %295, align 4
  %296 = load float, float* %21, align 4
  %297 = load float, float* %10, align 4
  %298 = call float @sinf(float %297) #4
  %299 = fmul float %296, %298
  %300 = load float*, float** %29, align 8
  %301 = load i32, i32* %16, align 4
  %302 = mul nsw i32 2, %301
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %300, i64 %304
  store float %299, float* %305, align 4
  %306 = load float, float* %22, align 4
  %307 = load float, float* %11, align 4
  %308 = call float @cosf(float %307) #4
  %309 = fmul float %306, %308
  %310 = load float*, float** %30, align 8
  %311 = load i32, i32* %16, align 4
  %312 = mul nsw i32 2, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %310, i64 %313
  store float %309, float* %314, align 4
  %315 = load float, float* %22, align 4
  %316 = load float, float* %11, align 4
  %317 = call float @sinf(float %316) #4
  %318 = fmul float %315, %317
  %319 = load float*, float** %30, align 8
  %320 = load i32, i32* %16, align 4
  %321 = mul nsw i32 2, %320
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %319, i64 %323
  store float %318, float* %324, align 4
  %325 = load float, float* %24, align 4
  %326 = load float, float* %12, align 4
  %327 = call float @cosf(float %326) #4
  %328 = fmul float %325, %327
  %329 = load float*, float** %26, align 8
  %330 = load i32, i32* %16, align 4
  %331 = mul nsw i32 2, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %329, i64 %332
  store float %328, float* %333, align 4
  %334 = load float, float* %24, align 4
  %335 = load float, float* %12, align 4
  %336 = call float @sinf(float %335) #4
  %337 = fmul float %334, %336
  %338 = load float*, float** %26, align 8
  %339 = load i32, i32* %16, align 4
  %340 = mul nsw i32 2, %339
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %338, i64 %342
  store float %337, float* %343, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

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
