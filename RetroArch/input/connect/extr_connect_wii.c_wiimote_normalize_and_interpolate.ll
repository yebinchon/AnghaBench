; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_normalize_and_interpolate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_wiimote_normalize_and_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @wiimote_normalize_and_interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @wiimote_normalize_and_interpolate(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %6, align 4
  %10 = fcmp oeq float %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store float 0.000000e+00, float* %4, align 4
  br label %20

12:                                               ; preds = %3
  %13 = load float, float* %7, align 4
  %14 = load float, float* %5, align 4
  %15 = fsub float %13, %14
  %16 = load float, float* %6, align 4
  %17 = load float, float* %5, align 4
  %18 = fsub float %16, %17
  %19 = fdiv float %15, %18
  store float %19, float* %4, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load float, float* %4, align 4
  ret float %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
