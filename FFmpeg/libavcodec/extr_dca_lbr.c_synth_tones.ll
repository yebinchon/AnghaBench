; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_synth_tones.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_synth_tones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32***, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32*, i64, i32, i64 }

@DCA_LBR_TONES = common dso_local global i32 0, align 4
@ff_dca_synth_env = common dso_local global float* null, align 8
@ff_dca_quant_amp = common dso_local global float* null, align 8
@cos_tab = common dso_local global float* null, align 8
@ff_dca_corr_cf = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, float*, i32, i32, i32)* @synth_tones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_tones(%struct.TYPE_5__* %0, i32 %1, float* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %397

25:                                               ; preds = %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32***, i32**** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32**, i32*** %28, i64 %30
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32***, i32**** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32**, i32*** %41, i64 %43
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* @DCA_LBR_TONES, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  store i32 %56, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %394, %25
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %397

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @DCA_LBR_TONES, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %71
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %16, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %380

81:                                               ; preds = %61
  %82 = load float*, float** @ff_dca_synth_env, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float*, float** @ff_dca_quant_amp, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %87, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fmul float %86, %97
  store float %98, float* %17, align 4
  %99 = load float, float* %17, align 4
  %100 = load float*, float** @cos_tab, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 255
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %100, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fmul float %99, %111
  store float %112, float* %18, align 4
  %113 = load float, float* %17, align 4
  %114 = load float*, float** @cos_tab, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 64
  %123 = and i32 %122, 255
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %114, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fmul float %113, %126
  store float %127, float* %19, align 4
  %128 = load float**, float*** @ff_dca_corr_cf, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds float*, float** %128, i64 %131
  %133 = load float*, float** %132, align 8
  store float* %133, float** %20, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %21, align 4
  switch i32 %137, label %238 [
    i32 0, label %138
    i32 1, label %139
    i32 2, label %178
    i32 3, label %207
    i32 4, label %227
  ]

138:                                              ; preds = %81
  br label %306

139:                                              ; preds = %81
  %140 = load float*, float** %20, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load float, float* %141, align 4
  %143 = load float, float* %19, align 4
  %144 = fneg float %143
  %145 = fmul float %142, %144
  %146 = load float*, float** %9, align 8
  %147 = getelementptr inbounds float, float* %146, i64 3
  %148 = load float, float* %147, align 4
  %149 = fadd float %148, %145
  store float %149, float* %147, align 4
  %150 = load float*, float** %20, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  %152 = load float, float* %151, align 4
  %153 = load float, float* %18, align 4
  %154 = fmul float %152, %153
  %155 = load float*, float** %9, align 8
  %156 = getelementptr inbounds float, float* %155, i64 2
  %157 = load float, float* %156, align 4
  %158 = fadd float %157, %154
  store float %158, float* %156, align 4
  %159 = load float*, float** %20, align 8
  %160 = getelementptr inbounds float, float* %159, i64 2
  %161 = load float, float* %160, align 4
  %162 = load float, float* %19, align 4
  %163 = fmul float %161, %162
  %164 = load float*, float** %9, align 8
  %165 = getelementptr inbounds float, float* %164, i64 1
  %166 = load float, float* %165, align 4
  %167 = fadd float %166, %163
  store float %167, float* %165, align 4
  %168 = load float*, float** %20, align 8
  %169 = getelementptr inbounds float, float* %168, i64 3
  %170 = load float, float* %169, align 4
  %171 = load float, float* %18, align 4
  %172 = fneg float %171
  %173 = fmul float %170, %172
  %174 = load float*, float** %9, align 8
  %175 = getelementptr inbounds float, float* %174, i64 0
  %176 = load float, float* %175, align 4
  %177 = fadd float %176, %173
  store float %177, float* %175, align 4
  br label %292

178:                                              ; preds = %81
  %179 = load float*, float** %20, align 8
  %180 = getelementptr inbounds float, float* %179, i64 0
  %181 = load float, float* %180, align 4
  %182 = load float, float* %19, align 4
  %183 = fneg float %182
  %184 = fmul float %181, %183
  %185 = load float*, float** %9, align 8
  %186 = getelementptr inbounds float, float* %185, i64 2
  %187 = load float, float* %186, align 4
  %188 = fadd float %187, %184
  store float %188, float* %186, align 4
  %189 = load float*, float** %20, align 8
  %190 = getelementptr inbounds float, float* %189, i64 1
  %191 = load float, float* %190, align 4
  %192 = load float, float* %18, align 4
  %193 = fmul float %191, %192
  %194 = load float*, float** %9, align 8
  %195 = getelementptr inbounds float, float* %194, i64 1
  %196 = load float, float* %195, align 4
  %197 = fadd float %196, %193
  store float %197, float* %195, align 4
  %198 = load float*, float** %20, align 8
  %199 = getelementptr inbounds float, float* %198, i64 2
  %200 = load float, float* %199, align 4
  %201 = load float, float* %19, align 4
  %202 = fmul float %200, %201
  %203 = load float*, float** %9, align 8
  %204 = getelementptr inbounds float, float* %203, i64 0
  %205 = load float, float* %204, align 4
  %206 = fadd float %205, %202
  store float %206, float* %204, align 4
  br label %278

207:                                              ; preds = %81
  %208 = load float*, float** %20, align 8
  %209 = getelementptr inbounds float, float* %208, i64 0
  %210 = load float, float* %209, align 4
  %211 = load float, float* %19, align 4
  %212 = fneg float %211
  %213 = fmul float %210, %212
  %214 = load float*, float** %9, align 8
  %215 = getelementptr inbounds float, float* %214, i64 1
  %216 = load float, float* %215, align 4
  %217 = fadd float %216, %213
  store float %217, float* %215, align 4
  %218 = load float*, float** %20, align 8
  %219 = getelementptr inbounds float, float* %218, i64 1
  %220 = load float, float* %219, align 4
  %221 = load float, float* %18, align 4
  %222 = fmul float %220, %221
  %223 = load float*, float** %9, align 8
  %224 = getelementptr inbounds float, float* %223, i64 0
  %225 = load float, float* %224, align 4
  %226 = fadd float %225, %222
  store float %226, float* %224, align 4
  br label %265

227:                                              ; preds = %81
  %228 = load float*, float** %20, align 8
  %229 = getelementptr inbounds float, float* %228, i64 0
  %230 = load float, float* %229, align 4
  %231 = load float, float* %19, align 4
  %232 = fneg float %231
  %233 = fmul float %230, %232
  %234 = load float*, float** %9, align 8
  %235 = getelementptr inbounds float, float* %234, i64 0
  %236 = load float, float* %235, align 4
  %237 = fadd float %236, %233
  store float %237, float* %235, align 4
  br label %252

238:                                              ; preds = %81
  %239 = load float*, float** %20, align 8
  %240 = getelementptr inbounds float, float* %239, i64 0
  %241 = load float, float* %240, align 4
  %242 = load float, float* %19, align 4
  %243 = fneg float %242
  %244 = fmul float %241, %243
  %245 = load float*, float** %9, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sub nsw i32 %246, 5
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %245, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fadd float %250, %244
  store float %251, float* %249, align 4
  br label %252

252:                                              ; preds = %238, %227
  %253 = load float*, float** %20, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  %255 = load float, float* %254, align 4
  %256 = load float, float* %18, align 4
  %257 = fmul float %255, %256
  %258 = load float*, float** %9, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sub nsw i32 %259, 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %258, i64 %261
  %263 = load float, float* %262, align 4
  %264 = fadd float %263, %257
  store float %264, float* %262, align 4
  br label %265

265:                                              ; preds = %252, %207
  %266 = load float*, float** %20, align 8
  %267 = getelementptr inbounds float, float* %266, i64 2
  %268 = load float, float* %267, align 4
  %269 = load float, float* %19, align 4
  %270 = fmul float %268, %269
  %271 = load float*, float** %9, align 8
  %272 = load i32, i32* %21, align 4
  %273 = sub nsw i32 %272, 3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %271, i64 %274
  %276 = load float, float* %275, align 4
  %277 = fadd float %276, %270
  store float %277, float* %275, align 4
  br label %278

278:                                              ; preds = %265, %178
  %279 = load float*, float** %20, align 8
  %280 = getelementptr inbounds float, float* %279, i64 3
  %281 = load float, float* %280, align 4
  %282 = load float, float* %18, align 4
  %283 = fneg float %282
  %284 = fmul float %281, %283
  %285 = load float*, float** %9, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sub nsw i32 %286, 2
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %285, i64 %288
  %290 = load float, float* %289, align 4
  %291 = fadd float %290, %284
  store float %291, float* %289, align 4
  br label %292

292:                                              ; preds = %278, %139
  %293 = load float*, float** %20, align 8
  %294 = getelementptr inbounds float, float* %293, i64 4
  %295 = load float, float* %294, align 4
  %296 = load float, float* %19, align 4
  %297 = fneg float %296
  %298 = fmul float %295, %297
  %299 = load float*, float** %9, align 8
  %300 = load i32, i32* %21, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %299, i64 %302
  %304 = load float, float* %303, align 4
  %305 = fadd float %304, %298
  store float %305, float* %303, align 4
  br label %306

306:                                              ; preds = %292, %138
  %307 = load float*, float** %20, align 8
  %308 = getelementptr inbounds float, float* %307, i64 5
  %309 = load float, float* %308, align 4
  %310 = load float, float* %18, align 4
  %311 = fmul float %309, %310
  %312 = load float*, float** %9, align 8
  %313 = load i32, i32* %21, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %312, i64 %314
  %316 = load float, float* %315, align 4
  %317 = fadd float %316, %311
  store float %317, float* %315, align 4
  %318 = load float*, float** %20, align 8
  %319 = getelementptr inbounds float, float* %318, i64 6
  %320 = load float, float* %319, align 4
  %321 = load float, float* %19, align 4
  %322 = fmul float %320, %321
  %323 = load float*, float** %9, align 8
  %324 = load i32, i32* %21, align 4
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %323, i64 %326
  %328 = load float, float* %327, align 4
  %329 = fadd float %328, %322
  store float %329, float* %327, align 4
  %330 = load float*, float** %20, align 8
  %331 = getelementptr inbounds float, float* %330, i64 7
  %332 = load float, float* %331, align 4
  %333 = load float, float* %18, align 4
  %334 = fneg float %333
  %335 = fmul float %332, %334
  %336 = load float*, float** %9, align 8
  %337 = load i32, i32* %21, align 4
  %338 = add nsw i32 %337, 2
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %336, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fadd float %341, %335
  store float %342, float* %340, align 4
  %343 = load float*, float** %20, align 8
  %344 = getelementptr inbounds float, float* %343, i64 8
  %345 = load float, float* %344, align 4
  %346 = load float, float* %19, align 4
  %347 = fneg float %346
  %348 = fmul float %345, %347
  %349 = load float*, float** %9, align 8
  %350 = load i32, i32* %21, align 4
  %351 = add nsw i32 %350, 3
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %349, i64 %352
  %354 = load float, float* %353, align 4
  %355 = fadd float %354, %348
  store float %355, float* %353, align 4
  %356 = load float*, float** %20, align 8
  %357 = getelementptr inbounds float, float* %356, i64 9
  %358 = load float, float* %357, align 4
  %359 = load float, float* %18, align 4
  %360 = fmul float %358, %359
  %361 = load float*, float** %9, align 8
  %362 = load i32, i32* %21, align 4
  %363 = add nsw i32 %362, 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %361, i64 %364
  %366 = load float, float* %365, align 4
  %367 = fadd float %366, %360
  store float %367, float* %365, align 4
  %368 = load float*, float** %20, align 8
  %369 = getelementptr inbounds float, float* %368, i64 10
  %370 = load float, float* %369, align 4
  %371 = load float, float* %19, align 4
  %372 = fmul float %370, %371
  %373 = load float*, float** %9, align 8
  %374 = load i32, i32* %21, align 4
  %375 = add nsw i32 %374, 5
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %373, i64 %376
  %378 = load float, float* %377, align 4
  %379 = fadd float %378, %372
  store float %379, float* %377, align 4
  br label %380

380:                                              ; preds = %306, %61
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = add nsw i64 %391, %383
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %389, align 4
  br label %394

394:                                              ; preds = %380
  %395 = load i32, i32* %13, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %13, align 4
  br label %57

397:                                              ; preds = %24, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
