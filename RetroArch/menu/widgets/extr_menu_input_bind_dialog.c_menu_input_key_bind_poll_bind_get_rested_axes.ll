; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_get_rested_axes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_get_rested_axes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }

@MENU_MAX_AXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu_bind_state*, i32)* @menu_input_key_bind_poll_bind_get_rested_axes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_key_bind_poll_bind_get_rested_axes(%struct.menu_bind_state* %0, i32 %1) #0 {
  %3 = alloca %struct.menu_bind_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.menu_bind_state* %0, %struct.menu_bind_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32* (...) @input_driver_get_joypad_driver()
  store i32* %8, i32** %6, align 8
  %9 = call i32* (...) @input_driver_get_sec_joypad_driver()
  store i32* %9, i32** %7, align 8
  %10 = load %struct.menu_bind_state*, %struct.menu_bind_state** %3, align 8
  %11 = icmp ne %struct.menu_bind_state* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %68

16:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MENU_MAX_AXES, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @input_joypad_axis_raw(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.menu_bind_state*, %struct.menu_bind_state** %3, align 8
  %27 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %25, i8** %36, align 8
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MENU_MAX_AXES, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i8* @input_joypad_axis_raw(i32* %49, i32 %50, i32 %51)
  %53 = load %struct.menu_bind_state*, %struct.menu_bind_state** %3, align 8
  %54 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %52, i8** %63, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %44

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %15, %67, %40
  ret void
}

declare dso_local i32* @input_driver_get_joypad_driver(...) #1

declare dso_local i32* @input_driver_get_sec_joypad_driver(...) #1

declare dso_local i8* @input_joypad_axis_raw(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
