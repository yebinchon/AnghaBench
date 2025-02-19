; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_handle_keyboard.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_handle_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_event = type { i32, i32, i32 }

@udev_key_state = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.input_event*, i32*)* @udev_handle_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udev_handle_keyboard(i8* %0, %struct.input_event* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_event*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.input_event* %1, %struct.input_event** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.input_event*, %struct.input_event** %5, align 8
  %9 = getelementptr inbounds %struct.input_event, %struct.input_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load %struct.input_event*, %struct.input_event** %5, align 8
  %13 = getelementptr inbounds %struct.input_event, %struct.input_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unify_ev_key_code(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.input_event*, %struct.input_event** %5, align 8
  %17 = getelementptr inbounds %struct.input_event, %struct.input_event* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = call i32 (...) @video_driver_has_focus()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @udev_key_state, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BIT_SET(i32 %24, i32 %25)
  br label %31

27:                                               ; preds = %20, %11
  %28 = load i32, i32* @udev_key_state, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @BIT_CLEAR(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.input_event*, %struct.input_event** %5, align 8
  %33 = getelementptr inbounds %struct.input_event, %struct.input_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @input_keymaps_translate_keysym_to_rk(i32 %35)
  %37 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %38 = call i32 @input_keyboard_event(i32 %34, i32 %36, i32 0, i32 0, i32 %37)
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @input_unify_ev_key_code(i32) #1

declare dso_local i32 @video_driver_has_focus(...) #1

declare dso_local i32 @BIT_SET(i32, i32) #1

declare dso_local i32 @BIT_CLEAR(i32, i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
