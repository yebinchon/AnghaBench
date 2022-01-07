; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_setup_tone_curves.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_setup_tone_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_BANDS = common dso_local global i32 0, align 4
@EHMER_MAX = common dso_local global i32 0, align 4
@P_LEVELS = common dso_local global i32 0, align 4
@MAX_ATH = common dso_local global i32 0, align 4
@ATH = common dso_local global float* null, align 8
@tonemasks = common dso_local global float*** null, align 8
@EHMER_OFFSET = common dso_local global i32 0, align 4
@P_LEVEL_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float*** (float*, float, i32, float, float)* @setup_tone_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float*** @setup_tone_curves(float* %0, float %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca float*, align 8
  %23 = alloca float***, align 8
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %37 = load i32, i32* @P_BANDS, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @EHMER_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %15, align 8
  %42 = alloca float, i64 %40, align 16
  store i64 %40, i64* %16, align 8
  %43 = load i32, i32* @P_BANDS, align 4
  %44 = zext i32 %43 to i64
  %45 = load i32, i32* @P_LEVELS, align 4
  %46 = zext i32 %45 to i64
  %47 = load i32, i32* @EHMER_MAX, align 4
  %48 = zext i32 %47 to i64
  %49 = mul nuw i64 %44, %46
  %50 = mul nuw i64 %49, %48
  %51 = alloca float, i64 %50, align 16
  store i64 %44, i64* %17, align 8
  store i64 %46, i64* %18, align 8
  store i64 %48, i64* %19, align 8
  %52 = load i32, i32* @P_LEVELS, align 4
  %53 = zext i32 %52 to i64
  %54 = load i32, i32* @EHMER_MAX, align 4
  %55 = zext i32 %54 to i64
  %56 = mul nuw i64 %53, %55
  %57 = alloca float, i64 %56, align 16
  store i64 %53, i64* %20, align 8
  store i64 %55, i64* %21, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call float* @alloca(i32 %61)
  store float* %62, float** %22, align 8
  %63 = load i32, i32* @P_BANDS, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i8* @_ogg_malloc(i32 %66)
  %68 = bitcast i8* %67 to float***
  store float*** %68, float**** %23, align 8
  %69 = bitcast float* %51 to float***
  %70 = mul nuw i64 %44, %46
  %71 = mul nuw i64 %70, %48
  %72 = mul nuw i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(float*** %69, i32 0, i32 %73)
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %388, %5
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @P_BANDS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %391

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %80, 4
  store i32 %81, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %147, %79
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @EHMER_MAX, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %150

86:                                               ; preds = %82
  store float 9.990000e+02, float* %25, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %139, %86
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %142

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %24, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @MAX_ATH, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %90
  %99 = load float, float* %25, align 4
  %100 = load float*, float** @ATH, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %24, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %100, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fcmp ogt float %99, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %98
  %111 = load float*, float** @ATH, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %111, i64 %117
  %119 = load float, float* %118, align 4
  store float %119, float* %25, align 4
  br label %120

120:                                              ; preds = %110, %98
  br label %138

121:                                              ; preds = %90
  %122 = load float, float* %25, align 4
  %123 = load float*, float** @ATH, align 8
  %124 = load i32, i32* @MAX_ATH, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %123, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fcmp ogt float %122, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load float*, float** @ATH, align 8
  %132 = load i32, i32* @MAX_ATH, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %131, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %25, align 4
  br label %137

137:                                              ; preds = %130, %121
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %87

142:                                              ; preds = %87
  %143 = load float, float* %25, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %42, i64 %145
  store float %143, float* %146, align 4
  br label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %82

150:                                              ; preds = %82
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %179, %150
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 6
  br i1 %153, label %154, label %182

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nuw i64 %46, %48
  %158 = mul nsw i64 %156, %157
  %159 = getelementptr inbounds float, float* %51, i64 %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, %48
  %164 = getelementptr inbounds float, float* %159, i64 %163
  %165 = load float***, float**** @tonemasks, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float**, float*** %165, i64 %167
  %169 = load float**, float*** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %169, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* @EHMER_MAX, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 4
  %177 = trunc i64 %176 to i32
  %178 = call i32 @memcpy(float* %164, float* %173, i32 %177)
  br label %179

179:                                              ; preds = %154
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %151

182:                                              ; preds = %151
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = mul nuw i64 %46, %48
  %186 = mul nsw i64 %184, %185
  %187 = getelementptr inbounds float, float* %51, i64 %186
  %188 = mul nsw i64 0, %48
  %189 = getelementptr inbounds float, float* %187, i64 %188
  %190 = load float***, float**** @tonemasks, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float**, float*** %190, i64 %192
  %194 = load float**, float*** %193, align 8
  %195 = getelementptr inbounds float*, float** %194, i64 0
  %196 = load float*, float** %195, align 8
  %197 = load i32, i32* @EHMER_MAX, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = call i32 @memcpy(float* %189, float* %196, i32 %200)
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = mul nuw i64 %46, %48
  %205 = mul nsw i64 %203, %204
  %206 = getelementptr inbounds float, float* %51, i64 %205
  %207 = mul nsw i64 1, %48
  %208 = getelementptr inbounds float, float* %206, i64 %207
  %209 = load float***, float**** @tonemasks, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float**, float*** %209, i64 %211
  %213 = load float**, float*** %212, align 8
  %214 = getelementptr inbounds float*, float** %213, i64 0
  %215 = load float*, float** %214, align 8
  %216 = load i32, i32* @EHMER_MAX, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = call i32 @memcpy(float* %208, float* %215, i32 %219)
  store i32 0, i32* %12, align 4
  br label %221

221:                                              ; preds = %274, %182
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @P_LEVELS, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %277

225:                                              ; preds = %221
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %270, %225
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @EHMER_MAX, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %273

230:                                              ; preds = %226
  %231 = load float, float* %9, align 4
  %232 = load i32, i32* @EHMER_OFFSET, align 4
  %233 = load i32, i32* %13, align 4
  %234 = sub nsw i32 %232, %233
  %235 = call float @abs(i32 %234)
  %236 = load float, float* %10, align 4
  %237 = fmul float %235, %236
  %238 = fadd float %231, %237
  store float %238, float* %26, align 4
  %239 = load float, float* %26, align 4
  %240 = fpext float %239 to double
  %241 = fcmp olt double %240, 0.000000e+00
  br i1 %241, label %242, label %246

242:                                              ; preds = %230
  %243 = load float, float* %9, align 4
  %244 = fcmp ogt float %243, 0.000000e+00
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store float 0.000000e+00, float* %26, align 4
  br label %246

246:                                              ; preds = %245, %242, %230
  %247 = load float, float* %26, align 4
  %248 = fpext float %247 to double
  %249 = fcmp ogt double %248, 0.000000e+00
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = load float, float* %9, align 4
  %252 = fcmp olt float %251, 0.000000e+00
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store float 0.000000e+00, float* %26, align 4
  br label %254

254:                                              ; preds = %253, %250, %246
  %255 = load float, float* %26, align 4
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = mul nuw i64 %46, %48
  %259 = mul nsw i64 %257, %258
  %260 = getelementptr inbounds float, float* %51, i64 %259
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %262, %48
  %264 = getelementptr inbounds float, float* %260, i64 %263
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  %268 = load float, float* %267, align 4
  %269 = fadd float %268, %255
  store float %269, float* %267, align 4
  br label %270

270:                                              ; preds = %254
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %226

273:                                              ; preds = %226
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %221

277:                                              ; preds = %221
  store i32 0, i32* %12, align 4
  br label %278

278:                                              ; preds = %351, %277
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* @P_LEVELS, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %354

282:                                              ; preds = %278
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = mul nuw i64 %46, %48
  %286 = mul nsw i64 %284, %285
  %287 = getelementptr inbounds float, float* %51, i64 %286
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = mul nsw i64 %289, %48
  %291 = getelementptr inbounds float, float* %287, i64 %290
  %292 = load float*, float** %6, align 8
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %292, i64 %294
  %296 = load float, float* %295, align 4
  %297 = fpext float %296 to double
  %298 = fadd double %297, 1.000000e+02
  %299 = load i32, i32* %12, align 4
  %300 = icmp slt i32 %299, 2
  br i1 %300, label %301, label %302

301:                                              ; preds = %282
  br label %304

302:                                              ; preds = %282
  %303 = load i32, i32* %12, align 4
  br label %304

304:                                              ; preds = %302, %301
  %305 = phi i32 [ 2, %301 ], [ %303, %302 ]
  %306 = sitofp i32 %305 to double
  %307 = fmul double %306, 1.000000e+01
  %308 = fsub double %298, %307
  %309 = load i64, i64* @P_LEVEL_0, align 8
  %310 = sitofp i64 %309 to double
  %311 = fsub double %308, %310
  %312 = fptosi double %311 to i64
  %313 = call i32 @attenuate_curve(float* %291, i64 %312)
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %315, %55
  %317 = getelementptr inbounds float, float* %57, i64 %316
  %318 = load i32, i32* @EHMER_MAX, align 4
  %319 = sext i32 %318 to i64
  %320 = mul i64 %319, 4
  %321 = trunc i64 %320 to i32
  %322 = call i32 @memcpy(float* %317, float* %42, i32 %321)
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %324, %55
  %326 = getelementptr inbounds float, float* %57, i64 %325
  %327 = load i32, i32* %12, align 4
  %328 = sitofp i32 %327 to float
  %329 = fmul float %328, 1.000000e+01
  %330 = fpext float %329 to double
  %331 = fsub double 1.000000e+02, %330
  %332 = load i64, i64* @P_LEVEL_0, align 8
  %333 = sitofp i64 %332 to double
  %334 = fsub double %331, %333
  %335 = fptosi double %334 to i64
  %336 = call i32 @attenuate_curve(float* %326, i64 %335)
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = mul nsw i64 %338, %55
  %340 = getelementptr inbounds float, float* %57, i64 %339
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nuw i64 %46, %48
  %344 = mul nsw i64 %342, %343
  %345 = getelementptr inbounds float, float* %51, i64 %344
  %346 = load i32, i32* %12, align 4
  %347 = sext i32 %346 to i64
  %348 = mul nsw i64 %347, %48
  %349 = getelementptr inbounds float, float* %345, i64 %348
  %350 = call i32 @max_curve(float* %340, float* %349)
  br label %351

351:                                              ; preds = %304
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %278

354:                                              ; preds = %278
  store i32 1, i32* %12, align 4
  br label %355

355:                                              ; preds = %384, %354
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* @P_LEVELS, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %387

359:                                              ; preds = %355
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = mul nsw i64 %361, %55
  %363 = getelementptr inbounds float, float* %57, i64 %362
  %364 = load i32, i32* %12, align 4
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = mul nsw i64 %366, %55
  %368 = getelementptr inbounds float, float* %57, i64 %367
  %369 = call i32 @min_curve(float* %363, float* %368)
  %370 = load i32, i32* %11, align 4
  %371 = sext i32 %370 to i64
  %372 = mul nuw i64 %46, %48
  %373 = mul nsw i64 %371, %372
  %374 = getelementptr inbounds float, float* %51, i64 %373
  %375 = load i32, i32* %12, align 4
  %376 = sext i32 %375 to i64
  %377 = mul nsw i64 %376, %48
  %378 = getelementptr inbounds float, float* %374, i64 %377
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = mul nsw i64 %380, %55
  %382 = getelementptr inbounds float, float* %57, i64 %381
  %383 = call i32 @min_curve(float* %378, float* %382)
  br label %384

384:                                              ; preds = %359
  %385 = load i32, i32* %12, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %12, align 4
  br label %355

387:                                              ; preds = %355
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %11, align 4
  br label %75

391:                                              ; preds = %75
  store i32 0, i32* %11, align 4
  br label %392

392:                                              ; preds = %990, %391
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* @P_BANDS, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %993

396:                                              ; preds = %392
  %397 = load i32, i32* @P_LEVELS, align 4
  %398 = sext i32 %397 to i64
  %399 = mul i64 8, %398
  %400 = trunc i64 %399 to i32
  %401 = call i8* @_ogg_malloc(i32 %400)
  %402 = bitcast i8* %401 to float**
  %403 = load float***, float**** %23, align 8
  %404 = load i32, i32* %11, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float**, float*** %403, i64 %405
  store float** %402, float*** %406, align 8
  %407 = load i32, i32* %11, align 4
  %408 = sitofp i32 %407 to double
  %409 = fmul double %408, 5.000000e-01
  %410 = fptosi double %409 to i32
  %411 = call float @fromOC(i32 %410)
  %412 = load float, float* %7, align 4
  %413 = fdiv float %411, %412
  %414 = fptosi float %413 to i32
  %415 = call i32 @floor(i32 %414)
  store i32 %415, i32* %29, align 4
  %416 = load i32, i32* %29, align 4
  %417 = sitofp i32 %416 to float
  %418 = load float, float* %7, align 4
  %419 = fmul float %417, %418
  %420 = fadd float %419, 1.000000e+00
  %421 = fptosi float %420 to i32
  %422 = call i32 @toOC(i32 %421)
  %423 = mul nsw i32 %422, 2
  %424 = call i32 @ceil(i32 %423)
  store i32 %424, i32* %28, align 4
  %425 = load i32, i32* %29, align 4
  %426 = add nsw i32 %425, 1
  %427 = sitofp i32 %426 to float
  %428 = load float, float* %7, align 4
  %429 = fmul float %427, %428
  %430 = fptosi float %429 to i32
  %431 = call i32 @toOC(i32 %430)
  %432 = mul nsw i32 %431, 2
  %433 = call i32 @floor(i32 %432)
  store i32 %433, i32* %27, align 4
  %434 = load i32, i32* %28, align 4
  %435 = load i32, i32* %11, align 4
  %436 = icmp sgt i32 %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %396
  %438 = load i32, i32* %11, align 4
  store i32 %438, i32* %28, align 4
  br label %439

439:                                              ; preds = %437, %396
  %440 = load i32, i32* %28, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %439
  store i32 0, i32* %28, align 4
  br label %443

443:                                              ; preds = %442, %439
  %444 = load i32, i32* %27, align 4
  %445 = load i32, i32* @P_BANDS, align 4
  %446 = icmp sge i32 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = load i32, i32* @P_BANDS, align 4
  %449 = sub nsw i32 %448, 1
  store i32 %449, i32* %27, align 4
  br label %450

450:                                              ; preds = %447, %443
  store i32 0, i32* %14, align 4
  br label %451

451:                                              ; preds = %986, %450
  %452 = load i32, i32* %14, align 4
  %453 = load i32, i32* @P_LEVELS, align 4
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %455, label %989

455:                                              ; preds = %451
  %456 = load i32, i32* @EHMER_MAX, align 4
  %457 = add nsw i32 %456, 2
  %458 = sext i32 %457 to i64
  %459 = mul i64 4, %458
  %460 = trunc i64 %459 to i32
  %461 = call i8* @_ogg_malloc(i32 %460)
  %462 = bitcast i8* %461 to float*
  %463 = load float***, float**** %23, align 8
  %464 = load i32, i32* %11, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds float**, float*** %463, i64 %465
  %467 = load float**, float*** %466, align 8
  %468 = load i32, i32* %14, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float*, float** %467, i64 %469
  store float* %462, float** %470, align 8
  store i32 0, i32* %12, align 4
  br label %471

471:                                              ; preds = %480, %455
  %472 = load i32, i32* %12, align 4
  %473 = load i32, i32* %8, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %483

475:                                              ; preds = %471
  %476 = load float*, float** %22, align 8
  %477 = load i32, i32* %12, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds float, float* %476, i64 %478
  store float 9.990000e+02, float* %479, align 4
  br label %480

480:                                              ; preds = %475
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %12, align 4
  br label %471

483:                                              ; preds = %471
  %484 = load i32, i32* %28, align 4
  store i32 %484, i32* %13, align 4
  br label %485

485:                                              ; preds = %654, %483
  %486 = load i32, i32* %13, align 4
  %487 = load i32, i32* %27, align 4
  %488 = icmp sle i32 %486, %487
  br i1 %488, label %489, label %657

489:                                              ; preds = %485
  store i32 0, i32* %30, align 4
  store i32 0, i32* %12, align 4
  br label %490

490:                                              ; preds = %601, %489
  %491 = load i32, i32* %12, align 4
  %492 = load i32, i32* @EHMER_MAX, align 4
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %604

494:                                              ; preds = %490
  %495 = load i32, i32* %12, align 4
  %496 = sitofp i32 %495 to double
  %497 = fmul double %496, 1.250000e-01
  %498 = load i32, i32* %13, align 4
  %499 = sitofp i32 %498 to double
  %500 = fmul double %499, 5.000000e-01
  %501 = fadd double %497, %500
  %502 = fsub double %501, 2.062500e+00
  %503 = fptosi double %502 to i32
  %504 = call float @fromOC(i32 %503)
  %505 = load float, float* %7, align 4
  %506 = fdiv float %504, %505
  %507 = fptosi float %506 to i32
  store i32 %507, i32* %31, align 4
  %508 = load i32, i32* %12, align 4
  %509 = sitofp i32 %508 to double
  %510 = fmul double %509, 1.250000e-01
  %511 = load i32, i32* %13, align 4
  %512 = sitofp i32 %511 to double
  %513 = fmul double %512, 5.000000e-01
  %514 = fadd double %510, %513
  %515 = fsub double %514, 1.937500e+00
  %516 = fptosi double %515 to i32
  %517 = call float @fromOC(i32 %516)
  %518 = load float, float* %7, align 4
  %519 = fdiv float %517, %518
  %520 = fadd float %519, 1.000000e+00
  %521 = fptosi float %520 to i32
  store i32 %521, i32* %32, align 4
  %522 = load i32, i32* %31, align 4
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %494
  store i32 0, i32* %31, align 4
  br label %525

525:                                              ; preds = %524, %494
  %526 = load i32, i32* %31, align 4
  %527 = load i32, i32* %8, align 4
  %528 = icmp sgt i32 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %525
  %530 = load i32, i32* %8, align 4
  store i32 %530, i32* %31, align 4
  br label %531

531:                                              ; preds = %529, %525
  %532 = load i32, i32* %31, align 4
  %533 = load i32, i32* %30, align 4
  %534 = icmp slt i32 %532, %533
  br i1 %534, label %535, label %537

535:                                              ; preds = %531
  %536 = load i32, i32* %31, align 4
  store i32 %536, i32* %30, align 4
  br label %537

537:                                              ; preds = %535, %531
  %538 = load i32, i32* %32, align 4
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %537
  store i32 0, i32* %32, align 4
  br label %541

541:                                              ; preds = %540, %537
  %542 = load i32, i32* %32, align 4
  %543 = load i32, i32* %8, align 4
  %544 = icmp sgt i32 %542, %543
  br i1 %544, label %545, label %547

545:                                              ; preds = %541
  %546 = load i32, i32* %8, align 4
  store i32 %546, i32* %32, align 4
  br label %547

547:                                              ; preds = %545, %541
  br label %548

548:                                              ; preds = %597, %547
  %549 = load i32, i32* %30, align 4
  %550 = load i32, i32* %32, align 4
  %551 = icmp slt i32 %549, %550
  br i1 %551, label %552, label %556

552:                                              ; preds = %548
  %553 = load i32, i32* %30, align 4
  %554 = load i32, i32* %8, align 4
  %555 = icmp slt i32 %553, %554
  br label %556

556:                                              ; preds = %552, %548
  %557 = phi i1 [ false, %548 ], [ %555, %552 ]
  br i1 %557, label %558, label %600

558:                                              ; preds = %556
  %559 = load float*, float** %22, align 8
  %560 = load i32, i32* %30, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, float* %559, i64 %561
  %563 = load float, float* %562, align 4
  %564 = load i32, i32* %13, align 4
  %565 = sext i32 %564 to i64
  %566 = mul nuw i64 %46, %48
  %567 = mul nsw i64 %565, %566
  %568 = getelementptr inbounds float, float* %51, i64 %567
  %569 = load i32, i32* %14, align 4
  %570 = sext i32 %569 to i64
  %571 = mul nsw i64 %570, %48
  %572 = getelementptr inbounds float, float* %568, i64 %571
  %573 = load i32, i32* %12, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds float, float* %572, i64 %574
  %576 = load float, float* %575, align 4
  %577 = fcmp ogt float %563, %576
  br i1 %577, label %578, label %596

578:                                              ; preds = %558
  %579 = load i32, i32* %13, align 4
  %580 = sext i32 %579 to i64
  %581 = mul nuw i64 %46, %48
  %582 = mul nsw i64 %580, %581
  %583 = getelementptr inbounds float, float* %51, i64 %582
  %584 = load i32, i32* %14, align 4
  %585 = sext i32 %584 to i64
  %586 = mul nsw i64 %585, %48
  %587 = getelementptr inbounds float, float* %583, i64 %586
  %588 = load i32, i32* %12, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, float* %587, i64 %589
  %591 = load float, float* %590, align 4
  %592 = load float*, float** %22, align 8
  %593 = load i32, i32* %30, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float, float* %592, i64 %594
  store float %591, float* %595, align 4
  br label %596

596:                                              ; preds = %578, %558
  br label %597

597:                                              ; preds = %596
  %598 = load i32, i32* %30, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %30, align 4
  br label %548

600:                                              ; preds = %556
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %12, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %12, align 4
  br label %490

604:                                              ; preds = %490
  br label %605

605:                                              ; preds = %650, %604
  %606 = load i32, i32* %30, align 4
  %607 = load i32, i32* %8, align 4
  %608 = icmp slt i32 %606, %607
  br i1 %608, label %609, label %653

609:                                              ; preds = %605
  %610 = load float*, float** %22, align 8
  %611 = load i32, i32* %30, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds float, float* %610, i64 %612
  %614 = load float, float* %613, align 4
  %615 = load i32, i32* %13, align 4
  %616 = sext i32 %615 to i64
  %617 = mul nuw i64 %46, %48
  %618 = mul nsw i64 %616, %617
  %619 = getelementptr inbounds float, float* %51, i64 %618
  %620 = load i32, i32* %14, align 4
  %621 = sext i32 %620 to i64
  %622 = mul nsw i64 %621, %48
  %623 = getelementptr inbounds float, float* %619, i64 %622
  %624 = load i32, i32* @EHMER_MAX, align 4
  %625 = sub nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds float, float* %623, i64 %626
  %628 = load float, float* %627, align 4
  %629 = fcmp ogt float %614, %628
  br i1 %629, label %630, label %649

630:                                              ; preds = %609
  %631 = load i32, i32* %13, align 4
  %632 = sext i32 %631 to i64
  %633 = mul nuw i64 %46, %48
  %634 = mul nsw i64 %632, %633
  %635 = getelementptr inbounds float, float* %51, i64 %634
  %636 = load i32, i32* %14, align 4
  %637 = sext i32 %636 to i64
  %638 = mul nsw i64 %637, %48
  %639 = getelementptr inbounds float, float* %635, i64 %638
  %640 = load i32, i32* @EHMER_MAX, align 4
  %641 = sub nsw i32 %640, 1
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds float, float* %639, i64 %642
  %644 = load float, float* %643, align 4
  %645 = load float*, float** %22, align 8
  %646 = load i32, i32* %30, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds float, float* %645, i64 %647
  store float %644, float* %648, align 4
  br label %649

649:                                              ; preds = %630, %609
  br label %650

650:                                              ; preds = %649
  %651 = load i32, i32* %30, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %30, align 4
  br label %605

653:                                              ; preds = %605
  br label %654

654:                                              ; preds = %653
  %655 = load i32, i32* %13, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %13, align 4
  br label %485

657:                                              ; preds = %485
  %658 = load i32, i32* %11, align 4
  %659 = add nsw i32 %658, 1
  %660 = load i32, i32* @P_BANDS, align 4
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %829

662:                                              ; preds = %657
  store i32 0, i32* %33, align 4
  %663 = load i32, i32* %11, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %665

665:                                              ; preds = %776, %662
  %666 = load i32, i32* %12, align 4
  %667 = load i32, i32* @EHMER_MAX, align 4
  %668 = icmp slt i32 %666, %667
  br i1 %668, label %669, label %779

669:                                              ; preds = %665
  %670 = load i32, i32* %12, align 4
  %671 = sitofp i32 %670 to double
  %672 = fmul double %671, 1.250000e-01
  %673 = load i32, i32* %11, align 4
  %674 = sitofp i32 %673 to double
  %675 = fmul double %674, 5.000000e-01
  %676 = fadd double %672, %675
  %677 = fsub double %676, 2.062500e+00
  %678 = fptosi double %677 to i32
  %679 = call float @fromOC(i32 %678)
  %680 = load float, float* %7, align 4
  %681 = fdiv float %679, %680
  %682 = fptosi float %681 to i32
  store i32 %682, i32* %34, align 4
  %683 = load i32, i32* %12, align 4
  %684 = sitofp i32 %683 to double
  %685 = fmul double %684, 1.250000e-01
  %686 = load i32, i32* %11, align 4
  %687 = sitofp i32 %686 to double
  %688 = fmul double %687, 5.000000e-01
  %689 = fadd double %685, %688
  %690 = fsub double %689, 1.937500e+00
  %691 = fptosi double %690 to i32
  %692 = call float @fromOC(i32 %691)
  %693 = load float, float* %7, align 4
  %694 = fdiv float %692, %693
  %695 = fadd float %694, 1.000000e+00
  %696 = fptosi float %695 to i32
  store i32 %696, i32* %35, align 4
  %697 = load i32, i32* %34, align 4
  %698 = icmp slt i32 %697, 0
  br i1 %698, label %699, label %700

699:                                              ; preds = %669
  store i32 0, i32* %34, align 4
  br label %700

700:                                              ; preds = %699, %669
  %701 = load i32, i32* %34, align 4
  %702 = load i32, i32* %8, align 4
  %703 = icmp sgt i32 %701, %702
  br i1 %703, label %704, label %706

704:                                              ; preds = %700
  %705 = load i32, i32* %8, align 4
  store i32 %705, i32* %34, align 4
  br label %706

706:                                              ; preds = %704, %700
  %707 = load i32, i32* %34, align 4
  %708 = load i32, i32* %33, align 4
  %709 = icmp slt i32 %707, %708
  br i1 %709, label %710, label %712

710:                                              ; preds = %706
  %711 = load i32, i32* %34, align 4
  store i32 %711, i32* %33, align 4
  br label %712

712:                                              ; preds = %710, %706
  %713 = load i32, i32* %35, align 4
  %714 = icmp slt i32 %713, 0
  br i1 %714, label %715, label %716

715:                                              ; preds = %712
  store i32 0, i32* %35, align 4
  br label %716

716:                                              ; preds = %715, %712
  %717 = load i32, i32* %35, align 4
  %718 = load i32, i32* %8, align 4
  %719 = icmp sgt i32 %717, %718
  br i1 %719, label %720, label %722

720:                                              ; preds = %716
  %721 = load i32, i32* %8, align 4
  store i32 %721, i32* %35, align 4
  br label %722

722:                                              ; preds = %720, %716
  br label %723

723:                                              ; preds = %772, %722
  %724 = load i32, i32* %33, align 4
  %725 = load i32, i32* %35, align 4
  %726 = icmp slt i32 %724, %725
  br i1 %726, label %727, label %731

727:                                              ; preds = %723
  %728 = load i32, i32* %33, align 4
  %729 = load i32, i32* %8, align 4
  %730 = icmp slt i32 %728, %729
  br label %731

731:                                              ; preds = %727, %723
  %732 = phi i1 [ false, %723 ], [ %730, %727 ]
  br i1 %732, label %733, label %775

733:                                              ; preds = %731
  %734 = load float*, float** %22, align 8
  %735 = load i32, i32* %33, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds float, float* %734, i64 %736
  %738 = load float, float* %737, align 4
  %739 = load i32, i32* %13, align 4
  %740 = sext i32 %739 to i64
  %741 = mul nuw i64 %46, %48
  %742 = mul nsw i64 %740, %741
  %743 = getelementptr inbounds float, float* %51, i64 %742
  %744 = load i32, i32* %14, align 4
  %745 = sext i32 %744 to i64
  %746 = mul nsw i64 %745, %48
  %747 = getelementptr inbounds float, float* %743, i64 %746
  %748 = load i32, i32* %12, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds float, float* %747, i64 %749
  %751 = load float, float* %750, align 4
  %752 = fcmp ogt float %738, %751
  br i1 %752, label %753, label %771

753:                                              ; preds = %733
  %754 = load i32, i32* %13, align 4
  %755 = sext i32 %754 to i64
  %756 = mul nuw i64 %46, %48
  %757 = mul nsw i64 %755, %756
  %758 = getelementptr inbounds float, float* %51, i64 %757
  %759 = load i32, i32* %14, align 4
  %760 = sext i32 %759 to i64
  %761 = mul nsw i64 %760, %48
  %762 = getelementptr inbounds float, float* %758, i64 %761
  %763 = load i32, i32* %12, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds float, float* %762, i64 %764
  %766 = load float, float* %765, align 4
  %767 = load float*, float** %22, align 8
  %768 = load i32, i32* %33, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds float, float* %767, i64 %769
  store float %766, float* %770, align 4
  br label %771

771:                                              ; preds = %753, %733
  br label %772

772:                                              ; preds = %771
  %773 = load i32, i32* %33, align 4
  %774 = add nsw i32 %773, 1
  store i32 %774, i32* %33, align 4
  br label %723

775:                                              ; preds = %731
  br label %776

776:                                              ; preds = %775
  %777 = load i32, i32* %12, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %12, align 4
  br label %665

779:                                              ; preds = %665
  br label %780

780:                                              ; preds = %825, %779
  %781 = load i32, i32* %33, align 4
  %782 = load i32, i32* %8, align 4
  %783 = icmp slt i32 %781, %782
  br i1 %783, label %784, label %828

784:                                              ; preds = %780
  %785 = load float*, float** %22, align 8
  %786 = load i32, i32* %33, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds float, float* %785, i64 %787
  %789 = load float, float* %788, align 4
  %790 = load i32, i32* %13, align 4
  %791 = sext i32 %790 to i64
  %792 = mul nuw i64 %46, %48
  %793 = mul nsw i64 %791, %792
  %794 = getelementptr inbounds float, float* %51, i64 %793
  %795 = load i32, i32* %14, align 4
  %796 = sext i32 %795 to i64
  %797 = mul nsw i64 %796, %48
  %798 = getelementptr inbounds float, float* %794, i64 %797
  %799 = load i32, i32* @EHMER_MAX, align 4
  %800 = sub nsw i32 %799, 1
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds float, float* %798, i64 %801
  %803 = load float, float* %802, align 4
  %804 = fcmp ogt float %789, %803
  br i1 %804, label %805, label %824

805:                                              ; preds = %784
  %806 = load i32, i32* %13, align 4
  %807 = sext i32 %806 to i64
  %808 = mul nuw i64 %46, %48
  %809 = mul nsw i64 %807, %808
  %810 = getelementptr inbounds float, float* %51, i64 %809
  %811 = load i32, i32* %14, align 4
  %812 = sext i32 %811 to i64
  %813 = mul nsw i64 %812, %48
  %814 = getelementptr inbounds float, float* %810, i64 %813
  %815 = load i32, i32* @EHMER_MAX, align 4
  %816 = sub nsw i32 %815, 1
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float* %814, i64 %817
  %819 = load float, float* %818, align 4
  %820 = load float*, float** %22, align 8
  %821 = load i32, i32* %33, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds float, float* %820, i64 %822
  store float %819, float* %823, align 4
  br label %824

824:                                              ; preds = %805, %784
  br label %825

825:                                              ; preds = %824
  %826 = load i32, i32* %33, align 4
  %827 = add nsw i32 %826, 1
  store i32 %827, i32* %33, align 4
  br label %780

828:                                              ; preds = %780
  br label %829

829:                                              ; preds = %828, %657
  store i32 0, i32* %12, align 4
  br label %830

830:                                              ; preds = %903, %829
  %831 = load i32, i32* %12, align 4
  %832 = load i32, i32* @EHMER_MAX, align 4
  %833 = icmp slt i32 %831, %832
  br i1 %833, label %834, label %906

834:                                              ; preds = %830
  %835 = load i32, i32* %12, align 4
  %836 = sitofp i32 %835 to double
  %837 = fmul double %836, 1.250000e-01
  %838 = load i32, i32* %11, align 4
  %839 = sitofp i32 %838 to double
  %840 = fmul double %839, 5.000000e-01
  %841 = fadd double %837, %840
  %842 = fsub double %841, 2.000000e+00
  %843 = fptosi double %842 to i32
  %844 = call float @fromOC(i32 %843)
  %845 = load float, float* %7, align 4
  %846 = fdiv float %844, %845
  %847 = fptosi float %846 to i32
  store i32 %847, i32* %36, align 4
  %848 = load i32, i32* %36, align 4
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %850, label %864

850:                                              ; preds = %834
  %851 = load float***, float**** %23, align 8
  %852 = load i32, i32* %11, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds float**, float*** %851, i64 %853
  %855 = load float**, float*** %854, align 8
  %856 = load i32, i32* %14, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds float*, float** %855, i64 %857
  %859 = load float*, float** %858, align 8
  %860 = load i32, i32* %12, align 4
  %861 = add nsw i32 %860, 2
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds float, float* %859, i64 %862
  store float -9.990000e+02, float* %863, align 4
  br label %902

864:                                              ; preds = %834
  %865 = load i32, i32* %36, align 4
  %866 = load i32, i32* %8, align 4
  %867 = icmp sge i32 %865, %866
  br i1 %867, label %868, label %882

868:                                              ; preds = %864
  %869 = load float***, float**** %23, align 8
  %870 = load i32, i32* %11, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds float**, float*** %869, i64 %871
  %873 = load float**, float*** %872, align 8
  %874 = load i32, i32* %14, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds float*, float** %873, i64 %875
  %877 = load float*, float** %876, align 8
  %878 = load i32, i32* %12, align 4
  %879 = add nsw i32 %878, 2
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds float, float* %877, i64 %880
  store float -9.990000e+02, float* %881, align 4
  br label %901

882:                                              ; preds = %864
  %883 = load float*, float** %22, align 8
  %884 = load i32, i32* %36, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds float, float* %883, i64 %885
  %887 = load float, float* %886, align 4
  %888 = load float***, float**** %23, align 8
  %889 = load i32, i32* %11, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds float**, float*** %888, i64 %890
  %892 = load float**, float*** %891, align 8
  %893 = load i32, i32* %14, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds float*, float** %892, i64 %894
  %896 = load float*, float** %895, align 8
  %897 = load i32, i32* %12, align 4
  %898 = add nsw i32 %897, 2
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds float, float* %896, i64 %899
  store float %887, float* %900, align 4
  br label %901

901:                                              ; preds = %882, %868
  br label %902

902:                                              ; preds = %901, %850
  br label %903

903:                                              ; preds = %902
  %904 = load i32, i32* %12, align 4
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %12, align 4
  br label %830

906:                                              ; preds = %830
  store i32 0, i32* %12, align 4
  br label %907

907:                                              ; preds = %929, %906
  %908 = load i32, i32* %12, align 4
  %909 = load i32, i32* @EHMER_OFFSET, align 4
  %910 = icmp slt i32 %908, %909
  br i1 %910, label %911, label %932

911:                                              ; preds = %907
  %912 = load float***, float**** %23, align 8
  %913 = load i32, i32* %11, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds float**, float*** %912, i64 %914
  %916 = load float**, float*** %915, align 8
  %917 = load i32, i32* %14, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds float*, float** %916, i64 %918
  %920 = load float*, float** %919, align 8
  %921 = load i32, i32* %12, align 4
  %922 = add nsw i32 %921, 2
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds float, float* %920, i64 %923
  %925 = load float, float* %924, align 4
  %926 = fcmp ogt float %925, -2.000000e+02
  br i1 %926, label %927, label %928

927:                                              ; preds = %911
  br label %932

928:                                              ; preds = %911
  br label %929

929:                                              ; preds = %928
  %930 = load i32, i32* %12, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %12, align 4
  br label %907

932:                                              ; preds = %927, %907
  %933 = load i32, i32* %12, align 4
  %934 = sitofp i32 %933 to float
  %935 = load float***, float**** %23, align 8
  %936 = load i32, i32* %11, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds float**, float*** %935, i64 %937
  %939 = load float**, float*** %938, align 8
  %940 = load i32, i32* %14, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds float*, float** %939, i64 %941
  %943 = load float*, float** %942, align 8
  %944 = getelementptr inbounds float, float* %943, i64 0
  store float %934, float* %944, align 4
  %945 = load i32, i32* @EHMER_MAX, align 4
  %946 = sub nsw i32 %945, 1
  store i32 %946, i32* %12, align 4
  br label %947

947:                                              ; preds = %970, %932
  %948 = load i32, i32* %12, align 4
  %949 = load i32, i32* @EHMER_OFFSET, align 4
  %950 = add nsw i32 %949, 1
  %951 = icmp sgt i32 %948, %950
  br i1 %951, label %952, label %973

952:                                              ; preds = %947
  %953 = load float***, float**** %23, align 8
  %954 = load i32, i32* %11, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds float**, float*** %953, i64 %955
  %957 = load float**, float*** %956, align 8
  %958 = load i32, i32* %14, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds float*, float** %957, i64 %959
  %961 = load float*, float** %960, align 8
  %962 = load i32, i32* %12, align 4
  %963 = add nsw i32 %962, 2
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds float, float* %961, i64 %964
  %966 = load float, float* %965, align 4
  %967 = fcmp ogt float %966, -2.000000e+02
  br i1 %967, label %968, label %969

968:                                              ; preds = %952
  br label %973

969:                                              ; preds = %952
  br label %970

970:                                              ; preds = %969
  %971 = load i32, i32* %12, align 4
  %972 = add nsw i32 %971, -1
  store i32 %972, i32* %12, align 4
  br label %947

973:                                              ; preds = %968, %947
  %974 = load i32, i32* %12, align 4
  %975 = sitofp i32 %974 to float
  %976 = load float***, float**** %23, align 8
  %977 = load i32, i32* %11, align 4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds float**, float*** %976, i64 %978
  %980 = load float**, float*** %979, align 8
  %981 = load i32, i32* %14, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds float*, float** %980, i64 %982
  %984 = load float*, float** %983, align 8
  %985 = getelementptr inbounds float, float* %984, i64 1
  store float %975, float* %985, align 4
  br label %986

986:                                              ; preds = %973
  %987 = load i32, i32* %14, align 4
  %988 = add nsw i32 %987, 1
  store i32 %988, i32* %14, align 4
  br label %451

989:                                              ; preds = %451
  br label %990

990:                                              ; preds = %989
  %991 = load i32, i32* %11, align 4
  %992 = add nsw i32 %991, 1
  store i32 %992, i32* %11, align 4
  br label %392

993:                                              ; preds = %392
  %994 = load float***, float**** %23, align 8
  %995 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %995)
  ret float*** %994
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float* @alloca(i32) #2

declare dso_local i8* @_ogg_malloc(i32) #2

declare dso_local i32 @memset(float***, i32, i32) #2

declare dso_local i32 @memcpy(float*, float*, i32) #2

declare dso_local float @abs(i32) #2

declare dso_local i32 @attenuate_curve(float*, i64) #2

declare dso_local i32 @max_curve(float*, float*) #2

declare dso_local i32 @min_curve(float*, float*) #2

declare dso_local i32 @floor(i32) #2

declare dso_local float @fromOC(i32) #2

declare dso_local i32 @ceil(i32) #2

declare dso_local i32 @toOC(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
