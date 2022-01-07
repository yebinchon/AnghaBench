; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_weighted_avg_elliott_mul5_m16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_weighted_avg_elliott_mul5_m16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_weight_sum = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, float*)* @weighted_avg_elliott_mul5_m16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @weighted_avg_elliott_mul5_m16(float* %0, i32 %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load float*, float** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %20, i64 %24
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %27, i64 %31
  %33 = load float, float* %32, align 4
  %34 = call float @FFABS(float %33)
  %35 = fadd float 1.000000e+00, %34
  %36 = fdiv float %26, %35
  %37 = fmul float %19, %36
  %38 = load float, float* %7, align 4
  %39 = fadd float %38, %37
  store float %39, float* %7, align 4
  %40 = load float*, float** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load float, float* %8, align 4
  %46 = fadd float %45, %44
  store float %46, float* %8, align 4
  br label %47

47:                                               ; preds = %14
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load float, float* %8, align 4
  %52 = load float, float* @min_weight_sum, align 4
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load float, float* %7, align 4
  %56 = fmul float 5.000000e+00, %55
  %57 = load float, float* %8, align 4
  %58 = fdiv float %56, %57
  %59 = load float*, float** %6, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  %63 = load float*, float** %6, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  %65 = load float, float* %64, align 4
  %66 = fadd float %62, %65
  %67 = load float*, float** %6, align 8
  %68 = getelementptr inbounds float, float* %67, i64 3
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %66
  store float %70, float* %68, align 4
  br label %79

71:                                               ; preds = %50
  %72 = load float*, float** %6, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %6, align 8
  %76 = getelementptr inbounds float, float* %75, i64 3
  %77 = load float, float* %76, align 4
  %78 = fadd float %77, %74
  store float %78, float* %76, align 4
  br label %79

79:                                               ; preds = %71, %54
  ret void
}

declare dso_local float @FFABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
