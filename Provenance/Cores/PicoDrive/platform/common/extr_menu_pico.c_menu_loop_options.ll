; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_loop_options.sel = internal global i32 0, align 4
@e_menu_options = common dso_local global i32 0, align 4
@MA_OPT_SAVECFG_GAME = common dso_local global i32 0, align 4
@PicoGameLoaded = common dso_local global i32 0, align 4
@MA_OPT_LOADCFG = common dso_local global i32 0, align 4
@config_slot = common dso_local global i64 0, align 8
@config_slot_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @menu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_loop_options(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @e_menu_options, align 4
  %6 = load i32, i32* @MA_OPT_SAVECFG_GAME, align 4
  %7 = load i32, i32* @PicoGameLoaded, align 4
  %8 = call i32 @me_enable(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @e_menu_options, align 4
  %10 = load i32, i32* @MA_OPT_LOADCFG, align 4
  %11 = load i64, i64* @config_slot, align 8
  %12 = load i64, i64* @config_slot_current, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @me_enable(i32 %9, i32 %10, i32 %14)
  %16 = load i32, i32* @e_menu_options, align 4
  %17 = call i32 @me_loop(i32 %16, i32* @menu_loop_options.sel)
  ret i32 0
}

declare dso_local i32 @me_enable(i32, i32, i32) #1

declare dso_local i32 @me_loop(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
