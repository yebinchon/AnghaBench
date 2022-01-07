; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_brushed_dc_control/main/extr_mcpwm_brushed_dc_control_example.c_mcpwm_example_brushed_motor_control.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_brushed_dc_control/main/extr_mcpwm_brushed_dc_control_example.c_mcpwm_example_brushed_motor_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Configuring Initial Parameters of mcpwm...\0A\00", align 1
@MCPWM_UP_COUNTER = common dso_local global i32 0, align 4
@MCPWM_DUTY_MODE_0 = common dso_local global i32 0, align 4
@MCPWM_UNIT_0 = common dso_local global i32 0, align 4
@MCPWM_TIMER_0 = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mcpwm_example_brushed_motor_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcpwm_example_brushed_motor_control(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @mcpwm_example_gpio_initialize()
  %5 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 1000, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @MCPWM_UP_COUNTER, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @MCPWM_DUTY_MODE_0, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @MCPWM_UNIT_0, align 4
  %14 = load i32, i32* @MCPWM_TIMER_0, align 4
  %15 = call i32 @mcpwm_init(i32 %13, i32 %14, %struct.TYPE_3__* %3)
  br label %16

16:                                               ; preds = %1, %16
  %17 = load i32, i32* @MCPWM_UNIT_0, align 4
  %18 = load i32, i32* @MCPWM_TIMER_0, align 4
  %19 = call i32 @brushed_motor_forward(i32 %17, i32 %18, double 5.000000e+01)
  %20 = load i32, i32* @portTICK_RATE_MS, align 4
  %21 = sdiv i32 2000, %20
  %22 = call i32 @vTaskDelay(i32 %21)
  %23 = load i32, i32* @MCPWM_UNIT_0, align 4
  %24 = load i32, i32* @MCPWM_TIMER_0, align 4
  %25 = call i32 @brushed_motor_backward(i32 %23, i32 %24, double 3.000000e+01)
  %26 = load i32, i32* @portTICK_RATE_MS, align 4
  %27 = sdiv i32 2000, %26
  %28 = call i32 @vTaskDelay(i32 %27)
  %29 = load i32, i32* @MCPWM_UNIT_0, align 4
  %30 = load i32, i32* @MCPWM_TIMER_0, align 4
  %31 = call i32 @brushed_motor_stop(i32 %29, i32 %30)
  %32 = load i32, i32* @portTICK_RATE_MS, align 4
  %33 = sdiv i32 2000, %32
  %34 = call i32 @vTaskDelay(i32 %33)
  br label %16
}

declare dso_local i32 @mcpwm_example_gpio_initialize(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mcpwm_init(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @brushed_motor_forward(i32, i32, double) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @brushed_motor_backward(i32, i32, double) #1

declare dso_local i32 @brushed_motor_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
