; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_remove_doubling.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_remove_doubling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_MAX_PERIOD = common dso_local global i32 0, align 4
@second_check = common dso_local global i32* null, align 8
@Q15ONE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, i32, i32, i32, i32*, i32, float)* @remove_doubling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @remove_doubling(float* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store float %6, float* %14, align 4
  %38 = load i32, i32* @PITCH_MAX_PERIOD, align 4
  %39 = add nsw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %31, align 8
  %42 = alloca float, i64 %40, align 16
  store i64 %40, i64* %32, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %30, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load float*, float** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds float, float* %56, i64 %57
  store float* %58, float** %8, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %7
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %7
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  store i32 %69, i32* %17, align 4
  %70 = load float*, float** %8, align 8
  %71 = load float*, float** %8, align 8
  %72 = load float*, float** %8, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds float, float* %72, i64 %75
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dual_inner_prod(float* %70, float* %71, float* %76, i32 %77, float* %23, float* %22)
  %79 = load float, float* %23, align 4
  %80 = getelementptr inbounds float, float* %42, i64 0
  store float %79, float* %80, align 16
  %81 = load float, float* %23, align 4
  store float %81, float* %24, align 4
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %123, %67
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %82
  %87 = load float, float* %24, align 4
  %88 = load float*, float** %8, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 0, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %88, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %8, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 0, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %94, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fmul float %93, %99
  %101 = fadd float %87, %100
  %102 = load float*, float** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %102, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %109, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fmul float %108, %115
  %117 = fsub float %101, %116
  store float %117, float* %24, align 4
  %118 = load float, float* %24, align 4
  %119 = call float @FFMAX(float 0.000000e+00, float %118)
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %42, i64 %121
  store float %119, float* %122, align 4
  br label %123

123:                                              ; preds = %86
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %82

126:                                              ; preds = %82
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %42, i64 %128
  %130 = load float, float* %129, align 4
  store float %130, float* %24, align 4
  %131 = load float, float* %22, align 4
  store float %131, float* %27, align 4
  %132 = load float, float* %24, align 4
  store float %132, float* %28, align 4
  %133 = load float, float* %22, align 4
  %134 = load float, float* %23, align 4
  %135 = load float, float* %24, align 4
  %136 = call float @compute_pitch_gain(float %133, float %134, float %135)
  store float %136, float* %20, align 4
  store float %136, float* %19, align 4
  store i32 2, i32* %15, align 4
  br label %137

137:                                              ; preds = %277, %126
  %138 = load i32, i32* %15, align 4
  %139 = icmp sle i32 %138, 15
  br i1 %139, label %140, label %280

140:                                              ; preds = %137
  store float 0.000000e+00, float* %36, align 4
  %141 = load i32, i32* %18, align 4
  %142 = mul nsw i32 2, %141
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %15, align 4
  %146 = mul nsw i32 2, %145
  %147 = sdiv i32 %144, %146
  store i32 %147, i32* %33, align 4
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %280

152:                                              ; preds = %140
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i32, i32* %33, align 4
  %157 = load i32, i32* %18, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %18, align 4
  store i32 %162, i32* %34, align 4
  br label %167

163:                                              ; preds = %155
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %33, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %34, align 4
  br label %167

167:                                              ; preds = %163, %161
  br label %182

168:                                              ; preds = %152
  %169 = load i32*, i32** @second_check, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 2, %173
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %15, align 4
  %180 = mul nsw i32 2, %179
  %181 = sdiv i32 %178, %180
  store i32 %181, i32* %34, align 4
  br label %182

182:                                              ; preds = %168, %167
  %183 = load float*, float** %8, align 8
  %184 = load float*, float** %8, align 8
  %185 = load i32, i32* %33, align 4
  %186 = sub nsw i32 0, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %184, i64 %187
  %189 = load float*, float** %8, align 8
  %190 = load i32, i32* %34, align 4
  %191 = sub nsw i32 0, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %189, i64 %192
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @dual_inner_prod(float* %183, float* %188, float* %193, i32 %194, float* %22, float* %25)
  %196 = load float, float* %22, align 4
  %197 = load float, float* %25, align 4
  %198 = fadd float %196, %197
  %199 = fmul float 5.000000e-01, %198
  store float %199, float* %22, align 4
  %200 = load i32, i32* %33, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %42, i64 %201
  %203 = load float, float* %202, align 4
  %204 = load i32, i32* %34, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %42, i64 %205
  %207 = load float, float* %206, align 4
  %208 = fadd float %203, %207
  %209 = fmul float 5.000000e-01, %208
  store float %209, float* %24, align 4
  %210 = load float, float* %22, align 4
  %211 = load float, float* %23, align 4
  %212 = load float, float* %24, align 4
  %213 = call float @compute_pitch_gain(float %210, float %211, float %212)
  store float %213, float* %35, align 4
  %214 = load i32, i32* %33, align 4
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 @FFABS(i32 %216)
  %218 = icmp sle i32 %217, 1
  br i1 %218, label %219, label %221

219:                                              ; preds = %182
  %220 = load float, float* %14, align 4
  store float %220, float* %36, align 4
  br label %239

221:                                              ; preds = %182
  %222 = load i32, i32* %33, align 4
  %223 = load i32, i32* %13, align 4
  %224 = sub nsw i32 %222, %223
  %225 = call i32 @FFABS(i32 %224)
  %226 = icmp sle i32 %225, 2
  br i1 %226, label %227, label %237

227:                                              ; preds = %221
  %228 = load i32, i32* %15, align 4
  %229 = mul nsw i32 5, %228
  %230 = load i32, i32* %15, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %18, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = load float, float* %14, align 4
  %236 = fmul float %235, 5.000000e-01
  store float %236, float* %36, align 4
  br label %238

237:                                              ; preds = %227, %221
  store float 0.000000e+00, float* %36, align 4
  br label %238

238:                                              ; preds = %237, %234
  br label %239

239:                                              ; preds = %238, %219
  %240 = load float, float* %20, align 4
  %241 = fmul float 0x3FE6666660000000, %240
  %242 = load float, float* %36, align 4
  %243 = fsub float %241, %242
  %244 = call float @FFMAX(float 0x3FD3333340000000, float %243)
  store float %244, float* %37, align 4
  %245 = load i32, i32* %33, align 4
  %246 = load i32, i32* %10, align 4
  %247 = mul nsw i32 3, %246
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %239
  %250 = load float, float* %20, align 4
  %251 = fmul float 0x3FEB333340000000, %250
  %252 = load float, float* %36, align 4
  %253 = fsub float %251, %252
  %254 = call float @FFMAX(float 0x3FD99999A0000000, float %253)
  store float %254, float* %37, align 4
  br label %267

255:                                              ; preds = %239
  %256 = load i32, i32* %33, align 4
  %257 = load i32, i32* %10, align 4
  %258 = mul nsw i32 2, %257
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load float, float* %20, align 4
  %262 = fmul float 0x3FECCCCCC0000000, %261
  %263 = load float, float* %36, align 4
  %264 = fsub float %262, %263
  %265 = call float @FFMAX(float 5.000000e-01, float %264)
  store float %265, float* %37, align 4
  br label %266

266:                                              ; preds = %260, %255
  br label %267

267:                                              ; preds = %266, %249
  %268 = load float, float* %35, align 4
  %269 = load float, float* %37, align 4
  %270 = fcmp ogt float %268, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load float, float* %22, align 4
  store float %272, float* %27, align 4
  %273 = load float, float* %24, align 4
  store float %273, float* %28, align 4
  %274 = load i32, i32* %33, align 4
  store i32 %274, i32* %17, align 4
  %275 = load float, float* %35, align 4
  store float %275, float* %19, align 4
  br label %276

276:                                              ; preds = %271, %267
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %15, align 4
  br label %137

280:                                              ; preds = %151, %137
  %281 = load float, float* %27, align 4
  %282 = call float @FFMAX(float 0.000000e+00, float %281)
  store float %282, float* %27, align 4
  %283 = load float, float* %28, align 4
  %284 = load float, float* %27, align 4
  %285 = fcmp ole float %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load float, float* @Q15ONE, align 4
  store float %287, float* %21, align 4
  br label %293

288:                                              ; preds = %280
  %289 = load float, float* %27, align 4
  %290 = load float, float* %28, align 4
  %291 = fadd float %290, 1.000000e+00
  %292 = fdiv float %289, %291
  store float %292, float* %21, align 4
  br label %293

293:                                              ; preds = %288, %286
  store i32 0, i32* %15, align 4
  br label %294

294:                                              ; preds = %312, %293
  %295 = load i32, i32* %15, align 4
  %296 = icmp slt i32 %295, 3
  br i1 %296, label %297, label %315

297:                                              ; preds = %294
  %298 = load float*, float** %8, align 8
  %299 = load float*, float** %8, align 8
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %300, %301
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = sub i64 0, %304
  %306 = getelementptr inbounds float, float* %299, i64 %305
  %307 = load i32, i32* %11, align 4
  %308 = call float @celt_inner_prod(float* %298, float* %306, i32 %307)
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 %310
  store float %308, float* %311, align 4
  br label %312

312:                                              ; preds = %297
  %313 = load i32, i32* %15, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %15, align 4
  br label %294

315:                                              ; preds = %294
  %316 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 2
  %317 = load float, float* %316, align 4
  %318 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 0
  %319 = load float, float* %318, align 4
  %320 = fsub float %317, %319
  %321 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 1
  %322 = load float, float* %321, align 4
  %323 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 0
  %324 = load float, float* %323, align 4
  %325 = fsub float %322, %324
  %326 = fmul float 0x3FE6666660000000, %325
  %327 = fcmp ogt float %320, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %315
  store i32 1, i32* %29, align 4
  br label %345

329:                                              ; preds = %315
  %330 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 0
  %331 = load float, float* %330, align 4
  %332 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 2
  %333 = load float, float* %332, align 4
  %334 = fsub float %331, %333
  %335 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 1
  %336 = load float, float* %335, align 4
  %337 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 2
  %338 = load float, float* %337, align 4
  %339 = fsub float %336, %338
  %340 = fmul float 0x3FE6666660000000, %339
  %341 = fcmp ogt float %334, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %329
  store i32 -1, i32* %29, align 4
  br label %344

343:                                              ; preds = %329
  store i32 0, i32* %29, align 4
  br label %344

344:                                              ; preds = %343, %342
  br label %345

345:                                              ; preds = %344, %328
  %346 = load float, float* %21, align 4
  %347 = load float, float* %19, align 4
  %348 = fcmp ogt float %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = load float, float* %19, align 4
  store float %350, float* %21, align 4
  br label %351

351:                                              ; preds = %349, %345
  %352 = load i32, i32* %17, align 4
  %353 = mul nsw i32 2, %352
  %354 = load i32, i32* %29, align 4
  %355 = add nsw i32 %353, %354
  %356 = load i32*, i32** %12, align 8
  store i32 %355, i32* %356, align 4
  %357 = load i32*, i32** %12, align 8
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %30, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %351
  %362 = load i32, i32* %30, align 4
  %363 = load i32*, i32** %12, align 8
  store i32 %362, i32* %363, align 4
  br label %364

364:                                              ; preds = %361, %351
  %365 = load float, float* %21, align 4
  %366 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %366)
  ret float %365
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dual_inner_prod(float*, float*, float*, i32, float*, float*) #2

declare dso_local float @FFMAX(float, float) #2

declare dso_local float @compute_pitch_gain(float, float, float) #2

declare dso_local i32 @FFABS(i32) #2

declare dso_local float @celt_inner_prod(float*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
