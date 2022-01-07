; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_set_fade_duration.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_set_fade_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_MENU_THUMBNAIL_FADE_DURATION = common dso_local global float 0.000000e+00, align 4
@menu_thumbnail_fade_duration = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_thumbnail_set_fade_duration(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp oge float %3, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load float, float* %2, align 4
  br label %9

7:                                                ; preds = %1
  %8 = load float, float* @DEFAULT_MENU_THUMBNAIL_FADE_DURATION, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi float [ %6, %5 ], [ %8, %7 ]
  store float %10, float* @menu_thumbnail_fade_duration, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
