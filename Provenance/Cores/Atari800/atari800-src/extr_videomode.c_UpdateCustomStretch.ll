; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateCustomStretch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_UpdateCustomStretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOMODE_stretch = common dso_local global i32 0, align 4
@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateCustomStretch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateCustomStretch() #0 {
  %1 = load i32, i32* @VIDEOMODE_stretch, align 4
  switch i32 %1, label %7 [
    i32 128, label %2
    i32 132, label %2
    i32 131, label %2
    i32 129, label %6
    i32 130, label %6
  ]

2:                                                ; preds = %0, %0, %0
  %3 = load i32, i32* @VIDEOMODE_stretch, align 4
  %4 = add nsw i32 %3, 1
  %5 = sitofp i32 %4 to double
  store double %5, double* @VIDEOMODE_custom_stretch, align 8
  br label %7

6:                                                ; preds = %0, %0
  store double 1.000000e+00, double* @VIDEOMODE_custom_stretch, align 8
  br label %7

7:                                                ; preds = %0, %6, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
