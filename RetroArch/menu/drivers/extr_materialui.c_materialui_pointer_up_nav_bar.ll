; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up_nav_bar.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up_nav_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32*, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@MUI_NAV_BAR_NUM_ACTION_TABS = common dso_local global i32 0, align 4
@MUI_NAV_BAR_LOCATION_RIGHT = common dso_local global i64 0, align 8
@MENU_ACTION_CANCEL = common dso_local global i32 0, align 4
@CMD_EVENT_MENU_TOGGLE = common dso_local global i32 0, align 4
@MENU_ACTION_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i64, i32*, i32*, i32)* @materialui_pointer_up_nav_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_pointer_up_nav_bar(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MUI_NAV_BAR_NUM_ACTION_TABS, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %20, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MUI_NAV_BAR_LOCATION_RIGHT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %9
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %20, align 4
  %39 = udiv i32 %37, %38
  %40 = udiv i32 %36, %39
  store i32 %40, i32* %21, align 4
  br label %47

41:                                               ; preds = %9
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %20, align 4
  %45 = udiv i32 %43, %44
  %46 = udiv i32 %42, %45
  store i32 %46, i32* %21, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %21, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %20, align 4
  %53 = sub i32 %52, 1
  %54 = icmp uge i32 %51, %53
  br i1 %54, label %55, label %118

55:                                               ; preds = %50, %47
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %22, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MUI_NAV_BAR_LOCATION_RIGHT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i32, i32* %21, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  br label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi %struct.TYPE_8__* [ %68, %65 ], [ %72, %69 ]
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %22, align 8
  br label %88

75:                                               ; preds = %55
  %76 = load i32, i32* %21, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  br label %86

82:                                               ; preds = %75
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi %struct.TYPE_8__* [ %81, %78 ], [ %85, %82 ]
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %22, align 8
  br label %88

88:                                               ; preds = %86, %73
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %116 [
    i32 129, label %92
    i32 128, label %104
  ]

92:                                               ; preds = %88
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %102 = call i32 @materialui_menu_entry_action(%struct.TYPE_9__* %98, i32* %99, i64 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %131

103:                                              ; preds = %92
  br label %117

104:                                              ; preds = %88
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @CMD_EVENT_MENU_TOGGLE, align 4
  %111 = call i32 @command_event(i32 %110, i32* null)
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 0, i32 -1
  store i32 %114, i32* %10, align 4
  br label %131

115:                                              ; preds = %104
  br label %117

116:                                              ; preds = %88
  br label %117

117:                                              ; preds = %116, %115, %103
  br label %130

118:                                              ; preds = %50
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* @MENU_ACTION_NOOP, align 4
  %129 = call i32 @materialui_switch_tabs(%struct.TYPE_9__* %119, i32* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %131

130:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %130, %118, %109, %97
  %132 = load i32, i32* %10, align 4
  ret i32 %132
}

declare dso_local i32 @materialui_menu_entry_action(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @materialui_switch_tabs(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
