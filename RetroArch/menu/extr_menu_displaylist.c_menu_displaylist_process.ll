; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MENU_NAVIGATION_CTL_CLEAR = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@new_entry = common dso_local global i8* null, align 8
@new_path_entry = common dso_local global i8* null, align 8
@new_lbl_entry = common dso_local global i8* null, align 8
@new_type = common dso_local global i32 0, align 4
@FILE_TYPE_CORE = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_REFRESH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE = common dso_local global i32 0, align 4
@MENU_INFO_MESSAGE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_UPDATER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SIDELOAD_CORE_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_START_NET_RETROPAD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_START_VIDEO_PROCESSOR = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DOWNLOAD_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_START_NET_RETROPAD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_START_VIDEO_PROCESSOR = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_displaylist_process(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %11 = load i32, i32* @MENU_NAVIGATION_CTL_CLEAR, align 4
  %12 = call i32 @menu_driver_ctl(i32 %11, i32* %4)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %20 = call i32 @menu_entries_ctl(i32 %19, i32* %5)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @file_list_sort_on_alt(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i8*, i8** @new_entry, align 8
  %39 = call i32 @string_is_empty(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** @new_path_entry, align 8
  %46 = load i8*, i8** @new_lbl_entry, align 8
  %47 = load i32, i32* @new_type, align 4
  %48 = load i32, i32* @FILE_TYPE_CORE, align 4
  %49 = call i32 @menu_entries_prepend(i32* %44, i8* %45, i8* %46, i32 %47, i32 %48, i32 0, i32 0)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** @new_entry, align 8
  %54 = call i32 @file_list_set_alt_at_offset(i32* %52, i32 0, i8* %53)
  %55 = load i32, i32* @MSG_UNKNOWN, align 4
  store i32 %55, i32* @new_type, align 4
  %56 = load i8*, i8** @new_lbl_entry, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** @new_path_entry, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** @new_entry, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %41, %37
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @MENU_ENTRIES_CTL_REFRESH, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @menu_entries_ctl(i32 %68, i32* %71)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @menu_navigation_set_selection(i64 %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE, align 4
  %96 = call i32 @msg_hash_to_str(i32 %95)
  %97 = load i32, i32* @MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE, align 4
  %98 = call i32 @msg_hash_to_str(i32 %97)
  %99 = load i32, i32* @MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE, align 4
  %100 = load i32, i32* @MENU_INFO_MESSAGE, align 4
  %101 = call i32 @menu_entries_append_enum(i32* %94, i32 %96, i32 %98, i32 %99, i32 %100, i32 0, i32 0)
  br label %102

102:                                              ; preds = %91, %86
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = call i32 @menu_driver_populate_entries(%struct.TYPE_9__* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ui_companion_driver_notify_list_loaded(i32* %107, i32 %110)
  br label %112

112:                                              ; preds = %102, %81
  ret i32 1
}

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @file_list_sort_on_alt(i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @menu_entries_prepend(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @file_list_set_alt_at_offset(i32*, i32, i8*) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_entries_append_enum(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_driver_populate_entries(%struct.TYPE_9__*) #1

declare dso_local i32 @ui_companion_driver_notify_list_loaded(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
