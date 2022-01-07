; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_cheat_num_passes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_cheat_num_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_right_cheat_num_passes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_right_cheat_num_passes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @cheat_manager_get_size()
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %12 = call i32 @menu_entries_ctl(i32 %11, i32* %7)
  %13 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %14 = call i32 @menu_driver_ctl(i32 %13, i32* null)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CHEAT_HANDLER_TYPE_EMU, align 4
  %17 = call i32 @cheat_manager_realloc(i32 %15, i32 %16)
  ret i32 0
}

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
