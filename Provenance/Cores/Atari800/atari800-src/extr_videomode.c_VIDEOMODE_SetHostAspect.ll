; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_SetHostAspect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_SetHostAspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEOMODE_SetHostAspect(double %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %8 = load double, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  store double %8, double* %6, align 8
  %9 = load double, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  store double %9, double* %7, align 8
  %10 = load double, double* %4, align 8
  %11 = fcmp olt double %10, 0.000000e+00
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load double, double* %5, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %12
  %18 = load double, double* %4, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load double, double* %5, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = call i32 @AutodetectHostAspect(double* %4, double* %5)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load double, double* %4, align 8
  store double %26, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %27 = load double, double* %5, align 8
  store double %27, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %28 = call i32 (...) @VIDEOMODE_Update()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load double, double* %6, align 8
  store double %31, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  %32 = load double, double* %7, align 8
  store double %32, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %30, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @AutodetectHostAspect(double*, double*) #1

declare dso_local i32 @VIDEOMODE_Update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
