; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_InsertMD3Model.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_InsertMD3Model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_11__ = type { float*, i32 }
%struct.TYPE_18__ = type { i32*, float*, float*, i64*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32*, i32, i32 }

@Q_PI = common dso_local global float 0.000000e+00, align 4
@c_triangleModels = common dso_local global i32 0, align 4
@c_triangleSurfaces = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@c_triangleIndexes = common dso_local global i32 0, align 4
@c_triangleVertexes = common dso_local global i32 0, align 4
@MD3_XYZ_SCALE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertMD3Model(i8* %0, float* %1, float %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca float*, align 8
  store i8* %0, i8** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32* %3, i32** %8, align 8
  %24 = load float, float* %7, align 4
  %25 = fdiv float %24, 1.800000e+02
  %26 = load float, float* @Q_PI, align 4
  %27 = fmul float %25, %26
  store float %27, float* %7, align 4
  %28 = load float, float* %7, align 4
  %29 = call float @cos(float %28)
  store float %29, float* %20, align 4
  %30 = load float, float* %7, align 4
  %31 = call float @sin(float %30)
  store float %31, float* %21, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call %struct.TYPE_16__* @LoadModel(i8* %32)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %11, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = icmp ne %struct.TYPE_16__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  br label %413

37:                                               ; preds = %4
  %38 = load i32, i32* @c_triangleModels, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @c_triangleModels, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @c_triangleSurfaces, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* @c_triangleSurfaces, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = bitcast %struct.TYPE_16__* %45 to i32*
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = bitcast i32* %51 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %410, %37
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %413

59:                                               ; preds = %53
  %60 = call %struct.TYPE_17__* (...) @AllocDrawSurf()
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %22, align 8
  %61 = load i32, i32* @qtrue, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %65 = bitcast %struct.TYPE_13__* %64 to i32*
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = bitcast i32* %70 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %13, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ShaderInfoForShader(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 40
  %88 = trunc i64 %87 to i32
  %89 = call i8* @malloc(i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_18__*
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 3
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i8* @malloc(i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 5
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i32 -1, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  store i32 -1, i32* %112, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 3
  %117 = load i32, i32* @c_triangleIndexes, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* @c_triangleIndexes, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %120 = bitcast %struct.TYPE_13__* %119 to i32*
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = bitcast i32* %125 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %14, align 8
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %173, %59
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %178

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %142, 3
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32 %138, i32* %146, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 %155, 3
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  store i32 %151, i32* %159, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = mul nsw i32 %168, 3
  %170 = add nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  store i32 %164, i32* %172, align 4
  br label %173

173:                                              ; preds = %133
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 1
  store %struct.TYPE_12__* %177, %struct.TYPE_12__** %14, align 8
  br label %127

178:                                              ; preds = %127
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %180 = bitcast %struct.TYPE_13__* %179 to i32*
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = bitcast i32* %185 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %15, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %188 = bitcast %struct.TYPE_13__* %187 to i32*
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = bitcast i32* %193 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** %16, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @c_triangleVertexes, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* @c_triangleVertexes, align 4
  store i32 0, i32* %10, align 4
  br label %200

200:                                              ; preds = %394, %178
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %401

206:                                              ; preds = %200
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i64 %211
  store %struct.TYPE_18__* %212, %struct.TYPE_18__** %17, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %217, i32* %221, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %226, i32* %230, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 3
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 3
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 1
  store i64 0, i64* %238, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 255, i32* %242, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  store i32 255, i32* %246, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32 255, i32* %250, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 255, i32* %254, align 4
  %255 = load float*, float** %6, align 8
  %256 = getelementptr inbounds float, float* %255, i64 0
  %257 = load float, float* %256, align 4
  %258 = load float, float* @MD3_XYZ_SCALE, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load float*, float** %260, align 8
  %262 = getelementptr inbounds float, float* %261, i64 0
  %263 = load float, float* %262, align 4
  %264 = load float, float* %20, align 4
  %265 = fmul float %263, %264
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load float*, float** %267, align 8
  %269 = getelementptr inbounds float, float* %268, i64 1
  %270 = load float, float* %269, align 4
  %271 = load float, float* %21, align 4
  %272 = fmul float %270, %271
  %273 = fsub float %265, %272
  %274 = fmul float %258, %273
  %275 = fadd float %257, %274
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load float*, float** %277, align 8
  %279 = getelementptr inbounds float, float* %278, i64 0
  store float %275, float* %279, align 4
  %280 = load float*, float** %6, align 8
  %281 = getelementptr inbounds float, float* %280, i64 1
  %282 = load float, float* %281, align 4
  %283 = load float, float* @MD3_XYZ_SCALE, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load float*, float** %285, align 8
  %287 = getelementptr inbounds float, float* %286, i64 0
  %288 = load float, float* %287, align 4
  %289 = load float, float* %21, align 4
  %290 = fmul float %288, %289
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load float*, float** %292, align 8
  %294 = getelementptr inbounds float, float* %293, i64 1
  %295 = load float, float* %294, align 4
  %296 = load float, float* %20, align 4
  %297 = fmul float %295, %296
  %298 = fadd float %290, %297
  %299 = fmul float %283, %298
  %300 = fadd float %282, %299
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load float*, float** %302, align 8
  %304 = getelementptr inbounds float, float* %303, i64 1
  store float %300, float* %304, align 4
  %305 = load float*, float** %6, align 8
  %306 = getelementptr inbounds float, float* %305, i64 2
  %307 = load float, float* %306, align 4
  %308 = load float, float* @MD3_XYZ_SCALE, align 4
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load float*, float** %310, align 8
  %312 = getelementptr inbounds float, float* %311, i64 2
  %313 = load float, float* %312, align 4
  %314 = fmul float %308, %313
  %315 = fadd float %307, %314
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 1
  %318 = load float*, float** %317, align 8
  %319 = getelementptr inbounds float, float* %318, i64 2
  store float %315, float* %319, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = ashr i32 %322, 8
  %324 = and i32 %323, 255
  %325 = sitofp i32 %324 to float
  store float %325, float* %18, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, 255
  %330 = sitofp i32 %329 to float
  store float %330, float* %19, align 4
  %331 = load float, float* @Q_PI, align 4
  %332 = fdiv float %331, 1.280000e+02
  %333 = load float, float* %18, align 4
  %334 = fmul float %333, %332
  store float %334, float* %18, align 4
  %335 = load float, float* @Q_PI, align 4
  %336 = fdiv float %335, 1.280000e+02
  %337 = load float, float* %19, align 4
  %338 = fmul float %337, %336
  store float %338, float* %19, align 4
  %339 = load float, float* %18, align 4
  %340 = call float @cos(float %339)
  %341 = load float, float* %19, align 4
  %342 = call float @sin(float %341)
  %343 = fmul float %340, %342
  %344 = load float*, float** %23, align 8
  %345 = getelementptr inbounds float, float* %344, i64 0
  store float %343, float* %345, align 4
  %346 = load float, float* %18, align 4
  %347 = call float @sin(float %346)
  %348 = load float, float* %19, align 4
  %349 = call float @sin(float %348)
  %350 = fmul float %347, %349
  %351 = load float*, float** %23, align 8
  %352 = getelementptr inbounds float, float* %351, i64 1
  store float %350, float* %352, align 4
  %353 = load float, float* %19, align 4
  %354 = call float @cos(float %353)
  %355 = load float*, float** %23, align 8
  %356 = getelementptr inbounds float, float* %355, i64 2
  store float %354, float* %356, align 4
  %357 = load float*, float** %23, align 8
  %358 = getelementptr inbounds float, float* %357, i64 0
  %359 = load float, float* %358, align 4
  %360 = load float, float* %20, align 4
  %361 = fmul float %359, %360
  %362 = load float*, float** %23, align 8
  %363 = getelementptr inbounds float, float* %362, i64 1
  %364 = load float, float* %363, align 4
  %365 = load float, float* %21, align 4
  %366 = fmul float %364, %365
  %367 = fsub float %361, %366
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 2
  %370 = load float*, float** %369, align 8
  %371 = getelementptr inbounds float, float* %370, i64 0
  store float %367, float* %371, align 4
  %372 = load float*, float** %23, align 8
  %373 = getelementptr inbounds float, float* %372, i64 0
  %374 = load float, float* %373, align 4
  %375 = load float, float* %21, align 4
  %376 = fmul float %374, %375
  %377 = load float*, float** %23, align 8
  %378 = getelementptr inbounds float, float* %377, i64 1
  %379 = load float, float* %378, align 4
  %380 = load float, float* %20, align 4
  %381 = fmul float %379, %380
  %382 = fadd float %376, %381
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 2
  %385 = load float*, float** %384, align 8
  %386 = getelementptr inbounds float, float* %385, i64 1
  store float %382, float* %386, align 4
  %387 = load float*, float** %23, align 8
  %388 = getelementptr inbounds float, float* %387, i64 2
  %389 = load float, float* %388, align 4
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 2
  %392 = load float*, float** %391, align 8
  %393 = getelementptr inbounds float, float* %392, i64 2
  store float %389, float* %393, align 4
  br label %394

394:                                              ; preds = %206
  %395 = load i32, i32* %10, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %10, align 4
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 1
  store %struct.TYPE_14__* %398, %struct.TYPE_14__** %15, align 8
  %399 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 1
  store %struct.TYPE_11__* %400, %struct.TYPE_11__** %16, align 8
  br label %200

401:                                              ; preds = %200
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %403 = bitcast %struct.TYPE_13__* %402 to i32*
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 6
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %403, i64 %407
  %409 = bitcast i32* %408 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %409, %struct.TYPE_13__** %12, align 8
  br label %410

410:                                              ; preds = %401
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %9, align 4
  br label %53

413:                                              ; preds = %36, %53
  ret void
}

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

declare dso_local %struct.TYPE_16__* @LoadModel(i8*) #1

declare dso_local %struct.TYPE_17__* @AllocDrawSurf(...) #1

declare dso_local i32 @ShaderInfoForShader(i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
