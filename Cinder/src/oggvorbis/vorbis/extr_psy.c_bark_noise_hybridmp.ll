; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_bark_noise_hybridmp.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_bark_noise_hybridmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, float*, float*, float, i32)* @bark_noise_hybridmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bark_noise_hybridmp(i32 %0, i64* %1, float* %2, float* %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call float* @alloca(i32 %36)
  store float* %37, float** %13, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call float* @alloca(i32 %41)
  store float* %42, float** %14, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call float* @alloca(i32 %46)
  store float* %47, float** %15, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call float* @alloca(i32 %51)
  store float* %52, float** %16, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call float* @alloca(i32 %56)
  store float* %57, float** %17, align 8
  store float 0.000000e+00, float* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  store float 0.000000e+00, float* %28, align 4
  store float 1.000000e+00, float* %29, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  %58 = load float*, float** %9, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  %60 = load float, float* %59, align 4
  %61 = load float, float* %11, align 4
  %62 = fadd float %60, %61
  store float %62, float* %32, align 4
  %63 = load float, float* %32, align 4
  %64 = fcmp olt float %63, 1.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %6
  store float 1.000000e+00, float* %32, align 4
  br label %66

66:                                               ; preds = %65, %6
  %67 = load float, float* %32, align 4
  %68 = load float, float* %32, align 4
  %69 = fmul float %67, %68
  %70 = fpext float %69 to double
  %71 = fmul double %70, 5.000000e-01
  %72 = fptrunc double %71 to float
  store float %72, float* %30, align 4
  %73 = load float, float* %30, align 4
  %74 = load float, float* %18, align 4
  %75 = fadd float %74, %73
  store float %75, float* %18, align 4
  %76 = load float, float* %30, align 4
  %77 = load float, float* %19, align 4
  %78 = fadd float %77, %76
  store float %78, float* %19, align 4
  %79 = load float, float* %30, align 4
  %80 = load float, float* %32, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %21, align 4
  %83 = fadd float %82, %81
  store float %83, float* %21, align 4
  %84 = load float, float* %18, align 4
  %85 = load float*, float** %13, align 8
  %86 = getelementptr inbounds float, float* %85, i64 0
  store float %84, float* %86, align 4
  %87 = load float, float* %19, align 4
  %88 = load float*, float** %14, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  store float %87, float* %89, align 4
  %90 = load float, float* %20, align 4
  %91 = load float*, float** %15, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  store float %90, float* %92, align 4
  %93 = load float, float* %21, align 4
  %94 = load float*, float** %16, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  store float %93, float* %95, align 4
  %96 = load float, float* %22, align 4
  %97 = load float*, float** %17, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  store float %96, float* %98, align 4
  store i32 1, i32* %23, align 4
  store float 1.000000e+00, float* %31, align 4
  br label %99

99:                                               ; preds = %170, %66
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %175

103:                                              ; preds = %99
  %104 = load float*, float** %9, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float, float* %11, align 4
  %110 = fadd float %108, %109
  store float %110, float* %32, align 4
  %111 = load float, float* %32, align 4
  %112 = fcmp olt float %111, 1.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store float 1.000000e+00, float* %32, align 4
  br label %114

114:                                              ; preds = %113, %103
  %115 = load float, float* %32, align 4
  %116 = load float, float* %32, align 4
  %117 = fmul float %115, %116
  store float %117, float* %30, align 4
  %118 = load float, float* %30, align 4
  %119 = load float, float* %18, align 4
  %120 = fadd float %119, %118
  store float %120, float* %18, align 4
  %121 = load float, float* %30, align 4
  %122 = load float, float* %31, align 4
  %123 = fmul float %121, %122
  %124 = load float, float* %19, align 4
  %125 = fadd float %124, %123
  store float %125, float* %19, align 4
  %126 = load float, float* %30, align 4
  %127 = load float, float* %31, align 4
  %128 = fmul float %126, %127
  %129 = load float, float* %31, align 4
  %130 = fmul float %128, %129
  %131 = load float, float* %20, align 4
  %132 = fadd float %131, %130
  store float %132, float* %20, align 4
  %133 = load float, float* %30, align 4
  %134 = load float, float* %32, align 4
  %135 = fmul float %133, %134
  %136 = load float, float* %21, align 4
  %137 = fadd float %136, %135
  store float %137, float* %21, align 4
  %138 = load float, float* %30, align 4
  %139 = load float, float* %31, align 4
  %140 = fmul float %138, %139
  %141 = load float, float* %32, align 4
  %142 = fmul float %140, %141
  %143 = load float, float* %22, align 4
  %144 = fadd float %143, %142
  store float %144, float* %22, align 4
  %145 = load float, float* %18, align 4
  %146 = load float*, float** %13, align 8
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  store float %145, float* %149, align 4
  %150 = load float, float* %19, align 4
  %151 = load float*, float** %14, align 8
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  store float %150, float* %154, align 4
  %155 = load float, float* %20, align 4
  %156 = load float*, float** %15, align 8
  %157 = load i32, i32* %23, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  store float %155, float* %159, align 4
  %160 = load float, float* %21, align 4
  %161 = load float*, float** %16, align 8
  %162 = load i32, i32* %23, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %160, float* %164, align 4
  %165 = load float, float* %22, align 4
  %166 = load float*, float** %17, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  store float %165, float* %169, align 4
  br label %170

170:                                              ; preds = %114
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %23, align 4
  %173 = load float, float* %31, align 4
  %174 = fadd float %173, 1.000000e+00
  store float %174, float* %31, align 4
  br label %99

175:                                              ; preds = %99
  store i32 0, i32* %23, align 4
  store float 0.000000e+00, float* %31, align 4
  br label %176

176:                                              ; preds = %294, %175
  %177 = load i64*, i64** %8, align 8
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = ashr i64 %181, 16
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %24, align 4
  %184 = load i32, i32* %24, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %299

187:                                              ; preds = %176
  %188 = load i64*, i64** %8, align 8
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = and i64 %192, 65535
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %25, align 4
  %195 = load float*, float** %13, align 8
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float*, float** %13, align 8
  %201 = load i32, i32* %24, align 4
  %202 = sub nsw i32 0, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %200, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fadd float %199, %205
  store float %206, float* %18, align 4
  %207 = load float*, float** %14, align 8
  %208 = load i32, i32* %25, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load float*, float** %14, align 8
  %213 = load i32, i32* %24, align 4
  %214 = sub nsw i32 0, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %212, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fsub float %211, %217
  store float %218, float* %19, align 4
  %219 = load float*, float** %15, align 8
  %220 = load i32, i32* %25, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  %223 = load float, float* %222, align 4
  %224 = load float*, float** %15, align 8
  %225 = load i32, i32* %24, align 4
  %226 = sub nsw i32 0, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %224, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fadd float %223, %229
  store float %230, float* %20, align 4
  %231 = load float*, float** %16, align 8
  %232 = load i32, i32* %25, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  %235 = load float, float* %234, align 4
  %236 = load float*, float** %16, align 8
  %237 = load i32, i32* %24, align 4
  %238 = sub nsw i32 0, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %236, i64 %239
  %241 = load float, float* %240, align 4
  %242 = fadd float %235, %241
  store float %242, float* %21, align 4
  %243 = load float*, float** %17, align 8
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %17, align 8
  %249 = load i32, i32* %24, align 4
  %250 = sub nsw i32 0, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %248, i64 %251
  %253 = load float, float* %252, align 4
  %254 = fsub float %247, %253
  store float %254, float* %22, align 4
  %255 = load float, float* %21, align 4
  %256 = load float, float* %20, align 4
  %257 = fmul float %255, %256
  %258 = load float, float* %19, align 4
  %259 = load float, float* %22, align 4
  %260 = fmul float %258, %259
  %261 = fsub float %257, %260
  store float %261, float* %27, align 4
  %262 = load float, float* %18, align 4
  %263 = load float, float* %22, align 4
  %264 = fmul float %262, %263
  %265 = load float, float* %19, align 4
  %266 = load float, float* %21, align 4
  %267 = fmul float %265, %266
  %268 = fsub float %264, %267
  store float %268, float* %28, align 4
  %269 = load float, float* %18, align 4
  %270 = load float, float* %20, align 4
  %271 = fmul float %269, %270
  %272 = load float, float* %19, align 4
  %273 = load float, float* %19, align 4
  %274 = fmul float %272, %273
  %275 = fsub float %271, %274
  store float %275, float* %29, align 4
  %276 = load float, float* %27, align 4
  %277 = load float, float* %31, align 4
  %278 = load float, float* %28, align 4
  %279 = fmul float %277, %278
  %280 = fadd float %276, %279
  %281 = load float, float* %29, align 4
  %282 = fdiv float %280, %281
  store float %282, float* %26, align 4
  %283 = load float, float* %26, align 4
  %284 = fcmp olt float %283, 0.000000e+00
  br i1 %284, label %285, label %286

285:                                              ; preds = %187
  store float 0.000000e+00, float* %26, align 4
  br label %286

286:                                              ; preds = %285, %187
  %287 = load float, float* %26, align 4
  %288 = load float, float* %11, align 4
  %289 = fsub float %287, %288
  %290 = load float*, float** %10, align 8
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  store float %289, float* %293, align 4
  br label %294

294:                                              ; preds = %286
  %295 = load i32, i32* %23, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %23, align 4
  %297 = load float, float* %31, align 4
  %298 = fadd float %297, 1.000000e+00
  store float %298, float* %31, align 4
  br label %176

299:                                              ; preds = %186
  br label %300

300:                                              ; preds = %414, %299
  %301 = load i64*, i64** %8, align 8
  %302 = load i32, i32* %23, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = ashr i64 %305, 16
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %24, align 4
  %308 = load i64*, i64** %8, align 8
  %309 = load i32, i32* %23, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i64, i64* %308, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = and i64 %312, 65535
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %25, align 4
  %315 = load i32, i32* %25, align 4
  %316 = load i32, i32* %7, align 4
  %317 = icmp sge i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %300
  br label %419

319:                                              ; preds = %300
  %320 = load float*, float** %13, align 8
  %321 = load i32, i32* %25, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %320, i64 %322
  %324 = load float, float* %323, align 4
  %325 = load float*, float** %13, align 8
  %326 = load i32, i32* %24, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = fsub float %324, %329
  store float %330, float* %18, align 4
  %331 = load float*, float** %14, align 8
  %332 = load i32, i32* %25, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %331, i64 %333
  %335 = load float, float* %334, align 4
  %336 = load float*, float** %14, align 8
  %337 = load i32, i32* %24, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %336, i64 %338
  %340 = load float, float* %339, align 4
  %341 = fsub float %335, %340
  store float %341, float* %19, align 4
  %342 = load float*, float** %15, align 8
  %343 = load i32, i32* %25, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = load float*, float** %15, align 8
  %348 = load i32, i32* %24, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %347, i64 %349
  %351 = load float, float* %350, align 4
  %352 = fsub float %346, %351
  store float %352, float* %20, align 4
  %353 = load float*, float** %16, align 8
  %354 = load i32, i32* %25, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %353, i64 %355
  %357 = load float, float* %356, align 4
  %358 = load float*, float** %16, align 8
  %359 = load i32, i32* %24, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %358, i64 %360
  %362 = load float, float* %361, align 4
  %363 = fsub float %357, %362
  store float %363, float* %21, align 4
  %364 = load float*, float** %17, align 8
  %365 = load i32, i32* %25, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %364, i64 %366
  %368 = load float, float* %367, align 4
  %369 = load float*, float** %17, align 8
  %370 = load i32, i32* %24, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %369, i64 %371
  %373 = load float, float* %372, align 4
  %374 = fsub float %368, %373
  store float %374, float* %22, align 4
  %375 = load float, float* %21, align 4
  %376 = load float, float* %20, align 4
  %377 = fmul float %375, %376
  %378 = load float, float* %19, align 4
  %379 = load float, float* %22, align 4
  %380 = fmul float %378, %379
  %381 = fsub float %377, %380
  store float %381, float* %27, align 4
  %382 = load float, float* %18, align 4
  %383 = load float, float* %22, align 4
  %384 = fmul float %382, %383
  %385 = load float, float* %19, align 4
  %386 = load float, float* %21, align 4
  %387 = fmul float %385, %386
  %388 = fsub float %384, %387
  store float %388, float* %28, align 4
  %389 = load float, float* %18, align 4
  %390 = load float, float* %20, align 4
  %391 = fmul float %389, %390
  %392 = load float, float* %19, align 4
  %393 = load float, float* %19, align 4
  %394 = fmul float %392, %393
  %395 = fsub float %391, %394
  store float %395, float* %29, align 4
  %396 = load float, float* %27, align 4
  %397 = load float, float* %31, align 4
  %398 = load float, float* %28, align 4
  %399 = fmul float %397, %398
  %400 = fadd float %396, %399
  %401 = load float, float* %29, align 4
  %402 = fdiv float %400, %401
  store float %402, float* %26, align 4
  %403 = load float, float* %26, align 4
  %404 = fcmp olt float %403, 0.000000e+00
  br i1 %404, label %405, label %406

405:                                              ; preds = %319
  store float 0.000000e+00, float* %26, align 4
  br label %406

406:                                              ; preds = %405, %319
  %407 = load float, float* %26, align 4
  %408 = load float, float* %11, align 4
  %409 = fsub float %407, %408
  %410 = load float*, float** %10, align 8
  %411 = load i32, i32* %23, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds float, float* %410, i64 %412
  store float %409, float* %413, align 4
  br label %414

414:                                              ; preds = %406
  %415 = load i32, i32* %23, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %23, align 4
  %417 = load float, float* %31, align 4
  %418 = fadd float %417, 1.000000e+00
  store float %418, float* %31, align 4
  br label %300

419:                                              ; preds = %318
  br label %420

420:                                              ; preds = %443, %419
  %421 = load i32, i32* %23, align 4
  %422 = load i32, i32* %7, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %448

424:                                              ; preds = %420
  %425 = load float, float* %27, align 4
  %426 = load float, float* %31, align 4
  %427 = load float, float* %28, align 4
  %428 = fmul float %426, %427
  %429 = fadd float %425, %428
  %430 = load float, float* %29, align 4
  %431 = fdiv float %429, %430
  store float %431, float* %26, align 4
  %432 = load float, float* %26, align 4
  %433 = fcmp olt float %432, 0.000000e+00
  br i1 %433, label %434, label %435

434:                                              ; preds = %424
  store float 0.000000e+00, float* %26, align 4
  br label %435

435:                                              ; preds = %434, %424
  %436 = load float, float* %26, align 4
  %437 = load float, float* %11, align 4
  %438 = fsub float %436, %437
  %439 = load float*, float** %10, align 8
  %440 = load i32, i32* %23, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %439, i64 %441
  store float %438, float* %442, align 4
  br label %443

443:                                              ; preds = %435
  %444 = load i32, i32* %23, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %23, align 4
  %446 = load float, float* %31, align 4
  %447 = fadd float %446, 1.000000e+00
  store float %447, float* %31, align 4
  br label %420

448:                                              ; preds = %420
  %449 = load i32, i32* %12, align 4
  %450 = icmp sle i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %448
  br label %732

452:                                              ; preds = %448
  store i32 0, i32* %23, align 4
  store float 0.000000e+00, float* %31, align 4
  br label %453

453:                                              ; preds = %571, %452
  %454 = load i32, i32* %23, align 4
  %455 = load i32, i32* %12, align 4
  %456 = sdiv i32 %455, 2
  %457 = add nsw i32 %454, %456
  store i32 %457, i32* %25, align 4
  %458 = load i32, i32* %25, align 4
  %459 = load i32, i32* %12, align 4
  %460 = sub nsw i32 %458, %459
  store i32 %460, i32* %24, align 4
  %461 = load i32, i32* %24, align 4
  %462 = icmp sge i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %453
  br label %576

464:                                              ; preds = %453
  %465 = load float*, float** %13, align 8
  %466 = load i32, i32* %25, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %465, i64 %467
  %469 = load float, float* %468, align 4
  %470 = load float*, float** %13, align 8
  %471 = load i32, i32* %24, align 4
  %472 = sub nsw i32 0, %471
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds float, float* %470, i64 %473
  %475 = load float, float* %474, align 4
  %476 = fadd float %469, %475
  store float %476, float* %18, align 4
  %477 = load float*, float** %14, align 8
  %478 = load i32, i32* %25, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float* %477, i64 %479
  %481 = load float, float* %480, align 4
  %482 = load float*, float** %14, align 8
  %483 = load i32, i32* %24, align 4
  %484 = sub nsw i32 0, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds float, float* %482, i64 %485
  %487 = load float, float* %486, align 4
  %488 = fsub float %481, %487
  store float %488, float* %19, align 4
  %489 = load float*, float** %15, align 8
  %490 = load i32, i32* %25, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = load float*, float** %15, align 8
  %495 = load i32, i32* %24, align 4
  %496 = sub nsw i32 0, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds float, float* %494, i64 %497
  %499 = load float, float* %498, align 4
  %500 = fadd float %493, %499
  store float %500, float* %20, align 4
  %501 = load float*, float** %16, align 8
  %502 = load i32, i32* %25, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds float, float* %501, i64 %503
  %505 = load float, float* %504, align 4
  %506 = load float*, float** %16, align 8
  %507 = load i32, i32* %24, align 4
  %508 = sub nsw i32 0, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %506, i64 %509
  %511 = load float, float* %510, align 4
  %512 = fadd float %505, %511
  store float %512, float* %21, align 4
  %513 = load float*, float** %17, align 8
  %514 = load i32, i32* %25, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds float, float* %513, i64 %515
  %517 = load float, float* %516, align 4
  %518 = load float*, float** %17, align 8
  %519 = load i32, i32* %24, align 4
  %520 = sub nsw i32 0, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %518, i64 %521
  %523 = load float, float* %522, align 4
  %524 = fsub float %517, %523
  store float %524, float* %22, align 4
  %525 = load float, float* %21, align 4
  %526 = load float, float* %20, align 4
  %527 = fmul float %525, %526
  %528 = load float, float* %19, align 4
  %529 = load float, float* %22, align 4
  %530 = fmul float %528, %529
  %531 = fsub float %527, %530
  store float %531, float* %27, align 4
  %532 = load float, float* %18, align 4
  %533 = load float, float* %22, align 4
  %534 = fmul float %532, %533
  %535 = load float, float* %19, align 4
  %536 = load float, float* %21, align 4
  %537 = fmul float %535, %536
  %538 = fsub float %534, %537
  store float %538, float* %28, align 4
  %539 = load float, float* %18, align 4
  %540 = load float, float* %20, align 4
  %541 = fmul float %539, %540
  %542 = load float, float* %19, align 4
  %543 = load float, float* %19, align 4
  %544 = fmul float %542, %543
  %545 = fsub float %541, %544
  store float %545, float* %29, align 4
  %546 = load float, float* %27, align 4
  %547 = load float, float* %31, align 4
  %548 = load float, float* %28, align 4
  %549 = fmul float %547, %548
  %550 = fadd float %546, %549
  %551 = load float, float* %29, align 4
  %552 = fdiv float %550, %551
  store float %552, float* %26, align 4
  %553 = load float, float* %26, align 4
  %554 = load float, float* %11, align 4
  %555 = fsub float %553, %554
  %556 = load float*, float** %10, align 8
  %557 = load i32, i32* %23, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds float, float* %556, i64 %558
  %560 = load float, float* %559, align 4
  %561 = fcmp olt float %555, %560
  br i1 %561, label %562, label %570

562:                                              ; preds = %464
  %563 = load float, float* %26, align 4
  %564 = load float, float* %11, align 4
  %565 = fsub float %563, %564
  %566 = load float*, float** %10, align 8
  %567 = load i32, i32* %23, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds float, float* %566, i64 %568
  store float %565, float* %569, align 4
  br label %570

570:                                              ; preds = %562, %464
  br label %571

571:                                              ; preds = %570
  %572 = load i32, i32* %23, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %23, align 4
  %574 = load float, float* %31, align 4
  %575 = fadd float %574, 1.000000e+00
  store float %575, float* %31, align 4
  br label %453

576:                                              ; preds = %463
  br label %577

577:                                              ; preds = %691, %576
  %578 = load i32, i32* %23, align 4
  %579 = load i32, i32* %12, align 4
  %580 = sdiv i32 %579, 2
  %581 = add nsw i32 %578, %580
  store i32 %581, i32* %25, align 4
  %582 = load i32, i32* %25, align 4
  %583 = load i32, i32* %12, align 4
  %584 = sub nsw i32 %582, %583
  store i32 %584, i32* %24, align 4
  %585 = load i32, i32* %25, align 4
  %586 = load i32, i32* %7, align 4
  %587 = icmp sge i32 %585, %586
  br i1 %587, label %588, label %589

588:                                              ; preds = %577
  br label %696

589:                                              ; preds = %577
  %590 = load float*, float** %13, align 8
  %591 = load i32, i32* %25, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds float, float* %590, i64 %592
  %594 = load float, float* %593, align 4
  %595 = load float*, float** %13, align 8
  %596 = load i32, i32* %24, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds float, float* %595, i64 %597
  %599 = load float, float* %598, align 4
  %600 = fsub float %594, %599
  store float %600, float* %18, align 4
  %601 = load float*, float** %14, align 8
  %602 = load i32, i32* %25, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds float, float* %601, i64 %603
  %605 = load float, float* %604, align 4
  %606 = load float*, float** %14, align 8
  %607 = load i32, i32* %24, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds float, float* %606, i64 %608
  %610 = load float, float* %609, align 4
  %611 = fsub float %605, %610
  store float %611, float* %19, align 4
  %612 = load float*, float** %15, align 8
  %613 = load i32, i32* %25, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds float, float* %612, i64 %614
  %616 = load float, float* %615, align 4
  %617 = load float*, float** %15, align 8
  %618 = load i32, i32* %24, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds float, float* %617, i64 %619
  %621 = load float, float* %620, align 4
  %622 = fsub float %616, %621
  store float %622, float* %20, align 4
  %623 = load float*, float** %16, align 8
  %624 = load i32, i32* %25, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %623, i64 %625
  %627 = load float, float* %626, align 4
  %628 = load float*, float** %16, align 8
  %629 = load i32, i32* %24, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds float, float* %628, i64 %630
  %632 = load float, float* %631, align 4
  %633 = fsub float %627, %632
  store float %633, float* %21, align 4
  %634 = load float*, float** %17, align 8
  %635 = load i32, i32* %25, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds float, float* %634, i64 %636
  %638 = load float, float* %637, align 4
  %639 = load float*, float** %17, align 8
  %640 = load i32, i32* %24, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds float, float* %639, i64 %641
  %643 = load float, float* %642, align 4
  %644 = fsub float %638, %643
  store float %644, float* %22, align 4
  %645 = load float, float* %21, align 4
  %646 = load float, float* %20, align 4
  %647 = fmul float %645, %646
  %648 = load float, float* %19, align 4
  %649 = load float, float* %22, align 4
  %650 = fmul float %648, %649
  %651 = fsub float %647, %650
  store float %651, float* %27, align 4
  %652 = load float, float* %18, align 4
  %653 = load float, float* %22, align 4
  %654 = fmul float %652, %653
  %655 = load float, float* %19, align 4
  %656 = load float, float* %21, align 4
  %657 = fmul float %655, %656
  %658 = fsub float %654, %657
  store float %658, float* %28, align 4
  %659 = load float, float* %18, align 4
  %660 = load float, float* %20, align 4
  %661 = fmul float %659, %660
  %662 = load float, float* %19, align 4
  %663 = load float, float* %19, align 4
  %664 = fmul float %662, %663
  %665 = fsub float %661, %664
  store float %665, float* %29, align 4
  %666 = load float, float* %27, align 4
  %667 = load float, float* %31, align 4
  %668 = load float, float* %28, align 4
  %669 = fmul float %667, %668
  %670 = fadd float %666, %669
  %671 = load float, float* %29, align 4
  %672 = fdiv float %670, %671
  store float %672, float* %26, align 4
  %673 = load float, float* %26, align 4
  %674 = load float, float* %11, align 4
  %675 = fsub float %673, %674
  %676 = load float*, float** %10, align 8
  %677 = load i32, i32* %23, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds float, float* %676, i64 %678
  %680 = load float, float* %679, align 4
  %681 = fcmp olt float %675, %680
  br i1 %681, label %682, label %690

682:                                              ; preds = %589
  %683 = load float, float* %26, align 4
  %684 = load float, float* %11, align 4
  %685 = fsub float %683, %684
  %686 = load float*, float** %10, align 8
  %687 = load i32, i32* %23, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float, float* %686, i64 %688
  store float %685, float* %689, align 4
  br label %690

690:                                              ; preds = %682, %589
  br label %691

691:                                              ; preds = %690
  %692 = load i32, i32* %23, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %23, align 4
  %694 = load float, float* %31, align 4
  %695 = fadd float %694, 1.000000e+00
  store float %695, float* %31, align 4
  br label %577

696:                                              ; preds = %588
  br label %697

697:                                              ; preds = %727, %696
  %698 = load i32, i32* %23, align 4
  %699 = load i32, i32* %7, align 4
  %700 = icmp slt i32 %698, %699
  br i1 %700, label %701, label %732

701:                                              ; preds = %697
  %702 = load float, float* %27, align 4
  %703 = load float, float* %31, align 4
  %704 = load float, float* %28, align 4
  %705 = fmul float %703, %704
  %706 = fadd float %702, %705
  %707 = load float, float* %29, align 4
  %708 = fdiv float %706, %707
  store float %708, float* %26, align 4
  %709 = load float, float* %26, align 4
  %710 = load float, float* %11, align 4
  %711 = fsub float %709, %710
  %712 = load float*, float** %10, align 8
  %713 = load i32, i32* %23, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds float, float* %712, i64 %714
  %716 = load float, float* %715, align 4
  %717 = fcmp olt float %711, %716
  br i1 %717, label %718, label %726

718:                                              ; preds = %701
  %719 = load float, float* %26, align 4
  %720 = load float, float* %11, align 4
  %721 = fsub float %719, %720
  %722 = load float*, float** %10, align 8
  %723 = load i32, i32* %23, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds float, float* %722, i64 %724
  store float %721, float* %725, align 4
  br label %726

726:                                              ; preds = %718, %701
  br label %727

727:                                              ; preds = %726
  %728 = load i32, i32* %23, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %23, align 4
  %730 = load float, float* %31, align 4
  %731 = fadd float %730, 1.000000e+00
  store float %731, float* %31, align 4
  br label %697

732:                                              ; preds = %451, %697
  ret void
}

declare dso_local float* @alloca(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
