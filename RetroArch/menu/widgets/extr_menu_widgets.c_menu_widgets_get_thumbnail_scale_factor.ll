; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_get_thumbnail_scale_factor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_get_thumbnail_scale_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @menu_widgets_get_thumbnail_scale_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @menu_widgets_get_thumbnail_scale_factor(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %11 = load float, float* %5, align 4
  %12 = load float, float* %6, align 4
  %13 = fdiv float %11, %12
  store float %13, float* %9, align 4
  %14 = load float, float* %7, align 4
  %15 = load float, float* %8, align 4
  %16 = fdiv float %14, %15
  store float %16, float* %10, align 4
  %17 = load float, float* %9, align 4
  %18 = load float, float* %10, align 4
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load float, float* %6, align 4
  %22 = load float, float* %8, align 4
  %23 = fdiv float %21, %22
  br label %28

24:                                               ; preds = %4
  %25 = load float, float* %5, align 4
  %26 = load float, float* %7, align 4
  %27 = fdiv float %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi float [ %23, %20 ], [ %27, %24 ]
  ret float %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
