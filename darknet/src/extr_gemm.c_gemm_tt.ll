; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_tt.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gemm_tt(i32 %0, i32 %1, i32 %2, float %3, float* %4, i32 %5, float* %6, i32 %7, float* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store float %3, float* %14, align 4
  store float* %4, float** %15, align 8
  store i32 %5, i32* %16, align 4
  store float* %6, float** %17, align 8
  store i32 %7, i32* %18, align 4
  store float* %8, float** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %82, %10
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  store i32 0, i32* %22, align 4
  br label %30

30:                                               ; preds = %78, %29
  %31 = load i32, i32* %22, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %30
  store float 0.000000e+00, float* %24, align 4
  store i32 0, i32* %23, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load float, float* %14, align 4
  %41 = load float*, float** %15, align 8
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %16, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %41, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fmul float %40, %49
  %51 = load float*, float** %17, align 8
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %51, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %50, %59
  %61 = load float, float* %24, align 4
  %62 = fadd float %61, %60
  store float %62, float* %24, align 4
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %23, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %23, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load float, float* %24, align 4
  %68 = load float*, float** %19, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %20, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %68, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fadd float %76, %67
  store float %77, float* %75, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %22, align 4
  br label %30

81:                                               ; preds = %30
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %21, align 4
  br label %25

85:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
