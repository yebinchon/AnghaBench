; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_lanczos_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_lanczos_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float*)* @calculate_lanczos_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_lanczos_coeffs(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load float, float* @M_PI, align 4
  %14 = load float, float* %3, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sitofp i32 %15 to float
  %17 = fsub float %14, %16
  %18 = fadd float %17, 1.000000e+00
  %19 = fmul float %13, %18
  store float %19, float* %7, align 4
  %20 = load float, float* %7, align 4
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load float*, float** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  store float 1.000000e+00, float* %26, align 4
  br label %43

27:                                               ; preds = %12
  %28 = load float, float* %7, align 4
  %29 = call float @sinf(float %28)
  %30 = load float, float* %7, align 4
  %31 = fdiv float %30, 2.000000e+00
  %32 = call float @sinf(float %31)
  %33 = fmul float %29, %32
  %34 = load float, float* %7, align 4
  %35 = load float, float* %7, align 4
  %36 = fmul float %34, %35
  %37 = fdiv float %36, 2.000000e+00
  %38 = fdiv float %33, %37
  %39 = load float*, float** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  store float %38, float* %42, align 4
  br label %43

43:                                               ; preds = %27, %22
  %44 = load float*, float** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float, float* %5, align 4
  %50 = fadd float %49, %48
  store float %50, float* %5, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %9

54:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load float, float* %5, align 4
  %60 = load float*, float** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fdiv float %64, %59
  store float %65, float* %63, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %55

69:                                               ; preds = %55
  ret void
}

declare dso_local float @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
