; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_basic_config/main/extr_mcpwm_basic_config_example.c_mcpwm_example_gpio_initialize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_basic_config/main/extr_mcpwm_basic_config_example.c_mcpwm_example_gpio_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"initializing mcpwm gpio...\0A\00", align 1
@GPIO_CAP2_IN = common dso_local global i32 0, align 4
@GPIO_CAP1_IN = common dso_local global i32 0, align 4
@GPIO_CAP0_IN = common dso_local global i32 0, align 4
@GPIO_FAULT2_IN = common dso_local global i32 0, align 4
@GPIO_FAULT1_IN = common dso_local global i32 0, align 4
@GPIO_FAULT0_IN = common dso_local global i32 0, align 4
@GPIO_SYNC2_IN = common dso_local global i32 0, align 4
@GPIO_SYNC1_IN = common dso_local global i32 0, align 4
@GPIO_SYNC0_IN = common dso_local global i32 0, align 4
@GPIO_PWM2B_OUT = common dso_local global i32 0, align 4
@GPIO_PWM2A_OUT = common dso_local global i32 0, align 4
@GPIO_PWM1B_OUT = common dso_local global i32 0, align 4
@GPIO_PWM1A_OUT = common dso_local global i32 0, align 4
@GPIO_PWM0B_OUT = common dso_local global i32 0, align 4
@GPIO_PWM0A_OUT = common dso_local global i32 0, align 4
@MCPWM_UNIT_0 = common dso_local global i32 0, align 4
@MCPWM0A = common dso_local global i32 0, align 4
@MCPWM0B = common dso_local global i32 0, align 4
@MCPWM1A = common dso_local global i32 0, align 4
@MCPWM1B = common dso_local global i32 0, align 4
@MCPWM2A = common dso_local global i32 0, align 4
@MCPWM2B = common dso_local global i32 0, align 4
@MCPWM_CAP_0 = common dso_local global i32 0, align 4
@MCPWM_CAP_1 = common dso_local global i32 0, align 4
@MCPWM_CAP_2 = common dso_local global i32 0, align 4
@MCPWM_FAULT_0 = common dso_local global i32 0, align 4
@MCPWM_FAULT_1 = common dso_local global i32 0, align 4
@MCPWM_FAULT_2 = common dso_local global i32 0, align 4
@MCPWM_SYNC_0 = common dso_local global i32 0, align 4
@MCPWM_SYNC_1 = common dso_local global i32 0, align 4
@MCPWM_SYNC_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mcpwm_example_gpio_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcpwm_example_gpio_initialize() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i32, i32* @GPIO_CAP2_IN, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %6 = load i32, i32* @GPIO_CAP1_IN, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %8 = load i32, i32* @GPIO_CAP0_IN, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %10 = load i32, i32* @GPIO_FAULT2_IN, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %12 = load i32, i32* @GPIO_FAULT1_IN, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %14 = load i32, i32* @GPIO_FAULT0_IN, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %16 = load i32, i32* @GPIO_SYNC2_IN, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %18 = load i32, i32* @GPIO_SYNC1_IN, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  %20 = load i32, i32* @GPIO_SYNC0_IN, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  %22 = load i32, i32* @GPIO_PWM2B_OUT, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  %24 = load i32, i32* @GPIO_PWM2A_OUT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  %26 = load i32, i32* @GPIO_PWM1B_OUT, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  %28 = load i32, i32* @GPIO_PWM1A_OUT, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  %30 = load i32, i32* @GPIO_PWM0B_OUT, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  %32 = load i32, i32* @GPIO_PWM0A_OUT, align 4
  store i32 %32, i32* %31, align 4
  %33 = load i32, i32* @MCPWM_UNIT_0, align 4
  %34 = call i32 @mcpwm_set_pin(i32 %33, %struct.TYPE_3__* %1)
  %35 = load i32, i32* @GPIO_CAP0_IN, align 4
  %36 = call i32 @gpio_pulldown_en(i32 %35)
  %37 = load i32, i32* @GPIO_CAP1_IN, align 4
  %38 = call i32 @gpio_pulldown_en(i32 %37)
  %39 = load i32, i32* @GPIO_CAP2_IN, align 4
  %40 = call i32 @gpio_pulldown_en(i32 %39)
  %41 = load i32, i32* @GPIO_SYNC0_IN, align 4
  %42 = call i32 @gpio_pulldown_en(i32 %41)
  %43 = load i32, i32* @GPIO_SYNC1_IN, align 4
  %44 = call i32 @gpio_pulldown_en(i32 %43)
  %45 = load i32, i32* @GPIO_SYNC2_IN, align 4
  %46 = call i32 @gpio_pulldown_en(i32 %45)
  %47 = load i32, i32* @GPIO_FAULT0_IN, align 4
  %48 = call i32 @gpio_pulldown_en(i32 %47)
  %49 = load i32, i32* @GPIO_FAULT1_IN, align 4
  %50 = call i32 @gpio_pulldown_en(i32 %49)
  %51 = load i32, i32* @GPIO_FAULT2_IN, align 4
  %52 = call i32 @gpio_pulldown_en(i32 %51)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mcpwm_set_pin(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @gpio_pulldown_en(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
