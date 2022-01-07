; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_playlist_label_display_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_playlist_label_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_PARENS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_BRACKETS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_PARENS_AND_BRACKETS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_DISC_INDEX = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_REGION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_playlist_label_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_playlist_label_display_mode(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  %23 = call i32* (...) @playlist_get_cached()
  store i32* %23, i32** %22, align 8
  %24 = load i32*, i32** %22, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  br label %78

27:                                               ; preds = %10
  %28 = load i32*, i32** %22, align 8
  %29 = call i32 @playlist_get_label_display_mode(i32* %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 19, i32* %30, align 4
  %31 = load i8*, i8** %19, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = load i64, i64* %20, align 8
  %34 = call i32 @strlcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i32, i32* %21, align 4
  switch i32 %35, label %72 [
    i32 129, label %36
    i32 130, label %42
    i32 128, label %48
    i32 133, label %54
    i32 132, label %60
    i32 131, label %66
  ]

36:                                               ; preds = %27
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_PARENS, align 4
  %39 = call i8* @msg_hash_to_str(i32 %38)
  %40 = load i64, i64* %17, align 8
  %41 = call i32 @strlcpy(i8* %37, i8* %39, i64 %40)
  br label %78

42:                                               ; preds = %27
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_BRACKETS, align 4
  %45 = call i8* @msg_hash_to_str(i32 %44)
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @strlcpy(i8* %43, i8* %45, i64 %46)
  br label %78

48:                                               ; preds = %27
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_REMOVE_PARENS_AND_BRACKETS, align 4
  %51 = call i8* @msg_hash_to_str(i32 %50)
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @strlcpy(i8* %49, i8* %51, i64 %52)
  br label %78

54:                                               ; preds = %27
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_DISC_INDEX, align 4
  %57 = call i8* @msg_hash_to_str(i32 %56)
  %58 = load i64, i64* %17, align 8
  %59 = call i32 @strlcpy(i8* %55, i8* %57, i64 %58)
  br label %78

60:                                               ; preds = %27
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_REGION, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @strlcpy(i8* %61, i8* %63, i64 %64)
  br label %78

66:                                               ; preds = %27
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX, align 4
  %69 = call i8* @msg_hash_to_str(i32 %68)
  %70 = load i64, i64* %17, align 8
  %71 = call i32 @strlcpy(i8* %67, i8* %69, i64 %70)
  br label %78

72:                                               ; preds = %27
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE_DEFAULT, align 4
  %75 = call i8* @msg_hash_to_str(i32 %74)
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @strlcpy(i8* %73, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %26, %72, %66, %60, %54, %48, %42, %36
  ret void
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_get_label_display_mode(i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
