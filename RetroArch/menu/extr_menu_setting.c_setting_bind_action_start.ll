; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_bind_action_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_bind_action_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.retro_keybind = type { i8*, i32, i32, i8* }

@retro_keybinds_1 = common dso_local global i64 0, align 8
@NO_BTN = common dso_local global i8* null, align 8
@AXIS_NONE = common dso_local global i32 0, align 4
@retro_keybinds_rest = common dso_local global i64 0, align 8
@MENU_SETTINGS_BIND_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @setting_bind_action_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_bind_action_start(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.retro_keybind*, align 8
  %6 = alloca %struct.retro_keybind*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.retro_keybind* null, %struct.retro_keybind** %5, align 8
  %7 = load i64, i64* @retro_keybinds_1, align 8
  %8 = inttoptr i64 %7 to %struct.retro_keybind*
  store %struct.retro_keybind* %8, %struct.retro_keybind** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.retro_keybind*
  store %struct.retro_keybind* %18, %struct.retro_keybind** %5, align 8
  %19 = load %struct.retro_keybind*, %struct.retro_keybind** %5, align 8
  %20 = icmp ne %struct.retro_keybind* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %52

22:                                               ; preds = %12
  %23 = load i8*, i8** @NO_BTN, align 8
  %24 = load %struct.retro_keybind*, %struct.retro_keybind** %5, align 8
  %25 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @AXIS_NONE, align 4
  %27 = load %struct.retro_keybind*, %struct.retro_keybind** %5, align 8
  %28 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* @retro_keybinds_rest, align 8
  %35 = inttoptr i64 %34 to %struct.retro_keybind*
  store %struct.retro_keybind* %35, %struct.retro_keybind** %6, align 8
  br label %36

36:                                               ; preds = %33, %22
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @setting_get_bind_type(%struct.TYPE_8__* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MENU_SETTINGS_BIND_BEGIN, align 4
  %42 = sub i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %39, i64 %43
  %45 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.retro_keybind*, %struct.retro_keybind** %5, align 8
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** @NO_BTN, align 8
  %50 = load %struct.retro_keybind*, %struct.retro_keybind** %5, align 8
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %36, %21, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @setting_get_bind_type(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
