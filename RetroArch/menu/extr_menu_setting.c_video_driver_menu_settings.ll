; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_video_driver_menu_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_video_driver_menu_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_EVENT_VIDEO_APPLY_STATE_CHANGES = common dso_local global i32 0, align 4
@MAX_GAMMA_SETTING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PAL60_ENABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ON = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PAL60_ENABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_VIDEO_FILTER_FLICKER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_VIDEO_GAMMA = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_VIDEO_SOFT_FILTER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_FILTER_FLICKER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_GAMMA = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_SOFT_FILTER = common dso_local global i32 0, align 4
@SD_FLAG_ADVANCED = common dso_local global i32 0, align 4
@SD_FLAG_CMD_APPLY_AUTO = common dso_local global i32 0, align 4
@SD_FLAG_NONE = common dso_local global i32 0, align 4
@general_read_handler = common dso_local global i32 0, align 4
@general_write_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_driver_menu_settings(i8** %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
