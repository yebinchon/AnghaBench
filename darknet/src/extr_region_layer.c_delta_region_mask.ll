; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_mask.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_region_mask(float* %0, float* %1, i32 %2, i32 %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %47, %7
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load i32, i32* %14, align 4
  %22 = sitofp i32 %21 to float
  %23 = load float*, float** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %28, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fsub float %27, %36
  %38 = fmul float %22, %37
  %39 = load float*, float** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %39, i64 %45
  store float %38, float* %46, align 4
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %16

50:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
