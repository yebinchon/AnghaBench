; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_select.c_menu_cbs_init_bind_select_compare_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_select.c_menu_cbs_init_bind_select_compare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_SETTINGS_CHEAT_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_CHEAT_END = common dso_local global i32 0, align 4
@action_select_cheat = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_END = common dso_local global i32 0, align 4
@action_select_input_desc = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_KBD_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_KBD_END = common dso_local global i32 0, align 4
@action_select_input_desc_kbd = common dso_local global i32 0, align 4
@action_select_path_use_directory = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_LAST = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST = common dso_local global i32 0, align 4
@shader_action_parameter_preset_select = common dso_local global i32 0, align 4
@shader_action_parameter_select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @menu_cbs_init_bind_select_compare_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_select_compare_type(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MENU_SETTINGS_CHEAT_BEGIN, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MENU_SETTINGS_CHEAT_END, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @action_select_cheat, align 4
  %16 = call i32 @BIND_ACTION_SELECT(i32* %14, i32 %15)
  br label %51

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_END, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @action_select_input_desc, align 4
  %28 = call i32 @BIND_ACTION_SELECT(i32* %26, i32 %27)
  br label %50

29:                                               ; preds = %21, %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_BEGIN, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_END, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @action_select_input_desc_kbd, align 4
  %40 = call i32 @BIND_ACTION_SELECT(i32* %38, i32 %39)
  br label %49

41:                                               ; preds = %33, %29
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %47 [
    i32 128, label %43
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @action_select_path_use_directory, align 4
  %46 = call i32 @BIND_ACTION_SELECT(i32* %44, i32 %45)
  br label %48

47:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50, %13
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @BIND_ACTION_SELECT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
