; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_set_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32* }

@menu_bind_port = common dso_local global i32 0, align 4
@menu_input_binds = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@menu_input_key_bind_custom_bind_keyboard_cb = common dso_local global i32 0, align 4
@RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_input_key_bind_set_mode(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %9, align 8
  %14 = call i32* (...) @menu_driver_get_ptr()
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %59

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = call i32 @menu_input_key_bind_set_mode_common(i32 %22, %struct.TYPE_13__* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @menu_bind_port, align 4
  %39 = load i32, i32* @menu_bind_port, align 4
  %40 = call i32 @menu_input_key_bind_poll_bind_get_rested_axes(%struct.TYPE_15__* @menu_input_binds, i32 %39)
  %41 = load i32, i32* @menu_bind_port, align 4
  %42 = call i32 @menu_input_key_bind_poll_bind_state(%struct.TYPE_15__* @menu_input_binds, i32 %41, i32 0)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rarch_timer_begin_new_time(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @menu_input_binds, i32 0, i32 1), i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rarch_timer_begin_new_time(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @menu_input_binds, i32 0, i32 0), i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32* %53, i32** %54, align 8
  %55 = load i32, i32* @menu_input_key_bind_custom_bind_keyboard_cb, align 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS, align 4
  %58 = call i32 @input_keyboard_ctl(i32 %57, %struct.TYPE_14__* %7)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %27, %26, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

declare dso_local i32* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_input_key_bind_set_mode_common(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @menu_input_key_bind_poll_bind_get_rested_axes(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @menu_input_key_bind_poll_bind_state(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @rarch_timer_begin_new_time(i32*, i32) #1

declare dso_local i32 @input_keyboard_ctl(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
