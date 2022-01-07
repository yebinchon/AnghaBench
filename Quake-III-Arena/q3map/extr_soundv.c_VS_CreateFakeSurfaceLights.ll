; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_CreateFakeSurfaceLights.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_CreateFakeSurfaceLights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64, i32, i64** }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__, i64** }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_30__ = type { i64* }
%struct.TYPE_26__ = type { i32, i32, i64*, i64* }
%struct.TYPE_27__ = type { i32, float, i32, i64*, i64 }
%struct.TYPE_25__ = type { i32, i64** }

@.str = private unnamed_addr constant [28 x i8] c"Creating surface lights...\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_29__* null, align 8
@dshaders = common dso_local global %struct.TYPE_23__* null, align 8
@lightDefaultSubdivide = common dso_local global float 0.000000e+00, align 4
@lsurfaceTest = common dso_local global %struct.TYPE_22__** null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"WARNING: surface at (%i %i %i) has autosprite shader but isn't a quad\0A\00", align 1
@drawVerts = common dso_local global %struct.TYPE_30__* null, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"WARNING: surface at (%i %i %i) has autosprite shader but %i verts\0A\00", align 1
@lightPointScale = common dso_local global i32 0, align 4
@LIGHT_POINTRADIAL = common dso_local global i32 0, align 4
@vsounds = common dso_local global %struct.TYPE_26__** null, align 8
@numvsounds = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%7i light emitting surfaces\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VS_CreateFakeSurfaceLights() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  store i32 0, i32* %11, align 4
  %16 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %382, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @numDrawSurfaces, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %385

21:                                               ; preds = %17
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** @drawSurfaces, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i64 %24
  store %struct.TYPE_29__* %25, %struct.TYPE_29__** %4, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** @dshaders, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_27__* @ShaderInfoForShader(i32 %32)
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %5, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %382

39:                                               ; preds = %21
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  store float %47, float* %12, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load float, float* @lightDefaultSubdivide, align 4
  store float %49, float* %12, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %227

57:                                               ; preds = %50
  %58 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %58, i64 %60
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = icmp ne %struct.TYPE_22__* %62, null
  br i1 %63, label %64, label %137

64:                                               ; preds = %57
  %65 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %65, i64 %67
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %7, align 8
  %72 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %72, i64 %74
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %85, label %80

80:                                               ; preds = %64
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 4
  br i1 %84, label %85, label %105

85:                                               ; preds = %80, %64
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 2
  %88 = load i64**, i64*** %87, align 8
  %89 = getelementptr inbounds i64*, i64** %88, i64 0
  %90 = load i64*, i64** %89, align 8
  %91 = ptrtoint i64* %90 to i32
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 2
  %94 = load i64**, i64*** %93, align 8
  %95 = getelementptr inbounds i64*, i64** %94, i64 1
  %96 = load i64*, i64** %95, align 8
  %97 = ptrtoint i64* %96 to i32
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 2
  %100 = load i64**, i64*** %99, align 8
  %101 = getelementptr inbounds i64*, i64** %100, i64 2
  %102 = load i64*, i64** %101, align 8
  %103 = ptrtoint i64* %102 to i32
  %104 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %85, %80
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 2
  %108 = load i64**, i64*** %107, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 0
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load i64**, i64*** %112, align 8
  %114 = getelementptr inbounds i64*, i64** %113, i64 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = call i32 @VectorAdd(i64* %110, i64* %115, i64* %116)
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 2
  %120 = load i64**, i64*** %119, align 8
  %121 = getelementptr inbounds i64*, i64** %120, i64 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = call i32 @VectorAdd(i64* %122, i64* %123, i64* %124)
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 2
  %128 = load i64**, i64*** %127, align 8
  %129 = getelementptr inbounds i64*, i64** %128, i64 3
  %130 = load i64*, i64** %129, align 8
  %131 = load i64*, i64** %9, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = call i32 @VectorAdd(i64* %130, i64* %131, i64* %132)
  %134 = load i64*, i64** %9, align 8
  %135 = load i64*, i64** %9, align 8
  %136 = call i32 @VectorScale(i64* %134, double 2.500000e-01, i64* %135)
  br label %195

