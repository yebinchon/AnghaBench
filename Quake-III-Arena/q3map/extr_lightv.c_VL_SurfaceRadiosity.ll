; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_SurfaceRadiosity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_SurfaceRadiosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { double, i32, i32, i32 }

@drawSurfaces = common dso_local global %struct.TYPE_20__* null, align 8
@MST_TRIANGLE_SOUP = common dso_local global i64 0, align 8
@dshaders = common dso_local global %struct.TYPE_13__* null, align 8
@lsurfaceTest = common dso_local global %struct.TYPE_19__** null, align 8
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@lightmappixelarea = common dso_local global float* null, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@oldLightFloats = common dso_local global float* null, align 8
@lightPointScale = common dso_local global double 0.000000e+00, align 8
@radiosity_scale = common dso_local global float 0.000000e+00, align 4
@LIGHT_POINTRADIAL = common dso_local global i32 0, align 4
@lightFloats = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_SurfaceRadiosity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  store i32 %0, i32* %2, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** @drawSurfaces, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i64 %17
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %248

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MST_TRIANGLE_SOUP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %248

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dshaders, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @ShaderInfoForShader(i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load %struct.TYPE_19__**, %struct.TYPE_19__*** @lsurfaceTest, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %40, i64 %42
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %6, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = icmp ne %struct.TYPE_19__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %31
  br label %248

48:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %245, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %248

55:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %241, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %244

62:                                               ; preds = %56
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load float*, float** @lightmappixelarea, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  store float %86, float* %13, align 4
  %87 = load float, float* %13, align 4
  %88 = fcmp ole float %87, 0.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %62
  br label %241

90:                                               ; preds = %62
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MST_PATCH, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %4, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @VectorCopy(i32 %113, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %119, %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @VectorCopy(i32 %129, i32 %130)
  br label %166

132:                                              ; preds = %90
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sitofp i32 %136 to float
  %138 = fptosi float %137 to i32
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @VectorMA(i32 %135, i32 %138, i32 %143, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sitofp i32 %147 to float
  %149 = fptosi float %148 to i32
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @VectorMA(i32 %146, i32 %149, i32 %154, i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @VectorCopy(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %132, %96
  %167 = call i32 @memset(%struct.TYPE_17__* %14, i32 0, i32 24)
  %168 = load float*, float** @oldLightFloats, align 8
  %169 = load i32, i32* %9, align 4
  %170 = mul nsw i32 %169, 3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  store float* %172, float** %12, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @VectorMA(i32 %173, i32 5, i32 %174, i32 %176)
  %178 = load float*, float** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ColorNormalize(float* %178, i32 %180)
  %182 = load float*, float** %12, align 8
  %183 = call double @VectorLength(float* %182)
  %184 = fmul double %183, 5.000000e-02
  %185 = load double, double* @lightPointScale, align 8
  %186 = fmul double %184, %185
  %187 = load float, float* %13, align 4
  %188 = load float, float* @radiosity_scale, align 4
  %189 = fmul float %187, %188
  %190 = fpext float %189 to double
  %191 = fdiv double %186, %190
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store double %191, double* %192, align 8
  %193 = load i32, i32* @LIGHT_POINTRADIAL, align 4
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %193, i32* %194, align 8
  %195 = call i32 @VL_FloodLight(%struct.TYPE_17__* %14)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @MutexLock(i32 %198)
  %200 = load float*, float** @oldLightFloats, align 8
  %201 = load i32, i32* %9, align 4
  %202 = mul nsw i32 %201, 3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %200, i64 %203
  %205 = load float, float* %204, align 4
  %206 = load float*, float** @lightFloats, align 8
  %207 = load i32, i32* %9, align 4
  %208 = mul nsw i32 %207, 3
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %206, i64 %209
  store float %205, float* %210, align 4
  %211 = load float*, float** @oldLightFloats, align 8
  %212 = load i32, i32* %9, align 4
  %213 = mul nsw i32 %212, 3
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %211, i64 %215
  %217 = load float, float* %216, align 4
  %218 = load float*, float** @lightFloats, align 8
  %219 = load i32, i32* %9, align 4
  %220 = mul nsw i32 %219, 3
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %218, i64 %222
  store float %217, float* %223, align 4
  %224 = load float*, float** @oldLightFloats, align 8
  %225 = load i32, i32* %9, align 4
  %226 = mul nsw i32 %225, 3
  %227 = add nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %224, i64 %228
  %230 = load float, float* %229, align 4
  %231 = load float*, float** @lightFloats, align 8
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %232, 3
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %231, i64 %235
  store float %230, float* %236, align 4
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @MutexUnlock(i32 %239)
  br label %241

241:                                              ; preds = %166, %89
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %56

244:                                              ; preds = %56
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %49

248:                                              ; preds = %23, %30, %47, %49
  ret void
}

declare dso_local i32* @ShaderInfoForShader(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ColorNormalize(float*, i32) #1

declare dso_local double @VectorLength(float*) #1

declare dso_local i32 @VL_FloodLight(%struct.TYPE_17__*) #1

declare dso_local i32 @MutexLock(i32) #1

declare dso_local i32 @MutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
