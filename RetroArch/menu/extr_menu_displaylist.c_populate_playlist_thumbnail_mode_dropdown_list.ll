; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_populate_playlist_thumbnail_mode_dropdown_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_populate_playlist_thumbnail_mode_dropdown_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLAYLIST_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_RIGHT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_LEFT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MENU_ENUM_LABEL_NO_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @populate_playlist_thumbnail_mode_dropdown_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_playlist_thumbnail_mode_dropdown_list(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = call i32* (...) @playlist_get_cached()
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @playlist_get_thumbnail_mode(i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PLAYLIST_THUMBNAIL_RIGHT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_RIGHT_THUMBNAIL_MODE, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_LEFT_THUMBNAIL_MODE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %68, %29
  %32 = load i64, i64* %7, align 8
  %33 = icmp ule i64 %32, 131
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %46 [
    i32 130, label %38
    i32 129, label %40
    i32 128, label %42
    i32 131, label %44
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  store i32 %39, i32* %10, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS, align 4
  store i32 %41, i32* %10, align 4
  br label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS, align 4
  store i32 %43, i32* %10, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS, align 4
  store i32 %45, i32* %10, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %44, %42, %40, %38
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @msg_hash_to_str(i32 %50)
  %52 = load i32, i32* @MENU_ENUM_LABEL_NO_ITEMS, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @menu_entries_append_enum(i32* %49, i32 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 0, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @menu_entries_set_checked(i32* %64, i64 %65, i32 1)
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %31

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71, %15, %2
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_get_thumbnail_mode(i32*, i32) #1

declare dso_local i64 @menu_entries_append_enum(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entries_set_checked(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
