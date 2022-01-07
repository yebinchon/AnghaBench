; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_adaptive_quantization.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_adaptive_quantization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float*, float*, i32, i32, i32, i32*, i32, i32*, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { double, double, float, float, float, i32, i32 }

@CANDIDATE_MB_TYPE_INTRA = common dso_local global i32 0, align 4
@FF_MPV_FLAG_NAQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, double)* @adaptive_quantization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adaptive_quantization(%struct.TYPE_7__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store double %1, double* %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 12
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fdiv double %41, 1.638400e+04
  %43 = fptrunc double %42 to float
  store float %43, float* %6, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 12
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = fdiv double %48, 1.638400e+04
  %50 = fptrunc double %49 to float
  store float %50, float* %7, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 12
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load float, float* %54, align 8
  store float %55, float* %8, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 12
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load float, float* %59, align 4
  store float %60, float* %9, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 12
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load float, float* %64, align 8
  store float %65, float* %10, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 8
  store float %68, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load float*, float** %70, align 8
  store float* %71, float** %14, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load float*, float** %73, align 8
  store float* %74, float** %15, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 12
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 12
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %17, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 11
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %18, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %19, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %20, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %317, %2
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %320

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call float @sqrt(i32 %113)
  store float %114, float* %22, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call float @sqrt(i32 %121)
  store float %122, float* %23, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %130, %133
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %135, %138
  store i32 %139, i32* %29, align 4
  store float 0.000000e+00, float* %31, align 4
  %140 = load float, float* %23, align 4
  %141 = fcmp olt float %140, 4.000000e+00
  br i1 %141, label %142, label %143

142:                                              ; preds = %99
  store float 4.000000e+00, float* %23, align 4
  br label %143

143:                                              ; preds = %142, %99
  %144 = load float, float* %22, align 4
  %145 = fcmp olt float %144, 4.000000e+00
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store float 4.000000e+00, float* %22, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 8
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CANDIDATE_MB_TYPE_INTRA, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %147
  %159 = load float, float* %23, align 4
  store float %159, float* %26, align 4
  %160 = load float, float* %10, align 4
  %161 = fpext float %160 to double
  %162 = fadd double 1.000000e+00, %161
  %163 = fptrunc double %162 to float
  store float %163, float* %27, align 4
  br label %170

164:                                              ; preds = %147
  %165 = load float, float* %22, align 4
  store float %165, float* %26, align 4
  %166 = load float, float* %22, align 4
  %167 = load float, float* %8, align 4
  %168 = fneg float %167
  %169 = call float @pow(float %166, float %168)
  store float %169, float* %27, align 4
  br label %170

170:                                              ; preds = %164, %158
  %171 = load float, float* %23, align 4
  %172 = load float, float* %9, align 4
  %173 = fneg float %172
  %174 = call float @pow(float %171, float %173)
  %175 = load float, float* %27, align 4
  %176 = fmul float %175, %174
  store float %176, float* %27, align 4
  %177 = load i32, i32* %24, align 4
  %178 = icmp sgt i32 %177, 127
  br i1 %178, label %179, label %194

179:                                              ; preds = %170
  %180 = load i32, i32* %24, align 4
  %181 = sub nsw i32 %180, 128
  %182 = load i32, i32* %24, align 4
  %183 = sub nsw i32 %182, 128
  %184 = mul nsw i32 %181, %183
  %185 = sitofp i32 %184 to float
  %186 = load float, float* %6, align 4
  %187 = fmul float %185, %186
  %188 = fpext float %187 to double
  %189 = fsub double 1.000000e+00, %188
  %190 = load float, float* %27, align 4
  %191 = fpext float %190 to double
  %192 = fmul double %191, %189
  %193 = fptrunc double %192 to float
  store float %193, float* %27, align 4
  br label %209

194:                                              ; preds = %170
  %195 = load i32, i32* %24, align 4
  %196 = sub nsw i32 %195, 128
  %197 = load i32, i32* %24, align 4
  %198 = sub nsw i32 %197, 128
  %199 = mul nsw i32 %196, %198
  %200 = sitofp i32 %199 to float
  %201 = load float, float* %7, align 4
  %202 = fmul float %200, %201
  %203 = fpext float %202 to double
  %204 = fsub double 1.000000e+00, %203
  %205 = load float, float* %27, align 4
  %206 = fpext float %205 to double
  %207 = fmul double %206, %204
  %208 = fptrunc double %207 to float
  store float %208, float* %27, align 4
  br label %209

209:                                              ; preds = %194, %179
  %210 = load i32, i32* %28, align 4
  %211 = load i32, i32* %19, align 4
  %212 = sdiv i32 %211, 5
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %209
  %215 = load i32, i32* %19, align 4
  %216 = sdiv i32 %215, 5
  %217 = load i32, i32* %28, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %30, align 4
  %219 = load i32, i32* %30, align 4
  %220 = sitofp i32 %219 to float
  %221 = load i32, i32* %19, align 4
  %222 = sdiv i32 %221, 5
  %223 = sitofp i32 %222 to float
  %224 = fdiv float %220, %223
  store float %224, float* %31, align 4
  br label %244

225:                                              ; preds = %209
  %226 = load i32, i32* %28, align 4
  %227 = load i32, i32* %19, align 4
  %228 = mul nsw i32 4, %227
  %229 = sdiv i32 %228, 5
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %225
  %232 = load i32, i32* %28, align 4
  %233 = load i32, i32* %19, align 4
  %234 = mul nsw i32 4, %233
  %235 = sdiv i32 %234, 5
  %236 = sub nsw i32 %232, %235
  store i32 %236, i32* %30, align 4
  %237 = load i32, i32* %30, align 4
  %238 = sitofp i32 %237 to float
  %239 = load i32, i32* %19, align 4
  %240 = sdiv i32 %239, 5
  %241 = sitofp i32 %240 to float
  %242 = fdiv float %238, %241
  store float %242, float* %31, align 4
  br label %243

243:                                              ; preds = %231, %225
  br label %244

244:                                              ; preds = %243, %214
  %245 = load i32, i32* %29, align 4
  %246 = load i32, i32* %20, align 4
  %247 = sdiv i32 %246, 5
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %244
  %250 = load i32, i32* %20, align 4
  %251 = sdiv i32 %250, 5
  %252 = load i32, i32* %29, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %30, align 4
  %254 = load float, float* %31, align 4
  %255 = load i32, i32* %30, align 4
  %256 = sitofp i32 %255 to float
  %257 = load i32, i32* %20, align 4
  %258 = sdiv i32 %257, 5
  %259 = sitofp i32 %258 to float
  %260 = fdiv float %256, %259
  %261 = call float @FFMAX(float %254, float %260)
  store float %261, float* %31, align 4
  br label %283

262:                                              ; preds = %244
  %263 = load i32, i32* %29, align 4
  %264 = load i32, i32* %20, align 4
  %265 = mul nsw i32 4, %264
  %266 = sdiv i32 %265, 5
  %267 = icmp sgt i32 %263, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %262
  %269 = load i32, i32* %29, align 4
  %270 = load i32, i32* %20, align 4
  %271 = mul nsw i32 4, %270
  %272 = sdiv i32 %271, 5
  %273 = sub nsw i32 %269, %272
  store i32 %273, i32* %30, align 4
  %274 = load float, float* %31, align 4
  %275 = load i32, i32* %30, align 4
  %276 = sitofp i32 %275 to float
  %277 = load i32, i32* %20, align 4
  %278 = sdiv i32 %277, 5
  %279 = sitofp i32 %278 to float
  %280 = fdiv float %276, %279
  %281 = call float @FFMAX(float %274, float %280)
  store float %281, float* %31, align 4
  br label %282

282:                                              ; preds = %268, %262
  br label %283

283:                                              ; preds = %282, %249
  %284 = load float, float* %11, align 4
  %285 = load float, float* %31, align 4
  %286 = fmul float %284, %285
  %287 = fpext float %286 to double
  %288 = fsub double 1.000000e+00, %287
  %289 = load float, float* %27, align 4
  %290 = fpext float %289 to double
  %291 = fmul double %290, %288
  %292 = fptrunc double %291 to float
  store float %292, float* %27, align 4
  %293 = load float, float* %27, align 4
  %294 = fpext float %293 to double
  %295 = fcmp olt double %294, 1.000000e-05
  br i1 %295, label %296, label %297

296:                                              ; preds = %283
  store float 0x3EE4F8B580000000, float* %27, align 4
  br label %297

297:                                              ; preds = %296, %283
  %298 = load float, float* %26, align 4
  %299 = load float, float* %27, align 4
  %300 = fmul float %298, %299
  store float %300, float* %25, align 4
  %301 = load float, float* %26, align 4
  %302 = load float, float* %13, align 4
  %303 = fadd float %302, %301
  store float %303, float* %13, align 4
  %304 = load float, float* %25, align 4
  %305 = load float, float* %12, align 4
  %306 = fadd float %305, %304
  store float %306, float* %12, align 4
  %307 = load float, float* %26, align 4
  %308 = load float*, float** %14, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %308, i64 %310
  store float %307, float* %311, align 4
  %312 = load float, float* %25, align 4
  %313 = load float*, float** %15, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %313, i64 %315
  store float %312, float* %316, align 4
  br label %317

317:                                              ; preds = %297
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %5, align 4
  br label %93

320:                                              ; preds = %93
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 9
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @FF_MPV_FLAG_NAQ, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %428

327:                                              ; preds = %320
  %328 = load float, float* %12, align 4
  %329 = load float, float* %13, align 4
  %330 = fdiv float %328, %329
  store float %330, float* %32, align 4
  store i32 0, i32* %5, align 4
  br label %331

331:                                              ; preds = %414, %327
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 8
  %336 = icmp slt i32 %332, %335
  br i1 %336, label %337, label %417

337:                                              ; preds = %331
  %338 = load double, double* %4, align 8
  %339 = load float*, float** %14, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %339, i64 %341
  %343 = load float, float* %342, align 4
  %344 = fpext float %343 to double
  %345 = fmul double %338, %344
  %346 = load float*, float** %15, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %346, i64 %348
  %350 = load float, float* %349, align 4
  %351 = fpext float %350 to double
  %352 = fdiv double %345, %351
  %353 = fptrunc double %352 to float
  store float %353, float* %33, align 4
  %354 = load float, float* %32, align 4
  %355 = load float, float* %33, align 4
  %356 = fmul float %355, %354
  store float %356, float* %33, align 4
  %357 = load float, float* %33, align 4
  %358 = load i32, i32* %17, align 4
  %359 = sitofp i32 %358 to float
  %360 = fcmp ogt float %357, %359
  br i1 %360, label %361, label %384

361:                                              ; preds = %337
  %362 = load float*, float** %15, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %362, i64 %364
  %366 = load float, float* %365, align 4
  %367 = load float, float* %12, align 4
  %368 = fsub float %367, %366
  store float %368, float* %12, align 4
  %369 = load float*, float** %14, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %369, i64 %371
  %373 = load float, float* %372, align 4
  %374 = fpext float %373 to double
  %375 = load double, double* %4, align 8
  %376 = fmul double %374, %375
  %377 = load i32, i32* %17, align 4
  %378 = sitofp i32 %377 to double
  %379 = fdiv double %376, %378
  %380 = load float, float* %13, align 4
  %381 = fpext float %380 to double
  %382 = fsub double %381, %379
  %383 = fptrunc double %382 to float
  store float %383, float* %13, align 4
  br label %413

384:                                              ; preds = %337
  %385 = load float, float* %33, align 4
  %386 = load i32, i32* %16, align 4
  %387 = sitofp i32 %386 to float
  %388 = fcmp olt float %385, %387
  br i1 %388, label %389, label %412

389:                                              ; preds = %384
  %390 = load float*, float** %15, align 8
  %391 = load i32, i32* %5, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %390, i64 %392
  %394 = load float, float* %393, align 4
  %395 = load float, float* %12, align 4
  %396 = fsub float %395, %394
  store float %396, float* %12, align 4
  %397 = load float*, float** %14, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %397, i64 %399
  %401 = load float, float* %400, align 4
  %402 = fpext float %401 to double
  %403 = load double, double* %4, align 8
  %404 = fmul double %402, %403
  %405 = load i32, i32* %16, align 4
  %406 = sitofp i32 %405 to double
  %407 = fdiv double %404, %406
  %408 = load float, float* %13, align 4
  %409 = fpext float %408 to double
  %410 = fsub double %409, %407
  %411 = fptrunc double %410 to float
  store float %411, float* %13, align 4
  br label %412

412:                                              ; preds = %389, %384
  br label %413

413:                                              ; preds = %412, %361
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %5, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %5, align 4
  br label %331

417:                                              ; preds = %331
  %418 = load float, float* %12, align 4
  %419 = fpext float %418 to double
  %420 = fcmp olt double %419, 1.000000e-03
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store float 0x3F50624DE0000000, float* %12, align 4
  br label %422

422:                                              ; preds = %421, %417
  %423 = load float, float* %13, align 4
  %424 = fpext float %423 to double
  %425 = fcmp olt double %424, 1.000000e-03
  br i1 %425, label %426, label %427

426:                                              ; preds = %422
  store float 0x3F50624DE0000000, float* %13, align 4
  br label %427

427:                                              ; preds = %426, %422
  br label %428

428:                                              ; preds = %427, %320
  store i32 0, i32* %5, align 4
  br label %429

429:                                              ; preds = %496, %428
  %430 = load i32, i32* %5, align 4
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = icmp slt i32 %430, %433
  br i1 %434, label %435, label %499

435:                                              ; preds = %429
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 6
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  store i32 %442, i32* %34, align 4
  %443 = load double, double* %4, align 8
  %444 = load float*, float** %14, align 8
  %445 = load i32, i32* %5, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds float, float* %444, i64 %446
  %448 = load float, float* %447, align 4
  %449 = fpext float %448 to double
  %450 = fmul double %443, %449
  %451 = load float*, float** %15, align 8
  %452 = load i32, i32* %5, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds float, float* %451, i64 %453
  %455 = load float, float* %454, align 4
  %456 = fpext float %455 to double
  %457 = fdiv double %450, %456
  %458 = fptrunc double %457 to float
  store float %458, float* %35, align 4
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 9
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @FF_MPV_FLAG_NAQ, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %471

465:                                              ; preds = %435
  %466 = load float, float* %12, align 4
  %467 = load float, float* %13, align 4
  %468 = fdiv float %466, %467
  %469 = load float, float* %35, align 4
  %470 = fmul float %469, %468
  store float %470, float* %35, align 4
  br label %471

471:                                              ; preds = %465, %435
  %472 = load float, float* %35, align 4
  %473 = fpext float %472 to double
  %474 = fadd double %473, 5.000000e-01
  %475 = fptosi double %474 to i32
  store i32 %475, i32* %36, align 4
  %476 = load i32, i32* %36, align 4
  %477 = load i32, i32* %17, align 4
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %471
  %480 = load i32, i32* %17, align 4
  store i32 %480, i32* %36, align 4
  br label %488

481:                                              ; preds = %471
  %482 = load i32, i32* %36, align 4
  %483 = load i32, i32* %16, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %481
  %486 = load i32, i32* %16, align 4
  store i32 %486, i32* %36, align 4
  br label %487

487:                                              ; preds = %485, %481
  br label %488

488:                                              ; preds = %487, %479
  %489 = load i32, i32* %36, align 4
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 10
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %34, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32 %489, i32* %495, align 4
  br label %496

496:                                              ; preds = %488
  %497 = load i32, i32* %5, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %5, align 4
  br label %429

499:                                              ; preds = %429
  ret void
}

declare dso_local float @sqrt(i32) #1

declare dso_local float @pow(float, float) #1

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
