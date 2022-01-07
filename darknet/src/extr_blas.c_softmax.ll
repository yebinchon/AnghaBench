; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_softmax.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_softmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_MAX = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @softmax(float* %0, i32 %1, float %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  store float 0.000000e+00, float* %12, align 4
  %15 = load float, float* @FLT_MAX, align 4
  %16 = fneg float %15
  store float %16, float* %13, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %40, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load float*, float** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %22, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float, float* %13, align 4
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load float*, float** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %32, i64 %36
  %38 = load float, float* %37, align 4
  store float %38, float* %13, align 4
  br label %39

39:                                               ; preds = %31, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %17

43:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load float*, float** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %49, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float, float* %8, align 4
  %57 = fdiv float %55, %56
  %58 = load float, float* %13, align 4
  %59 = load float, float* %8, align 4
  %60 = fdiv float %58, %59
  %61 = fsub float %57, %60
  %62 = call float @exp(float %61)
  store float %62, float* %14, align 4
  %63 = load float, float* %14, align 4
  %64 = load float, float* %12, align 4
  %65 = fadd float %64, %63
  store float %65, float* %12, align 4
  %66 = load float, float* %14, align 4
  %67 = load float*, float** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %67, i64 %71
  store float %66, float* %72, align 4
  br label %73

73:                                               ; preds = %48
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %44

76:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load float, float* %12, align 4
  %83 = load float*, float** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %83, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fdiv float %89, %82
  store float %90, float* %88, align 4
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %77

94:                                               ; preds = %77
  ret void
}

declare dso_local float @exp(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
