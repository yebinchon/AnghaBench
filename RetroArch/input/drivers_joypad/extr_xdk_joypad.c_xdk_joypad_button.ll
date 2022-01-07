; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xdk_joypad.c_xdk_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xdk_joypad.c_xdk_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@g_xinput_states = common dso_local global %struct.TYPE_6__* null, align 8
@XINPUT_GAMEPAD_DPAD_UP = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_DOWN = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_LEFT = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_RIGHT = common dso_local global i32 0, align 4
@button_index_to_bitmap_code = common dso_local global i32* null, align 8
@XINPUT_GAMEPAD_A = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_B = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_BACK = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_BLACK = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_LEFT_THUMB = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_LEFT_TRIGGER = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_MAX_CROSSTALK = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_RIGHT_THUMB = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_RIGHT_TRIGGER = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_START = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_WHITE = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_X = common dso_local global i64 0, align 8
@XINPUT_GAMEPAD_Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xdk_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdk_joypad_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_xinput_states, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GET_HAT_DIR(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %43 [
    i32 140, label %27
    i32 143, label %31
    i32 142, label %35
    i32 141, label %39
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @XINPUT_GAMEPAD_DPAD_UP, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @XINPUT_GAMEPAD_DPAD_DOWN, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @XINPUT_GAMEPAD_DPAD_LEFT, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @XINPUT_GAMEPAD_DPAD_RIGHT, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %56

44:                                               ; preds = %12
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** @button_index_to_bitmap_code, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %48, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47, %43, %39, %35, %31, %27, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @GET_HAT_DIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
