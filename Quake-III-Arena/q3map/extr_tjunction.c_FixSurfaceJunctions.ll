; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_FixSurfaceJunctions.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_FixSurfaceJunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { float, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float*, i32, i32, i64* }

@MAX_SURFACE_VERTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAX_SURFACE_VERTS\00", align 1
@edgeLines = common dso_local global %struct.TYPE_11__* null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@c_addedVerts = common dso_local global i32 0, align 4
@c_totalVerts = common dso_local global i32 0, align 4
@c_natural = common dso_local global i32 0, align 4
@c_cant = common dso_local global i32 0, align 4
@c_rotate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FixSurfaceJunctions(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %29 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.TYPE_12__, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %304, %1
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %307

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %25, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %31, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = bitcast %struct.TYPE_12__* %60 to i8*
  %68 = bitcast %struct.TYPE_12__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %28, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %79
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %14, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = srem i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %90
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %15, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %57
  br label %304

106:                                              ; preds = %57
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @edgeLines, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %6, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @VectorSubtract(i32 %113, i32 %116, i32 %117)
  %119 = load i32, i32* %20, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call float @DotProduct(i32 %119, i32 %122)
  store float %123, float* %17, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @VectorSubtract(i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* %20, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call float @DotProduct(i32 %132, i32 %135)
  store float %136, float* %18, align 4
  %137 = load float, float* %17, align 4
  %138 = load float, float* %18, align 4
  %139 = fcmp olt float %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %106
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %7, align 8
  br label %150

145:                                              ; preds = %106
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  store %struct.TYPE_10__* %149, %struct.TYPE_10__** %7, align 8
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %302, %150
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = icmp ne %struct.TYPE_10__* %152, %154
  br i1 %155, label %156, label %303

156:                                              ; preds = %151
  %157 = load float, float* %17, align 4
  %158 = load float, float* %18, align 4
  %159 = fcmp olt float %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 8
  %164 = load float, float* %18, align 4
  %165 = load float, float* @ON_EPSILON, align 4
  %166 = fsub float %164, %165
  %167 = fcmp ogt float %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %303

169:                                              ; preds = %160
  br label %180

170:                                              ; preds = %156
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load float, float* %172, align 8
  %174 = load float, float* %18, align 4
  %175 = load float, float* @ON_EPSILON, align 4
  %176 = fadd float %174, %175
  %177 = fcmp olt float %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %303

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %169
  %181 = load float, float* %17, align 4
  %182 = load float, float* %18, align 4
  %183 = fcmp olt float %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load float, float* %186, align 8
  %188 = load float, float* %17, align 4
  %189 = load float, float* @ON_EPSILON, align 4
  %190 = fadd float %188, %189
  %191 = fcmp ogt float %187, %190
  br i1 %191, label %204, label %192

192:                                              ; preds = %184, %180
  %193 = load float, float* %17, align 4
  %194 = load float, float* %18, align 4
  %195 = fcmp ogt float %193, %194
  br i1 %195, label %196, label %290

196:                                              ; preds = %192
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load float, float* %198, align 8
  %200 = load float, float* %17, align 4
  %201 = load float, float* @ON_EPSILON, align 4
  %202 = fsub float %200, %201
  %203 = fcmp olt float %199, %202
  br i1 %203, label %204, label %290

204:                                              ; preds = %196, %184
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %204
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @VectorCopy(i32 %213, i32 %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @VectorCopy(i32 %222, i32 %227)
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load float, float* %230, align 8
  %232 = load float, float* %17, align 4
  %233 = fsub float %231, %232
  %234 = load float, float* %18, align 4
  %235 = load float, float* %17, align 4
  %236 = fsub float %234, %235
  %237 = fdiv float %233, %236
  store float %237, float* %19, align 4
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %275, %210
  %239 = load i32, i32* %4, align 4
  %240 = icmp slt i32 %239, 2
  br i1 %240, label %241, label %278

241:                                              ; preds = %238
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load float*, float** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = load float, float* %19, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load float*, float** %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load float*, float** %258, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load float, float* %262, align 4
  %264 = fsub float %256, %263
  %265 = fmul float %249, %264
  %266 = fadd float %248, %265
  %267 = load i32, i32* %16, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load float*, float** %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  store float %266, float* %274, align 4
  br label %275

275:                                              ; preds = %241
  %276 = load i32, i32* %4, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %4, align 4
  br label %238

278:                                              ; preds = %238
  %279 = load i32, i32* %3, align 4
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %28, i64 %281
  store i32 %279, i32* %282, align 4
  %283 = load i32, i32* %16, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %25, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %278, %196, %192
  %291 = load float, float* %17, align 4
  %292 = load float, float* %18, align 4
  %293 = fcmp olt float %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  store %struct.TYPE_10__* %297, %struct.TYPE_10__** %7, align 8
  br label %302

298:                                              ; preds = %290
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  store %struct.TYPE_10__* %301, %struct.TYPE_10__** %7, align 8
  br label %302

302:                                              ; preds = %298, %294
  br label %151

303:                                              ; preds = %178, %168, %151
  br label %304

304:                                              ; preds = %303, %105
  %305 = load i32, i32* %3, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %3, align 4
  br label %38

307:                                              ; preds = %38
  %308 = load i32, i32* %16, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %308, %311
  %313 = load i32, i32* @c_addedVerts, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* @c_addedVerts, align 4
  %315 = load i32, i32* %16, align 4
  %316 = load i32, i32* @c_totalVerts, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* @c_totalVerts, align 4
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %360, %307
  %319 = load i32, i32* %3, align 4
  %320 = load i32, i32* %16, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %363

322:                                              ; preds = %318
  %323 = load i32, i32* %3, align 4
  %324 = add nsw i32 %323, 1
  %325 = load i32, i32* %16, align 4
  %326 = srem i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %28, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %28, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %329, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %322
  br label %360

336:                                              ; preds = %322
  %337 = load i32, i32* %3, align 4
  %338 = load i32, i32* %16, align 4
  %339 = add nsw i32 %337, %338
  %340 = sub nsw i32 %339, 1
  %341 = load i32, i32* %16, align 4
  %342 = srem i32 %340, %341
  store i32 %342, i32* %4, align 4
  %343 = load i32, i32* %3, align 4
  %344 = load i32, i32* %16, align 4
  %345 = add nsw i32 %343, %344
  %346 = sub nsw i32 %345, 2
  %347 = load i32, i32* %16, align 4
  %348 = srem i32 %346, %347
  store i32 %348, i32* %5, align 4
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %28, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %28, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %352, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %336
  br label %360

359:                                              ; preds = %336
  br label %363

360:                                              ; preds = %358, %335
  %361 = load i32, i32* %3, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %3, align 4
  br label %318

363:                                              ; preds = %359, %318
  %364 = load i32, i32* %3, align 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %388

366:                                              ; preds = %363
  %367 = load i32, i32* @c_natural, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* @c_natural, align 4
  %369 = load i32, i32* %16, align 4
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  %372 = load i32, i32* %16, align 4
  %373 = sext i32 %372 to i64
  %374 = mul i64 %373, 24
  %375 = trunc i64 %374 to i32
  %376 = call i8* @malloc(i32 %375)
  %377 = bitcast i8* %376 to %struct.TYPE_12__*
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  store %struct.TYPE_12__* %377, %struct.TYPE_12__** %379, align 8
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = mul i64 %384, 24
  %386 = trunc i64 %385 to i32
  %387 = call i32 @memcpy(%struct.TYPE_12__* %382, %struct.TYPE_12__* %34, i32 %386)
  store i32 1, i32* %21, align 4
  br label %438

388:                                              ; preds = %363
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* %16, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i32, i32* @c_cant, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* @c_cant, align 4
  br label %398

395:                                              ; preds = %388
  %396 = load i32, i32* @c_rotate, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* @c_rotate, align 4
  br label %398

398:                                              ; preds = %395, %392
  %399 = load i32, i32* %16, align 4
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = mul i64 %403, 24
  %405 = trunc i64 %404 to i32
  %406 = call i8* @malloc(i32 %405)
  %407 = bitcast i8* %406 to %struct.TYPE_12__*
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 1
  store %struct.TYPE_12__* %407, %struct.TYPE_12__** %409, align 8
  store i32 0, i32* %4, align 4
  br label %410

410:                                              ; preds = %434, %398
  %411 = load i32, i32* %4, align 4
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp slt i32 %411, %414
  br i1 %415, label %416, label %437

416:                                              ; preds = %410
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %418, align 8
  %420 = load i32, i32* %4, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i64 %421
  %423 = load i32, i32* %4, align 4
  %424 = load i32, i32* %3, align 4
  %425 = add nsw i32 %423, %424
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = srem i32 %425, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %430
  %432 = bitcast %struct.TYPE_12__* %422 to i8*
  %433 = bitcast %struct.TYPE_12__* %431 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %432, i8* align 8 %433, i64 24, i1 false)
  br label %434

434:                                              ; preds = %416
  %435 = load i32, i32* %4, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %4, align 4
  br label %410

437:                                              ; preds = %410
  store i32 0, i32* %21, align 4
  br label %438

438:                                              ; preds = %437, %366
  %439 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %439)
  %440 = load i32, i32* %21, align 4
  switch i32 %440, label %442 [
    i32 0, label %441
    i32 1, label %441
  ]

441:                                              ; preds = %438, %438
  ret void

442:                                              ; preds = %438
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Error(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @DotProduct(i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
