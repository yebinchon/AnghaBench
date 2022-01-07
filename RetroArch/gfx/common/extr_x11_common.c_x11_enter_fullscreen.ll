; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_enter_fullscreen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_enter_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@desktop_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x11_enter_fullscreen(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @get_video_mode(i32* %11, i32* %12, i32 %13, i32 %14, i32* %10, i32* @desktop_mode)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @DefaultScreen(i32* %20)
  %22 = call i32 @XF86VidModeSwitchToMode(i32* %19, i32 %21, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @DefaultScreen(i32* %27)
  %29 = call i32 @XF86VidModeSetViewPort(i32* %26, i32 %28, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %24, %17
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @get_video_mode(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @XF86VidModeSwitchToMode(i32*, i32, i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @XF86VidModeSetViewPort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
