; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_tn.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_tn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gemm_tn(i32 %0, i32 %1, i32 %2, float %3, float* %4, i32 %5, float* %6, i32 %7, float* %8, i32 %9) #0 {
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

25:                                               ; preds = %80, %10
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %76, %29
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load float, float* %14, align 4
  %36 = load float*, float** %15, align 8
  %37 = load i32, i32* %23, align 4
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %21, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %36, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fmul float %35, %44
  store float %45, float* %24, align 4
  store i32 0, i32* %22, align 4
  br label %46

46:                                               ; preds = %72, %34
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load float, float* %24, align 4
  %52 = load float*, float** %17, align 8
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %52, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fmul float %51, %60
  %62 = load float*, float** %19, align 8
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %20, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %22, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %62, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fadd float %70, %61
  store float %71, float* %69, align 4
  br label %72

72:                                               ; preds = %50
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %46

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %23, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %23, align 4
  br label %30

79:                                               ; preds = %30
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %21, align 4
  br label %25

83:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
