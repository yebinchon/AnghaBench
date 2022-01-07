; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_pad_functions.c_wiiu_pad_get_axis_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_pad_functions.c_wiiu_pad_get_axis_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@WIIU_DEVICE_INDEX_TOUCHPAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, [2 x i32]*, i32)* @wiiu_pad_get_axis_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiu_pad_get_axis_value(i32 %0, [2 x i32]* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store [2 x i32]* %1, [2 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %52 [
    i32 133, label %10
    i32 132, label %17
    i32 131, label %24
    i32 130, label %31
    i32 129, label %38
    i32 128, label %45
  ]

10:                                               ; preds = %3
  %11 = load [2 x i32]*, [2 x i32]** %6, align 8
  %12 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 %12
  %14 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load [2 x i32]*, [2 x i32]** %6, align 8
  %19 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 %19
  %21 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %52

24:                                               ; preds = %3
  %25 = load [2 x i32]*, [2 x i32]** %6, align 8
  %26 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 %26
  %28 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load [2 x i32]*, [2 x i32]** %6, align 8
  %33 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %33
  %35 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %52

38:                                               ; preds = %3
  %39 = load [2 x i32]*, [2 x i32]** %6, align 8
  %40 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 %40
  %42 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %3
  %46 = load [2 x i32]*, [2 x i32]** %6, align 8
  %47 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 %47
  %49 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %3, %31, %24, %17, %10
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @clamp_axis(i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %45, %38
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @clamp_axis(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
