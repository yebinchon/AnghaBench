; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bind_right_generic = common dso_local global i32 0, align 4
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
@action_right_mainmenu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_right(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
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
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = call i32 (...) @menu_cbs_exit()
  store i32 %19, i32* %8, align 4
  br label %115

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @bind_right_generic, align 4
  %23 = call i32 @BIND_ACTION_RIGHT(i32* %21, i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @MENU_SETTING_NO_ITEM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %20
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %30 = call i32 @msg_hash_to_str(i32 %29)
  %31 = call i64 @string_is_equal(i8* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %93, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = call i64 @string_is_equal(i8* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %93, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  %41 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %42 = call i32 @msg_hash_to_str(i32 %41)
  %43 = call i64 @string_is_equal(i8* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %93, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %48 = call i32 @msg_hash_to_str(i32 %47)
  %49 = call i64 @string_is_equal(i8* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %54 = call i32 @msg_hash_to_str(i32 %53)
  %55 = call i64 @string_is_equal(i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %60 = call i32 @msg_hash_to_str(i32 %59)
  %61 = call i64 @string_is_equal(i8* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %66 = call i32 @msg_hash_to_str(i32 %65)
  %67 = call i64 @string_is_equal(i8* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = call i64 @string_is_equal(i8* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %78 = call i32 @msg_hash_to_str(i32 %77)
  %79 = call i64 @string_is_equal(i8* %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %84 = call i32 @msg_hash_to_str(i32 %83)
  %85 = call i64 @string_is_equal(i8* %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %90 = call i32 @msg_hash_to_str(i32 %89)
  %91 = call i64 @string_is_equal(i8* %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @action_right_mainmenu, align 4
  %96 = call i32 @BIND_ACTION_RIGHT(i32* %94, i32 %95)
  store i32 0, i32* %8, align 4
  br label %115

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %20
  %99 = load i32*, i32** %9, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @menu_cbs_init_bind_right_compare_label(i32* %99, i8* %100, i32 %101, i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %115

106:                                              ; preds = %98
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = call i64 @menu_cbs_init_bind_right_compare_type(i32* %107, i32 %108, i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %115

113:                                              ; preds = %106
  %114 = call i32 (...) @menu_cbs_exit()
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %112, %105, %93, %18
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @BIND_ACTION_RIGHT(i32*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @menu_cbs_init_bind_right_compare_label(i32*, i8*, i32, i8*) #1

declare dso_local i64 @menu_cbs_init_bind_right_compare_type(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
