; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_inter_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_inter_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inter_cpu(i32 %0, float* %1, i32 %2, float* %3, i32 %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %67, %6
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load float*, float** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %26, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %12, align 8
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds float, float* %35, i64 %38
  store float %34, float* %39, align 4
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load float*, float** %10, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %49, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %12, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  store float %57, float* %62, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %44

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %16

70:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
