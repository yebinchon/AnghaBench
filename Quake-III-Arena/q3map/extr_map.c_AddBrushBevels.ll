; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_AddBrushBevels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_AddBrushBevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float*, float*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32* }

@buildBrush = common dso_local global %struct.TYPE_10__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_BUILD_SIDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MAX_BUILD_SIDES\00", align 1
@qtrue = common dso_local global i8* null, align 8
@c_boxbevels = common dso_local global i32 0, align 4
@c_edgebevels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddBrushBevels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %165, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %168

21:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %22

22:                                               ; preds = %159, %21
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %164

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  br label %29

29:                                               ; preds = %51, %25
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %56

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 1
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  br label %29

56:                                               ; preds = %49, %29
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %123

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_BUILD_SIDES, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = call i32 @memset(%struct.TYPE_8__* %71, i32 0, i32 32)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @VectorClear(i32* %77)
  %79 = load i32, i32* %2, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %94

86:                                               ; preds = %70
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  store float %93, float* %8, align 4
  br label %103

94:                                               ; preds = %70
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fneg float %101
  store float %102, float* %8, align 4
  br label %103

103:                                              ; preds = %94, %86
  %104 = load i32*, i32** %7, align 8
  %105 = load float, float* %8, align 4
  %106 = call i8* @FindFloatPlane(i32* %104, float %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** @qtrue, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* @c_boxbevels, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @c_boxbevels, align 4
  br label %123

123:                                              ; preds = %103, %56
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %123
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = bitcast %struct.TYPE_8__* %5 to i8*
  %135 = bitcast %struct.TYPE_8__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 32, i1 false)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = bitcast %struct.TYPE_8__* %141 to i8*
  %149 = bitcast %struct.TYPE_8__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 32, i1 false)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = bitcast %struct.TYPE_8__* %155 to i8*
  %157 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 32, i1 false)
  br label %158

158:                                              ; preds = %127, %123
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %22

164:                                              ; preds = %22
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %1, align 4
  br label %18

168:                                              ; preds = %18
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 6
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %430

174:                                              ; preds = %168
  store i32 6, i32* %3, align 4
  br label %175

175:                                              ; preds = %426, %174
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %429

181:                                              ; preds = %175
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  store %struct.TYPE_8__* %187, %struct.TYPE_8__** %6, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %13, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %192 = icmp ne %struct.TYPE_7__* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %181
  br label %426

194:                                              ; preds = %181
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %422, %194
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %425

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = srem i32 %203, %206
  store i32 %207, i32* %10, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %16, align 8
  %223 = call i32 @VectorSubtract(i32 %214, i32 %221, i32* %222)
  %224 = load i32*, i32** %16, align 8
  %225 = load i32*, i32** %16, align 8
  %226 = call double @VectorNormalize(i32* %224, i32* %225)
  %227 = fcmp olt double %226, 5.000000e-01
  br i1 %227, label %228, label %229

228:                                              ; preds = %201
  br label %422

229:                                              ; preds = %201
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @SnapVector(i32* %230)
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %251, %229
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %254

235:                                              ; preds = %232
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %249, label %242

242:                                              ; preds = %235
  %243 = load i32*, i32** %16, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %250

249:                                              ; preds = %242, %235
  br label %254

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %232

254:                                              ; preds = %249, %232
  %255 = load i32, i32* %10, align 4
  %256 = icmp ne i32 %255, 3
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %422

258:                                              ; preds = %254
  store i32 0, i32* %1, align 4
  br label %259

259:                                              ; preds = %418, %258
  %260 = load i32, i32* %1, align 4
  %261 = icmp slt i32 %260, 3
  br i1 %261, label %262, label %421

262:                                              ; preds = %259
  store i32 -1, i32* %2, align 4
  br label %263

263:                                              ; preds = %414, %262
  %264 = load i32, i32* %2, align 4
  %265 = icmp sle i32 %264, 1
  br i1 %265, label %266, label %417

