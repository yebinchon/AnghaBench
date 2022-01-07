; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_xinput_joypad.c_xinput_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, i32)* }

@g_xinput_states = common dso_local global %struct.TYPE_7__* null, align 8
@XINPUT_GAMEPAD_DPAD_UP = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_DOWN = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_LEFT = common dso_local global i32 0, align 4
@XINPUT_GAMEPAD_DPAD_RIGHT = common dso_local global i32 0, align 4
@g_xinput_num_buttons = common dso_local global i32 0, align 4
@button_index_to_bitmap_code = common dso_local global i32* null, align 8
@dinput_joypad = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xinput_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xinput_joypad_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pad_index_to_xuser_index(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_xinput_states, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_xinput_states, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @GET_HAT_DIR(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %50 [
    i32 128, label %34
    i32 131, label %38
    i32 130, label %42
    i32 129, label %46
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @XINPUT_GAMEPAD_DPAD_UP, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @XINPUT_GAMEPAD_DPAD_DOWN, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @XINPUT_GAMEPAD_DPAD_LEFT, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @XINPUT_GAMEPAD_DPAD_RIGHT, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %64

51:                                               ; preds = %19
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @g_xinput_num_buttons, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** @button_index_to_bitmap_code, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %56, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %55, %50, %46, %42, %38, %34, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pad_index_to_xuser_index(i32) #1

declare dso_local i32 @GET_HAT_DIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
