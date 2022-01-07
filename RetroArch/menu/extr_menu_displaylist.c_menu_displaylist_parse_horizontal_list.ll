; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }
%struct.item_file = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MENU_LIST_TABS = common dso_local global i32 0, align 4
@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_COLLECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @menu_displaylist_parse_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_horizontal_list(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.item_file*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  store %struct.item_file* null, %struct.item_file** %11, align 8
  %16 = call i32 @menu_driver_list_get_selection(%struct.TYPE_10__* %8)
  %17 = load i32, i32* @MENU_LIST_TABS, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = call i32 @menu_driver_list_get_size(%struct.TYPE_10__* %8)
  %20 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = sub nsw i64 %23, %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = call i32 @menu_driver_list_get_entry(%struct.TYPE_10__* %9)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.item_file*
  store %struct.item_file* %32, %struct.item_file** %11, align 8
  %33 = load %struct.item_file*, %struct.item_file** %11, align 8
  %34 = icmp ne %struct.item_file* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %89

36:                                               ; preds = %3
  %37 = load %struct.item_file*, %struct.item_file** %11, align 8
  %38 = getelementptr inbounds %struct.item_file, %struct.item_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @string_is_empty(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %12, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %13, align 8
  %47 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %14, align 8
  %50 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %15, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %51, align 16
  %52 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %52, align 16
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.item_file*, %struct.item_file** %11, align 8
  %58 = getelementptr inbounds %struct.item_file, %struct.item_file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = trunc i64 %44 to i32
  %61 = call i32 @fill_pathname_join(i8* %46, i32 %56, i32 %59, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @menu_displaylist_set_new_playlist(i32* %62, i8* %46)
  %64 = load %struct.item_file*, %struct.item_file** %11, align 8
  %65 = getelementptr inbounds %struct.item_file, %struct.item_file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = trunc i64 %48 to i32
  %68 = call i32 @fill_pathname_base_noext(i8* %49, i32 %66, i32 %67)
  %69 = trunc i64 %48 to i32
  %70 = call i32 @menu_driver_set_thumbnail_system(i8* %49, i32 %69)
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %42, %36
  %73 = call i32* (...) @playlist_get_cached()
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @playlist_qsort(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @MENU_ENUM_LABEL_COLLECTION, align 4
  %86 = call i32 @msg_hash_to_str(i32 %85)
  %87 = call i32 @menu_displaylist_parse_playlist(i32* %83, i32* %84, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %82, %72
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %35
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @menu_driver_list_get_selection(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_driver_list_get_size(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_driver_list_get_entry(%struct.TYPE_10__*) #1

declare dso_local i32 @string_is_empty(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @fill_pathname_join(i8*, i32, i32, i32) #1

declare dso_local i32 @menu_displaylist_set_new_playlist(i32*, i8*) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i32, i32) #1

declare dso_local i32 @menu_driver_set_thumbnail_system(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_qsort(i32*) #1

declare dso_local i32 @menu_displaylist_parse_playlist(i32*, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
