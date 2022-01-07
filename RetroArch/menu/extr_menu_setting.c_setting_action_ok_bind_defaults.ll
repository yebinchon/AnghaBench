; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_ok_bind_defaults.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_ok_bind_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i8*, i32, i8*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@retro_keybinds_rest = common dso_local global %struct.retro_keybind* null, align 8
@retro_keybinds_1 = common dso_local global %struct.retro_keybind* null, align 8
@MENU_SETTINGS_BIND_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_BIND_LAST = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i8* null, align 8
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @setting_action_ok_bind_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_action_ok_bind_defaults(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.retro_keybind*, align 8
  %9 = alloca %struct.retro_keybind*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.retro_keybind* null, %struct.retro_keybind** %8, align 8
  store %struct.retro_keybind* null, %struct.retro_keybind** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %15, i64 %18
  %20 = load %struct.retro_keybind*, %struct.retro_keybind** %19, align 8
  %21 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %20, i64 0
  store %struct.retro_keybind* %21, %struct.retro_keybind** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load %struct.retro_keybind*, %struct.retro_keybind** @retro_keybinds_rest, align 8
  br label %30

28:                                               ; preds = %14
  %29 = load %struct.retro_keybind*, %struct.retro_keybind** @retro_keybinds_1, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi %struct.retro_keybind* [ %27, %26 ], [ %29, %28 ]
  store %struct.retro_keybind* %31, %struct.retro_keybind** %9, align 8
  %32 = load i32, i32* @MENU_SETTINGS_BIND_BEGIN, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @MENU_SETTINGS_BIND_LAST, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = call i32 @menu_input_key_bind_set_min_max(%struct.TYPE_6__* %7)
  %37 = load i32, i32* @MENU_SETTINGS_BIND_BEGIN, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %62, %30
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MENU_SETTINGS_BIND_LAST, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load %struct.retro_keybind*, %struct.retro_keybind** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MENU_SETTINGS_BIND_BEGIN, align 4
  %46 = sub i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %43, i64 %47
  %49 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @NO_BTN, align 8
  %54 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %55 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @AXIS_NONE, align 4
  %57 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %58 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @NO_BTN, align 8
  %60 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %61 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %66 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %65, i32 1
  store %struct.retro_keybind* %66, %struct.retro_keybind** %8, align 8
  br label %38

67:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @menu_input_key_bind_set_min_max(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
