; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_ok_video_refresh_rate_auto.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_ok_video_refresh_rate_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_DRIVER_CTL_SET_REFRESH_RATE = common dso_local global i32 0, align 4
@CMD_EVENT_VIDEO_SET_BLOCKING_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @setting_action_ok_video_refresh_rate_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_action_ok_video_refresh_rate_auto(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = call i64 @video_monitor_fps_statistics(double* %6, double* %7, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load double, double* %6, align 8
  %18 = fptrunc double %17 to float
  store float %18, float* %9, align 4
  %19 = load i32, i32* @RARCH_DRIVER_CTL_SET_REFRESH_RATE, align 4
  %20 = call i32 @driver_ctl(i32 %19, float* %9)
  %21 = load i32, i32* @CMD_EVENT_VIDEO_SET_BLOCKING_STATE, align 4
  %22 = call i32 @command_event(i32 %21, i32* null)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @setting_generic_action_ok_default(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @video_monitor_fps_statistics(double*, double*, i32*) #1

declare dso_local i32 @driver_ctl(i32, float*) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i64 @setting_generic_action_ok_default(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
