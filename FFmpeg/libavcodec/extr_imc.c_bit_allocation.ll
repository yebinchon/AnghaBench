; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_bit_allocation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_bit_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { float*, i64*, float*, float*, i32*, i32*, i32* }

@BANDS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"flcoeffs5 %f invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@band_tab = common dso_local global i32* null, align 8
@xTab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32)* @bit_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bit_allocation(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca [32 x float], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float 0xC415AF1D80000000, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store float 1.000000e+10, float* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %43, %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @BANDS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load float, float* %15, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = call float @FFMAX(float %34, float %41)
  store float %42, float* %15, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %29

46:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %98, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @BANDS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @av_log(i32 %64, i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %6, align 4
  br label %758

75:                                               ; preds = %52
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load float*, float** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call float @log2f(i64 %89)
  %91 = fsub float %82, %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %91, float* %97, align 4
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %47

101:                                              ; preds = %47
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load float*, float** %103, align 8
  %105 = load i32, i32* @BANDS, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %104, i64 %107
  store float 0xC415AF1D80000000, float* %108, align 4
  %109 = load float, float* %15, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %110, 2.500000e-01
  %112 = fptrunc double %111 to float
  store float %112, float* %15, align 4
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %219, %101
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @BANDS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %222

117:                                              ; preds = %113
  store i32 -1, i32* %16, align 4
  %118 = load i32*, i32** @band_tab, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** @band_tab, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %123, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %129, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %117
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %138, %117
  %140 = load i32*, i32** @band_tab, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @band_tab, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %145, %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %151, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %139
  store i32 1, i32* %16, align 4
  br label %161

161:                                              ; preds = %160, %139
  %162 = load i32*, i32** @band_tab, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** @band_tab, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %167, %172
  %174 = sdiv i32 %173, 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %174, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %161
  store i32 2, i32* %16, align 4
  br label %184

184:                                              ; preds = %183, %161
  %185 = load i32, i32* %16, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %188, i32* %6, align 4
  br label %758

189:                                              ; preds = %184
  %190 = load i64*, i64** @xTab, align 8
  %191 = load i32, i32* %16, align 4
  %192 = mul nsw i32 %191, 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load float*, float** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float, float* %15, align 4
  %201 = fcmp olt float %199, %200
  %202 = zext i1 %201 to i32
  %203 = add nsw i32 %192, %202
  %204 = mul nsw i32 %203, 2
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %190, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = sitofp i64 %209 to float
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load float*, float** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fadd float %217, %210
  store float %218, float* %216, align 4
  br label %219

219:                                              ; preds = %189
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %113

222:                                              ; preds = %113
  %223 = load i32, i32* %9, align 4
  %224 = and i32 %223, 2
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %222
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load float*, float** %228, align 8
  %230 = getelementptr inbounds float, float* %229, i64 0
  store float 0xC415AF1D80000000, float* %230, align 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load float*, float** %232, align 8
  %234 = getelementptr inbounds float, float* %233, i64 1
  store float 0xC415AF1D80000000, float* %234, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  %237 = load float*, float** %236, align 8
  %238 = getelementptr inbounds float, float* %237, i64 2
  store float 0xC415AF1D80000000, float* %238, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load float*, float** %240, align 8
  %242 = getelementptr inbounds float, float* %241, i64 3
  store float 0xC415AF1D80000000, float* %242, align 4
  br label %243

243:                                              ; preds = %226, %222
  %244 = load i32, i32* %9, align 4
  %245 = and i32 %244, 2
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 4, i32 0
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %282, %243
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* @BANDS, align 4
  %252 = sub nsw i32 %251, 1
  %253 = icmp slt i32 %250, %252
  br i1 %253, label %254, label %285

254:                                              ; preds = %249
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %20, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = sitofp i32 %270 to float
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load float*, float** %273, align 8
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %274, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fmul float %271, %278
  %280 = load float, float* %19, align 4
  %281 = fadd float %280, %279
  store float %281, float* %19, align 4
  br label %282

282:                                              ; preds = %254
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %249

285:                                              ; preds = %249
  %286 = load i32, i32* %20, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %289, i32* %6, align 4
  br label %758

290:                                              ; preds = %285
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* @BANDS, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  store i32 0, i32* %297, align 4
  %298 = load float, float* %19, align 4
  %299 = fpext float %298 to double
  %300 = fmul double %299, 5.000000e-01
  %301 = load i32, i32* %10, align 4
  %302 = sitofp i32 %301 to double
  %303 = fsub double %300, %302
  %304 = load i32, i32* %20, align 4
  %305 = sitofp i32 %304 to double
  %306 = fdiv double %303, %305
  %307 = fptrunc double %306 to float
  store float %307, float* %19, align 4
  store i32 0, i32* %12, align 4
  br label %308

308:                                              ; preds = %413, %290
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* @BANDS, align 4
  %311 = sdiv i32 %310, 2
  %312 = icmp slt i32 %309, %311
  br i1 %312, label %313, label %416

313:                                              ; preds = %308
  %314 = load i32, i32* %21, align 4
  %315 = load i32, i32* %10, align 4
  %316 = sub nsw i32 %314, %315
  store i32 %316, i32* %22, align 4
  %317 = load i32, i32* %22, align 4
  %318 = icmp sge i32 %317, -8
  br i1 %318, label %319, label %323

319:                                              ; preds = %313
  %320 = load i32, i32* %22, align 4
  %321 = icmp sle i32 %320, 8
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %416

323:                                              ; preds = %319, %313
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %324 = load i32, i32* %9, align 4
  %325 = and i32 %324, 2
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i32 4, i32 0
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %379, %323
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* @BANDS, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %382

333:                                              ; preds = %329
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  %336 = load float*, float** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %336, i64 %338
  %340 = load float, float* %339, align 4
  %341 = fpext float %340 to double
  %342 = fmul double %341, 5.000000e-01
  %343 = load float, float* %19, align 4
  %344 = fpext float %343 to double
  %345 = fsub double %342, %344
  %346 = fadd double %345, 5.000000e-01
  %347 = call i32 @av_clipf(double %346, i32 0, i32 6)
  store i32 %347, i32* %23, align 4
  %348 = load i32, i32* %23, align 4
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 5
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  store i32 %348, i32* %354, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 4
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %13, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %23, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load i32, i32* %21, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %21, align 4
  %366 = load i32, i32* %23, align 4
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %333
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 4
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %20, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %20, align 4
  br label %378

378:                                              ; preds = %368, %333
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %13, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %13, align 4
  br label %329

382:                                              ; preds = %329
  %383 = load i32, i32* %18, align 4
  store i32 %383, i32* %27, align 4
  store i32 1, i32* %18, align 4
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %21, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  store i32 -1, i32* %18, align 4
  br label %388

388:                                              ; preds = %387, %382
  %389 = load i32, i32* %12, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load i32, i32* %18, align 4
  store i32 %392, i32* %27, align 4
  br label %393

393:                                              ; preds = %391, %388
  %394 = load i32, i32* %27, align 4
  %395 = load i32, i32* %18, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = load i32, i32* %17, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %17, align 4
  br label %400

400:                                              ; preds = %397, %393
  %401 = load i32, i32* %21, align 4
  %402 = load i32, i32* %10, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sitofp i32 %403 to float
  %405 = load i32, i32* %17, align 4
  %406 = add nsw i32 %405, 1
  %407 = load i32, i32* %20, align 4
  %408 = mul nsw i32 %406, %407
  %409 = sitofp i32 %408 to float
  %410 = fdiv float %404, %409
  %411 = load float, float* %19, align 4
  %412 = fadd float %410, %411
  store float %412, float* %19, align 4
  br label %413

413:                                              ; preds = %400
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %12, align 4
  br label %308

416:                                              ; preds = %322, %308
  %417 = load i32, i32* %9, align 4
  %418 = and i32 %417, 2
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i64
  %421 = select i1 %419, i32 4, i32 0
  store i32 %421, i32* %12, align 4
  br label %422

422:                                              ; preds = %459, %416
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* @BANDS, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %462

426:                                              ; preds = %422
  %427 = load i32*, i32** @band_tab, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  store i32 %431, i32* %13, align 4
  br label %432

432:                                              ; preds = %455, %426
  %433 = load i32, i32* %13, align 4
  %434 = load i32*, i32** @band_tab, align 8
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %434, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp slt i32 %433, %439
  br i1 %440, label %441, label %458

441:                                              ; preds = %432
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 5
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %12, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 6
  %451 = load i32*, i32** %450, align 8
  %452 = load i32, i32* %13, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  store i32 %448, i32* %454, align 4
  br label %455

455:                                              ; preds = %441
  %456 = load i32, i32* %13, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %13, align 4
  br label %432

458:                                              ; preds = %432
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %12, align 4
  br label %422

462:                                              ; preds = %422
  %463 = load i32, i32* %10, align 4
  %464 = load i32, i32* %21, align 4
  %465 = icmp sgt i32 %463, %464
  br i1 %465, label %466, label %605

466:                                              ; preds = %462
  store i32 0, i32* %12, align 4
  br label %467

467:                                              ; preds = %507, %466
  %468 = load i32, i32* %12, align 4
  %469 = load i32, i32* @BANDS, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %510

471:                                              ; preds = %467
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 5
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %12, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = icmp eq i32 %478, 6
  br i1 %479, label %480, label %481

480:                                              ; preds = %471
  br label %501

481:                                              ; preds = %471
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 5
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %12, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = mul nsw i32 %488, -2
  %490 = sitofp i32 %489 to float
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 2
  %493 = load float*, float** %492, align 8
  %494 = load i32, i32* %12, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds float, float* %493, i64 %495
  %497 = load float, float* %496, align 4
  %498 = fadd float %490, %497
  %499 = fpext float %498 to double
  %500 = fsub double %499, 4.150000e-01
  br label %501

501:                                              ; preds = %481, %480
  %502 = phi double [ -1.000000e+20, %480 ], [ %500, %481 ]
  %503 = fptrunc double %502 to float
  %504 = load i32, i32* %12, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %505
  store float %503, float* %506, align 4
  br label %507

507:                                              ; preds = %501
  %508 = load i32, i32* %12, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %12, align 4
  br label %467

510:                                              ; preds = %467
  store float 0.000000e+00, float* %15, align 4
  br label %511

511:                                              ; preds = %600, %510
  %512 = load float, float* %15, align 4
  %513 = fpext float %512 to double
  %514 = fcmp ole double %513, -1.000000e+20
  br i1 %514, label %515, label %516

515:                                              ; preds = %511
  br label %604

516:                                              ; preds = %511
  store i32 0, i32* %28, align 4
  store float 0xC415AF1D80000000, float* %15, align 4
  store i32 0, i32* %12, align 4
  br label %517

517:                                              ; preds = %535, %516
  %518 = load i32, i32* %12, align 4
  %519 = load i32, i32* @BANDS, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %538

521:                                              ; preds = %517
  %522 = load i32, i32* %12, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %523
  %525 = load float, float* %524, align 4
  %526 = load float, float* %15, align 4
  %527 = fcmp ogt float %525, %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %521
  %529 = load i32, i32* %12, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %530
  %532 = load float, float* %531, align 4
  store float %532, float* %15, align 4
  %533 = load i32, i32* %12, align 4
  store i32 %533, i32* %28, align 4
  br label %534

534:                                              ; preds = %528, %521
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %12, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %12, align 4
  br label %517

538:                                              ; preds = %517
  %539 = load float, float* %15, align 4
  %540 = fpext float %539 to double
  %541 = fcmp ogt double %540, -1.000000e+20
  br i1 %541, label %542, label %599

542:                                              ; preds = %538
  %543 = load i32, i32* %28, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %544
  %546 = load float, float* %545, align 4
  %547 = fpext float %546 to double
  %548 = fsub double %547, 2.000000e+00
  %549 = fptrunc double %548 to float
  store float %549, float* %545, align 4
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 5
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %28, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %555, align 4
  %558 = icmp eq i32 %557, 6
  br i1 %558, label %559, label %563

559:                                              ; preds = %542
  %560 = load i32, i32* %28, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %561
  store float 0xC415AF1D80000000, float* %562, align 4
  br label %563

563:                                              ; preds = %559, %542
  %564 = load i32*, i32** @band_tab, align 8
  %565 = load i32, i32* %28, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %564, i64 %566
  %568 = load i32, i32* %567, align 4
  store i32 %568, i32* %13, align 4
  br label %569

569:                                              ; preds = %595, %563
  %570 = load i32, i32* %13, align 4
  %571 = load i32*, i32** @band_tab, align 8
  %572 = load i32, i32* %28, align 4
  %573 = add nsw i32 %572, 1
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %571, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = icmp slt i32 %570, %576
  br i1 %577, label %578, label %582

578:                                              ; preds = %569
  %579 = load i32, i32* %10, align 4
  %580 = load i32, i32* %21, align 4
  %581 = icmp sgt i32 %579, %580
  br label %582

582:                                              ; preds = %578, %569
  %583 = phi i1 [ false, %569 ], [ %581, %578 ]
  br i1 %583, label %584, label %598

584:                                              ; preds = %582
  %585 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 6
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %13, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %590, align 4
  %593 = load i32, i32* %21, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %21, align 4
  br label %595

595:                                              ; preds = %584
  %596 = load i32, i32* %13, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %13, align 4
  br label %569

598:                                              ; preds = %582
  br label %599

599:                                              ; preds = %598, %538
  br label %600

600:                                              ; preds = %599
  %601 = load i32, i32* %10, align 4
  %602 = load i32, i32* %21, align 4
  %603 = icmp sgt i32 %601, %602
  br i1 %603, label %511, label %604

604:                                              ; preds = %600, %515
  br label %605

605:                                              ; preds = %604, %462
  %606 = load i32, i32* %10, align 4
  %607 = load i32, i32* %21, align 4
  %608 = icmp slt i32 %606, %607
  br i1 %608, label %609, label %757

609:                                              ; preds = %605
  store i32 0, i32* %12, align 4
  br label %610

610:                                              ; preds = %650, %609
  %611 = load i32, i32* %12, align 4
  %612 = load i32, i32* @BANDS, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %653

614:                                              ; preds = %610
  %615 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %616 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %615, i32 0, i32 5
  %617 = load i32*, i32** %616, align 8
  %618 = load i32, i32* %12, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %643

623:                                              ; preds = %614
  %624 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %625 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %624, i32 0, i32 5
  %626 = load i32*, i32** %625, align 8
  %627 = load i32, i32* %12, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %626, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = mul nsw i32 %630, -2
  %632 = sitofp i32 %631 to float
  %633 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 2
  %635 = load float*, float** %634, align 8
  %636 = load i32, i32* %12, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds float, float* %635, i64 %637
  %639 = load float, float* %638, align 4
  %640 = fadd float %632, %639
  %641 = fpext float %640 to double
  %642 = fadd double %641, 1.585000e+00
  br label %644

643:                                              ; preds = %614
  br label %644

644:                                              ; preds = %643, %623
  %645 = phi double [ %642, %623 ], [ 1.000000e+20, %643 ]
  %646 = fptrunc double %645 to float
  %647 = load i32, i32* %12, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %648
  store float %646, float* %649, align 4
  br label %650

650:                                              ; preds = %644
  %651 = load i32, i32* %12, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %12, align 4
  br label %610

653:                                              ; preds = %610
  %654 = load i32, i32* %9, align 4
  %655 = and i32 %654, 2
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %662

657:                                              ; preds = %653
  %658 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 0
  store float 0x4415AF1D80000000, float* %658, align 16
  %659 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 1
  store float 0x4415AF1D80000000, float* %659, align 4
  %660 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 2
  store float 0x4415AF1D80000000, float* %660, align 8
  %661 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 3
  store float 0x4415AF1D80000000, float* %661, align 4
  br label %662

662:                                              ; preds = %657, %653
  br label %663

663:                                              ; preds = %755, %662
  %664 = load i32, i32* %10, align 4
  %665 = load i32, i32* %21, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %667, label %756

667:                                              ; preds = %663
  store float 1.000000e+10, float* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %12, align 4
  br label %668

668:                                              ; preds = %686, %667
  %669 = load i32, i32* %12, align 4
  %670 = load i32, i32* @BANDS, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %689

672:                                              ; preds = %668
  %673 = load i32, i32* %12, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %674
  %676 = load float, float* %675, align 4
  %677 = load float, float* %24, align 4
  %678 = fcmp olt float %676, %677
  br i1 %678, label %679, label %685

679:                                              ; preds = %672
  %680 = load i32, i32* %12, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %681
  %683 = load float, float* %682, align 4
  store float %683, float* %24, align 4
  %684 = load i32, i32* %12, align 4
  store i32 %684, i32* %25, align 4
  br label %685

685:                                              ; preds = %679, %672
  br label %686

686:                                              ; preds = %685
  %687 = load i32, i32* %12, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %12, align 4
  br label %668

689:                                              ; preds = %668
  %690 = load float, float* %24, align 4
  %691 = fpext float %690 to double
  %692 = fadd double %691, 2.000000e+00
  %693 = fptrunc double %692 to float
  %694 = load i32, i32* %25, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %695
  store float %693, float* %696, align 4
  %697 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %698 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %697, i32 0, i32 5
  %699 = load i32*, i32** %698, align 8
  %700 = load i32, i32* %25, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = add nsw i32 %703, -1
  store i32 %704, i32* %702, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %710, label %706

706:                                              ; preds = %689
  %707 = load i32, i32* %25, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [32 x float], [32 x float]* %26, i64 0, i64 %708
  store float 0x4415AF1D80000000, float* %709, align 4
  br label %710

710:                                              ; preds = %706, %689
  %711 = load i32*, i32** @band_tab, align 8
  %712 = load i32, i32* %25, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32, i32* %711, i64 %713
  %715 = load i32, i32* %714, align 4
  store i32 %715, i32* %13, align 4
  br label %716

716:                                              ; preds = %752, %710
  %717 = load i32, i32* %13, align 4
  %718 = load i32*, i32** @band_tab, align 8
  %719 = load i32, i32* %25, align 4
  %720 = add nsw i32 %719, 1
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %718, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = icmp slt i32 %717, %723
  br i1 %724, label %725, label %729

725:                                              ; preds = %716
  %726 = load i32, i32* %10, align 4
  %727 = load i32, i32* %21, align 4
  %728 = icmp slt i32 %726, %727
  br label %729

729:                                              ; preds = %725, %716
  %730 = phi i1 [ false, %716 ], [ %728, %725 ]
  br i1 %730, label %731, label %755

731:                                              ; preds = %729
  %732 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %733 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %732, i32 0, i32 6
  %734 = load i32*, i32** %733, align 8
  %735 = load i32, i32* %13, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i32, i32* %734, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = icmp sgt i32 %738, 0
  br i1 %739, label %740, label %751

740:                                              ; preds = %731
  %741 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %742 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %741, i32 0, i32 6
  %743 = load i32*, i32** %742, align 8
  %744 = load i32, i32* %13, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i32, i32* %743, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = add nsw i32 %747, -1
  store i32 %748, i32* %746, align 4
  %749 = load i32, i32* %21, align 4
  %750 = add nsw i32 %749, -1
  store i32 %750, i32* %21, align 4
  br label %751

751:                                              ; preds = %740, %731
  br label %752

752:                                              ; preds = %751
  %753 = load i32, i32* %13, align 4
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %13, align 4
  br label %716

755:                                              ; preds = %729
  br label %663

756:                                              ; preds = %663
  br label %757

757:                                              ; preds = %756, %605
  store i32 0, i32* %6, align 4
  br label %758

758:                                              ; preds = %757, %288, %187, %61
  %759 = load i32, i32* %6, align 4
  ret i32 %759
}

declare dso_local float @FFMAX(float, float) #1

declare dso_local i32 @av_log(i32, i32, i8*, i64) #1

declare dso_local float @log2f(i64) #1

declare dso_local i32 @av_clipf(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
