; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_loop.sel = internal global i32 0, align 4
@e_menu_main = common dso_local global i32 0, align 4
@MA_MAIN_RESUME_GAME = common dso_local global i32 0, align 4
@PicoGameLoaded = common dso_local global i32 0, align 4
@MA_MAIN_SAVE_STATE = common dso_local global i32 0, align 4
@MA_MAIN_LOAD_STATE = common dso_local global i32 0, align 4
@MA_MAIN_RESET_GAME = common dso_local global i32 0, align 4
@MA_MAIN_CHANGE_CD = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@MA_MAIN_PATCHES = common dso_local global i32 0, align 4
@PicoPatches = common dso_local global i32* null, align 8
@IN_CFG_BLOCKING = common dso_local global i32 0, align 4
@menu_main_draw_status = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_Menu = common dso_local global i64 0, align 8
@PGS_Running = common dso_local global i64 0, align 8
@PBTN_MENU = common dso_local global i32 0, align 4
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_loop() #0 {
  %1 = load i32, i32* @e_menu_main, align 4
  %2 = load i32, i32* @MA_MAIN_RESUME_GAME, align 4
  %3 = load i32, i32* @PicoGameLoaded, align 4
  %4 = call i32 @me_enable(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @e_menu_main, align 4
  %6 = load i32, i32* @MA_MAIN_SAVE_STATE, align 4
  %7 = load i32, i32* @PicoGameLoaded, align 4
  %8 = call i32 @me_enable(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @e_menu_main, align 4
  %10 = load i32, i32* @MA_MAIN_LOAD_STATE, align 4
  %11 = load i32, i32* @PicoGameLoaded, align 4
  %12 = call i32 @me_enable(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @e_menu_main, align 4
  %14 = load i32, i32* @MA_MAIN_RESET_GAME, align 4
  %15 = load i32, i32* @PicoGameLoaded, align 4
  %16 = call i32 @me_enable(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @e_menu_main, align 4
  %18 = load i32, i32* @MA_MAIN_CHANGE_CD, align 4
  %19 = load i32, i32* @PicoAHW, align 4
  %20 = load i32, i32* @PAHW_MCD, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @me_enable(i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @e_menu_main, align 4
  %24 = load i32, i32* @MA_MAIN_PATCHES, align 4
  %25 = load i32*, i32** @PicoPatches, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @me_enable(i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* @PicoGameLoaded, align 4
  %30 = call i32 @menu_enter(i32 %29)
  %31 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %32 = call i32 @in_set_config_int(i32 0, i32 %31, i32 1)
  %33 = load i32, i32* @e_menu_main, align 4
  %34 = load i32, i32* @menu_main_draw_status, align 4
  %35 = call i32 @me_loop_d(i32 %33, i32* @menu_loop.sel, i32* null, i32 %34)
  %36 = load i32, i32* @PicoGameLoaded, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %0
  %39 = load i64, i64* @engineState, align 8
  %40 = load i64, i64* @PGS_Menu, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @PGS_Running, align 8
  store i64 %43, i64* @engineState, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %54, %44
  %46 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %47 = load i32, i32* @PBTN_MENU, align 4
  %48 = load i32, i32* @PBTN_MOK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PBTN_MBACK, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %45

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %0
  %57 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %58 = call i32 @in_set_config_int(i32 0, i32 %57, i32 0)
  %59 = call i32 (...) @plat_video_menu_leave()
  ret void
}

declare dso_local i32 @me_enable(i32, i32, i32) #1

declare dso_local i32 @menu_enter(i32) #1

declare dso_local i32 @in_set_config_int(i32, i32, i32) #1

declare dso_local i32 @me_loop_d(i32, i32*, i32*, i32) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @plat_video_menu_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
