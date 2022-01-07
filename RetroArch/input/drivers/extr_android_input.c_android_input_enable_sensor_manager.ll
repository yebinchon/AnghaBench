; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_enable_sensor_manager.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_enable_sensor_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32, i32 }

@ASENSOR_TYPE_ACCELEROMETER = common dso_local global i32 0, align 4
@LOOPER_ID_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*)* @android_input_enable_sensor_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @android_input_enable_sensor_manager(%struct.android_app* %0) #0 {
  %2 = alloca %struct.android_app*, align 8
  store %struct.android_app* %0, %struct.android_app** %2, align 8
  %3 = call i32 (...) @ASensorManager_getInstance()
  %4 = load %struct.android_app*, %struct.android_app** %2, align 8
  %5 = getelementptr inbounds %struct.android_app, %struct.android_app* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.android_app*, %struct.android_app** %2, align 8
  %7 = getelementptr inbounds %struct.android_app, %struct.android_app* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ASENSOR_TYPE_ACCELEROMETER, align 4
  %10 = call i32 @ASensorManager_getDefaultSensor(i32 %8, i32 %9)
  %11 = load %struct.android_app*, %struct.android_app** %2, align 8
  %12 = getelementptr inbounds %struct.android_app, %struct.android_app* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.android_app*, %struct.android_app** %2, align 8
  %14 = getelementptr inbounds %struct.android_app, %struct.android_app* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.android_app*, %struct.android_app** %2, align 8
  %17 = getelementptr inbounds %struct.android_app, %struct.android_app* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOOPER_ID_USER, align 4
  %20 = call i32 @ASensorManager_createEventQueue(i32 %15, i32 %18, i32 %19, i32* null, i32* null)
  %21 = load %struct.android_app*, %struct.android_app** %2, align 8
  %22 = getelementptr inbounds %struct.android_app, %struct.android_app* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @ASensorManager_getInstance(...) #1

declare dso_local i32 @ASensorManager_getDefaultSensor(i32, i32) #1

declare dso_local i32 @ASensorManager_createEventQueue(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
