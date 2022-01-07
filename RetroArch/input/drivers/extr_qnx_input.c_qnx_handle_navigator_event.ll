; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_handle_navigator_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_qnx_input.c_qnx_handle_navigator_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETROK_BACKSPACE = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@CMD_EVENT_MENU_TOGGLE = common dso_local global i32 0, align 4
@RARCH_CTL_SET_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @qnx_handle_navigator_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx_handle_navigator_event(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @bps_event_get_code(i32* %8)
  switch i32 %9, label %52 [
    i32 133, label %10
    i32 136, label %23
    i32 129, label %26
    i32 137, label %51
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @navigator_event_get_syskey_key(i32* %11)
  switch i32 %12, label %21 [
    i32 135, label %13
    i32 132, label %20
    i32 134, label %20
  ]

13:                                               ; preds = %10
  %14 = load i32, i32* @RETROK_BACKSPACE, align 4
  %15 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %16 = call i32 @input_keyboard_event(i32 1, i32 %14, i32 0, i32 0, i32 %15)
  %17 = load i32, i32* @RETROK_BACKSPACE, align 4
  %18 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %19 = call i32 @input_keyboard_event(i32 0, i32 %17, i32 0, i32 0, i32 %18)
  br label %22

20:                                               ; preds = %10, %10
  br label %22

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %20, %13
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* @CMD_EVENT_MENU_TOGGLE, align 4
  %25 = call i32 @command_event(i32 %24, i32* null)
  br label %53

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @navigator_event_get_window_state(i32* %27)
  switch i32 %28, label %50 [
    i32 128, label %29
    i32 130, label %29
    i32 131, label %49
  ]

29:                                               ; preds = %26, %26
  br label %30

30:                                               ; preds = %29, %47
  %31 = call i32 @bps_get_event(i32** %6, i32 -1)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @bps_event_get_code(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @navigator_event_get_window_state(i32* %37)
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %48

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 137
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %57

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %41
  br label %30

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %26, %49, %48
  br label %53

51:                                               ; preds = %2
  br label %57

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %50, %23, %22
  br label %60

54:                                               ; No predecessors!
  %55 = load i32, i32* @CMD_EVENT_MENU_TOGGLE, align 4
  %56 = call i32 @command_event(i32 %55, i32* null)
  br label %60

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @RARCH_CTL_SET_SHUTDOWN, align 4
  %59 = call i32 @rarch_ctl(i32 %58, i32* null)
  br label %60

60:                                               ; preds = %57, %54, %53
  ret void
}

declare dso_local i32 @bps_event_get_code(i32*) #1

declare dso_local i32 @navigator_event_get_syskey_key(i32*) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @navigator_event_get_window_state(i32*) #1

declare dso_local i32 @bps_get_event(i32**, i32) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
