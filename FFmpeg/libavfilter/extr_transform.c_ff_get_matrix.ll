; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_transform.c_ff_get_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_transform.c_ff_get_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_get_matrix(float %0, float %1, float %2, float %3, float %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  %13 = load float, float* %10, align 4
  %14 = load float, float* %9, align 4
  %15 = call float @cos(float %14)
  %16 = fmul float %13, %15
  %17 = load float*, float** %12, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  store float %16, float* %18, align 4
  %19 = load float, float* %9, align 4
  %20 = call float @sin(float %19)
  %21 = fneg float %20
  %22 = load float*, float** %12, align 8
  %23 = getelementptr inbounds float, float* %22, i64 1
  store float %21, float* %23, align 4
  %24 = load float, float* %7, align 4
  %25 = load float*, float** %12, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  store float %24, float* %26, align 4
  %27 = load float*, float** %12, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  %29 = load float, float* %28, align 4
  %30 = fneg float %29
  %31 = load float*, float** %12, align 8
  %32 = getelementptr inbounds float, float* %31, i64 3
  store float %30, float* %32, align 4
  %33 = load float, float* %11, align 4
  %34 = load float, float* %9, align 4
  %35 = call float @cos(float %34)
  %36 = fmul float %33, %35
  %37 = load float*, float** %12, align 8
  %38 = getelementptr inbounds float, float* %37, i64 4
  store float %36, float* %38, align 4
  %39 = load float, float* %8, align 4
  %40 = load float*, float** %12, align 8
  %41 = getelementptr inbounds float, float* %40, i64 5
  store float %39, float* %41, align 4
  %42 = load float*, float** %12, align 8
  %43 = getelementptr inbounds float, float* %42, i64 6
  store float 0.000000e+00, float* %43, align 4
  %44 = load float*, float** %12, align 8
  %45 = getelementptr inbounds float, float* %44, i64 7
  store float 0.000000e+00, float* %45, align 4
  %46 = load float*, float** %12, align 8
  %47 = getelementptr inbounds float, float* %46, i64 8
  store float 1.000000e+00, float* %47, align 4
  ret void
}

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
