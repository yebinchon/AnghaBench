; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_calculate_gamma.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_calculate_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @calculate_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @calculate_gamma(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %5, align 4
  %7 = fcmp oeq float %6, 1.000000e+00
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %4, align 4
  store float %9, float* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load float, float* %5, align 4
  %12 = fcmp oeq float %11, 2.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load float, float* %4, align 4
  %15 = call float @sqrtf(float %14) #3
  store float %15, float* %3, align 4
  br label %35

16:                                               ; preds = %10
  %17 = load float, float* %5, align 4
  %18 = fcmp oeq float %17, 3.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load float, float* %4, align 4
  %21 = call float @cbrtf(float %20) #4
  store float %21, float* %3, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load float, float* %5, align 4
  %24 = fcmp oeq float %23, 4.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load float, float* %4, align 4
  %27 = call float @sqrtf(float %26) #3
  %28 = call float @sqrtf(float %27) #3
  store float %28, float* %3, align 4
  br label %35

29:                                               ; preds = %22
  %30 = load float, float* %4, align 4
  %31 = call float @logf(float %30) #3
  %32 = load float, float* %5, align 4
  %33 = fdiv float %31, %32
  %34 = call float @expf(float %33) #3
  store float %34, float* %3, align 4
  br label %35

35:                                               ; preds = %29, %25, %19, %13, %8
  %36 = load float, float* %3, align 4
  ret float %36
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

; Function Attrs: nounwind readnone
declare dso_local float @cbrtf(float) #2

; Function Attrs: nounwind
declare dso_local float @expf(float) #1

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
