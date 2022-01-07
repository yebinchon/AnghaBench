; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_input_ctx_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_input_ctx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_x11_dpy = common dso_local global i64 0, align 8
@g_x11_win = common dso_local global i64 0, align 8
@g_x11_xim = common dso_local global i32 0, align 4
@g_x11_xic = common dso_local global i32 0, align 4
@RARCH_DISPLAY_X11 = common dso_local global i32 0, align 4
@g_x11_true_full = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x11_input_ctx_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @g_x11_dpy, align 8
  %5 = load i64, i64* @g_x11_win, align 8
  %6 = call i32 @x11_create_input_context(i64 %4, i64 %5, i32* @g_x11_xim, i32* @g_x11_xic)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @RARCH_DISPLAY_X11, align 4
  %11 = call i32 @video_driver_display_type_set(i32 %10)
  %12 = load i64, i64* @g_x11_dpy, align 8
  %13 = call i32 @video_driver_display_set(i64 %12)
  %14 = load i64, i64* @g_x11_win, align 8
  %15 = call i32 @video_driver_window_set(i64 %14)
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @g_x11_true_full, align 4
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @x11_create_input_context(i64, i64, i32*, i32*) #1

declare dso_local i32 @video_driver_display_type_set(i32) #1

declare dso_local i32 @video_driver_display_set(i64) #1

declare dso_local i32 @video_driver_window_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
