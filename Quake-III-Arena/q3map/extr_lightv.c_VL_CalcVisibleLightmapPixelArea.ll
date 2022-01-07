; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_CalcVisibleLightmapPixelArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_CalcVisibleLightmapPixelArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"calculating visible lightmap pixel area...\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@lsurfaceTest = common dso_local global %struct.TYPE_16__** null, align 8
@drawSurfaces = common dso_local global %struct.TYPE_17__* null, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@nostitching = common dso_local global i64 0, align 8
@LIGHTMAP_PIXELSHIFT = common dso_local global float 0.000000e+00, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@lightmappixelarea = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_CalcVisibleLightmapPixelArea() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca float, align 4
  %12 = call i32 @_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %383, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @numDrawSurfaces, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %386

17:                                               ; preds = %13
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @lsurfaceTest, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %18, i64 %20
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %7, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %383

26:                                               ; preds = %17
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** @drawSurfaces, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i64 %29
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %383

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %379, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %382

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %375, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %378

50:                                               ; preds = %44
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MST_PATCH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %182

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %375

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %375

72:                                               ; preds = %64
  %73 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @lsurfaceTest, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %73, i64 %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %8, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %83, %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VectorCopy(i32 %93, i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VectorCopy(i32 %113, i32 %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @VectorCopy(i32 %134, i32 %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %143, %146
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @VectorCopy(i32 %154, i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 4, i32* %160, align 8
  %161 = load i64, i64* @nostitching, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %72
  %164 = call float @WindingArea(%struct.TYPE_14__* %9)
  store float %164, float* %11, align 4
  br label %181

165:                                              ; preds = %72
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call float @VL_WindingAreaOutsideSolid(%struct.TYPE_14__* %9, i32 %179)
  store float %180, float* %11, align 4
  br label %181

181:                                              ; preds = %165, %163
  br label %350

182:                                              ; preds = %50
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sitofp i32 %186 to float
  %188 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %189 = fsub float %187, %188
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @VectorMA(i32 %185, float %189, i32 %194, i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %4, align 4
  %205 = sitofp i32 %204 to float
  %206 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %207 = fsub float %205, %206
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @VectorMA(i32 %203, float %207, i32 %212, i32 %216)
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sitofp i32 %221 to float
  %223 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %224 = fsub float %222, %223
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @VectorMA(i32 %220, float %224, i32 %229, i32 %233)
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %4, align 4
  %240 = sitofp i32 %239 to float
  %241 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %242 = fsub float %240, %241
  %243 = fadd float %242, 1.000000e+00
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @VectorMA(i32 %238, float %243, i32 %248, i32 %252)
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = sitofp i32 %257 to float
  %259 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %260 = fsub float %258, %259
  %261 = fadd float %260, 1.000000e+00
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @VectorMA(i32 %256, float %261, i32 %266, i32 %270)
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %4, align 4
  %277 = sitofp i32 %276 to float
  %278 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %279 = fsub float %277, %278
  %280 = fadd float %279, 1.000000e+00
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 6
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @VectorMA(i32 %275, float %280, i32 %285, i32 %289)
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sitofp i32 %294 to float
  %296 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %297 = fsub float %295, %296
  %298 = fadd float %297, 1.000000e+00
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 6
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @VectorMA(i32 %293, float %298, i32 %303, i32 %307)
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %4, align 4
  %314 = sitofp i32 %313 to float
  %315 = load float, float* @LIGHTMAP_PIXELSHIFT, align 4
  %316 = fsub float %314, %315
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 6
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @VectorMA(i32 %312, float %316, i32 %321, i32 %325)
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 4, i32* %327, align 8
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %346, %182
  %329 = load i32, i32* %2, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %328
  %335 = call i32 @memcpy(%struct.TYPE_14__* %10, %struct.TYPE_14__* %9, i32 16)
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %2, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = call i64 @VL_ChopWindingWithFacet(%struct.TYPE_14__* %10, i32* %341)
  %343 = sitofp i64 %342 to float
  %344 = load float, float* %11, align 4
  %345 = fadd float %344, %343
  store float %345, float* %11, align 4
  br label %346

346:                                              ; preds = %334
  %347 = load i32, i32* %2, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %2, align 4
  br label %328

349:                                              ; preds = %328
  br label %350

350:                                              ; preds = %349, %181
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %355 = mul nsw i32 %353, %354
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %355, %358
  %360 = load i32, i32* %4, align 4
  %361 = add nsw i32 %359, %360
  %362 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %363, %366
  %368 = load i32, i32* %3, align 4
  %369 = add nsw i32 %367, %368
  store i32 %369, i32* %5, align 4
  %370 = load float, float* %11, align 4
  %371 = load float*, float** @lightmappixelarea, align 8
  %372 = load i32, i32* %5, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %371, i64 %373
  store float %370, float* %374, align 4
  br label %375

375:                                              ; preds = %350, %71, %63
  %376 = load i32, i32* %3, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %3, align 4
  br label %44

378:                                              ; preds = %44
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %4, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %4, align 4
  br label %37

382:                                              ; preds = %37
  br label %383

383:                                              ; preds = %382, %35, %25
  %384 = load i32, i32* %1, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %1, align 4
  br label %13

386:                                              ; preds = %13
  ret void
}

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local float @WindingArea(%struct.TYPE_14__*) #1

declare dso_local float @VL_WindingAreaOutsideSolid(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @VL_ChopWindingWithFacet(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
