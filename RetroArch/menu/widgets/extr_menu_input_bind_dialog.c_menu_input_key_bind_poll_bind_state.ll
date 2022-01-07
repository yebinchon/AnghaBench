; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { float, i32*, i64 }
%struct.TYPE_7__ = type { i64 (i8*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32)* }

@MENU_MAX_MBUTTONS = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETROK_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu_bind_state*, i32, i32)* @menu_input_key_bind_poll_bind_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_key_bind_poll_bind_state(%struct.menu_bind_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.menu_bind_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.menu_bind_state* %0, %struct.menu_bind_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = call %struct.TYPE_7__* (...) @input_get_ptr()
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = call i8* (...) @input_get_data()
  store i8* %14, i8** %10, align 8
  %15 = call i32* (...) @input_driver_get_joypad_driver()
  store i32* %15, i32** %11, align 8
  %16 = call i32* (...) @input_driver_get_sec_joypad_driver()
  store i32* %16, i32** %12, align 8
  %17 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %18 = icmp ne %struct.menu_bind_state* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %22 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 @memset(%struct.TYPE_8__* %23, i32 0, i32 8)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %44, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MENU_MAX_MBUTTONS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @input_mouse_button_raw(i32 %30, i32 %31)
  %33 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %34 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %32, i32* %43, align 4
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %25

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store float 0.000000e+00, float* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64 (i8*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32)*, i64 (i8*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32)** %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %59 = load i32, i32* @RETROK_RETURN, align 4
  %60 = call i64 %56(i8* %57, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %8, i32* null, i32 0, i32 %58, i32 0, i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %53, %47
  %63 = phi i1 [ true, %47 ], [ %61, %53 ]
  %64 = zext i1 %63 to i32
  %65 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %66 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @menu_input_key_bind_poll_bind_state_internal(i32* %67, %struct.menu_bind_state* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i32*, i32** %12, align 8
  %76 = load %struct.menu_bind_state*, %struct.menu_bind_state** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @menu_input_key_bind_poll_bind_state_internal(i32* %75, %struct.menu_bind_state* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %19, %74, %62
  ret void
}

declare dso_local %struct.TYPE_7__* @input_get_ptr(...) #1

declare dso_local i8* @input_get_data(...) #1

declare dso_local i32* @input_driver_get_joypad_driver(...) #1

declare dso_local i32* @input_driver_get_sec_joypad_driver(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @input_mouse_button_raw(i32, i32) #1

declare dso_local i32 @menu_input_key_bind_poll_bind_state_internal(i32*, %struct.menu_bind_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
