; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_MergeWindings.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_MergeWindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"MergeWindings: degenerate edge on winding %f %f %f\0A\00", align 1
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Warning: MergeWindings: front to back found twice\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @MergeWindings(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %22 = add nsw i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %27 = add nsw i32 %26, 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32*, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @RemoveEqualPoints(%struct.TYPE_8__* %30, double 2.000000e-01)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32** %29, i32** %37, i32 %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %321, %3
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %324

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @VectorCopy(i32* %58, i32* %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %161, %51
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %17, align 4
  %69 = srem i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %29, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %17, align 4
  %75 = srem i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %29, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @VectorSubtract(i32* %72, i32* %78, i32* %79)
  %81 = load i32*, i32** %18, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i32 @CrossProduct(i32* %81, i32* %82, i32* %83)
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @VectorNormalize(i32* %85)
  %87 = load i32*, i32** %19, align 8
  %88 = call double @VectorLength(i32* %87)
  %89 = fcmp olt double %88, 9.000000e-01
  br i1 %89, label %90, label %134

90:                                               ; preds = %65
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %116, %90
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %29, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %29, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @VectorCopy(i32* %102, i32* %106)
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %25, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %25, i64 %114
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %92

119:                                              ; preds = %92
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %10, align 4
  %124 = load i32*, i32** %19, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %19, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129, i32 %132)
  br label %161

134:                                              ; preds = %65
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %17, align 4
  %137 = srem i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %29, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = call float @DotProduct(i32* %140, i32* %141)
  store float %142, float* %8, align 4
  %143 = load i32*, i32** %20, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = call float @DotProduct(i32* %143, i32* %144)
  %146 = load float, float* %8, align 4
  %147 = fsub float %145, %146
  %148 = fpext float %147 to double
  %149 = fcmp olt double %148, -1.000000e-01
  br i1 %149, label %150, label %155

150:                                              ; preds = %134
  %151 = load i32, i32* @SIDE_BACK, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %25, i64 %153
  store i32 %151, i32* %154, align 4
  br label %160

155:                                              ; preds = %134
  %156 = load i32, i32* @SIDE_FRONT, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %25, i64 %158
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %61

164:                                              ; preds = %61
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %224, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %225

169:                                              ; preds = %165
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %25, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @SIDE_BACK, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %221

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %17, align 4
  %180 = srem i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %25, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @SIDE_BACK, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %176
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %17, align 4
  %190 = srem i32 %188, %189
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %215, %186
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp slt i32 %192, %194
  br i1 %195, label %196, label %218

196:                                              ; preds = %191
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %29, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %29, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @VectorCopy(i32* %201, i32* %205)
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %25, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %25, i64 %213
  store i32 %211, i32* %214, align 4
  br label %215

215:                                              ; preds = %196
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %191

218:                                              ; preds = %191
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %17, align 4
  br label %224

221:                                              ; preds = %176, %169
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %165

225:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %226

226:                                              ; preds = %254, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %257

230:                                              ; preds = %226
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %25, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SIDE_FRONT, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %230
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  %240 = load i32, i32* %17, align 4
  %241 = srem i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %25, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @SIDE_BACK, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %237
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  store i32 1, i32* %12, align 4
  br label %253

253:                                              ; preds = %252, %237, %230
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %226

257:                                              ; preds = %226
  store i32 0, i32* %10, align 4
  br label %258

258:                                              ; preds = %317, %257
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %320

262:                                              ; preds = %258
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %25, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @SIDE_FRONT, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %316

269:                                              ; preds = %262
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* %17, align 4
  %273 = srem i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %25, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @SIDE_BACK, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %316

279:                                              ; preds = %269
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  %282 = load i32, i32* %17, align 4
  %283 = srem i32 %281, %282
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* %17, align 4
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  br label %286

286:                                              ; preds = %301, %279
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %13, align 4
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %290, label %304

290:                                              ; preds = %286
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %29, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %29, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @VectorCopy(i32* %294, i32* %299)
  br label %301

301:                                              ; preds = %290
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %11, align 4
  br label %286

304:                                              ; preds = %286
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %17, align 4
  %307 = load i32*, i32** %20, align 8
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, 1
  %310 = load i32, i32* %17, align 4
  %311 = srem i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %29, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = call i32 @VectorCopy(i32* %307, i32* %314)
  br label %320

316:                                              ; preds = %269, %262
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  br label %258

320:                                              ; preds = %304, %258
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %9, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %9, align 4
  br label %45

324:                                              ; preds = %45
  %325 = load i32, i32* %17, align 4
  %326 = call %struct.TYPE_8__* @AllocWinding(i32 %325)
  store %struct.TYPE_8__* %326, %struct.TYPE_8__** %7, align 8
  %327 = load i32, i32* %17, align 4
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = load i32**, i32*** %331, align 8
  %333 = load i32, i32* %17, align 4
  %334 = sext i32 %333 to i64
  %335 = mul i64 %334, 8
  %336 = trunc i64 %335 to i32
  %337 = call i32 @memcpy(i32** %332, i32** %29, i32 %336)
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %339 = call i32 @RemoveColinearPoints(%struct.TYPE_8__* %338)
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %341 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %341)
  ret %struct.TYPE_8__* %340
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RemoveEqualPoints(%struct.TYPE_8__*, double) #2

declare dso_local i32 @memcpy(i32**, i32**, i32) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #2

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #2

declare dso_local i32 @VectorNormalize(i32*) #2

declare dso_local double @VectorLength(i32*) #2

declare dso_local i32 @Log_Print(i8*, ...) #2

declare dso_local float @DotProduct(i32*, i32*) #2

declare dso_local %struct.TYPE_8__* @AllocWinding(i32) #2

declare dso_local i32 @RemoveColinearPoints(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
