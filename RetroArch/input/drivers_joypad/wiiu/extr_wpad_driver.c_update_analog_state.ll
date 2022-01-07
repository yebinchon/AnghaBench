; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_update_analog_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_update_analog_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i32]*, %struct.TYPE_7__*)* @update_analog_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_analog_state([2 x i32]* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca [2 x i32]*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store [2 x i32]* %0, [2 x i32]** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @WIIU_READ_STICK(i32 %8)
  %10 = load [2 x i32]*, [2 x i32]** %3, align 8
  %11 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 %11
  %13 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WIIU_READ_STICK(i32 %18)
  %20 = load [2 x i32]*, [2 x i32]** %3, align 8
  %21 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 %21
  %23 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WIIU_READ_STICK(i32 %28)
  %30 = load [2 x i32]*, [2 x i32]** %3, align 8
  %31 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 %31
  %33 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WIIU_READ_STICK(i32 %38)
  %40 = load [2 x i32]*, [2 x i32]** %3, align 8
  %41 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 %41
  %43 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 %43
  store i32 %39, i32* %44, align 4
  ret void
}

declare dso_local i32 @WIIU_READ_STICK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
