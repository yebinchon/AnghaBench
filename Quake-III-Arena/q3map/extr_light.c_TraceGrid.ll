; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_TraceGrid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_TraceGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64*, i64* }

@MAX_CONTRIBUTIONS = common dso_local global i32 0, align 4
@gridBounds = common dso_local global i32* null, align 8
@gridMins = common dso_local global i64* null, align 8
@gridSize = common dso_local global i32* null, align 8
@gridData = common dso_local global i64* null, align 8
@lights = common dso_local global %struct.TYPE_5__* null, align 8
@sunDirection = common dso_local global i64* null, align 8
@ambientColor = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TraceGrid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %25 = load i32, i32* @MAX_CONTRIBUTIONS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca %struct.TYPE_6__, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** @gridBounds, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @gridBounds, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %30, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** @gridBounds, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @gridBounds, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = mul nsw i32 %39, %46
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** @gridBounds, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** @gridBounds, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  %63 = load i64*, i64** @gridMins, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** @gridSize, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = load i64*, i64** %6, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** @gridMins, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** @gridSize, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %77, %83
  %85 = load i64*, i64** %6, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 %84, i64* %86, align 8
  %87 = load i64*, i64** @gridMins, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** @gridSize, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %89, %95
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  store i64 %96, i64* %98, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = call i64 @PointInSolid(i64* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %207

102:                                              ; preds = %1
  %103 = load i64*, i64** %6, align 8
  %104 = load i64*, i64** %18, align 8
  %105 = call i32 @VectorCopy(i64* %103, i64* %104)
  store i32 9, i32* %19, align 4
  br label %106

106:                                              ; preds = %184, %102
  %107 = load i32, i32* %19, align 4
  %108 = icmp sle i32 %107, 18
  br i1 %108, label %109, label %187

109:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %176, %109
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %179

113:                                              ; preds = %110
  %114 = load i64*, i64** %18, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = call i32 @VectorCopy(i64* %114, i64* %115)
  %117 = load i32, i32* %15, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %6, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  br label %134

127:                                              ; preds = %113
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64*, i64** %6, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %127, %120
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %6, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %152

145:                                              ; preds = %134
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64*, i64** %6, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145, %138
  %153 = load i32, i32* %15, align 4
  %154 = and i32 %153, 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %6, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 2
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %158
  store i64 %162, i64* %160, align 8
  br label %170

163:                                              ; preds = %152
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %6, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 2
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, %165
  store i64 %169, i64* %167, align 8
  br label %170

170:                                              ; preds = %163, %156
  %171 = load i64*, i64** %6, align 8
  %172 = call i64 @PointInSolid(i64* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  br label %179

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %110

179:                                              ; preds = %174, %110
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 8
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %187

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 9
  store i32 %186, i32* %19, align 4
  br label %106

187:                                              ; preds = %182, %106
  %188 = load i32, i32* %19, align 4
  %189 = icmp sgt i32 %188, 18
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %202, %190
  %192 = load i32, i32* %15, align 4
  %193 = icmp slt i32 %192, 8
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load i64*, i64** @gridData, align 8
  %196 = load i32, i32* %2, align 4
  %197 = mul nsw i32 %196, 8
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %195, i64 %200
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %194
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %191

205:                                              ; preds = %191
  store i32 1, i32* %20, align 4
  br label %380

206:                                              ; preds = %187
  br label %207

207:                                              ; preds = %206, %1
  %208 = load i64*, i64** %11, align 8
  %209 = call i32 @VectorClear(i64* %208)
  store i32 0, i32* %14, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lights, align 8
  store %struct.TYPE_5__* %210, %struct.TYPE_5__** %7, align 8
  br label %211

211:                                              ; preds = %261, %207
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %213 = icmp ne %struct.TYPE_5__* %212, null
  br i1 %213, label %214, label %265

214:                                              ; preds = %211
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %216 = load i64*, i64** %6, align 8
  %217 = load i64*, i64** %21, align 8
  %218 = call i32 @LightContributionToPoint(%struct.TYPE_5__* %215, i64* %216, i64* %217, i32* %16)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  br label %261

221:                                              ; preds = %214
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i64*, i64** %6, align 8
  %226 = load i64*, i64** %22, align 8
  %227 = call i32 @VectorSubtract(i32 %224, i64* %225, i64* %226)
  %228 = load i64*, i64** %22, align 8
  %229 = load i64*, i64** %22, align 8
  %230 = call i32 @VectorNormalize(i64* %228, i64* %229)
  %231 = load i64*, i64** %21, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 16
  %237 = call i32 @VectorCopy(i64* %231, i64* %236)
  %238 = load i64*, i64** %22, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = call i32 @VectorCopy(i64* %238, i64* %243)
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  %247 = load i64*, i64** %21, align 8
  %248 = call float @VectorLength(i64* %247)
  store float %248, float* %23, align 4
  %249 = load i64*, i64** %11, align 8
  %250 = load float, float* %23, align 4
  %251 = fpext float %250 to double
  %252 = load i64*, i64** %22, align 8
  %253 = load i64*, i64** %11, align 8
  %254 = call i32 @VectorMA(i64* %249, double %251, i64* %252, i64* %253)
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @MAX_CONTRIBUTIONS, align 4
  %257 = sub nsw i32 %256, 1
  %258 = icmp eq i32 %255, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %221
  br label %265

260:                                              ; preds = %221
  br label %261

261:                                              ; preds = %260, %220
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  store %struct.TYPE_5__* %264, %struct.TYPE_5__** %7, align 8
  br label %211

265:                                              ; preds = %259, %211
  %266 = load i64*, i64** %6, align 8
  %267 = load i64*, i64** %8, align 8
  %268 = call i32 @SunToPoint(i64* %266, i32* %16, i64* %267)
  %269 = load i64*, i64** %8, align 8
  %270 = call float @VectorLength(i64* %269)
  store float %270, float* %17, align 4
  %271 = load float, float* %17, align 4
  %272 = fcmp ogt float %271, 0.000000e+00
  br i1 %272, label %273, label %296

273:                                              ; preds = %265
  %274 = load i64*, i64** %8, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 16
  %280 = call i32 @VectorCopy(i64* %274, i64* %279)
  %281 = load i64*, i64** @sunDirection, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i64*, i64** %285, align 8
  %287 = call i32 @VectorCopy(i64* %281, i64* %286)
  %288 = load i64*, i64** %11, align 8
  %289 = load float, float* %17, align 4
  %290 = fpext float %289 to double
  %291 = load i64*, i64** @sunDirection, align 8
  %292 = load i64*, i64** %11, align 8
  %293 = call i32 @VectorMA(i64* %288, double %290, i64* %291, i64* %292)
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %296

296:                                              ; preds = %273, %265
  %297 = load i64*, i64** %11, align 8
  %298 = load i64*, i64** %11, align 8
  %299 = call i32 @VectorNormalize(i64* %297, i64* %298)
  %300 = load i64*, i64** @ambientColor, align 8
  %301 = load i64*, i64** %8, align 8
  %302 = call i32 @VectorCopy(i64* %300, i64* %301)
  %303 = load i64*, i64** %10, align 8
  %304 = call i32 @VectorClear(i64* %303)
  store i32 0, i32* %15, align 4
  br label %305

305:                                              ; preds = %346, %296
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %349

309:                                              ; preds = %305
  %310 = load i32, i32* %15, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load i64*, i64** %313, align 8
  %315 = load i64*, i64** %11, align 8
  %316 = call float @DotProduct(i64* %314, i64* %315)
  store float %316, float* %24, align 4
  %317 = load float, float* %24, align 4
  %318 = fcmp olt float %317, 0.000000e+00
  br i1 %318, label %319, label %320

319:                                              ; preds = %309
  store float 0.000000e+00, float* %24, align 4
  br label %320

320:                                              ; preds = %319, %309
  %321 = load i64*, i64** %10, align 8
  %322 = load float, float* %24, align 4
  %323 = fpext float %322 to double
  %324 = load i32, i32* %15, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i64*, i64** %327, align 16
  %329 = load i64*, i64** %10, align 8
  %330 = call i32 @VectorMA(i64* %321, double %323, i64* %328, i64* %329)
  %331 = load float, float* %24, align 4
  %332 = fpext float %331 to double
  %333 = fsub double 1.000000e+00, %332
  %334 = fmul double 2.500000e-01, %333
  %335 = fptrunc double %334 to float
  store float %335, float* %24, align 4
  %336 = load i64*, i64** %8, align 8
  %337 = load float, float* %24, align 4
  %338 = fpext float %337 to double
  %339 = load i32, i32* %15, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i64*, i64** %342, align 16
  %344 = load i64*, i64** %8, align 8
  %345 = call i32 @VectorMA(i64* %336, double %338, i64* %343, i64* %344)
  br label %346

346:                                              ; preds = %320
  %347 = load i32, i32* %15, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %15, align 4
  br label %305

349:                                              ; preds = %305
  %350 = load i64*, i64** %8, align 8
  %351 = load i64*, i64** %10, align 8
  %352 = load i64*, i64** %8, align 8
  %353 = call i32 @VectorMA(i64* %350, double 2.500000e-01, i64* %351, i64* %352)
  %354 = load i64*, i64** %8, align 8
  %355 = load i64*, i64** @gridData, align 8
  %356 = load i32, i32* %2, align 4
  %357 = mul nsw i32 %356, 8
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %355, i64 %358
  %360 = call i32 @ColorToBytes(i64* %354, i64* %359)
  %361 = load i64*, i64** %10, align 8
  %362 = load i64*, i64** @gridData, align 8
  %363 = load i32, i32* %2, align 4
  %364 = mul nsw i32 %363, 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %362, i64 %365
  %367 = getelementptr inbounds i64, i64* %366, i64 3
  %368 = call i32 @ColorToBytes(i64* %361, i64* %367)
  %369 = load i64*, i64** %11, align 8
  %370 = load i64*, i64** %11, align 8
  %371 = call i32 @VectorNormalize(i64* %369, i64* %370)
  %372 = load i64*, i64** %11, align 8
  %373 = load i64*, i64** @gridData, align 8
  %374 = load i32, i32* %2, align 4
  %375 = mul nsw i32 %374, 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i64, i64* %373, i64 %376
  %378 = getelementptr inbounds i64, i64* %377, i64 6
  %379 = call i32 @NormalToLatLong(i64* %372, i64* %378)
  store i32 0, i32* %20, align 4
  br label %380

380:                                              ; preds = %349, %205
  %381 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %381)
  %382 = load i32, i32* %20, align 4
  switch i32 %382, label %384 [
    i32 0, label %383
    i32 1, label %383
  ]

383:                                              ; preds = %380, %380
  ret void

384:                                              ; preds = %380
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PointInSolid(i64*) #2

declare dso_local i32 @VectorCopy(i64*, i64*) #2

declare dso_local i32 @VectorClear(i64*) #2

declare dso_local i32 @LightContributionToPoint(%struct.TYPE_5__*, i64*, i64*, i32*) #2

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #2

declare dso_local i32 @VectorNormalize(i64*, i64*) #2

declare dso_local float @VectorLength(i64*) #2

declare dso_local i32 @VectorMA(i64*, double, i64*, i64*) #2

declare dso_local i32 @SunToPoint(i64*, i32*, i64*) #2

declare dso_local float @DotProduct(i64*, i64*) #2

declare dso_local i32 @ColorToBytes(i64*, i64*) #2

declare dso_local i32 @NormalToLatLong(i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
