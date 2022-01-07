; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_lsd.c_slerp.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_lsd.c_slerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slerp(float* %0, float* %1, float %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load float*, float** %6, align 8
  %16 = load float*, float** %7, align 8
  %17 = call i32 @dot_cpu(i32 %14, float* %15, i32 1, float* %16, i32 1)
  %18 = call float @acos(i32 %17)
  store float %18, float* %11, align 4
  %19 = load float, float* %11, align 4
  %20 = call float @sin(float %19)
  store float %20, float* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load float*, float** %10, align 8
  %23 = call i32 @fill_cpu(i32 %21, i32 0, float* %22, i32 1)
  %24 = load i32, i32* %9, align 4
  %25 = load float, float* %8, align 4
  %26 = fsub float 1.000000e+00, %25
  %27 = load float, float* %11, align 4
  %28 = fmul float %26, %27
  %29 = call float @sin(float %28)
  %30 = load float, float* %12, align 4
  %31 = fdiv float %29, %30
  %32 = load float*, float** %6, align 8
  %33 = load float*, float** %10, align 8
  %34 = call i32 @axpy_cpu(i32 %24, float %31, float* %32, i32 1, float* %33, i32 1)
  %35 = load i32, i32* %9, align 4
  %36 = load float, float* %8, align 4
  %37 = load float, float* %11, align 4
  %38 = fmul float %36, %37
  %39 = call float @sin(float %38)
  %40 = load float, float* %12, align 4
  %41 = fdiv float %39, %40
  %42 = load float*, float** %7, align 8
  %43 = load float*, float** %10, align 8
  %44 = call i32 @axpy_cpu(i32 %35, float %41, float* %42, i32 1, float* %43, i32 1)
  %45 = load float*, float** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call float @mag_array(float* %45, i32 %46)
  store float %47, float* %13, align 4
  %48 = load float*, float** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load float, float* %13, align 4
  %51 = fpext float %50 to double
  %52 = fdiv double 1.000000e+00, %51
  %53 = fptosi double %52 to i32
  %54 = call i32 @scale_array(float* %48, i32 %49, i32 %53)
  ret void
}

declare dso_local float @acos(i32) #1

declare dso_local i32 @dot_cpu(i32, float*, i32, float*, i32) #1

declare dso_local float @sin(float) #1

declare dso_local i32 @fill_cpu(i32, i32, float*, i32) #1

declare dso_local i32 @axpy_cpu(i32, float, float*, i32, float*, i32) #1

declare dso_local float @mag_array(float*, i32) #1

declare dso_local i32 @scale_array(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
