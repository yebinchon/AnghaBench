; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_1_5_0_side.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_1_5_0_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)* @upmix_7_1_5_0_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_7_1_5_0_side(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, float %12, float %13, float %14, i32 %15) #0 {
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float*, align 8
  %40 = alloca float*, align 8
  %41 = alloca float*, align 8
  %42 = alloca float*, align 8
  %43 = alloca float*, align 8
  %44 = alloca float*, align 8
  %45 = alloca float*, align 8
  %46 = alloca float*, align 8
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %17, align 8
  store float %1, float* %18, align 4
  store float %2, float* %19, align 4
  store float %3, float* %20, align 4
  store float %4, float* %21, align 4
  store float %5, float* %22, align 4
  store float %6, float* %23, align 4
  store float %7, float* %24, align 4
  store float %8, float* %25, align 4
  store float %9, float* %26, align 4
  store float %10, float* %27, align 4
  store float %11, float* %28, align 4
  store float %12, float* %29, align 4
  store float %13, float* %30, align 4
  store float %14, float* %31, align 4
  store i32 %15, i32* %32, align 4
  %51 = load float, float* %20, align 4
  %52 = load float, float* %21, align 4
  %53 = fadd float %51, %52
  %54 = fpext float %53 to double
  %55 = fmul double %54, 5.000000e-01
  %56 = fptrunc double %55 to float
  store float %56, float* %49, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %50, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 16
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to float*
  store float* %67, float** %40, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 16
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to float*
  store float* %75, float** %41, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 16
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to float*
  store float* %83, float** %39, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 16
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 3
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to float*
  store float* %91, float** %46, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 16
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 4
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to float*
  store float* %99, float** %44, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 16
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 5
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to float*
  store float* %107, float** %45, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 16
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 6
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to float*
  store float* %115, float** %42, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 16
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to float*
  store float* %123, float** %43, align 8
  %124 = load float, float* %19, align 4
  %125 = load float, float* %18, align 4
  %126 = call float @atan2f(float %124, float %125) #4
  store float %126, float* %48, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 15
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %32, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 13
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @get_lfe(i32 %129, i32 %130, i32 %133, i32 %136, float* %47, float* %49, i32 %139)
  %141 = load float, float* %28, align 4
  %142 = fadd float %141, 1.000000e+00
  %143 = fmul float 5.000000e-01, %142
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = call float @powf(float %143, i32 %146)
  %148 = load float, float* %29, align 4
  %149 = fadd float %148, 1.000000e+00
  %150 = fmul float %149, 5.000000e-01
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 8
  %154 = call float @powf(float %150, i32 %153)
  %155 = fmul float %147, %154
  %156 = load float, float* %20, align 4
  %157 = fmul float %155, %156
  store float %157, float* %33, align 4
  %158 = load float, float* %30, align 4
  %159 = fadd float %158, 1.000000e+00
  %160 = fmul float 5.000000e-01, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = call float @powf(float %160, i32 %163)
  %165 = load float, float* %31, align 4
  %166 = fadd float %165, 1.000000e+00
  %167 = fmul float %166, 5.000000e-01
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = call float @powf(float %167, i32 %170)
  %172 = fmul float %164, %171
  %173 = load float, float* %21, align 4
  %174 = fmul float %172, %173
  store float %174, float* %34, align 4
  %175 = load float, float* %28, align 4
  %176 = fneg float %175
  %177 = fadd float %176, 1.000000e+00
  %178 = fmul float 5.000000e-01, %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call float @powf(float %178, i32 %181)
  %183 = load float, float* %29, align 4
  %184 = fadd float %183, 1.000000e+00
  %185 = fmul float %184, 5.000000e-01
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = call float @powf(float %185, i32 %188)
  %190 = fmul float %182, %189
  %191 = load float, float* %20, align 4
  %192 = fmul float %190, %191
  store float %192, float* %37, align 4
  %193 = load float, float* %30, align 4
  %194 = fneg float %193
  %195 = fadd float %194, 1.000000e+00
  %196 = fmul float 5.000000e-01, %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call float @powf(float %196, i32 %199)
  %201 = load float, float* %31, align 4
  %202 = fadd float %201, 1.000000e+00
  %203 = fmul float %202, 5.000000e-01
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call float @powf(float %203, i32 %206)
  %208 = fmul float %200, %207
  %209 = load float, float* %21, align 4
  %210 = fmul float %208, %209
  store float %210, float* %38, align 4
  %211 = load float, float* %28, align 4
  %212 = call float @llvm.fabs.f32(float %211)
  %213 = fsub float 1.000000e+00, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call float @powf(float %213, i32 %216)
  %218 = load float, float* %29, align 4
  %219 = fadd float %218, 1.000000e+00
  %220 = fmul float %219, 5.000000e-01
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call float @powf(float %220, i32 %223)
  %225 = fmul float %217, %224
  %226 = load float, float* %20, align 4
  %227 = fmul float %225, %226
  store float %227, float* %35, align 4
  %228 = load float, float* %30, align 4
  %229 = call float @llvm.fabs.f32(float %228)
  %230 = fsub float 1.000000e+00, %229
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call float @powf(float %230, i32 %233)
  %235 = load float, float* %31, align 4
  %236 = fadd float %235, 1.000000e+00
  %237 = fmul float %236, 5.000000e-01
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call float @powf(float %237, i32 %240)
  %242 = fmul float %234, %241
  %243 = load float, float* %21, align 4
  %244 = fmul float %242, %243
  store float %244, float* %36, align 4
  %245 = load float, float* %33, align 4
  %246 = load float, float* %22, align 4
  %247 = call float @cosf(float %246) #4
  %248 = fmul float %245, %247
  %249 = load float*, float** %40, align 8
  %250 = load i32, i32* %32, align 4
  %251 = mul nsw i32 2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %249, i64 %252
  store float %248, float* %253, align 4
  %254 = load float, float* %33, align 4
  %255 = load float, float* %22, align 4
  %256 = call float @sinf(float %255) #4
  %257 = fmul float %254, %256
  %258 = load float*, float** %40, align 8
  %259 = load i32, i32* %32, align 4
  %260 = mul nsw i32 2, %259
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %258, i64 %262
  store float %257, float* %263, align 4
  %264 = load float, float* %34, align 4
  %265 = load float, float* %23, align 4
  %266 = call float @cosf(float %265) #4
  %267 = fmul float %264, %266
  %268 = load float*, float** %41, align 8
  %269 = load i32, i32* %32, align 4
  %270 = mul nsw i32 2, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %268, i64 %271
  store float %267, float* %272, align 4
  %273 = load float, float* %34, align 4
  %274 = load float, float* %23, align 4
  %275 = call float @sinf(float %274) #4
  %276 = fmul float %273, %275
  %277 = load float*, float** %41, align 8
  %278 = load i32, i32* %32, align 4
  %279 = mul nsw i32 2, %278
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %277, i64 %281
  store float %276, float* %282, align 4
  %283 = load float, float* %18, align 4
  %284 = load float*, float** %39, align 8
  %285 = load i32, i32* %32, align 4
  %286 = mul nsw i32 2, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %284, i64 %287
  store float %283, float* %288, align 4
  %289 = load float, float* %19, align 4
  %290 = load float*, float** %39, align 8
  %291 = load i32, i32* %32, align 4
  %292 = mul nsw i32 2, %291
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %290, i64 %294
  store float %289, float* %295, align 4
  %296 = load float, float* %47, align 4
  %297 = load float, float* %48, align 4
  %298 = call float @cosf(float %297) #4
  %299 = fmul float %296, %298
  %300 = load float*, float** %46, align 8
  %301 = load i32, i32* %32, align 4
  %302 = mul nsw i32 2, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %300, i64 %303
  store float %299, float* %304, align 4
  %305 = load float, float* %47, align 4
  %306 = load float, float* %48, align 4
  %307 = call float @sinf(float %306) #4
  %308 = fmul float %305, %307
  %309 = load float*, float** %46, align 8
  %310 = load i32, i32* %32, align 4
  %311 = mul nsw i32 2, %310
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %309, i64 %313
  store float %308, float* %314, align 4
  %315 = load float, float* %37, align 4
  %316 = load float, float* %24, align 4
  %317 = call float @cosf(float %316) #4
  %318 = fmul float %315, %317
  %319 = load float*, float** %44, align 8
  %320 = load i32, i32* %32, align 4
  %321 = mul nsw i32 2, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %319, i64 %322
  store float %318, float* %323, align 4
  %324 = load float, float* %37, align 4
  %325 = load float, float* %24, align 4
  %326 = call float @sinf(float %325) #4
  %327 = fmul float %324, %326
  %328 = load float*, float** %44, align 8
  %329 = load i32, i32* %32, align 4
  %330 = mul nsw i32 2, %329
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %328, i64 %332
  store float %327, float* %333, align 4
  %334 = load float, float* %38, align 4
  %335 = load float, float* %25, align 4
  %336 = call float @cosf(float %335) #4
  %337 = fmul float %334, %336
  %338 = load float*, float** %45, align 8
  %339 = load i32, i32* %32, align 4
  %340 = mul nsw i32 2, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %338, i64 %341
  store float %337, float* %342, align 4
  %343 = load float, float* %38, align 4
  %344 = load float, float* %25, align 4
  %345 = call float @sinf(float %344) #4
  %346 = fmul float %343, %345
  %347 = load float*, float** %45, align 8
  %348 = load i32, i32* %32, align 4
  %349 = mul nsw i32 2, %348
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %347, i64 %351
  store float %346, float* %352, align 4
  %353 = load float, float* %35, align 4
  %354 = load float, float* %26, align 4
  %355 = call float @cosf(float %354) #4
  %356 = fmul float %353, %355
  %357 = load float*, float** %42, align 8
  %358 = load i32, i32* %32, align 4
  %359 = mul nsw i32 2, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %357, i64 %360
  store float %356, float* %361, align 4
  %362 = load float, float* %35, align 4
  %363 = load float, float* %26, align 4
  %364 = call float @sinf(float %363) #4
  %365 = fmul float %362, %364
  %366 = load float*, float** %42, align 8
  %367 = load i32, i32* %32, align 4
  %368 = mul nsw i32 2, %367
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %366, i64 %370
  store float %365, float* %371, align 4
  %372 = load float, float* %36, align 4
  %373 = load float, float* %27, align 4
  %374 = call float @cosf(float %373) #4
  %375 = fmul float %372, %374
  %376 = load float*, float** %43, align 8
  %377 = load i32, i32* %32, align 4
  %378 = mul nsw i32 2, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %376, i64 %379
  store float %375, float* %380, align 4
  %381 = load float, float* %36, align 4
  %382 = load float, float* %27, align 4
  %383 = call float @sinf(float %382) #4
  %384 = fmul float %381, %383
  %385 = load float*, float** %43, align 8
  %386 = load i32, i32* %32, align 4
  %387 = mul nsw i32 2, %386
  %388 = add nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %385, i64 %389
  store float %384, float* %390, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #2

declare dso_local float @powf(float, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
