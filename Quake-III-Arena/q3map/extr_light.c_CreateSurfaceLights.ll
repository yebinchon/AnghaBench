; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_CreateSurfaceLights.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_CreateSurfaceLights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i32, i64** }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64*, i64** }
%struct.TYPE_26__ = type { i64* }
%struct.TYPE_24__ = type { i32, i32, i64*, i64*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, float, i32, i64*, i64 }
%struct.TYPE_22__ = type { i32, i64** }

@.str = private unnamed_addr constant [29 x i8] c"--- CreateSurfaceLights ---\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_25__* null, align 8
@dshaders = common dso_local global %struct.TYPE_21__* null, align 8
@defaultLightSubdivide = common dso_local global float 0.000000e+00, align 4
@surfaceTest = common dso_local global %struct.TYPE_28__** null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"WARNING: surface at (%i %i %i) has autosprite shader but isn't a quad\0A\00", align 1
@drawVerts = common dso_local global %struct.TYPE_26__* null, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"WARNING: surface at (%i %i %i) has autosprite shader but %i verts\0A\00", align 1
@numPointLights = common dso_local global i32 0, align 4
@lights = common dso_local global %struct.TYPE_24__* null, align 8
@pointScale = common dso_local global i32 0, align 4
@emit_point = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%5i light emitting surfaces\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateSurfaceLights() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = call i32 @qprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %381, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @numDrawSurfaces, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %384

21:                                               ; preds = %17
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** @drawSurfaces, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i64 %24
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %4, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** @dshaders, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_23__* @ShaderInfoForShader(i32 %32)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %5, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %381

39:                                               ; preds = %21
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  store float %47, float* %12, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load float, float* @defaultLightSubdivide, align 4
  store float %49, float* %12, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %227

57:                                               ; preds = %50
  %58 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %58, i64 %60
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = icmp ne %struct.TYPE_28__* %62, null
  br i1 %63, label %64, label %137

64:                                               ; preds = %57
  %65 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %65, i64 %67
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %70, align 8
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %7, align 8
  %72 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %72, i64 %74
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %85, label %80

80:                                               ; preds = %64
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 4
  br i1 %84, label %85, label %105

85:                                               ; preds = %80, %64
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = load i64**, i64*** %87, align 8
  %89 = getelementptr inbounds i64*, i64** %88, i64 0
  %90 = load i64*, i64** %89, align 8
  %91 = ptrtoint i64* %90 to i32
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 2
  %94 = load i64**, i64*** %93, align 8
  %95 = getelementptr inbounds i64*, i64** %94, i64 1
  %96 = load i64*, i64** %95, align 8
  %97 = ptrtoint i64* %96 to i32
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i64**, i64*** %99, align 8
  %101 = getelementptr inbounds i64*, i64** %100, i64 2
  %102 = load i64*, i64** %101, align 8
  %103 = ptrtoint i64* %102 to i32
  %104 = call i32 (i8*, i32, ...) @_printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %85, %80
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 2
  %108 = load i64**, i64*** %107, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 0
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i64**, i64*** %112, align 8
  %114 = getelementptr inbounds i64*, i64** %113, i64 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = call i32 @VectorAdd(i64* %110, i64* %115, i64* %116)
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 2
  %120 = load i64**, i64*** %119, align 8
  %121 = getelementptr inbounds i64*, i64** %120, i64 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = call i32 @VectorAdd(i64* %122, i64* %123, i64* %124)
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 2
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
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** @drawVerts, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i64 %141
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %10, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 4
  br i1 %146, label %147, label %167

147:                                              ; preds = %137
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 (i8*, i32, ...) @_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %159, i32 %165)
  br label %381

167:                                              ; preds = %137
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i64*, i64** %9, align 8
  %177 = call i32 @VectorAdd(i64* %171, i64* %175, i64* %176)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i64*, i64** %9, align 8
  %183 = load i64*, i64** %9, align 8
  %184 = call i32 @VectorAdd(i64* %181, i64* %182, i64* %183)
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i64 3
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i64*, i64** %9, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = call i32 @VectorAdd(i64* %188, i64* %189, i64* %190)
  %192 = load i64*, i64** %9, align 8
  %193 = load i64*, i64** %9, align 8
  %194 = call i32 @VectorScale(i64* %192, double 2.500000e-01, i64* %193)
  br label %195

195:                                              ; preds = %167, %105
  %196 = load i32, i32* @numPointLights, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @numPointLights, align 4
  %198 = call %struct.TYPE_24__* @malloc(i32 32)
  store %struct.TYPE_24__* %198, %struct.TYPE_24__** %8, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %200 = call i32 @memset(%struct.TYPE_24__* %199, i32 0, i32 32)
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** @lights, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 4
  store %struct.TYPE_24__* %201, %struct.TYPE_24__** %203, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %204, %struct.TYPE_24__** @lights, align 8
  %205 = load i64*, i64** %9, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 3
  %208 = load i64*, i64** %207, align 8
  %209 = call i32 @VectorCopy(i64* %205, i64* %208)
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 3
  %212 = load i64*, i64** %211, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = call i32 @VectorCopy(i64* %212, i64* %215)
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @pointScale, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* @emit_point, align 4
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %381

227:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %377, %227
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %229, %232
  br i1 %233, label %234, label %380

234:                                              ; preds = %228
  %235 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %235, i64 %237
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %238, align 8
  %240 = icmp ne %struct.TYPE_28__* %239, null
  br i1 %240, label %241, label %311

