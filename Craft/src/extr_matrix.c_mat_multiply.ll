; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_multiply.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_multiply(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca [16 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %65, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %53, %23
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 4
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load float*, float** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fmul float %44, %49
  %51 = load float, float* %11, align 4
  %52 = fadd float %51, %50
  store float %52, float* %11, align 4
  br label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load float, float* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x float], [16 x float]* %7, i64 0, i64 %59
  store float %57, float* %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %20

64:                                               ; preds = %20
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %16

68:                                               ; preds = %16
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 16
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x float], [16 x float]* %7, i64 0, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %4, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  store float %76, float* %80, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %69

84:                                               ; preds = %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