137:                                              ; preds = %57
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** @drawVerts, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i64 %141
  store %struct.TYPE_30__* %142, %struct.TYPE_30__** %10, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 4
  br i1 %146, label %147, label %167

147:                                              ; preds = %137
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %159, i32 %165)
  br label %382

167:                                              ; preds = %137
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i64*, i64** %9, align 8
  %177 = call i32 @VectorAdd(i64* %171, i64* %175, i64* %176)
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i64*, i64** %9, align 8
  %183 = load i64*, i64** %9, align 8
  %184 = call i32 @VectorAdd(i64* %181, i64* %182, i64* %183)
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i64 3
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i64*, i64** %9, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = call i32 @VectorAdd(i64* %188, i64* %189, i64* %190)
  %192 = load i64*, i64** %9, align 8
  %193 = load i64*, i64** %9, align 8
  %194 = call i32 @VectorScale(i64* %192, double 2.500000e-01, i64* %193)
  br label %195

195:                                              ; preds = %167, %105
  %196 = call %struct.TYPE_26__* @malloc(i32 24)
  store %struct.TYPE_26__* %196, %struct.TYPE_26__** %8, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %198 = call i32 @memset(%struct.TYPE_26__* %197, i32 0, i32 24)
  %199 = load i64*, i64** %9, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 3
  %202 = load i64*, i64** %201, align 8
  %203 = call i32 @VectorCopy(i64* %199, i64* %202)
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 3
  %206 = load i64*, i64** %205, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = call i32 @VectorCopy(i64* %206, i64* %209)
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @lightPointScale, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* @LIGHT_POINTRADIAL, align 4
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %222 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @vsounds, align 8
  %223 = load i32, i32* @numvsounds, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @numvsounds, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %222, i64 %225
  store %struct.TYPE_26__* %221, %struct.TYPE_26__** %226, align 8
  br label %382

227:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %378, %227
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %229, %232
  br i1 %233, label %234, label %381

234:                                              ; preds = %228
  %235 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %235, i64 %237
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = icmp ne %struct.TYPE_22__* %239, null
  br i1 %240, label %241, label %312

241:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %308, %241
  %243 = load i32, i32* %2, align 4
  %244 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %244, i64 %246
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %243, %250
  br i1 %251, label %252, label %311

252:                                              ; preds = %242
  %253 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @lsurfaceTest, align 8
  %254 = load i32, i32* %1, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %253, i64 %255
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %258, align 8
  %260 = load i32, i32* %2, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i64 %261
  store %struct.TYPE_28__* %262, %struct.TYPE_28__** %7, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call %struct.TYPE_25__* @AllocWinding(i32 %265)
  store %struct.TYPE_25__* %266, %struct.TYPE_25__** %6, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 1
  %274 = load i64**, i64*** %273, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 2
  %277 = load i64**, i64*** %276, align 8
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %280, 12
  %282 = call i32 @memcpy(i64** %274, i64** %277, i32 %281)
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load i64*, i64** %13, align 8
  %288 = call i32 @VectorCopy(i64* %286, i64* %287)
  %289 = load i32, i32* %3, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %252
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %292, %struct.TYPE_25__** %14, align 8
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %294 = call %struct.TYPE_25__* @ReverseWinding(%struct.TYPE_25__* %293)
  store %struct.TYPE_25__* %294, %struct.TYPE_25__** %6, align 8
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %296 = call i32 @FreeWinding(%struct.TYPE_25__* %295)
  %297 = load i32, i32* @vec3_origin, align 4
  %298 = load i64*, i64** %13, align 8
  %299 = load i64*, i64** %13, align 8
  %300 = call i32 @VectorSubtract(i32 %297, i64* %298, i64* %299)
  br label %301

