; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transformed_point.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_transformed_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float, float, float*)* @transformed_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @transformed_point(float %0, float %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  %8 = load float, float* %5, align 4
  %9 = load float*, float** %7, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = fmul float %8, %11
  %13 = load float, float* %6, align 4
  %14 = load float*, float** %7, align 8
  %15 = getelementptr inbounds float, float* %14, i64 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  %18 = fadd float %12, %17
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 2
  %21 = load float, float* %20, align 4
  %22 = fadd float %18, %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  store float %22, float* %25, align 4
  %26 = load float, float* %5, align 4
  %27 = load float*, float** %7, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  %29 = load float, float* %28, align 4
  %30 = fmul float %26, %29
  %31 = load float, float* %6, align 4
  %32 = load float*, float** %7, align 8
  %33 = getelementptr inbounds float, float* %32, i64 4
  %34 = load float, float* %33, align 4
  %35 = fmul float %31, %34
  %36 = fadd float %30, %35
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i64 5
  %39 = load float, float* %38, align 4
  %40 = fadd float %36, %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  store float %40, float* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  ret float* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
