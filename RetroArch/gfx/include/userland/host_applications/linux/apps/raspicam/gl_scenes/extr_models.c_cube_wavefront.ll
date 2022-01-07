; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_cube_wavefront.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/gl_scenes/extr_models.c_cube_wavefront.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@cube_wavefront.qv = internal constant [24 x float] [float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01], align 16
@cube_wavefront.qn = internal constant [18 x float] [float 0.000000e+00, float -1.000000e+00, float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -1.000000e+00, float 0.000000e+00, float -0.000000e+00], align 16
@cube_wavefront.qt = internal constant [8 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@cube_wavefront.qf = internal constant [108 x i16] [i16 1, i16 1, i16 1, i16 2, i16 2, i16 1, i16 3, i16 3, i16 1, i16 3, i16 3, i16 1, i16 4, i16 4, i16 1, i16 1, i16 1, i16 1, i16 5, i16 4, i16 2, i16 6, i16 1, i16 2, i16 7, i16 2, i16 2, i16 7, i16 2, i16 2, i16 8, i16 3, i16 2, i16 5, i16 4, i16 2, i16 1, i16 4, i16 3, i16 4, i16 1, i16 3, i16 6, i16 2, i16 3, i16 6, i16 2, i16 3, i16 5, i16 3, i16 3, i16 1, i16 4, i16 3, i16 4, i16 4, i16 4, i16 3, i16 1, i16 4, i16 7, i16 2, i16 4, i16 7, i16 2, i16 4, i16 6, i16 3, i16 4, i16 4, i16 4, i16 4, i16 3, i16 4, i16 5, i16 2, i16 1, i16 5, i16 8, i16 2, i16 5, i16 8, i16 2, i16 5, i16 7, i16 3, i16 5, i16 3, i16 4, i16 5, i16 2, i16 4, i16 6, i16 1, i16 1, i16 6, i16 5, i16 2, i16 6, i16 5, i16 2, i16 6, i16 8, i16 3, i16 6, i16 2, i16 4, i16 6], align 16
@MAX_VERTICES = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@VBO_VERTEX = common dso_local global i64 0, align 8
@VBO_TEXTURE = common dso_local global i64 0, align 8
@VBO_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cube_wavefront() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_5__* @malloc(i32 16)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %88

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = call i32 @memset(%struct.TYPE_5__* %12, i32 0, i32 16)
  %14 = load i32, i32* @MAX_VERTICES, align 4
  %15 = mul nsw i32 3, %14
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call float* @allocbuffer(i32 %18)
  store float* %19, float** %3, align 8
  %20 = call i32 @countof(i16* getelementptr inbounds ([108 x i16], [108 x i16]* @cube_wavefront.qf, i64 0, i64 0))
  %21 = sdiv i32 %20, 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load float*, float** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @deindex(float* %24, float* getelementptr inbounds ([24 x float], [24 x float]* @cube_wavefront.qv, i64 0, i64 0), i16* getelementptr inbounds ([108 x i16], [108 x i16]* @cube_wavefront.qf, i64 0, i64 0), i32 3, i32 %27)
  %29 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VBO_VERTEX, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 3, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load float*, float** %3, align 8
  %43 = call i32 @create_vbo(i32 %29, i64 %34, i32 %41, float* %42)
  %44 = load float*, float** %3, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @deindex(float* %44, float* getelementptr inbounds ([8 x float], [8 x float]* @cube_wavefront.qt, i64 0, i64 0), i16* getelementptr inbounds ([108 x i16], [108 x i16]* @cube_wavefront.qf, i64 0, i64 1), i32 2, i32 %47)
  %49 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VBO_TEXTURE, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 2, %57
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load float*, float** %3, align 8
  %63 = call i32 @create_vbo(i32 %49, i64 %54, i32 %61, float* %62)
  %64 = load float*, float** %3, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @deindex(float* %64, float* getelementptr inbounds ([18 x float], [18 x float]* @cube_wavefront.qn, i64 0, i64 0), i16* getelementptr inbounds ([108 x i16], [108 x i16]* @cube_wavefront.qf, i64 0, i64 2), i32 3, i32 %67)
  %69 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VBO_NORMAL, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 3, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load float*, float** %3, align 8
  %83 = call i32 @create_vbo(i32 %69, i64 %74, i32 %81, float* %82)
  %84 = load float*, float** %3, align 8
  %85 = call i32 @freebuffer(float* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %8, %0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %90 = ptrtoint %struct.TYPE_5__* %89 to i32
  ret i32 %90
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local float* @allocbuffer(i32) #1

declare dso_local i32 @countof(i16*) #1

declare dso_local i32 @deindex(float*, float*, i16*, i32, i32) #1

declare dso_local i32 @create_vbo(i32, i64, i32, float*) #1

declare dso_local i32 @freebuffer(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