241:                                              ; preds = %234
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %307, %241
  %243 = load i32, i32* %2, align 4
  %244 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %245 = load i32, i32* %1, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %244, i64 %246
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %243, %250
  br i1 %251, label %252, label %310

252:                                              ; preds = %242
  %253 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @surfaceTest, align 8
  %254 = load i32, i32* %1, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %253, i64 %255
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %258, align 8
  %260 = load i32, i32* %2, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i64 %261
  store %struct.TYPE_27__* %262, %struct.TYPE_27__** %7, align 8
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call %struct.TYPE_22__* @AllocWinding(i32 %265)
  store %struct.TYPE_22__* %266, %struct.TYPE_22__** %6, align 8
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load i64**, i64*** %273, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 2
  %277 = load i64**, i64*** %276, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %280, 12
  %282 = call i32 @memcpy(i64** %274, i64** %277, i32 %281)
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = load i64*, i64** %13, align 8
  %287 = call i32 @VectorCopy(i64* %285, i64* %286)
  %288 = load i32, i32* %3, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %252
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %291, %struct.TYPE_22__** %14, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %293 = call %struct.TYPE_22__* @ReverseWinding(%struct.TYPE_22__* %292)
  store %struct.TYPE_22__* %293, %struct.TYPE_22__** %6, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %295 = call i32 @FreeWinding(%struct.TYPE_22__* %294)
  %296 = load i32, i32* @vec3_origin, align 4
  %297 = load i64*, i64** %13, align 8
  %298 = load i64*, i64** %13, align 8
  %299 = call i32 @VectorSubtract(i32 %296, i64* %297, i64* %298)
  br label %300

300:                                              ; preds = %290, %252
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %303 = load i64*, i64** %13, align 8
  %304 = load float, float* %12, align 4
  %305 = load i32, i32* @qtrue, align 4
  %306 = call i32 @SubdivideAreaLight(%struct.TYPE_23__* %301, %struct.TYPE_22__* %302, i64* %303, float %304, i32 %305)
  br label %307

307:                                              ; preds = %300
  %308 = load i32, i32* %2, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %2, align 4
  br label %242

310:                                              ; preds = %242
  br label %376

311:                                              ; preds = %234
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call %struct.TYPE_22__* @AllocWinding(i32 %314)
  store %struct.TYPE_22__* %315, %struct.TYPE_22__** %6, align 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  store i32 0, i32* %2, align 4
  br label %321

321:                                              ; preds = %346, %311
  %322 = load i32, i32* %2, align 4
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %349

327:                                              ; preds = %321
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** @drawVerts, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* %2, align 4
  %333 = sext i32 %332 to i64
  %334 = add i64 %331, %333
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  %337 = load i64*, i64** %336, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 1
  %340 = load i64**, i64*** %339, align 8
  %341 = load i32, i32* %2, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i64*, i64** %340, i64 %342
  %344 = load i64*, i64** %343, align 8
  %345 = call i32 @VectorCopy(i64* %337, i64* %344)
  br label %346

346:                                              ; preds = %327
  %347 = load i32, i32* %2, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %2, align 4
  br label %321

349:                                              ; preds = %321
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 3
  %352 = load i64**, i64*** %351, align 8
  %353 = getelementptr inbounds i64*, i64** %352, i64 2
  %354 = load i64*, i64** %353, align 8
  %355 = load i64*, i64** %13, align 8
  %356 = call i32 @VectorCopy(i64* %354, i64* %355)
  %357 = load i32, i32* %3, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %349
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %360, %struct.TYPE_22__** %15, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %362 = call %struct.TYPE_22__* @ReverseWinding(%struct.TYPE_22__* %361)
  store %struct.TYPE_22__* %362, %struct.TYPE_22__** %6, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %364 = call i32 @FreeWinding(%struct.TYPE_22__* %363)
  %365 = load i32, i32* @vec3_origin, align 4
  %366 = load i64*, i64** %13, align 8
  %367 = load i64*, i64** %13, align 8
  %368 = call i32 @VectorSubtract(i32 %365, i64* %366, i64* %367)
  br label %369

369:                                              ; preds = %359, %349
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %372 = load i64*, i64** %13, align 8
  %373 = load float, float* %12, align 4
  %374 = load i32, i32* @qtrue, align 4
  %375 = call i32 @SubdivideAreaLight(%struct.TYPE_23__* %370, %struct.TYPE_22__* %371, i64* %372, float %373, i32 %374)
  br label %376

376:                                              ; preds = %369, %310
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %3, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %3, align 4
  br label %228

380:                                              ; preds = %228
  br label %381

381:                                              ; preds = %380, %195, %147, %38
  %382 = load i32, i32* %1, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %1, align 4
  br label %17

384:                                              ; preds = %17
  %385 = load i32, i32* %11, align 4
  %386 = call i32 (i8*, i32, ...) @_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %385)
  ret void
}

declare dso_local i32 @qprintf(i8*) #1

declare dso_local %struct.TYPE_23__* @ShaderInfoForShader(i32) #1

declare dso_local i32 @_printf(i8*, i32, ...) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local %struct.TYPE_24__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local %struct.TYPE_22__* @AllocWinding(i32) #1

declare dso_local i32 @memcpy(i64**, i64**, i32) #1

declare dso_local %struct.TYPE_22__* @ReverseWinding(%struct.TYPE_22__*) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_22__*) #1

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #1

declare dso_local i32 @SubdivideAreaLight(%struct.TYPE_23__*, %struct.TYPE_22__*, i64*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
