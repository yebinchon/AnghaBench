; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up_swipe_horz_default.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up_swipe_horz_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }

@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_NONE = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_TEXT = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_SWITCH_ON = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_SWITCH_OFF = common dso_local global i32 0, align 4
@MUI_ANIM_DURATION_SCROLL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i64, i64, i32)* @materialui_pointer_up_swipe_horz_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_pointer_up_swipe_horz_default(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %24
  %30 = call i64 (...) @menu_navigation_get_selection()
  store i64 %30, i64* %14, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @materialui_menu_entry_action(%struct.TYPE_14__* %31, %struct.TYPE_13__* %32, i64 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %29
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %40 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @MUI_ENTRY_VALUE_NONE, align 4
  store i32 %41, i32* %18, align 4
  %42 = call i32 @menu_entry_init(%struct.TYPE_13__* %19)
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i32 0, i32* %46, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @menu_entry_get(%struct.TYPE_13__* %19, i32 0, i64 %47, i32* null, i32 1)
  %49 = call i32 @menu_entry_get_value(%struct.TYPE_13__* %19, i8** %15)
  %50 = call i32 @menu_entry_get_type_new(%struct.TYPE_13__* %19)
  store i32 %50, i32* %16, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @msg_hash_calculate(i8* %51)
  %53 = call i32 @msg_hash_to_file_type(i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @materialui_get_entry_value_type(%struct.TYPE_14__* %54, i8* %55, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @MUI_ENTRY_VALUE_TEXT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @MUI_ENTRY_VALUE_SWITCH_ON, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @MUI_ENTRY_VALUE_SWITCH_OFF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %64, %39
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MUI_ANIM_DURATION_SCROLL_RESET, align 4
  %78 = call i32 @materialui_animate_scroll(%struct.TYPE_14__* %73, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  br label %80

80:                                               ; preds = %79, %29
  br label %81

81:                                               ; preds = %80, %24, %6
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @materialui_menu_entry_action(%struct.TYPE_14__*, %struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @menu_entry_init(%struct.TYPE_13__*) #1

declare dso_local i32 @menu_entry_get(%struct.TYPE_13__*, i32, i64, i32*, i32) #1

declare dso_local i32 @menu_entry_get_value(%struct.TYPE_13__*, i8**) #1

declare dso_local i32 @menu_entry_get_type_new(%struct.TYPE_13__*) #1

declare dso_local i32 @msg_hash_to_file_type(i32) #1

declare dso_local i32 @msg_hash_calculate(i8*) #1

declare dso_local i32 @materialui_get_entry_value_type(%struct.TYPE_14__*, i8*, i32, i32, i32) #1

declare dso_local i32 @materialui_animate_scroll(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
