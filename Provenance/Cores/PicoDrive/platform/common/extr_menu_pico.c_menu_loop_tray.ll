; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_tray.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoGameLoaded = common dso_local global i32 0, align 4
@IN_CFG_BLOCKING = common dso_local global i32 0, align 4
@e_menu_tray = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_RestartRun = common dso_local global i64 0, align 8
@PBTN_MENU = common dso_local global i32 0, align 4
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_loop_tray() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @PicoGameLoaded, align 4
  %4 = call i32 @menu_enter(i32 %3)
  %5 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %6 = call i32 @in_set_config_int(i32 0, i32 %5, i32 1)
  %7 = load i32, i32* @e_menu_tray, align 4
  %8 = call i32 @me_loop(i32 %7, i32* %2)
  %9 = load i64, i64* @engineState, align 8
  %10 = load i64, i64* @PGS_RestartRun, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* @PGS_RestartRun, align 8
  store i64 %13, i64* @engineState, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %0
  br label %15

15:                                               ; preds = %24, %14
  %16 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %17 = load i32, i32* @PBTN_MENU, align 4
  %18 = load i32, i32* @PBTN_MOK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PBTN_MBACK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %15

25:                                               ; preds = %15
  %26 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %27 = call i32 @in_set_config_int(i32 0, i32 %26, i32 0)
  %28 = call i32 (...) @plat_video_menu_leave()
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @menu_enter(i32) #1

declare dso_local i32 @in_set_config_int(i32, i32, i32) #1

declare dso_local i32 @me_loop(i32, i32*) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @plat_video_menu_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
