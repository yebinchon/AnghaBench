; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_parse_menu_entry_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_parse_menu_entry_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@MUI_ONSCREEN_ENTRY_CENTRE = common dso_local global i32 0, align 4
@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MENU_ACTION_NOOP = common dso_local global i32 0, align 4
@MUI_ONSCREEN_ENTRY_LAST = common dso_local global i32 0, align 4
@MUI_ONSCREEN_ENTRY_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @materialui_parse_menu_entry_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_parse_menu_entry_action(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %61 [
    i32 128, label %9
    i32 133, label %9
    i32 132, label %13
    i32 131, label %13
    i32 129, label %53
    i32 130, label %57
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = load i32, i32* @MUI_ONSCREEN_ENTRY_CENTRE, align 4
  %12 = call i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_7__* %10, i32 %11)
  br label %62

13:                                               ; preds = %2, %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %16 = call i32 @materialui_list_get_size(%struct.TYPE_7__* %14, i32 %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @materialui_switch_tabs(%struct.TYPE_7__* %19, i32* null, i32 %20)
  %22 = load i32, i32* @MENU_ACTION_NOOP, align 4
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* @MUI_ONSCREEN_ENTRY_CENTRE, align 4
  %41 = call i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_7__* %39, i32 %40)
  br label %51

42:                                               ; preds = %33
  %43 = call i64 (...) @menu_navigation_get_selection()
  store i64 %43, i64* %6, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @materialui_entry_onscreen(%struct.TYPE_7__* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @MENU_ACTION_NOOP, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %18
  br label %62

53:                                               ; preds = %2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = load i32, i32* @MUI_ONSCREEN_ENTRY_LAST, align 4
  %56 = call i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_7__* %54, i32 %55)
  br label %62

57:                                               ; preds = %2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* @MUI_ONSCREEN_ENTRY_FIRST, align 4
  %60 = call i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_7__* %58, i32 %59)
  br label %62

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %61, %57, %53, %52, %9
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @materialui_auto_select_onscreen_entry(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @materialui_list_get_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @materialui_switch_tabs(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @materialui_entry_onscreen(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
