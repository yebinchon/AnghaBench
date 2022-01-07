; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_calc_stereo_peak.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_calc_stereo_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, float*)* @calc_stereo_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_stereo_peak(float* %0, i32 %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  br label %8

8:                                                ; preds = %58, %3
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = load float, float* %7, align 4
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  store float %21, float* %7, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  %26 = fneg float %25
  %27 = load float, float* %7, align 4
  %28 = fcmp ogt float %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load float*, float** %4, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  %32 = load float, float* %31, align 4
  %33 = fneg float %32
  store float %33, float* %7, align 4
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %18
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 1
  %38 = load float, float* %37, align 4
  %39 = load float, float* %7, align 4
  %40 = fcmp ogt float %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  store float %44, float* %7, align 4
  br label %58

45:                                               ; preds = %35
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fneg float %48
  %50 = load float, float* %7, align 4
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  %55 = load float, float* %54, align 4
  %56 = fneg float %55
  store float %56, float* %7, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %41
  %59 = load float*, float** %4, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  store float* %60, float** %4, align 8
  br label %8

61:                                               ; preds = %8
  %62 = load float, float* %7, align 4
  %63 = load float*, float** %6, align 8
  %64 = load float, float* %63, align 4
  %65 = call float @FFMAX(float %62, float %64)
  %66 = load float*, float** %6, align 8
  store float %65, float* %66, align 4
  ret void
}

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
