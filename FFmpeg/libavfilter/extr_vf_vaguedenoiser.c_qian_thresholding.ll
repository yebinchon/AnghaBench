; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_qian_thresholding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_qian_thresholding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, float, float, i32)* @qian_thresholding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qian_thresholding(float* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load float, float* %13, align 4
  %23 = fmul float %22, 0x3F847AE140000000
  store float %23, float* %15, align 4
  %24 = load float, float* %12, align 4
  %25 = load float, float* %12, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %15, align 4
  %28 = fmul float %26, %27
  store float %28, float* %16, align 4
  %29 = load float, float* %15, align 4
  %30 = fsub float 1.000000e+00, %29
  store float %30, float* %17, align 4
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %82, %7
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load float*, float** %8, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = call float @FFABS(float %45)
  store float %46, float* %20, align 4
  %47 = load float, float* %20, align 4
  %48 = load float, float* %12, align 4
  %49 = fcmp ole float %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load float, float* %17, align 4
  %52 = load float*, float** %8, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul float %56, %51
  store float %57, float* %55, align 4
  br label %73

58:                                               ; preds = %40
  %59 = load float, float* %20, align 4
  %60 = load float, float* %20, align 4
  %61 = fmul float %59, %60
  store float %61, float* %21, align 4
  %62 = load float, float* %21, align 4
  %63 = load float, float* %16, align 4
  %64 = fsub float %62, %63
  %65 = load float, float* %21, align 4
  %66 = fdiv float %64, %65
  %67 = load float*, float** %8, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fmul float %71, %66
  store float %72, float* %70, align 4
  br label %73

73:                                               ; preds = %58, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  br label %36

77:                                               ; preds = %36
  %78 = load i32, i32* %11, align 4
  %79 = load float*, float** %8, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds float, float* %79, i64 %80
  store float* %81, float** %8, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %31

85:                                               ; preds = %31
  ret void
}

declare dso_local float @FFABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
