; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_filter_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_filter_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float***, i32***, i32***, i32*, i32**, i32**, i32, i32 }

@DCA_LBR_TIME_SAMPLES = common dso_local global i32 0, align 4
@AMP_MAX = common dso_local global i32 0, align 4
@ff_dca_quant_amp = common dso_local global float* null, align 8
@ff_dca_scf_to_grid_2 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @filter_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_ts(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %434, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %437

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %168, %30
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %171

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load float***, float**** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float**, float*** %39, i64 %41
  %43 = load float**, float*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %43, i64 %45
  %47 = load float*, float** %46, align 8
  store float* %47, float** %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32***, i32**** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %50, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %104

61:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %98, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %65 = sdiv i32 %64, 16
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @AMP_MAX, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @AMP_MAX, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %67
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %94, %78
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load float*, float** @ff_dca_quant_amp, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float*, float** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fmul float %92, %87
  store float %93, float* %91, align 4
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %79

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  %101 = load float*, float** %11, align 8
  %102 = getelementptr inbounds float, float* %101, i64 16
  store float* %102, float** %11, align 8
  br label %62

103:                                              ; preds = %62
  br label %167

104:                                              ; preds = %36
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32***, i32**** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32**, i32*** %107, i64 %109
  %111 = load i32**, i32*** %110, align 8
  %112 = load i64*, i64** @ff_dca_scf_to_grid_2, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %111, i64 %116
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %14, align 8
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %161, %104
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %122 = sdiv i32 %121, 2
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %119
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sdiv i32 %126, 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub i32 %130, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @AMP_MAX, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %124
  %141 = load i32, i32* @AMP_MAX, align 4
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %140, %124
  %143 = load float*, float** @ff_dca_quant_amp, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %11, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  %150 = load float, float* %149, align 4
  %151 = fmul float %150, %147
  store float %151, float* %149, align 4
  %152 = load float*, float** @ff_dca_quant_amp, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %11, align 8
  %158 = getelementptr inbounds float, float* %157, i64 1
  %159 = load float, float* %158, align 4
  %160 = fmul float %159, %156
  store float %160, float* %158, align 4
  br label %161

161:                                              ; preds = %142
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  %164 = load float*, float** %11, align 8
  %165 = getelementptr inbounds float, float* %164, i64 2
  store float* %165, float** %11, align 8
  br label %119

166:                                              ; preds = %119
  br label %167

167:                                              ; preds = %166, %103
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %32

171:                                              ; preds = %32
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %424

175:                                              ; preds = %171
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load float***, float**** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float**, float*** %178, i64 %180
  %182 = load float**, float*** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float*, float** %182, i64 %184
  %186 = load float*, float** %185, align 8
  store float* %186, float** %16, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load float***, float**** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float**, float*** %189, i64 %191
  %193 = load float**, float*** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float*, float** %193, i64 %195
  %197 = load float*, float** %196, align 8
  store float* %197, float** %17, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = shl i32 1, %205
  %207 = and i32 %204, %206
  store i32 %207, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %420, %175
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @DCA_LBR_TIME_SAMPLES, align 4
  %211 = sdiv i32 %210, 16
  %212 = icmp slt i32 %209, %211
  br i1 %212, label %213, label %423

213:                                              ; preds = %208
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sdiv i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %216, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %7, align 4
  %227 = ashr i32 %225, %226
  %228 = and i32 %227, 1
  store i32 %228, i32* %19, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 6
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sdiv i32 %232, 2
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %231, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %7, align 4
  %242 = ashr i32 %240, %241
  %243 = and i32 %242, 1
  store i32 %243, i32* %20, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = icmp sge i32 %244, %247
  br i1 %248, label %249, label %370

249:                                              ; preds = %213
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %316

252:                                              ; preds = %249
  %253 = load i32, i32* %18, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %316

255:                                              ; preds = %252
  %256 = load i32, i32* %19, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %287

258:                                              ; preds = %255
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %283, %258
  %260 = load i32, i32* %8, align 4
  %261 = icmp slt i32 %260, 16
  br i1 %261, label %262, label %286

262:                                              ; preds = %259
  %263 = load float*, float** %16, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %263, i64 %265
  %267 = load float, float* %266, align 4
  store float %267, float* %21, align 4
  %268 = load float*, float** %17, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %16, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %273, i64 %275
  store float %272, float* %276, align 4
  %277 = load float, float* %21, align 4
  %278 = fneg float %277
  %279 = load float*, float** %17, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %279, i64 %281
  store float %278, float* %282, align 4
  br label %283

283:                                              ; preds = %262
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %259

286:                                              ; preds = %259
  br label %315

287:                                              ; preds = %255
  store i32 0, i32* %8, align 4
  br label %288

288:                                              ; preds = %311, %287
  %289 = load i32, i32* %8, align 4
  %290 = icmp slt i32 %289, 16
  br i1 %290, label %291, label %314

291:                                              ; preds = %288
  %292 = load float*, float** %16, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %292, i64 %294
  %296 = load float, float* %295, align 4
  store float %296, float* %22, align 4
  %297 = load float*, float** %17, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %297, i64 %299
  %301 = load float, float* %300, align 4
  %302 = load float*, float** %16, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %302, i64 %304
  store float %301, float* %305, align 4
  %306 = load float, float* %22, align 4
  %307 = load float*, float** %17, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  store float %306, float* %310, align 4
  br label %311

311:                                              ; preds = %291
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %288

314:                                              ; preds = %288
  br label %315

315:                                              ; preds = %314, %286
  br label %369

316:                                              ; preds = %252, %249
  %317 = load i32, i32* %18, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %368, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %19, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %349

322:                                              ; preds = %319
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %5, align 4
  %327 = shl i32 1, %326
  %328 = and i32 %325, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %349

330:                                              ; preds = %322
  store i32 0, i32* %8, align 4
  br label %331

331:                                              ; preds = %345, %330
  %332 = load i32, i32* %8, align 4
  %333 = icmp slt i32 %332, 16
  br i1 %333, label %334, label %348

334:                                              ; preds = %331
  %335 = load float*, float** %16, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %335, i64 %337
  %339 = load float, float* %338, align 4
  %340 = fneg float %339
  %341 = load float*, float** %17, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  store float %340, float* %344, align 4
  br label %345

345:                                              ; preds = %334
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %331

348:                                              ; preds = %331
  br label %367

349:                                              ; preds = %322, %319
  store i32 0, i32* %8, align 4
  br label %350

350:                                              ; preds = %363, %349
  %351 = load i32, i32* %8, align 4
  %352 = icmp slt i32 %351, 16
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  %354 = load float*, float** %16, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %354, i64 %356
  %358 = load float, float* %357, align 4
  %359 = load float*, float** %17, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %359, i64 %361
  store float %358, float* %362, align 4
  br label %363

363:                                              ; preds = %353
  %364 = load i32, i32* %8, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %8, align 4
  br label %350

366:                                              ; preds = %350
  br label %367

367:                                              ; preds = %366, %348
  br label %368

368:                                              ; preds = %367, %316
  br label %369

369:                                              ; preds = %368, %315
  br label %415

370:                                              ; preds = %213
  %371 = load i32, i32* %19, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %414

373:                                              ; preds = %370
  %374 = load i32, i32* %18, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %414

376:                                              ; preds = %373
  store i32 0, i32* %8, align 4
  br label %377

377:                                              ; preds = %410, %376
  %378 = load i32, i32* %8, align 4
  %379 = icmp slt i32 %378, 16
  br i1 %379, label %380, label %413

380:                                              ; preds = %377
  %381 = load float*, float** %16, align 8
  %382 = load i32, i32* %8, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %381, i64 %383
  %385 = load float, float* %384, align 4
  store float %385, float* %23, align 4
  %386 = load float, float* %23, align 4
  %387 = load float*, float** %17, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %387, i64 %389
  %391 = load float, float* %390, align 4
  %392 = fadd float %386, %391
  %393 = fmul float %392, 5.000000e-01
  %394 = load float*, float** %16, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %394, i64 %396
  store float %393, float* %397, align 4
  %398 = load float, float* %23, align 4
  %399 = load float*, float** %17, align 8
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds float, float* %399, i64 %401
  %403 = load float, float* %402, align 4
  %404 = fsub float %398, %403
  %405 = fmul float %404, 5.000000e-01
  %406 = load float*, float** %17, align 8
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds float, float* %406, i64 %408
  store float %405, float* %409, align 4
  br label %410

410:                                              ; preds = %380
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %8, align 4
  br label %377

413:                                              ; preds = %377
  br label %414

414:                                              ; preds = %413, %373, %370
  br label %415

415:                                              ; preds = %414, %369
  %416 = load float*, float** %16, align 8
  %417 = getelementptr inbounds float, float* %416, i64 16
  store float* %417, float** %16, align 8
  %418 = load float*, float** %17, align 8
  %419 = getelementptr inbounds float, float* %418, i64 16
  store float* %419, float** %17, align 8
  br label %420

420:                                              ; preds = %415
  %421 = load i32, i32* %7, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %7, align 4
  br label %208

423:                                              ; preds = %208
  br label %424

424:                                              ; preds = %423, %171
  %425 = load i32, i32* %9, align 4
  %426 = icmp slt i32 %425, 3
  br i1 %426, label %427, label %433

427:                                              ; preds = %424
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %429 = load i32, i32* %5, align 4
  %430 = load i32, i32* %6, align 4
  %431 = load i32, i32* %9, align 4
  %432 = call i32 @synth_lpc(%struct.TYPE_4__* %428, i32 %429, i32 %430, i32 %431)
  br label %433

433:                                              ; preds = %427, %424
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4
  br label %24

437:                                              ; preds = %24
  ret void
}

declare dso_local i32 @synth_lpc(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
