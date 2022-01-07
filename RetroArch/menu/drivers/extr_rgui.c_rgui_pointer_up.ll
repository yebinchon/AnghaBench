; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_pointer_up.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_pointer_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@fs_thumbnail = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MENU_ACTION_SELECT = common dso_local global i32 0, align 4
@MENU_ACTION_CANCEL = common dso_local global i32 0, align 4
@MENU_ACTION_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32*, i32*, i32)* @rgui_pointer_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgui_pointer_up(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %18, align 8
  %24 = call i32 (...) @menu_display_get_header_height()
  store i32 %24, i32* %19, align 4
  %25 = call i64 (...) @menu_navigation_get_selection()
  store i64 %25, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %118

29:                                               ; preds = %8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fs_thumbnail, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ true, %39 ], [ %46, %42 ]
  br label %49

49:                                               ; preds = %47, %34, %29
  %50 = phi i1 [ false, %34 ], [ false, %29 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %14, align 4
  switch i32 %52, label %116 [
    i32 128, label %53
    i32 129, label %53
    i32 130, label %100
  ]

53:                                               ; preds = %49, %49
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %62 = call i32 @rgui_update_thumbnail_image(%struct.TYPE_4__* %61)
  br label %68

63:                                               ; preds = %56
  %64 = load i32*, i32** %16, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %67 = call i32 @menu_entry_action(i32* %64, i64 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %118

68:                                               ; preds = %60
  br label %99

69:                                               ; preds = %53
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %77 = call i32 @menu_entry_action(i32* %74, i64 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %118

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (...) @menu_entries_get_size()
  %81 = sub nsw i32 %80, 1
  %82 = icmp ule i32 %79, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %20, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** %16, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %92 = call i32 @menu_entry_action(i32* %89, i64 %90, i32 %91)
  store i32 %92, i32* %9, align 4
  br label %118

93:                                               ; preds = %83
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @menu_navigation_set_selection(i32 %94)
  %96 = call i32 @menu_driver_navigation_set(i32 0)
  br label %97

97:                                               ; preds = %93, %78
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %68
  br label %117

100:                                              ; preds = %49
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (...) @menu_entries_get_size()
  %103 = sub nsw i32 %102, 1
  %104 = icmp ule i32 %101, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %20, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32*, i32** %16, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i32, i32* @MENU_ACTION_START, align 4
  %114 = call i32 @menu_entry_action(i32* %111, i64 %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %118

115:                                              ; preds = %105, %100
  br label %117

116:                                              ; preds = %49
  br label %117

117:                                              ; preds = %116, %115, %99
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %117, %110, %88, %73, %63, %28
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @rgui_update_thumbnail_image(%struct.TYPE_4__*) #1

declare dso_local i32 @menu_entry_action(i32*, i64, i32) #1

declare dso_local i32 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_navigation_set_selection(i32) #1

declare dso_local i32 @menu_driver_navigation_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
