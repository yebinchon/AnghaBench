; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateVideoFullscreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateVideoFullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VIDEOMODE_rotate90 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @UpdateVideoFullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateVideoFullscreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = call i32 (...) @CurrentDisplayMode()
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @ResolutionForMode(i32 %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %46

19:                                               ; preds = %0
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @RotateResolution(i32* %9)
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @GetOutArea(i32* %4, i32* %5, i32 %27)
  %29 = call i32 (...) @UpdateCustomStretch()
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ComputeVideoArea(i32* %9, i32* %30, i32 %31, i32 %32, i32 %33, double* %6, double* %7, i32 %34)
  %36 = load double, double* %6, align 8
  %37 = load double, double* %7, align 8
  %38 = call i32 @CropVideoArea(i32* %9, i32* %4, i32* %5, double %36, double %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @SetVideoMode(i32* %9, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %26, %17
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @CurrentDisplayMode(...) #1

declare dso_local i32* @ResolutionForMode(i32, i32) #1

declare dso_local i32 @RotateResolution(i32*) #1

declare dso_local i32 @GetOutArea(i32*, i32*, i32) #1

declare dso_local i32 @UpdateCustomStretch(...) #1

declare dso_local i32 @ComputeVideoArea(i32*, i32*, i32, i32, i32, double*, double*, i32) #1

declare dso_local i32 @CropVideoArea(i32*, i32*, i32*, double, double) #1

declare dso_local i32 @SetVideoMode(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
