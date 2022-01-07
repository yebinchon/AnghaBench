; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_variance_delta_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_variance_delta_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @variance_delta_cpu(float* %0, float* %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float* %7, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %98, %8
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %21
  %26 = load float*, float** %16, align 8
  %27 = load i32, i32* %17, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  store float 0.000000e+00, float* %29, align 4
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %78, %25
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %30
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %15, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %20, align 4
  %51 = load float*, float** %10, align 8
  %52 = load i32, i32* %20, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %9, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %11, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fsub float %60, %65
  %67 = fmul float %55, %66
  %68 = load float*, float** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %67
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %39
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  br label %35

77:                                               ; preds = %35
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %30

81:                                               ; preds = %30
  %82 = load float*, float** %12, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fadd float %86, 0x3EE4F8B580000000
  %88 = call double @pow(float %87, float -1.500000e+00)
  %89 = fmul double -5.000000e-01, %88
  %90 = load float*, float** %16, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fpext float %94 to double
  %96 = fmul double %95, %89
  %97 = fptrunc double %96 to float
  store float %97, float* %93, align 4
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %21

101:                                              ; preds = %21
  ret void
}

declare dso_local double @pow(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
