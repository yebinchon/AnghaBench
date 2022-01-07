; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_normalize_delta_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_normalize_delta_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_delta_cpu(float* %0, float* %1, float* %2, float* %3, float* %4, i32 %5, i32 %6, i32 %7, float* %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store float* %8, float** %18, align 8
  store i32 0, i32* %20, align 4
  br label %23

23:                                               ; preds = %116, %9
  %24 = load i32, i32* %20, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %119

27:                                               ; preds = %23
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %112, %27
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %108, %32
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %111

37:                                               ; preds = %33
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %16, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %17, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %17, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %21, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %22, align 4
  %49 = load float*, float** %18, align 8
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = fmul double %54, 1.000000e+00
  %56 = load float*, float** %12, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fadd float %60, 0x3EE4F8B580000000
  %62 = call float @sqrt(float %61)
  %63 = fpext float %62 to double
  %64 = fdiv double %55, %63
  %65 = load float*, float** %14, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fpext float %69 to double
  %71 = fmul double %70, 2.000000e+00
  %72 = load float*, float** %10, align 8
  %73 = load i32, i32* %22, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %11, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fsub float %76, %81
  %83 = fpext float %82 to double
  %84 = fmul double %71, %83
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %84, %88
  %90 = fadd double %64, %89
  %91 = load float*, float** %13, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %95, %99
  %101 = fpext float %100 to double
  %102 = fadd double %90, %101
  %103 = fptrunc double %102 to float
  %104 = load float*, float** %18, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  store float %103, float* %107, align 4
  br label %108

108:                                              ; preds = %37
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %33

111:                                              ; preds = %33
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %28

115:                                              ; preds = %28
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %23

119:                                              ; preds = %23
  ret void
}

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
