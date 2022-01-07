; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gemm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, float %5, float* %6, i32 %7, float* %8, i32 %9, float %10, float* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store float %5, float* %19, align 4
  store float* %6, float** %20, align 8
  store i32 %7, i32* %21, align 4
  store float* %8, float** %22, align 8
  store i32 %9, i32* %23, align 4
  store float %10, float* %24, align 4
  store float* %11, float** %25, align 8
  store i32 %12, i32* %26, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load float, float* %19, align 4
  %33 = load float*, float** %20, align 8
  %34 = load i32, i32* %21, align 4
  %35 = load float*, float** %22, align 8
  %36 = load i32, i32* %23, align 4
  %37 = load float, float* %24, align 4
  %38 = load float*, float** %25, align 8
  %39 = load i32, i32* %26, align 4
  %40 = call i32 @gemm_cpu(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, float %32, float* %33, i32 %34, float* %35, i32 %36, float %37, float* %38, i32 %39)
  ret void
}

declare dso_local i32 @gemm_cpu(i32, i32, i32, i32, i32, float, float*, i32, float*, i32, float, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
