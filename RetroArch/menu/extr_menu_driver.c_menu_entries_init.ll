; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_entries_list = common dso_local global i32* null, align 8
@MENU_SETTING_CTL_NEW = common dso_local global i32 0, align 4
@menu_entries_list_settings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @menu_entries_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_entries_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @menu_list_new()
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** @menu_entries_list, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @MENU_SETTING_CTL_NEW, align 4
  %8 = call i32 @menu_setting_ctl(i32 %7, i32* @menu_entries_list_settings)
  %9 = load i32, i32* @menu_entries_list_settings, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %13

12:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %16

13:                                               ; preds = %11, %5
  %14 = call i32 (...) @menu_entries_settings_deinit()
  %15 = call i32 (...) @menu_entries_list_deinit()
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @menu_list_new(...) #1

declare dso_local i32 @menu_setting_ctl(i32, i32*) #1

declare dso_local i32 @menu_entries_settings_deinit(...) #1

declare dso_local i32 @menu_entries_list_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
