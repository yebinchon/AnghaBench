; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_sensor_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_set_sensor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i32, i32 }

@g_android = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @android_input_set_sensor_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_set_sensor_state(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.android_app*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @g_android, align 8
  %12 = inttoptr i64 %11 to %struct.android_app*
  store %struct.android_app* %12, %struct.android_app** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 60, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %87 [
    i32 128, label %18
    i32 129, label %65
  ]

18:                                               ; preds = %16
  %19 = load %struct.android_app*, %struct.android_app** %10, align 8
  %20 = getelementptr inbounds %struct.android_app, %struct.android_app* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.android_app*, %struct.android_app** %10, align 8
  %25 = call i32 @android_input_enable_sensor_manager(%struct.android_app* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.android_app*, %struct.android_app** %10, align 8
  %28 = getelementptr inbounds %struct.android_app, %struct.android_app* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.android_app*, %struct.android_app** %10, align 8
  %33 = getelementptr inbounds %struct.android_app, %struct.android_app* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.android_app*, %struct.android_app** %10, align 8
  %36 = getelementptr inbounds %struct.android_app, %struct.android_app* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ASensorEventQueue_enableSensor(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.android_app*, %struct.android_app** %10, align 8
  %41 = getelementptr inbounds %struct.android_app, %struct.android_app* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.android_app*, %struct.android_app** %10, align 8
  %46 = getelementptr inbounds %struct.android_app, %struct.android_app* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.android_app*, %struct.android_app** %10, align 8
  %49 = getelementptr inbounds %struct.android_app, %struct.android_app* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = sdiv i64 1000, %52
  %54 = mul nsw i64 %53, 1000
  %55 = call i32 @ASensorEventQueue_setEventRate(i32 %47, i32 %50, i64 %54)
  br label %56

56:                                               ; preds = %44, %39
  %57 = load %struct.android_app*, %struct.android_app** %10, align 8
  %58 = getelementptr inbounds %struct.android_app, %struct.android_app* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BIT64_CLEAR(i32 %59, i32 129)
  %61 = load %struct.android_app*, %struct.android_app** %10, align 8
  %62 = getelementptr inbounds %struct.android_app, %struct.android_app* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT64_SET(i32 %63, i32 128)
  store i32 1, i32* %5, align 4
  br label %88

65:                                               ; preds = %16
  %66 = load %struct.android_app*, %struct.android_app** %10, align 8
  %67 = getelementptr inbounds %struct.android_app, %struct.android_app* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.android_app*, %struct.android_app** %10, align 8
  %72 = getelementptr inbounds %struct.android_app, %struct.android_app* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.android_app*, %struct.android_app** %10, align 8
  %75 = getelementptr inbounds %struct.android_app, %struct.android_app* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ASensorEventQueue_disableSensor(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.android_app*, %struct.android_app** %10, align 8
  %80 = getelementptr inbounds %struct.android_app, %struct.android_app* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @BIT64_CLEAR(i32 %81, i32 128)
  %83 = load %struct.android_app*, %struct.android_app** %10, align 8
  %84 = getelementptr inbounds %struct.android_app, %struct.android_app* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @BIT64_SET(i32 %85, i32 129)
  store i32 1, i32* %5, align 4
  br label %88

87:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %78, %56
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @android_input_enable_sensor_manager(%struct.android_app*) #1

declare dso_local i32 @ASensorEventQueue_enableSensor(i32, i32) #1

declare dso_local i32 @ASensorEventQueue_setEventRate(i32, i32, i64) #1

declare dso_local i32 @BIT64_CLEAR(i32, i32) #1

declare dso_local i32 @BIT64_SET(i32, i32) #1

declare dso_local i32 @ASensorEventQueue_disableSensor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
