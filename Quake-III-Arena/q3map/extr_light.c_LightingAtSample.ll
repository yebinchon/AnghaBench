; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightingAtSample.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightingAtSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, i64, float*, float, float*, float, float, float*, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { double*, i64 }

@ambientColor = common dso_local global float* null, align 8
@lights = common dso_local global %struct.TYPE_6__* null, align 8
@exactPointToPolygon = common dso_local global i64 0, align 8
@emit_area = common dso_local global i64 0, align 8
@notrace = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@emit_point = common dso_local global i64 0, align 8
@linearScale = common dso_local global float 0.000000e+00, align 4
@emit_spotlight = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LightingAtSample(float* %0, float* %1, float* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float*, align 8
  %27 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %28 = load float*, float** @ambientColor, align 8
  %29 = load float*, float** %9, align 8
  %30 = call i32 @VectorCopy(float* %28, float* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lights, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %13, align 8
  br label %32

32:                                               ; preds = %496, %6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %500

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load float*, float** %37, align 8
  %39 = load float*, float** %8, align 8
  %40 = call float @DotProduct(float* %38, float* %39)
  %41 = load float*, float** %8, align 8
  %42 = load float*, float** %7, align 8
  %43 = call float @DotProduct(float* %41, float* %42)
  %44 = fsub float %40, %43
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %496

47:                                               ; preds = %35
  %48 = load i64, i64* @exactPointToPolygon, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %200

50:                                               ; preds = %47
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @emit_area, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %200

56:                                               ; preds = %50
  %57 = load float*, float** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load float*, float** %59, align 8
  %61 = call float @DotProduct(float* %57, float* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load float, float* %63, align 8
  %65 = fsub float %61, %64
  store float %65, float* %20, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = load float, float* %20, align 4
  %72 = fcmp olt float %71, -1.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %496

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* @notrace, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load float*, float** %7, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load i32, i32* @qfalse, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @TraceLine(float* %82, float* %85, %struct.TYPE_5__* %14, i32 %86, i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %496

93:                                               ; preds = %81
  br label %104

94:                                               ; preds = %78, %75
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds double, double* %96, i64 0
  store double 1.000000e+00, double* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %99 = load double*, double** %98, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  store double 1.000000e+00, double* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %102 = load double*, double** %101, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  store double 1.000000e+00, double* %103, align 8
  br label %104

104:                                              ; preds = %94, %93
  %105 = load float, float* %20, align 4
  %106 = fcmp ogt float %105, -8.000000e+00
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load float, float* %20, align 4
  %109 = fcmp olt float %108, 8.000000e+00
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load float*, float** %7, align 8
  %112 = load float, float* %20, align 4
  %113 = fsub float 8.000000e+00, %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load float*, float** %115, align 8
  %117 = load float*, float** %21, align 8
  %118 = call i32 @VectorMA(float* %111, float %113, float* %116, float* %117)
  br label %123

119:                                              ; preds = %107, %104
  %120 = load float*, float** %7, align 8
  %121 = load float*, float** %21, align 8
  %122 = call i32 @VectorCopy(float* %120, float* %121)
  br label %123

123:                                              ; preds = %119, %110
  %124 = load float*, float** %21, align 8
  %125 = load float*, float** %8, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = call float @PointToPolygonFormFactor(float* %124, float* %125, i32 %128)
  store float %129, float* %19, align 4
  %130 = load float, float* %19, align 4
  %131 = fcmp ole float %130, 0.000000e+00
  br i1 %131, label %132, label %142

132:                                              ; preds = %123
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load float, float* %19, align 4
  %139 = fneg float %138
  store float %139, float* %19, align 4
  br label %141

140:                                              ; preds = %132
  br label %496

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %123
  %143 = load float, float* %19, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = load float*, float** %145, align 8
  %147 = getelementptr inbounds float, float* %146, i64 0
  %148 = load float, float* %147, align 4
  %149 = fmul float %143, %148
  %150 = fpext float %149 to double
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %152 = load double*, double** %151, align 8
  %153 = getelementptr inbounds double, double* %152, i64 0
  %154 = load double, double* %153, align 8
  %155 = fmul double %150, %154
  %156 = load float*, float** %9, align 8
  %157 = getelementptr inbounds float, float* %156, i64 0
  %158 = load float, float* %157, align 4
  %159 = fpext float %158 to double
  %160 = fadd double %159, %155
  %161 = fptrunc double %160 to float
  store float %161, float* %157, align 4
  %162 = load float, float* %19, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load float*, float** %164, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = fmul float %162, %167
  %169 = fpext float %168 to double
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %171 = load double*, double** %170, align 8
  %172 = getelementptr inbounds double, double* %171, i64 1
  %173 = load double, double* %172, align 8
  %174 = fmul double %169, %173
  %175 = load float*, float** %9, align 8
  %176 = getelementptr inbounds float, float* %175, i64 1
  %177 = load float, float* %176, align 4
  %178 = fpext float %177 to double
  %179 = fadd double %178, %174
  %180 = fptrunc double %179 to float
  store float %180, float* %176, align 4
  %181 = load float, float* %19, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  %184 = load float*, float** %183, align 8
  %185 = getelementptr inbounds float, float* %184, i64 2
  %186 = load float, float* %185, align 4
  %187 = fmul float %181, %186
  %188 = fpext float %187 to double
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %190 = load double*, double** %189, align 8
  %191 = getelementptr inbounds double, double* %190, i64 2
  %192 = load double, double* %191, align 8
  %193 = fmul double %188, %192
  %194 = load float*, float** %9, align 8
  %195 = getelementptr inbounds float, float* %194, i64 2
  %196 = load float, float* %195, align 4
  %197 = fpext float %196 to double
  %198 = fadd double %197, %193
  %199 = fptrunc double %198 to float
  store float %199, float* %195, align 4
  br label %496

200:                                              ; preds = %50, %47
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @emit_point, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %252

206:                                              ; preds = %200
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load float*, float** %208, align 8
  %210 = load float*, float** %7, align 8
  %211 = load float*, float** %18, align 8
  %212 = call i32 @VectorSubtract(float* %209, float* %210, float* %211)
  %213 = load float*, float** %18, align 8
  %214 = load float*, float** %18, align 8
  %215 = call float @VectorNormalize(float* %213, float* %214)
  store float %215, float* %17, align 4
  %216 = load float, float* %17, align 4
  %217 = fcmp olt float %216, 1.600000e+01
  br i1 %217, label %218, label %219

218:                                              ; preds = %206
  store float 1.600000e+01, float* %17, align 4
  br label %219

219:                                              ; preds = %218, %206
  %220 = load float*, float** %8, align 8
  %221 = load float*, float** %18, align 8
  %222 = call float @DotProduct(float* %220, float* %221)
  store float %222, float* %15, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 8
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %219
  %228 = load float, float* %15, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 5
  %231 = load float, float* %230, align 8
  %232 = fmul float %228, %231
  %233 = load float, float* @linearScale, align 4
  %234 = fmul float %232, %233
  %235 = load float, float* %17, align 4
  %236 = fsub float %234, %235
  store float %236, float* %16, align 4
  %237 = load float, float* %16, align 4
  %238 = fcmp olt float %237, 0.000000e+00
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  store float 0.000000e+00, float* %16, align 4
  br label %240

240:                                              ; preds = %239, %227
  br label %251

241:                                              ; preds = %219
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 5
  %244 = load float, float* %243, align 8
  %245 = load float, float* %17, align 4
  %246 = load float, float* %17, align 4
  %247 = fmul float %245, %246
  %248 = fdiv float %244, %247
  %249 = load float, float* %15, align 4
  %250 = fmul float %248, %249
  store float %250, float* %16, align 4
  br label %251

251:                                              ; preds = %241, %240
  br label %404

252:                                              ; preds = %200
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @emit_spotlight, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %334

258:                                              ; preds = %252
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load float*, float** %260, align 8
  %262 = load float*, float** %7, align 8
  %263 = load float*, float** %18, align 8
  %264 = call i32 @VectorSubtract(float* %261, float* %262, float* %263)
  %265 = load float*, float** %18, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load float*, float** %267, align 8
  %269 = call float @DotProduct(float* %265, float* %268)
  %270 = fneg float %269
  store float %270, float* %22, align 4
  %271 = load float, float* %22, align 4
  %272 = fcmp olt float %271, 0.000000e+00
  br i1 %272, label %273, label %274

273:                                              ; preds = %258
  br label %496

274:                                              ; preds = %258
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load float*, float** %276, align 8
  %278 = load float, float* %22, align 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 2
  %281 = load float*, float** %280, align 8
  %282 = load float*, float** %23, align 8
  %283 = call i32 @VectorMA(float* %277, float %278, float* %281, float* %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 6
  %286 = load float, float* %285, align 4
  %287 = load float, float* %22, align 4
  %288 = fmul float %286, %287
  store float %288, float* %24, align 4
  %289 = load float*, float** %7, align 8
  %290 = load float*, float** %23, align 8
  %291 = load float*, float** %26, align 8
  %292 = call i32 @VectorSubtract(float* %289, float* %290, float* %291)
  %293 = load float*, float** %26, align 8
  %294 = call float @VectorLength(float* %293)
  store float %294, float* %25, align 4
  %295 = load float, float* %25, align 4
  %296 = load float, float* %24, align 4
  %297 = fcmp oge float %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %274
  br label %496

299:                                              ; preds = %274
  %300 = load float, float* %25, align 4
  %301 = load float, float* %24, align 4
  %302 = fsub float %301, 3.200000e+01
  %303 = fcmp ole float %300, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  store float 1.000000e+00, float* %27, align 4
  br label %312

305:                                              ; preds = %299
  %306 = load float, float* %24, align 4
  %307 = load float, float* %25, align 4
  %308 = fsub float %306, %307
  %309 = fpext float %308 to double
  %310 = fdiv double %309, 3.200000e+01
  %311 = fptrunc double %310 to float
  store float %311, float* %27, align 4
  br label %312

312:                                              ; preds = %305, %304
  %313 = load float*, float** %18, align 8
  %314 = load float*, float** %18, align 8
  %315 = call float @VectorNormalize(float* %313, float* %314)
  store float %315, float* %17, align 4
  %316 = load float, float* %17, align 4
  %317 = fcmp olt float %316, 1.600000e+01
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  store float 1.600000e+01, float* %17, align 4
  br label %319

319:                                              ; preds = %318, %312
  %320 = load float*, float** %8, align 8
  %321 = load float*, float** %18, align 8
  %322 = call float @DotProduct(float* %320, float* %321)
  store float %322, float* %15, align 4
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 5
  %325 = load float, float* %324, align 8
  %326 = load float, float* %17, align 4
  %327 = load float, float* %17, align 4
  %328 = fmul float %326, %327
  %329 = fdiv float %325, %328
  %330 = load float, float* %15, align 4
  %331 = fmul float %329, %330
  %332 = load float, float* %27, align 4
  %333 = fmul float %331, %332
  store float %333, float* %16, align 4
  br label %403

334:                                              ; preds = %252
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @emit_area, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %402

340:                                              ; preds = %334
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load float*, float** %342, align 8
  %344 = load float*, float** %7, align 8
  %345 = load float*, float** %18, align 8
  %346 = call i32 @VectorSubtract(float* %343, float* %344, float* %345)
  %347 = load float*, float** %18, align 8
  %348 = load float*, float** %18, align 8
  %349 = call float @VectorNormalize(float* %347, float* %348)
  store float %349, float* %17, align 4
  %350 = load float, float* %17, align 4
  %351 = fcmp olt float %350, 1.600000e+01
  br i1 %351, label %352, label %353

352:                                              ; preds = %340
  store float 1.600000e+01, float* %17, align 4
  br label %353

353:                                              ; preds = %352, %340
  %354 = load float*, float** %8, align 8
  %355 = load float*, float** %18, align 8
  %356 = call float @DotProduct(float* %354, float* %355)
  store float %356, float* %15, align 4
  %357 = load float, float* %15, align 4
  %358 = fcmp ole float %357, 0.000000e+00
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  br label %496

360:                                              ; preds = %353
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 2
  %363 = load float*, float** %362, align 8
  %364 = load float*, float** %18, align 8
  %365 = call float @DotProduct(float* %363, float* %364)
  %366 = fneg float %365
  %367 = load float, float* %15, align 4
  %368 = fmul float %367, %366
  store float %368, float* %15, align 4
  %369 = load float, float* %15, align 4
  %370 = fcmp ole float %369, 0.000000e+00
  br i1 %370, label %371, label %372

371:                                              ; preds = %360
  br label %496

372:                                              ; preds = %360
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %391

377:                                              ; preds = %372
  %378 = load float, float* %15, align 4
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 5
  %381 = load float, float* %380, align 8
  %382 = fmul float %378, %381
  %383 = load float, float* @linearScale, align 4
  %384 = fmul float %382, %383
  %385 = load float, float* %17, align 4
  %386 = fsub float %384, %385
  store float %386, float* %16, align 4
  %387 = load float, float* %16, align 4
  %388 = fcmp olt float %387, 0.000000e+00
  br i1 %388, label %389, label %390

389:                                              ; preds = %377
  store float 0.000000e+00, float* %16, align 4
  br label %390

390:                                              ; preds = %389, %377
  br label %401

391:                                              ; preds = %372
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 5
  %394 = load float, float* %393, align 8
  %395 = load float, float* %17, align 4
  %396 = load float, float* %17, align 4
  %397 = fmul float %395, %396
  %398 = fdiv float %394, %397
  %399 = load float, float* %15, align 4
  %400 = fmul float %398, %399
  store float %400, float* %16, align 4
  br label %401

401:                                              ; preds = %391, %390
  br label %402

402:                                              ; preds = %401, %334
  br label %403

403:                                              ; preds = %402, %319
  br label %404

404:                                              ; preds = %403, %251
  %405 = load float, float* %16, align 4
  %406 = fpext float %405 to double
  %407 = fcmp ole double %406, 1.000000e+00
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  br label %496

409:                                              ; preds = %404
  %410 = load i32, i32* @notrace, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %428, label %412

412:                                              ; preds = %409
  %413 = load i64, i64* %10, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %412
  %416 = load float*, float** %7, align 8
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load float*, float** %418, align 8
  %420 = load i32, i32* @qfalse, align 4
  %421 = load i32*, i32** %12, align 8
  %422 = call i32 @TraceLine(float* %416, float* %419, %struct.TYPE_5__* %14, i32 %420, i32* %421)
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %415
  br label %496

427:                                              ; preds = %415
  br label %438

428:                                              ; preds = %412, %409
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %430 = load double*, double** %429, align 8
  %431 = getelementptr inbounds double, double* %430, i64 0
  store double 1.000000e+00, double* %431, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %433 = load double*, double** %432, align 8
  %434 = getelementptr inbounds double, double* %433, i64 1
  store double 1.000000e+00, double* %434, align 8
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %436 = load double*, double** %435, align 8
  %437 = getelementptr inbounds double, double* %436, i64 2
  store double 1.000000e+00, double* %437, align 8
  br label %438

438:                                              ; preds = %428, %427
  %439 = load float, float* %16, align 4
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 7
  %442 = load float*, float** %441, align 8
  %443 = getelementptr inbounds float, float* %442, i64 0
  %444 = load float, float* %443, align 4
  %445 = fmul float %439, %444
  %446 = fpext float %445 to double
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %448 = load double*, double** %447, align 8
  %449 = getelementptr inbounds double, double* %448, i64 0
  %450 = load double, double* %449, align 8
  %451 = fmul double %446, %450
  %452 = load float*, float** %9, align 8
  %453 = getelementptr inbounds float, float* %452, i64 0
  %454 = load float, float* %453, align 4
  %455 = fpext float %454 to double
  %456 = fadd double %455, %451
  %457 = fptrunc double %456 to float
  store float %457, float* %453, align 4
  %458 = load float, float* %16, align 4
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 7
  %461 = load float*, float** %460, align 8
  %462 = getelementptr inbounds float, float* %461, i64 1
  %463 = load float, float* %462, align 4
  %464 = fmul float %458, %463
  %465 = fpext float %464 to double
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %467 = load double*, double** %466, align 8
  %468 = getelementptr inbounds double, double* %467, i64 1
  %469 = load double, double* %468, align 8
  %470 = fmul double %465, %469
  %471 = load float*, float** %9, align 8
  %472 = getelementptr inbounds float, float* %471, i64 1
  %473 = load float, float* %472, align 4
  %474 = fpext float %473 to double
  %475 = fadd double %474, %470
  %476 = fptrunc double %475 to float
  store float %476, float* %472, align 4
  %477 = load float, float* %16, align 4
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 7
  %480 = load float*, float** %479, align 8
  %481 = getelementptr inbounds float, float* %480, i64 2
  %482 = load float, float* %481, align 4
  %483 = fmul float %477, %482
  %484 = fpext float %483 to double
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %486 = load double*, double** %485, align 8
  %487 = getelementptr inbounds double, double* %486, i64 2
  %488 = load double, double* %487, align 8
  %489 = fmul double %484, %488
  %490 = load float*, float** %9, align 8
  %491 = getelementptr inbounds float, float* %490, i64 2
  %492 = load float, float* %491, align 4
  %493 = fpext float %492 to double
  %494 = fadd double %493, %489
  %495 = fptrunc double %494 to float
  store float %495, float* %491, align 4
  br label %496

496:                                              ; preds = %438, %426, %408, %371, %359, %298, %273, %142, %140, %92, %73, %46
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 11
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %498, align 8
  store %struct.TYPE_6__* %499, %struct.TYPE_6__** %13, align 8
  br label %32

500:                                              ; preds = %32
  %501 = load i64, i64* %10, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %500
  %504 = load i64, i64* %11, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %512

506:                                              ; preds = %503, %500
  %507 = load float*, float** %7, align 8
  %508 = load float*, float** %8, align 8
  %509 = load float*, float** %9, align 8
  %510 = load i32*, i32** %12, align 8
  %511 = call i32 @SunToPlane(float* %507, float* %508, float* %509, i32* %510)
  br label %512

512:                                              ; preds = %506, %503
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @TraceLine(float*, float*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local float @PointToPolygonFormFactor(float*, float*, i32) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorNormalize(float*, float*) #1

declare dso_local float @VectorLength(float*) #1

declare dso_local i32 @SunToPlane(float*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
