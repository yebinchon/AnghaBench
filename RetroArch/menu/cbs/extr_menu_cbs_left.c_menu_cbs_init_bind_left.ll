; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_menu_cbs_init_bind_left.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_menu_cbs_init_bind_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bind_left_generic = common dso_local global i32 0, align 4
@MENU_SETTING_NO_ITEM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@action_left_mainmenu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_left(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %113

19:                                               ; preds = %7
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @bind_left_generic, align 4
  %22 = call i32 @BIND_ACTION_LEFT(i32* %20, i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @MENU_SETTING_NO_ITEM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %19
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %29 = call i32 @msg_hash_to_str(i32 %28)
  %30 = call i64 @string_is_equal(i8* %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %92, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %35 = call i32 @msg_hash_to_str(i32 %34)
  %36 = call i64 @string_is_equal(i8* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %92, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %41 = call i32 @msg_hash_to_str(i32 %40)
  %42 = call i64 @string_is_equal(i8* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %47 = call i32 @msg_hash_to_str(i32 %46)
  %48 = call i64 @string_is_equal(i8* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %92, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %53 = call i32 @msg_hash_to_str(i32 %52)
  %54 = call i64 @string_is_equal(i8* %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %59 = call i32 @msg_hash_to_str(i32 %58)
  %60 = call i64 @string_is_equal(i8* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %65 = call i32 @msg_hash_to_str(i32 %64)
  %66 = call i64 @string_is_equal(i8* %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %71 = call i32 @msg_hash_to_str(i32 %70)
  %72 = call i64 @string_is_equal(i8* %69, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %77 = call i32 @msg_hash_to_str(i32 %76)
  %78 = call i64 @string_is_equal(i8* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %83 = call i32 @msg_hash_to_str(i32 %82)
  %84 = call i64 @string_is_equal(i8* %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %89 = call i32 @msg_hash_to_str(i32 %88)
  %90 = call i64 @string_is_equal(i8* %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @action_left_mainmenu, align 4
  %95 = call i32 @BIND_ACTION_LEFT(i32* %93, i32 %94)
  store i32 0, i32* %8, align 4
  br label %113

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %19
  %98 = load i32*, i32** %9, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = call i64 @menu_cbs_init_bind_left_compare_label(i32* %98, i8* %99, i32 %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %113

105:                                              ; preds = %97
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = call i64 @menu_cbs_init_bind_left_compare_type(i32* %106, i32 %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %8, align 4
  br label %113

112:                                              ; preds = %105
  store i32 -1, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %111, %104, %92, %18
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @BIND_ACTION_LEFT(i32*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @menu_cbs_init_bind_left_compare_label(i32*, i8*, i32, i8*) #1

declare dso_local i64 @menu_cbs_init_bind_left_compare_type(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
