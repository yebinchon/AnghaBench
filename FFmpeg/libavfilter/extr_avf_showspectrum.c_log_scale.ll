; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_log_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_log_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @log_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @log_scale(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %10 = load float, float* %5, align 4
  %11 = load float, float* %6, align 4
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load float, float* %6, align 4
  store float %14, float* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %7, align 4
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load float, float* %7, align 4
  store float %20, float* %4, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load float, float* %7, align 4
  %23 = load float, float* %6, align 4
  %24 = fdiv float %22, %23
  %25 = call float @logf(float %24)
  %26 = load float, float* %7, align 4
  %27 = load float, float* %6, align 4
  %28 = fsub float %26, %27
  %29 = fdiv float %25, %28
  store float %29, float* %8, align 4
  %30 = load float, float* %7, align 4
  %31 = load float, float* %7, align 4
  %32 = load float, float* %8, align 4
  %33 = fmul float %31, %32
  %34 = call float @expf(float %33)
  %35 = fdiv float %30, %34
  store float %35, float* %9, align 4
  %36 = load float, float* %5, align 4
  %37 = load float, float* %8, align 4
  %38 = fmul float %36, %37
  %39 = call float @expf(float %38)
  %40 = load float, float* %9, align 4
  %41 = fmul float %39, %40
  store float %41, float* %4, align 4
  br label %42

42:                                               ; preds = %21, %19, %13
  %43 = load float, float* %4, align 4
  ret float %43
}

declare dso_local float @logf(float) #1

declare dso_local float @expf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
