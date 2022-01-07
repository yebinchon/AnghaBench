; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_interp_band_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_interp_band_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FREQ_SIZE = common dso_local global i32 0, align 4
@NB_BANDS = common dso_local global i32 0, align 4
@eband5ms = common dso_local global i32* null, align 8
@FRAME_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @interp_band_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interp_band_gain(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load float*, float** %3, align 8
  %10 = load i32, i32* @FREQ_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(float* %9, i32 0, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %78, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NB_BANDS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %15
  %21 = load i32*, i32** @eband5ms, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @eband5ms, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  %33 = load i32, i32* @FRAME_SIZE_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %74, %20
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = sitofp i32 %40 to float
  %42 = load i32, i32* %6, align 4
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %41, %43
  store float %44, float* %8, align 4
  %45 = load float, float* %8, align 4
  %46 = fsub float 1.000000e+00, %45
  %47 = load float*, float** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fmul float %46, %51
  %53 = load float, float* %8, align 4
  %54 = load float*, float** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %54, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %53, %59
  %61 = fadd float %52, %60
  %62 = load float*, float** %3, align 8
  %63 = load i32*, i32** @eband5ms, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FRAME_SIZE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %62, i64 %72
  store float %61, float* %73, align 4
  br label %74

74:                                               ; preds = %39
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %35

77:                                               ; preds = %35
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %15

81:                                               ; preds = %15
  ret void
}

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
