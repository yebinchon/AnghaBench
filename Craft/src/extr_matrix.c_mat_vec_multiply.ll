; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_vec_multiply.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_vec_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_vec_multiply(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca [4 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %48, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %12, align 4
  %27 = load float*, float** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fmul float %31, %36
  %38 = load float, float* %9, align 4
  %39 = fadd float %38, %37
  store float %39, float* %9, align 4
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load float, float* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 %46
  store float %44, float* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %14

51:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %4, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %59, float* %63, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %52

67:                                               ; preds = %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
