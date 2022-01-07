; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_decode_level_coefficients.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_decode_level_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BANDS = common dso_local global i32 0, align 4
@imc_exp_tab = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*)* @imc_decode_level_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_decode_level_coefficients(i32* %0, i32* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 1.894500e-01
  %18 = fptosi double %17 to i32
  %19 = call double @exp2(i32 %18)
  %20 = fdiv double 2.000000e+04, %19
  %21 = fptrunc double %20 to float
  %22 = load float*, float** %7, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float %21, float* %23, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load float, float* %25, align 4
  %27 = call float @log2f(float %26) #3
  %28 = load float*, float** %8, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  store float %27, float* %29, align 4
  %30 = load float*, float** %7, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  %32 = load float, float* %31, align 4
  store float %32, float* %11, align 4
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  store float %35, float* %12, align 4
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %100, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BANDS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load float*, float** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float 1.000000e+00, float* %52, align 4
  %53 = load float*, float** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  store float 0.000000e+00, float* %56, align 4
  br label %99

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 17
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 7
  store i32 %62, i32* %10, align 4
  br label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 24
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 32
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 16
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %60
  %74 = load float*, float** @imc_exp_tab, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 15, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float, float* %11, align 4
  %81 = fmul float %80, %79
  store float %81, float* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sitofp i32 %82 to double
  %84 = fmul double 8.304800e-01, %83
  %85 = load float, float* %12, align 4
  %86 = fpext float %85 to double
  %87 = fadd double %86, %84
  %88 = fptrunc double %87 to float
  store float %88, float* %12, align 4
  %89 = load float, float* %11, align 4
  %90 = load float*, float** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %89, float* %93, align 4
  %94 = load float, float* %12, align 4
  %95 = load float*, float** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float %94, float* %98, align 4
  br label %99

99:                                               ; preds = %73, %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %36

103:                                              ; preds = %36
  ret void
}

declare dso_local double @exp2(i32) #1

; Function Attrs: nounwind
declare dso_local float @log2f(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
