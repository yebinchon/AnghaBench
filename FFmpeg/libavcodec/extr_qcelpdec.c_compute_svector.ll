; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_compute_svector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_compute_svector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@QCELP_RATE_FULL_CODEBOOK_RATIO = common dso_local global float 0.000000e+00, align 4
@qcelp_rate_full_codebook = common dso_local global float* null, align 8
@QCELP_RATE_HALF_CODEBOOK_RATIO = common dso_local global float 0.000000e+00, align 4
@qcelp_rate_half_codebook = common dso_local global float* null, align 8
@QCELP_SQRT1887 = common dso_local global double 0.000000e+00, align 8
@qcelp_rnd_fir_coefs = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, float*)* @compute_svector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_svector(%struct.TYPE_5__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %319 [
    i32 132, label %18
    i32 131, label %62
    i32 129, label %106
    i32 130, label %242
    i32 133, label %281
    i32 128, label %316
  ]

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load float*, float** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float, float* @QCELP_RATE_FULL_CODEBOOK_RATIO, align 4
  %29 = fmul float %27, %28
  store float %29, float* %13, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %54, %22
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load float, float* %13, align 4
  %44 = load float*, float** @qcelp_rate_full_codebook, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = and i32 %45, 127
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %44, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fmul float %43, %50
  %52 = load float*, float** %6, align 8
  %53 = getelementptr inbounds float, float* %52, i32 1
  store float* %53, float** %6, align 8
  store float %51, float* %52, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %39

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %19

61:                                               ; preds = %19
  br label %319

62:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load float*, float** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = load float, float* @QCELP_RATE_HALF_CODEBOOK_RATIO, align 4
  %73 = fmul float %71, %72
  store float %73, float* %13, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %98, %66
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 40
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load float, float* %13, align 4
  %88 = load float*, float** @qcelp_rate_half_codebook, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = and i32 %89, 127
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %88, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %87, %94
  %96 = load float*, float** %6, align 8
  %97 = getelementptr inbounds float, float* %96, i32 1
  store float* %97, float** %6, align 8
  store float %95, float* %96, align 4
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %83

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %63

105:                                              ; preds = %63
  br label %319

106:                                              ; preds = %3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = and i32 3, %112
  %114 = shl i32 %113, 14
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = and i32 63, %120
  %122 = shl i32 %121, 8
  %123 = or i32 %114, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 96, %129
  %131 = shl i32 %130, 1
  %132 = or i32 %123, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 7, %138
  %140 = shl i32 %139, 3
  %141 = or i32 %132, %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 56, %147
  %149 = ashr i32 %148, 3
  %150 = or i32 %141, %149
  store i32 %150, i32* %10, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 20
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to float*
  store float* %156, float** %12, align 8
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %230, %106
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 8
  br i1 %159, label %160, label %233

160:                                              ; preds = %157
  %161 = load float*, float** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fpext float %165 to double
  %167 = load double, double* @QCELP_SQRT1887, align 8
  %168 = fdiv double %167, 3.276800e+04
  %169 = fmul double %166, %168
  %170 = fptrunc double %169 to float
  store float %170, float* %13, align 4
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %226, %160
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 20
  br i1 %173, label %174, label %229

174:                                              ; preds = %171
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 521, %175
  %177 = add nsw i32 %176, 259
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sitofp i32 %178 to float
  %180 = load float*, float** %12, align 8
  store float %179, float* %180, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %206, %174
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 10
  br i1 %183, label %184, label %209

184:                                              ; preds = %181
  %185 = load float*, float** @qcelp_rnd_fir_coefs, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %12, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 0, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %190, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float*, float** %12, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 -20, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %196, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fadd float %195, %201
  %203 = fmul float %189, %202
  %204 = load float, float* %14, align 4
  %205 = fadd float %204, %203
  store float %205, float* %14, align 4
  br label %206

206:                                              ; preds = %184
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %181

209:                                              ; preds = %181
  %210 = load float*, float** @qcelp_rnd_fir_coefs, align 8
  %211 = getelementptr inbounds float, float* %210, i64 10
  %212 = load float, float* %211, align 4
  %213 = load float*, float** %12, align 8
  %214 = getelementptr inbounds float, float* %213, i64 -10
  %215 = load float, float* %214, align 4
  %216 = fmul float %212, %215
  %217 = load float, float* %14, align 4
  %218 = fadd float %217, %216
  store float %218, float* %14, align 4
  %219 = load float, float* %13, align 4
  %220 = load float, float* %14, align 4
  %221 = fmul float %219, %220
  %222 = load float*, float** %6, align 8
  %223 = getelementptr inbounds float, float* %222, i32 1
  store float* %223, float** %6, align 8
  store float %221, float* %222, align 4
  %224 = load float*, float** %12, align 8
  %225 = getelementptr inbounds float, float* %224, i32 1
  store float* %225, float** %12, align 8
  br label %226

226:                                              ; preds = %209
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %171

229:                                              ; preds = %171
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %157

233:                                              ; preds = %157
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 160
  %241 = call i32 @memcpy(i32 %236, i32 %240, i32 80)
  br label %319

242:                                              ; preds = %3
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %246

246:                                              ; preds = %277, %242
  %247 = load i32, i32* %7, align 4
  %248 = icmp slt i32 %247, 8
  br i1 %248, label %249, label %280

249:                                              ; preds = %246
  %250 = load float*, float** %5, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = load double, double* @QCELP_SQRT1887, align 8
  %257 = fdiv double %256, 3.276800e+04
  %258 = fmul double %255, %257
  %259 = fptrunc double %258 to float
  store float %259, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %260

260:                                              ; preds = %273, %249
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 20
  br i1 %262, label %263, label %276

263:                                              ; preds = %260
  %264 = load i32, i32* %10, align 4
  %265 = mul nsw i32 521, %264
  %266 = add nsw i32 %265, 259
  store i32 %266, i32* %10, align 4
  %267 = load float, float* %13, align 4
  %268 = load i32, i32* %10, align 4
  %269 = sitofp i32 %268 to float
  %270 = fmul float %267, %269
  %271 = load float*, float** %6, align 8
  %272 = getelementptr inbounds float, float* %271, i32 1
  store float* %272, float** %6, align 8
  store float %270, float* %271, align 4
  br label %273

273:                                              ; preds = %263
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  br label %260

276:                                              ; preds = %260
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %246

280:                                              ; preds = %246
  br label %319

281:                                              ; preds = %3
  store i32 -44, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %282

282:                                              ; preds = %312, %281
  %283 = load i32, i32* %7, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %315

285:                                              ; preds = %282
  %286 = load float*, float** %5, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %286, i64 %288
  %290 = load float, float* %289, align 4
  %291 = load float, float* @QCELP_RATE_FULL_CODEBOOK_RATIO, align 4
  %292 = fmul float %290, %291
  store float %292, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %293

293:                                              ; preds = %308, %285
  %294 = load i32, i32* %8, align 4
  %295 = icmp slt i32 %294, 40
  br i1 %295, label %296, label %311

296:                                              ; preds = %293
  %297 = load float, float* %13, align 4
  %298 = load float*, float** @qcelp_rate_full_codebook, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  %301 = and i32 %299, 127
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %298, i64 %302
  %304 = load float, float* %303, align 4
  %305 = fmul float %297, %304
  %306 = load float*, float** %6, align 8
  %307 = getelementptr inbounds float, float* %306, i32 1
  store float* %307, float** %6, align 8
  store float %305, float* %306, align 4
  br label %308

308:                                              ; preds = %296
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %293

311:                                              ; preds = %293
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %282

315:                                              ; preds = %282
  br label %319

316:                                              ; preds = %3
  %317 = load float*, float** %6, align 8
  %318 = call i32 @memset(float* %317, i32 0, i32 640)
  br label %319

319:                                              ; preds = %3, %316, %315, %280, %233, %105, %61
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
