; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_get_playlist_thumbnail_mode_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_get_playlist_thumbnail_mode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @get_playlist_thumbnail_mode_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_playlist_thumbnail_mode_value(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @playlist_get_thumbnail_mode(i32* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
    i32 131, label %20
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %13 = call i8* @msg_hash_to_str(i32 %12)
  store i8* %13, i8** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS, align 4
  %16 = call i8* @msg_hash_to_str(i32 %15)
  store i8* %16, i8** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS, align 4
  %19 = call i8* @msg_hash_to_str(i32 %18)
  store i8* %19, i8** %3, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS, align 4
  %22 = call i8* @msg_hash_to_str(i32 %21)
  store i8* %22, i8** %3, align 8
  br label %27

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT, align 4
  %26 = call i8* @msg_hash_to_str(i32 %25)
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %24, %20, %17, %14, %11
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @playlist_get_thumbnail_mode(i32*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
