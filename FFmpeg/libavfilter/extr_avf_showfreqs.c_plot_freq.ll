; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showfreqs.c_plot_freq.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showfreqs.c_plot_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float, float**, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, double, i32, i32*, i32*, i32*, %struct.TYPE_8__*)* @plot_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plot_freq(%struct.TYPE_7__* %0, i32 %1, double %2, i32 %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_8__* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store double %2, double* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %16, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %17, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %18, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load float**, float*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float*, float** %34, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %19, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call float @get_bsize(%struct.TYPE_7__* %43, i32 %44)
  store float %45, float* %20, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @get_sx(%struct.TYPE_7__* %46, i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %76 [
    i32 133, label %55
    i32 136, label %60
    i32 134, label %65
    i32 135, label %73
  ]

55:                                               ; preds = %8
  %56 = load double, double* %11, align 8
  %57 = call i32 @sqrt(double %56)
  %58 = sitofp i32 %57 to double
  %59 = fsub double 1.000000e+00, %58
  store double %59, double* %11, align 8
  br label %76

60:                                               ; preds = %8
  %61 = load double, double* %11, align 8
  %62 = call i32 @cbrt(double %61)
  %63 = sitofp i32 %62 to double
  %64 = fsub double 1.000000e+00, %63
  store double %64, double* %11, align 8
  br label %76

65:                                               ; preds = %8
  %66 = load double, double* %11, align 8
  %67 = load float, float* %18, align 4
  %68 = call float @av_clipd(double %66, float %67, i32 1)
  %69 = call double @log(float %68)
  %70 = load float, float* %18, align 4
  %71 = call double @log(float %70)
  %72 = fdiv double %69, %71
  store double %72, double* %11, align 8
  br label %76

73:                                               ; preds = %8
  %74 = load double, double* %11, align 8
  %75 = fsub double 1.000000e+00, %74
  store double %75, double* %11, align 8
  br label %76

76:                                               ; preds = %8, %73, %65, %60, %55
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %123 [
    i32 131, label %80
    i32 128, label %89
  ]

80:                                               ; preds = %76
  %81 = load double, double* %11, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to double
  %86 = fmul double %81, %85
  %87 = fsub double %86, 1.000000e+00
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %24, align 4
  br label %125

89:                                               ; preds = %76
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %96, %98
  store i32 %99, i32* %22, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %102, %105
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sitofp i32 %108 to double
  %110 = load double, double* %11, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %113, %116
  %118 = sitofp i32 %117 to double
  %119 = fmul double %110, %118
  %120 = fadd double %109, %119
  %121 = fsub double %120, 1.000000e+00
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %24, align 4
  br label %125

123:                                              ; preds = %76
  %124 = call i32 @av_assert0(i32 0)
  br label %125

125:                                              ; preds = %123, %89, %80
  %126 = load i32, i32* %24, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %372

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %159 [
    i32 0, label %133
    i32 1, label %158
  ]

133:                                              ; preds = %129
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %24, align 4
  br label %144

140:                                              ; preds = %133
  %141 = load float, float* %19, align 4
  %142 = load i32, i32* %24, align 4
  %143 = call i32 @FFMIN(float %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %138
  %145 = phi i32 [ %139, %138 ], [ %143, %140 ]
  %146 = sitofp i32 %145 to float
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load float**, float*** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float*, float** %149, i64 %151
  %153 = load float*, float** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  store float %146, float* %156, align 4
  %157 = fptosi float %146 to i32
  store i32 %157, i32* %24, align 4
  br label %204

158:                                              ; preds = %129
  br label %204

159:                                              ; preds = %129
  %160 = load float, float* %19, align 4
  %161 = load i32, i32* %24, align 4
  %162 = sitofp i32 %161 to float
  %163 = load i32, i32* %24, align 4
  %164 = sitofp i32 %163 to float
  %165 = load float, float* %19, align 4
  %166 = fsub float %164, %165
  %167 = fmul float %162, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  %172 = sitofp i32 %171 to float
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @FFMIN(float %172, i32 %175)
  %177 = load i32, i32* %24, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sitofp i32 %178 to float
  %180 = fdiv float %167, %179
  %181 = fadd float %160, %180
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load float**, float*** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  store float %181, float* %191, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load float**, float*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float*, float** %194, i64 %196
  %198 = load float*, float** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fptosi float %202 to i32
  store i32 %203, i32* %24, align 4
  br label %204

204:                                              ; preds = %159, %158, %144
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  switch i32 %207, label %372 [
    i32 129, label %208
    i32 132, label %310
    i32 130, label %346
  ]

208:                                              ; preds = %204
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32, i32* %24, align 4
  %214 = load i32*, i32** %14, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %208
  %216 = load i32, i32* %24, align 4
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp sle i32 %216, %218
  br i1 %219, label %220, label %263

220:                                              ; preds = %215
  %221 = load i32, i32* %21, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %23, align 4
  br label %223

223:                                              ; preds = %243, %220
  %224 = load i32, i32* %23, align 4
  %225 = sitofp i32 %224 to float
  %226 = load i32, i32* %21, align 4
  %227 = sitofp i32 %226 to float
  %228 = load float, float* %20, align 4
  %229 = fadd float %227, %228
  %230 = fcmp olt float %225, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp slt i32 %232, %233
  br label %235

235:                                              ; preds = %231, %223
  %236 = phi i1 [ false, %223 ], [ %234, %231 ]
  br i1 %236, label %237, label %246

237:                                              ; preds = %235
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %24, align 4
  %241 = load i32*, i32** %13, align 8
  %242 = call i32 @draw_dot(i32* %238, i32 %239, i32 %240, i32* %241)
  br label %243

243:                                              ; preds = %237
  %244 = load i32, i32* %23, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %23, align 4
  br label %223

246:                                              ; preds = %235
  %247 = load i32, i32* %24, align 4
  store i32 %247, i32* %25, align 4
  br label %248

248:                                              ; preds = %259, %246
  %249 = load i32, i32* %25, align 4
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %250, align 4
  %252 = icmp sle i32 %249, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %248
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* %21, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load i32*, i32** %13, align 8
  %258 = call i32 @draw_dot(i32* %254, i32 %255, i32 %256, i32* %257)
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %25, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %25, align 4
  br label %248

262:                                              ; preds = %248
  br label %307

263:                                              ; preds = %215
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %25, align 4
  br label %266

266:                                              ; preds = %276, %263
  %267 = load i32, i32* %25, align 4
  %268 = load i32, i32* %24, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load i32*, i32** %15, align 8
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %25, align 4
  %274 = load i32*, i32** %13, align 8
  %275 = call i32 @draw_dot(i32* %271, i32 %272, i32 %273, i32* %274)
  br label %276

276:                                              ; preds = %270
  %277 = load i32, i32* %25, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %25, align 4
  br label %266

279:                                              ; preds = %266
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %23, align 4
  br label %282

282:                                              ; preds = %303, %279
  %283 = load i32, i32* %23, align 4
  %284 = sitofp i32 %283 to float
  %285 = load i32, i32* %21, align 4
  %286 = sitofp i32 %285 to float
  %287 = load float, float* %20, align 4
  %288 = fadd float %286, %287
  %289 = fcmp olt float %284, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %282
  %291 = load i32, i32* %23, align 4
  %292 = load i32, i32* %17, align 4
  %293 = icmp slt i32 %291, %292
  br label %294

294:                                              ; preds = %290, %282
  %295 = phi i1 [ false, %282 ], [ %293, %290 ]
  br i1 %295, label %296, label %306

296:                                              ; preds = %294
  %297 = load i32*, i32** %15, align 8
  %298 = load i32, i32* %23, align 4
  %299 = load i32, i32* %25, align 4
  %300 = sub nsw i32 %299, 1
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @draw_dot(i32* %297, i32 %298, i32 %300, i32* %301)
  br label %303

303:                                              ; preds = %296
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %23, align 4
  br label %282

306:                                              ; preds = %294
  br label %307

307:                                              ; preds = %306, %262
  %308 = load i32, i32* %24, align 4
  %309 = load i32*, i32** %14, align 8
  store i32 %308, i32* %309, align 4
  br label %372

310:                                              ; preds = %204
  %311 = load i32, i32* %21, align 4
  store i32 %311, i32* %23, align 4
  br label %312

312:                                              ; preds = %342, %310
  %313 = load i32, i32* %23, align 4
  %314 = sitofp i32 %313 to float
  %315 = load i32, i32* %21, align 4
  %316 = sitofp i32 %315 to float
  %317 = load float, float* %20, align 4
  %318 = fadd float %316, %317
  %319 = fcmp olt float %314, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %312
  %321 = load i32, i32* %23, align 4
  %322 = load i32, i32* %17, align 4
  %323 = icmp slt i32 %321, %322
  br label %324

324:                                              ; preds = %320, %312
  %325 = phi i1 [ false, %312 ], [ %323, %320 ]
  br i1 %325, label %326, label %345

326:                                              ; preds = %324
  %327 = load i32, i32* %24, align 4
  store i32 %327, i32* %25, align 4
  br label %328

328:                                              ; preds = %338, %326
  %329 = load i32, i32* %25, align 4
  %330 = load i32, i32* %22, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %328
  %333 = load i32*, i32** %15, align 8
  %334 = load i32, i32* %23, align 4
  %335 = load i32, i32* %25, align 4
  %336 = load i32*, i32** %13, align 8
  %337 = call i32 @draw_dot(i32* %333, i32 %334, i32 %335, i32* %336)
  br label %338

338:                                              ; preds = %332
  %339 = load i32, i32* %25, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %25, align 4
  br label %328

341:                                              ; preds = %328
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %23, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %23, align 4
  br label %312

345:                                              ; preds = %324
  br label %372

346:                                              ; preds = %204
  %347 = load i32, i32* %21, align 4
  store i32 %347, i32* %23, align 4
  br label %348

348:                                              ; preds = %368, %346
  %349 = load i32, i32* %23, align 4
  %350 = sitofp i32 %349 to float
  %351 = load i32, i32* %21, align 4
  %352 = sitofp i32 %351 to float
  %353 = load float, float* %20, align 4
  %354 = fadd float %352, %353
  %355 = fcmp olt float %350, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %348
  %357 = load i32, i32* %23, align 4
  %358 = load i32, i32* %17, align 4
  %359 = icmp slt i32 %357, %358
  br label %360

360:                                              ; preds = %356, %348
  %361 = phi i1 [ false, %348 ], [ %359, %356 ]
  br i1 %361, label %362, label %371

362:                                              ; preds = %360
  %363 = load i32*, i32** %15, align 8
  %364 = load i32, i32* %23, align 4
  %365 = load i32, i32* %24, align 4
  %366 = load i32*, i32** %13, align 8
  %367 = call i32 @draw_dot(i32* %363, i32 %364, i32 %365, i32* %366)
  br label %368

368:                                              ; preds = %362
  %369 = load i32, i32* %23, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %23, align 4
  br label %348

371:                                              ; preds = %360
  br label %372

372:                                              ; preds = %128, %204, %371, %345, %307
  ret void
}

declare dso_local float @get_bsize(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @get_sx(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqrt(double) #1

declare dso_local i32 @cbrt(double) #1

declare dso_local double @log(float) #1

declare dso_local float @av_clipd(double, float, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FFMIN(float, i32) #1

declare dso_local i32 @draw_dot(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
