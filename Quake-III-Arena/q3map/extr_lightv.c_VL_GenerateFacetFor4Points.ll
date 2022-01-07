; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_GenerateFacetFor4Points.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_GenerateFacetFor4Points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32*, %struct.TYPE_21__, i32*, i32** }
%struct.TYPE_21__ = type { float, i32 }
%struct.TYPE_23__ = type { i32*, i32 }

@qfalse = common dso_local global i32 0, align 4
@PLANAR_EPSILON = common dso_local global i64 0, align 8
@surfaceOrigin = common dso_local global i32* null, align 8
@drawSurfaces = common dso_local global i32* null, align 8
@numfacets = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VL_GenerateFacetFor4Points(i32* %0, i32* %1, %struct.TYPE_22__* %2, %struct.TYPE_23__* %3, %struct.TYPE_23__* %4, %struct.TYPE_23__* %5, %struct.TYPE_23__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %6, %struct.TYPE_23__** %15, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @VL_PlaneFromPoints(%struct.TYPE_21__* %21, i32 %24, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %7
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %8, align 4
  br label %390

37:                                               ; preds = %7
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call float @DotProduct(i32 %40, i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 8
  %50 = fsub float %45, %49
  store float %50, float* %16, align 4
  %51 = load float, float* %16, align 4
  %52 = call i64 @fabs(float %51)
  %53 = load i64, i64* @PLANAR_EPSILON, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %37
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %8, align 4
  br label %390

59:                                               ; preds = %37
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** @surfaceOrigin, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** @drawSurfaces, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @VectorAdd(i32 %62, i32 %71, i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** @surfaceOrigin, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** @drawSurfaces, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @VectorAdd(i32 %80, i32 %89, i32 %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** @surfaceOrigin, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** @drawSurfaces, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = getelementptr inbounds i32, i32* %99, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @VectorAdd(i32 %98, i32 %107, i32 %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** @surfaceOrigin, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** @drawSurfaces, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @VectorAdd(i32 %116, i32 %125, i32 %130)
  store i32 1, i32* %18, align 4
  br label %132

132:                                              ; preds = %178, %59
  %133 = load i32, i32* %18, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %181

135:                                              ; preds = %132
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  %148 = srem i32 %147, 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 2
  %157 = srem i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @VL_PlaneFromPoints(%struct.TYPE_21__* %19, i32 %142, i32 %151, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %135
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @qfalse, align 4
  store i32 %166, i32* %8, align 4
  br label %390

167:                                              ; preds = %135
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 3
  %170 = load i32, i32* @qfalse, align 4
  %171 = call i32 @Plane_Equal(%struct.TYPE_21__* %169, %struct.TYPE_21__* %19, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  %176 = load i32, i32* @qfalse, align 4
  store i32 %176, i32* %8, align 4
  br label %390

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  br label %132

181:                                              ; preds = %132
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 5
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %186, i32* %192, align 4
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 5
  %200 = load i32**, i32*** %199, align 8
  %201 = getelementptr inbounds i32*, i32** %200, i64 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %197, i32* %203, align 4
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 5
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %208, i32* %214, align 4
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 5
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32 %219, i32* %225, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 5
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 2
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %230, i32* %236, align 4
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 5
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %241, i32* %247, align 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 5
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 3
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %252, i32* %258, align 4
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 5
  %266 = load i32**, i32*** %265, align 8
  %267 = getelementptr inbounds i32*, i32** %266, i64 3
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 %263, i32* %269, align 4
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @VL_GenerateBoundaryForPoints(i32* %273, %struct.TYPE_21__* %275, i32 %280, i32 %285)
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @VL_GenerateBoundaryForPoints(i32* %290, %struct.TYPE_21__* %292, i32 %297, i32 %302)
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @VL_GenerateBoundaryForPoints(i32* %307, %struct.TYPE_21__* %309, i32 %314, i32 %319)
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 3
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 3
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @VL_GenerateBoundaryForPoints(i32* %324, %struct.TYPE_21__* %326, i32 %331, i32 %336)
  store i32 0, i32* %18, align 4
  br label %338

338:                                              ; preds = %366, %181
  %339 = load i32, i32* %18, align 4
  %340 = icmp slt i32 %339, 4
  br i1 %340, label %341, label %369

341:                                              ; preds = %338
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  %347 = srem i32 %346, 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %344, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %18, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %17, align 4
  %359 = call i32 @VectorSubtract(i32 %350, i32 %357, i32 %358)
  %360 = load i32, i32* %17, align 4
  %361 = call double @VectorLength(i32 %360)
  %362 = fcmp olt double %361, 1.000000e-01
  br i1 %362, label %363, label %365

363:                                              ; preds = %341
  %364 = load i32, i32* @qfalse, align 4
  store i32 %364, i32* %8, align 4
  br label %390

365:                                              ; preds = %341
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %18, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %18, align 4
  br label %338

369:                                              ; preds = %338
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %374 = call i32 @VL_TextureMatrixFromPoints(%struct.TYPE_22__* %370, %struct.TYPE_23__* %371, %struct.TYPE_23__* %372, %struct.TYPE_23__* %373)
  %375 = load i32*, i32** %9, align 8
  %376 = load i32*, i32** %10, align 8
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %381 = call i32 @VL_LightmapMatrixFromPoints(i32* %375, i32* %376, %struct.TYPE_22__* %377, %struct.TYPE_23__* %378, %struct.TYPE_23__* %379, %struct.TYPE_23__* %380)
  %382 = load i32, i32* @numfacets, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* @numfacets, align 4
  %384 = sext i32 %382 to i64
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 1
  store i64 %384, i64* %386, align 8
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  store i32 4, i32* %388, align 8
  %389 = load i32, i32* @qtrue, align 4
  store i32 %389, i32* %8, align 4
  br label %390

390:                                              ; preds = %369, %363, %173, %163, %55, %33
  %391 = load i32, i32* %8, align 4
  ret i32 %391
}

declare dso_local i32 @VL_PlaneFromPoints(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @Plane_Equal(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @VL_GenerateBoundaryForPoints(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local double @VectorLength(i32) #1

declare dso_local i32 @VL_TextureMatrixFromPoints(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @VL_LightmapMatrixFromPoints(i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
