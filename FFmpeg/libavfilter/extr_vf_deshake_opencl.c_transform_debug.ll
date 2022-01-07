; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transform_debug.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transform_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [276 x i8] c"Frame %d:\0A\09frame moved from: %f x, %f y\0A\09              to: %f x, %f y\0A\09    rotated from: %f degrees\0A\09              to: %f degrees\0A\09     scaled from: %f x, %f y\0A\09              to: %f x, %f y\0A\0A\09frame moved by: %f x, %f y\0A\09    rotated by: %f degrees\0A\09     scaled by: %f x, %f y\0A\00", align 1
@RingbufX = common dso_local global i64 0, align 8
@RingbufY = common dso_local global i64 0, align 8
@RingbufRot = common dso_local global i64 0, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@RingbufScaleX = common dso_local global i64 0, align 8
@RingbufScaleY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32)* @transform_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_debug(i32* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load float*, float** %7, align 8
  %13 = load i64, i64* @RingbufX, align 8
  %14 = getelementptr inbounds float, float* %12, i64 %13
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %7, align 8
  %17 = load i64, i64* @RingbufY, align 8
  %18 = getelementptr inbounds float, float* %16, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %6, align 8
  %21 = load i64, i64* @RingbufX, align 8
  %22 = getelementptr inbounds float, float* %20, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %6, align 8
  %25 = load i64, i64* @RingbufY, align 8
  %26 = getelementptr inbounds float, float* %24, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %7, align 8
  %29 = load i64, i64* @RingbufRot, align 8
  %30 = getelementptr inbounds float, float* %28, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fpext float %31 to double
  %33 = load double, double* @M_PI, align 8
  %34 = fdiv double 1.800000e+02, %33
  %35 = fmul double %32, %34
  %36 = fptrunc double %35 to float
  %37 = load float*, float** %6, align 8
  %38 = load i64, i64* @RingbufRot, align 8
  %39 = getelementptr inbounds float, float* %37, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = load double, double* @M_PI, align 8
  %43 = fdiv double 1.800000e+02, %42
  %44 = fmul double %41, %43
  %45 = fptrunc double %44 to float
  %46 = load float*, float** %7, align 8
  %47 = load i64, i64* @RingbufScaleX, align 8
  %48 = getelementptr inbounds float, float* %46, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %7, align 8
  %51 = load i64, i64* @RingbufScaleY, align 8
  %52 = getelementptr inbounds float, float* %50, i64 %51
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %6, align 8
  %55 = load i64, i64* @RingbufScaleX, align 8
  %56 = getelementptr inbounds float, float* %54, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %6, align 8
  %59 = load i64, i64* @RingbufScaleY, align 8
  %60 = getelementptr inbounds float, float* %58, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %7, align 8
  %63 = load i64, i64* @RingbufX, align 8
  %64 = getelementptr inbounds float, float* %62, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %6, align 8
  %67 = load i64, i64* @RingbufX, align 8
  %68 = getelementptr inbounds float, float* %66, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fsub float %65, %69
  %71 = load float*, float** %7, align 8
  %72 = load i64, i64* @RingbufY, align 8
  %73 = getelementptr inbounds float, float* %71, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %6, align 8
  %76 = load i64, i64* @RingbufY, align 8
  %77 = getelementptr inbounds float, float* %75, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fsub float %74, %78
  %80 = load float*, float** %7, align 8
  %81 = load i64, i64* @RingbufRot, align 8
  %82 = getelementptr inbounds float, float* %80, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fpext float %83 to double
  %85 = load double, double* @M_PI, align 8
  %86 = fdiv double 1.800000e+02, %85
  %87 = fmul double %84, %86
  %88 = load float*, float** %6, align 8
  %89 = load i64, i64* @RingbufRot, align 8
  %90 = getelementptr inbounds float, float* %88, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fpext float %91 to double
  %93 = load double, double* @M_PI, align 8
  %94 = fdiv double 1.800000e+02, %93
  %95 = fmul double %92, %94
  %96 = fsub double %87, %95
  %97 = fptrunc double %96 to float
  %98 = load float*, float** %6, align 8
  %99 = load i64, i64* @RingbufScaleX, align 8
  %100 = getelementptr inbounds float, float* %98, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %7, align 8
  %103 = load i64, i64* @RingbufScaleX, align 8
  %104 = getelementptr inbounds float, float* %102, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fdiv float %101, %105
  %107 = load float*, float** %6, align 8
  %108 = load i64, i64* @RingbufScaleY, align 8
  %109 = getelementptr inbounds float, float* %107, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %7, align 8
  %112 = load i64, i64* @RingbufScaleY, align 8
  %113 = getelementptr inbounds float, float* %111, i64 %112
  %114 = load float, float* %113, align 4
  %115 = fdiv float %110, %114
  %116 = call i32 @av_log(i32* %9, i32 %10, i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str, i64 0, i64 0), i32 %11, float %15, float %19, float %23, float %27, float %36, float %45, float %49, float %53, float %57, float %61, float %70, float %79, float %97, float %106, float %115)
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
