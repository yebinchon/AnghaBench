; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_pad_functions.c_wiiu_pad_set_axis_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_pad_functions.c_wiiu_pad_set_axis_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@WIIU_DEVICE_INDEX_TOUCHPAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiu_pad_set_axis_value([2 x i32]* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca [2 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load [2 x i32]*, [2 x i32]** %8, align 8
  %17 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %17
  %19 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load [2 x i32]*, [2 x i32]** %8, align 8
  %23 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 %23
  %25 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load [2 x i32]*, [2 x i32]** %8, align 8
  %29 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 %29
  %31 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load [2 x i32]*, [2 x i32]** %8, align 8
  %35 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 %35
  %37 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load [2 x i32]*, [2 x i32]** %8, align 8
  %41 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 %41
  %43 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load [2 x i32]*, [2 x i32]** %8, align 8
  %47 = load i64, i64* @WIIU_DEVICE_INDEX_TOUCHPAD, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 %47
  %49 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 %49
  store i32 %45, i32* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