301:                                              ; preds = %291, %252
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %304 = load i64*, i64** %13, align 8
  %305 = load float, float* %12, align 4
  %306 = load i32, i32* @qtrue, align 4
  %307 = call i32 @VS_SubdivideAreaLight(%struct.TYPE_27__* %302, %struct.TYPE_25__* %303, i64* %304, float %305, i32 %306)
  br label %308

308:                                              ; preds = %301
  %309 = load i32, i32* %2, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %2, align 4
  br label %242

311:                                              ; preds = %242
  br label %377

312:                                              ; preds = %234
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call %struct.TYPE_25__* @AllocWinding(i32 %315)
  store %struct.TYPE_25__* %316, %struct.TYPE_25__** %6, align 8
  %317 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  store i32 0, i32* %2, align 4
  br label %322

322:                                              ; preds = %347, %312
  %323 = load i32, i32* %2, align 4
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp slt i32 %323, %326
  br i1 %327, label %328, label %350

328:                                              ; preds = %322
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** @drawVerts, align 8
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i32, i32* %2, align 4
  %334 = sext i32 %333 to i64
  %335 = add i64 %332, %334
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %336, i32 0, i32 0
  %338 = load i64*, i64** %337, align 8
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 1
  %341 = load i64**, i64*** %340, align 8
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i64*, i64** %341, i64 %343
  %345 = load i64*, i64** %344, align 8
  %346 = call i32 @VectorCopy(i64* %338, i64* %345)
  br label %347

347:                                              ; preds = %328
  %348 = load i32, i32* %2, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %2, align 4
  br label %322

350:                                              ; preds = %322
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 3
  %353 = load i64**, i64*** %352, align 8
  %354 = getelementptr inbounds i64*, i64** %353, i64 2
  %355 = load i64*, i64** %354, align 8
  %356 = load i64*, i64** %13, align 8
  %357 = call i32 @VectorCopy(i64* %355, i64* %356)
  %358 = load i32, i32* %3, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %370

360:                                              ; preds = %350
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %361, %struct.TYPE_25__** %15, align 8
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %363 = call %struct.TYPE_25__* @ReverseWinding(%struct.TYPE_25__* %362)
  store %struct.TYPE_25__* %363, %struct.TYPE_25__** %6, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %365 = call i32 @FreeWinding(%struct.TYPE_25__* %364)
  %366 = load i32, i32* @vec3_origin, align 4
  %367 = load i64*, i64** %13, align 8
  %368 = load i64*, i64** %13, align 8
  %369 = call i32 @VectorSubtract(i32 %366, i64* %367, i64* %368)
  br label %370

370:                                              ; preds = %360, %350
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %373 = load i64*, i64** %13, align 8
  %374 = load float, float* %12, align 4
  %375 = load i32, i32* @qtrue, align 4
  %376 = call i32 @VS_SubdivideAreaLight(%struct.TYPE_27__* %371, %struct.TYPE_25__* %372, i64* %373, float %374, i32 %375)
  br label %377

377:                                              ; preds = %370, %311
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %3, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %3, align 4
  br label %228

381:                                              ; preds = %228
  br label %382

382:                                              ; preds = %381, %195, %147, %38
  %383 = load i32, i32* %1, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %1, align 4
  br label %17

385:                                              ; preds = %17
  %386 = load i32, i32* %11, align 4
  %387 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %386)
  ret void
}

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local %struct.TYPE_27__* @ShaderInfoForShader(i32) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local %struct.TYPE_26__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local %struct.TYPE_25__* @AllocWinding(i32) #1

declare dso_local i32 @memcpy(i64**, i64**, i32) #1

declare dso_local %struct.TYPE_25__* @ReverseWinding(%struct.TYPE_25__*) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_25__*) #1

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #1

declare dso_local i32 @VS_SubdivideAreaLight(%struct.TYPE_27__*, %struct.TYPE_25__*, i64*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
