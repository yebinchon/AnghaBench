; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_binarize_weights.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_binarize_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binarize_weights(float* %0, i32 %1, i32 %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %77, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load float*, float** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %22, i64 %28
  %30 = load float, float* %29, align 4
  %31 = call i64 @fabs(float %30)
  %32 = sitofp i64 %31 to float
  %33 = load float, float* %11, align 4
  %34 = fadd float %33, %32
  store float %34, float* %11, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load float, float* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sitofp i32 %40 to float
  %42 = fdiv float %39, %41
  store float %42, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %73, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load float*, float** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %48, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fcmp ogt float %56, 0.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load float, float* %11, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load float, float* %11, align 4
  %62 = fneg float %61
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi float [ %59, %58 ], [ %62, %60 ]
  %65 = load float*, float** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %65, i64 %71
  store float %64, float* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %43

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %12

80:                                               ; preds = %12
  ret void
}

declare dso_local i64 @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
