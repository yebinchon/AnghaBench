; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_SetCustomStretch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_SetCustomStretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_stretch = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VIDEOMODE_STRETCH_CUSTOM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEOMODE_SetCustomStretch(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = load double, double* @VIDEOMODE_custom_stretch, align 8
  store double %6, double* %4, align 8
  %7 = load i32, i32* @VIDEOMODE_stretch, align 4
  store i32 %7, i32* %5, align 4
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 1.000000e+00
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load double, double* %3, align 8
  %14 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %15 = fcmp une double %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @VIDEOMODE_stretch, align 4
  %18 = load i32, i32* @VIDEOMODE_STRETCH_CUSTOM, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16, %12
  %21 = load double, double* %3, align 8
  store double %21, double* @VIDEOMODE_custom_stretch, align 8
  %22 = load i32, i32* @VIDEOMODE_STRETCH_CUSTOM, align 4
  store i32 %22, i32* @VIDEOMODE_stretch, align 4
  %23 = call i32 (...) @VIDEOMODE_Update()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load double, double* %4, align 8
  store double %26, double* @VIDEOMODE_custom_stretch, align 8
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @VIDEOMODE_stretch, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %25, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @VIDEOMODE_Update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
