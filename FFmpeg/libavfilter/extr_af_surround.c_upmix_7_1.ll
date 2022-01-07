; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_7_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_7_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_7_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %33, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 18
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %26, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 18
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to float*
  store float* %52, float** %27, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 18
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to float*
  store float* %60, float** %25, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 18
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 3
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to float*
  store float* %68, float** %32, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 18
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 4
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to float*
  store float* %76, float** %30, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 18
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 5
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to float*
  store float* %84, float** %31, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 18
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 6
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to float*
  store float* %92, float** %28, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 18
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 7
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to float*
  store float* %100, float** %29, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @get_lfe(i32 %103, i32 %104, i32 %107, i32 %110, float* %17, float* %13, i32 %113)
  %115 = load float, float* %14, align 4
  %116 = call float @llvm.fabs.f32(float %115)
  %117 = fsub float 1.000000e+00, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 13
  %120 = load i32, i32* %119, align 4
  %121 = call float @powf(float %117, i32 %120)
  %122 = load float, float* %15, align 4
  %123 = fadd float %122, 1.000000e+00
  %124 = fmul float %123, 5.000000e-01
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = call float @powf(float %124, i32 %127)
  %129 = fmul float %121, %128
  %130 = load float, float* %13, align 4
  %131 = fmul float %129, %130
  store float %131, float* %22, align 4
  %132 = load float, float* %14, align 4
  %133 = fadd float %132, 1.000000e+00
  %134 = fmul float 5.000000e-01, %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = call float @powf(float %134, i32 %137)
  %139 = load float, float* %15, align 4
  %140 = fadd float %139, 1.000000e+00
  %141 = fmul float %140, 5.000000e-01
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 8
  %145 = call float @powf(float %141, i32 %144)
  %146 = fmul float %138, %145
  %147 = load float, float* %13, align 4
  %148 = fmul float %146, %147
  store float %148, float* %18, align 4
  %149 = load float, float* %14, align 4
  %150 = fneg float %149
  %151 = fadd float %150, 1.000000e+00
  %152 = fmul float 5.000000e-01, %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call float @powf(float %152, i32 %155)
  %157 = load float, float* %15, align 4
  %158 = fadd float %157, 1.000000e+00
  %159 = fmul float %158, 5.000000e-01
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = call float @powf(float %159, i32 %162)
  %164 = fmul float %156, %163
  %165 = load float, float* %13, align 4
  %166 = fmul float %164, %165
  store float %166, float* %19, align 4
  %167 = load float, float* %14, align 4
  %168 = fadd float %167, 1.000000e+00
  %169 = fmul float 5.000000e-01, %168
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = call float @powf(float %169, i32 %172)
  %174 = load float, float* %15, align 4
  %175 = fadd float %174, 1.000000e+00
  %176 = fmul float %175, 5.000000e-01
  %177 = fsub float 1.000000e+00, %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call float @powf(float %177, i32 %180)
  %182 = fmul float %173, %181
  %183 = load float, float* %13, align 4
  %184 = fmul float %182, %183
  store float %184, float* %23, align 4
  %185 = load float, float* %14, align 4
  %186 = fneg float %185
  %187 = fadd float %186, 1.000000e+00
  %188 = fmul float 5.000000e-01, %187
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call float @powf(float %188, i32 %191)
  %193 = load float, float* %15, align 4
  %194 = fadd float %193, 1.000000e+00
  %195 = fmul float %194, 5.000000e-01
  %196 = fsub float 1.000000e+00, %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call float @powf(float %196, i32 %199)
  %201 = fmul float %192, %200
  %202 = load float, float* %13, align 4
  %203 = fmul float %201, %202
  store float %203, float* %24, align 4
  %204 = load float, float* %14, align 4
  %205 = fadd float %204, 1.000000e+00
  %206 = fmul float 5.000000e-01, %205
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call float @powf(float %206, i32 %209)
  %211 = load float, float* %15, align 4
  %212 = call float @llvm.fabs.f32(float %211)
  %213 = fsub float 1.000000e+00, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call float @powf(float %213, i32 %216)
  %218 = fmul float %210, %217
  %219 = load float, float* %13, align 4
  %220 = fmul float %218, %219
  store float %220, float* %20, align 4
  %221 = load float, float* %14, align 4
  %222 = fneg float %221
  %223 = fadd float %222, 1.000000e+00
  %224 = fmul float 5.000000e-01, %223
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call float @powf(float %224, i32 %227)
  %229 = load float, float* %15, align 4
  %230 = call float @llvm.fabs.f32(float %229)
  %231 = fsub float 1.000000e+00, %230
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call float @powf(float %231, i32 %234)
  %236 = fmul float %228, %235
  %237 = load float, float* %13, align 4
  %238 = fmul float %236, %237
  store float %238, float* %21, align 4
  %239 = load float, float* %18, align 4
  %240 = load float, float* %10, align 4
  %241 = call float @cosf(float %240) #4
  %242 = fmul float %239, %241
  %243 = load float*, float** %26, align 8
  %244 = load i32, i32* %16, align 4
  %245 = mul nsw i32 2, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %243, i64 %246
  store float %242, float* %247, align 4
  %248 = load float, float* %18, align 4
  %249 = load float, float* %10, align 4
  %250 = call float @sinf(float %249) #4
  %251 = fmul float %248, %250
  %252 = load float*, float** %26, align 8
  %253 = load i32, i32* %16, align 4
  %254 = mul nsw i32 2, %253
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %252, i64 %256
  store float %251, float* %257, align 4
  %258 = load float, float* %19, align 4
  %259 = load float, float* %11, align 4
  %260 = call float @cosf(float %259) #4
  %261 = fmul float %258, %260
  %262 = load float*, float** %27, align 8
  %263 = load i32, i32* %16, align 4
  %264 = mul nsw i32 2, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %262, i64 %265
  store float %261, float* %266, align 4
  %267 = load float, float* %19, align 4
  %268 = load float, float* %11, align 4
  %269 = call float @sinf(float %268) #4
  %270 = fmul float %267, %269
  %271 = load float*, float** %27, align 8
  %272 = load i32, i32* %16, align 4
  %273 = mul nsw i32 2, %272
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %271, i64 %275
  store float %270, float* %276, align 4
  %277 = load float, float* %22, align 4
  %278 = load float, float* %12, align 4
  %279 = call float @cosf(float %278) #4
  %280 = fmul float %277, %279
  %281 = load float*, float** %25, align 8
  %282 = load i32, i32* %16, align 4
  %283 = mul nsw i32 2, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %281, i64 %284
  store float %280, float* %285, align 4
  %286 = load float, float* %22, align 4
  %287 = load float, float* %12, align 4
  %288 = call float @sinf(float %287) #4
  %289 = fmul float %286, %288
  %290 = load float*, float** %25, align 8
  %291 = load i32, i32* %16, align 4
  %292 = mul nsw i32 2, %291
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %290, i64 %294
  store float %289, float* %295, align 4
  %296 = load float, float* %17, align 4
  %297 = load float, float* %12, align 4
  %298 = call float @cosf(float %297) #4
  %299 = fmul float %296, %298
  %300 = load float*, float** %32, align 8
  %301 = load i32, i32* %16, align 4
  %302 = mul nsw i32 2, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %300, i64 %303
  store float %299, float* %304, align 4
  %305 = load float, float* %17, align 4
  %306 = load float, float* %12, align 4
  %307 = call float @sinf(float %306) #4
  %308 = fmul float %305, %307
  %309 = load float*, float** %32, align 8
  %310 = load i32, i32* %16, align 4
  %311 = mul nsw i32 2, %310
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %309, i64 %313
  store float %308, float* %314, align 4
  %315 = load float, float* %23, align 4
  %316 = load float, float* %10, align 4
  %317 = call float @cosf(float %316) #4
  %318 = fmul float %315, %317
  %319 = load float*, float** %30, align 8
  %320 = load i32, i32* %16, align 4
  %321 = mul nsw i32 2, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %319, i64 %322
  store float %318, float* %323, align 4
  %324 = load float, float* %23, align 4
  %325 = load float, float* %10, align 4
  %326 = call float @sinf(float %325) #4
  %327 = fmul float %324, %326
  %328 = load float*, float** %30, align 8
  %329 = load i32, i32* %16, align 4
  %330 = mul nsw i32 2, %329
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %328, i64 %332
  store float %327, float* %333, align 4
  %334 = load float, float* %24, align 4
  %335 = load float, float* %11, align 4
  %336 = call float @cosf(float %335) #4
  %337 = fmul float %334, %336
  %338 = load float*, float** %31, align 8
  %339 = load i32, i32* %16, align 4
  %340 = mul nsw i32 2, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %338, i64 %341
  store float %337, float* %342, align 4
  %343 = load float, float* %24, align 4
  %344 = load float, float* %11, align 4
  %345 = call float @sinf(float %344) #4
  %346 = fmul float %343, %345
  %347 = load float*, float** %31, align 8
  %348 = load i32, i32* %16, align 4
  %349 = mul nsw i32 2, %348
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %347, i64 %351
  store float %346, float* %352, align 4
  %353 = load float, float* %20, align 4
  %354 = load float, float* %10, align 4
  %355 = call float @cosf(float %354) #4
  %356 = fmul float %353, %355
  %357 = load float*, float** %28, align 8
  %358 = load i32, i32* %16, align 4
  %359 = mul nsw i32 2, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %357, i64 %360
  store float %356, float* %361, align 4
  %362 = load float, float* %20, align 4
  %363 = load float, float* %10, align 4
  %364 = call float @sinf(float %363) #4
  %365 = fmul float %362, %364
  %366 = load float*, float** %28, align 8
  %367 = load i32, i32* %16, align 4
  %368 = mul nsw i32 2, %367
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %366, i64 %370
  store float %365, float* %371, align 4
  %372 = load float, float* %21, align 4
  %373 = load float, float* %11, align 4
  %374 = call float @cosf(float %373) #4
  %375 = fmul float %372, %374
  %376 = load float*, float** %29, align 8
  %377 = load i32, i32* %16, align 4
  %378 = mul nsw i32 2, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %376, i64 %379
  store float %375, float* %380, align 4
  %381 = load float, float* %21, align 4
  %382 = load float, float* %11, align 4
  %383 = call float @sinf(float %382) #4
  %384 = fmul float %381, %383
  %385 = load float*, float** %29, align 8
  %386 = load i32, i32* %16, align 4
  %387 = mul nsw i32 2, %386
  %388 = add nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %385, i64 %389
  store float %384, float* %390, align 4
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