266:                                              ; preds = %263
  %267 = load i32*, i32** %17, align 8
  %268 = call i32 @VectorClear(i32* %267)
  %269 = load i32, i32* %2, align 4
  %270 = load i32*, i32** %17, align 8
  %271 = load i32, i32* %1, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %269, i32* %273, align 4
  %274 = load i32*, i32** %16, align 8
  %275 = load i32*, i32** %17, align 8
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @CrossProduct(i32* %274, i32* %275, i32* %276)
  %278 = load i32*, i32** %7, align 8
  %279 = load i32*, i32** %7, align 8
  %280 = call double @VectorNormalize(i32* %278, i32* %279)
  %281 = fcmp olt double %280, 5.000000e-01
  br i1 %281, label %282, label %283

282:                                              ; preds = %266
  br label %414

283:                                              ; preds = %266
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %7, align 8
  %292 = call float @DotProduct(i32 %290, i32* %291)
  store float %292, float* %8, align 4
  store i32 0, i32* %10, align 4
  br label %293

293:                                              ; preds = %362, %283
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %365

299:                                              ; preds = %293
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i64 %308
  %310 = load i32*, i32** %7, align 8
  %311 = load float, float* %8, align 4
  %312 = call i64 @PlaneEqual(%struct.TYPE_9__* %309, i32* %310, float %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %299
  br label %365

315:                                              ; preds = %299
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 3
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %317, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  store %struct.TYPE_7__* %323, %struct.TYPE_7__** %14, align 8
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %325 = icmp ne %struct.TYPE_7__* %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %315
  br label %362

327:                                              ; preds = %315
  store i32 0, i32* %11, align 4
  br label %328

328:                                              ; preds = %351, %327
  %329 = load i32, i32* %11, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %354

334:                                              ; preds = %328
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %7, align 8
  %343 = call float @DotProduct(i32 %341, i32* %342)
  %344 = load float, float* %8, align 4
  %345 = fsub float %343, %344
  store float %345, float* %12, align 4
  %346 = load float, float* %12, align 4
  %347 = fpext float %346 to double
  %348 = fcmp ogt double %347, 1.000000e-01
  br i1 %348, label %349, label %350

349:                                              ; preds = %334
  br label %354

350:                                              ; preds = %334
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %11, align 4
  br label %328

354:                                              ; preds = %349, %328
  %355 = load i32, i32* %11, align 4
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %355, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  br label %365

361:                                              ; preds = %354
  br label %362

362:                                              ; preds = %361, %326
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %10, align 4
  br label %293

365:                                              ; preds = %360, %314, %293
  %366 = load i32, i32* %10, align 4
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %366, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  br label %414

372:                                              ; preds = %365
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @MAX_BUILD_SIDES, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %372
  %379 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %380

380:                                              ; preds = %378, %372
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 3
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i64 %387
  store %struct.TYPE_8__* %388, %struct.TYPE_8__** %15, align 8
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %390, align 8
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %394 = call i32 @memset(%struct.TYPE_8__* %393, i32 0, i32 32)
  %395 = load i32*, i32** %7, align 8
  %396 = load float, float* %8, align 4
  %397 = call i8* @FindFloatPlane(i32* %395, float %396)
  %398 = ptrtoint i8* %397 to i64
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  store i64 %398, i64* %400, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 2
  store i32 %406, i32* %408, align 8
  %409 = load i8*, i8** @qtrue, align 8
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 1
  store i8* %409, i8** %411, align 8
  %412 = load i32, i32* @c_edgebevels, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* @c_edgebevels, align 4
  br label %414

414:                                              ; preds = %380, %371, %282
  %415 = load i32, i32* %2, align 4
  %416 = add nsw i32 %415, 2
  store i32 %416, i32* %2, align 4
  br label %263

417:                                              ; preds = %263
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %1, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %1, align 4
  br label %259

421:                                              ; preds = %259
  br label %422

422:                                              ; preds = %421, %257, %228
  %423 = load i32, i32* %9, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %9, align 4
  br label %195

425:                                              ; preds = %195
  br label %426

426:                                              ; preds = %425, %193
  %427 = load i32, i32* %3, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %3, align 4
  br label %175

429:                                              ; preds = %175
  br label %430

430:                                              ; preds = %173, %429
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i8* @FindFloatPlane(i32*, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local double @VectorNormalize(i32*, i32*) #1

declare dso_local i32 @SnapVector(i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #1

declare dso_local float @DotProduct(i32, i32*) #1

declare dso_local i64 @PlaneEqual(%struct.TYPE_9__*, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
