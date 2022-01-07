; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_get_line_smooth_scroll_ticks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_get_line_smooth_scroll_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ticker_pixel_period = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_line_smooth_scroll_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_line_smooth_scroll_ticks(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store i64 %0, i64* %2, align 8
  store float 1.000000e+03, float* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = uitofp i64 %5 to float
  %7 = fmul float %6, 6.000000e+01
  %8 = fmul float %7, 1.000000e+03
  %9 = load float, float* %3, align 4
  %10 = fdiv float %8, %9
  store float %10, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = load float, float* @ticker_pixel_period, align 4
  %13 = fdiv float %11, %12
  %14 = fptoui float %13 to i64
  ret i64 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
