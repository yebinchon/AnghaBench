; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps3_input.c_ps3_input_set_sensor_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps3_input.c_ps3_input_set_sensor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CELL_PAD_CAPABILITY_SENSOR_MODE = common dso_local global i32 0, align 4
@CELL_PAD_SETTING_SENSOR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @ps3_input_set_sensor_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3_input_set_sensor_state(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %33 [
    i32 128, label %13
    i32 129, label %30
  ]

13:                                               ; preds = %4
  %14 = call i32 @cellPadGetInfo2(%struct.TYPE_3__* %10)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CELL_PAD_CAPABILITY_SENSOR_MODE, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CELL_PAD_CAPABILITY_SENSOR_MODE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %34

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CELL_PAD_SETTING_SENSOR_ON, align 4
  %29 = call i32 @cellPadSetPortSetting(i32 %27, i32 %28)
  store i32 1, i32* %5, align 4
  br label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cellPadSetPortSetting(i32 %31, i32 0)
  store i32 1, i32* %5, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %30, %26, %25
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @cellPadGetInfo2(%struct.TYPE_3__*) #1

declare dso_local i32 @cellPadSetPortSetting(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
