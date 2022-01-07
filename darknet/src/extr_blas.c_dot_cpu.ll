; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_dot_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_dot_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dot_cpu(i32 %0, float* %1, i32 %2, float* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %35, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load float*, float** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %18, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %25, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fmul float %24, %31
  %33 = load float, float* %12, align 4
  %34 = fadd float %33, %32
  store float %34, float* %12, align 4
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load float, float* %12, align 4
  ret float %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
