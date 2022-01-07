; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_sync_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_sync_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, double, double, i32, i32 }

@GPIO_INTR_DISABLE = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@SYN_SIG_NUM = common dso_local global i32 0, align 4
@GPIO_PWMA_OUT = common dso_local global i32 0, align 4
@GPIO_PWMB_OUT = common dso_local global i32 0, align 4
@GPIO_SYNC_IN = common dso_local global i32 0, align 4
@MCPWM_DUTY_MODE_0 = common dso_local global i32 0, align 4
@MCPWM_UP_COUNTER = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @sync_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_test(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @GPIO_INTR_DISABLE, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @SYN_SIG_NUM, align 4
  %20 = shl i32 1, %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 @gpio_config(%struct.TYPE_6__* %13)
  %23 = load i32, i32* @SYN_SIG_NUM, align 4
  %24 = call i32 @gpio_set_level(i32 %23, i32 0)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GPIO_PWMA_OUT, align 4
  %28 = call i32 @mcpwm_gpio_init(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @GPIO_PWMB_OUT, align 4
  %32 = call i32 @mcpwm_gpio_init(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @GPIO_SYNC_IN, align 4
  %36 = call i32 @mcpwm_gpio_init(i32 %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 1000, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store double 5.000000e+01, double* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store double 5.000000e+01, double* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %41 = load i32, i32* @MCPWM_DUTY_MODE_0, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %43 = load i32, i32* @MCPWM_UP_COUNTER, align 4
  store i32 %43, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mcpwm_init(i32 %44, i32 %45, %struct.TYPE_5__* %14)
  %47 = load i32, i32* @GPIO_SYNC_IN, align 4
  %48 = call i32 @gpio_pulldown_en(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mcpwm_sync_enable(i32 %49, i32 %50, i32 %51, i32 200)
  %53 = load i32, i32* @SYN_SIG_NUM, align 4
  %54 = call i32 @gpio_set_level(i32 %53, i32 1)
  %55 = load i32, i32* @portTICK_RATE_MS, align 4
  %56 = sdiv i32 2000, %55
  %57 = call i32 @vTaskDelay(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mcpwm_sync_disable(i32 %58, i32 %59)
  %61 = load i32, i32* @portTICK_RATE_MS, align 4
  %62 = sdiv i32 2000, %61
  %63 = call i32 @vTaskDelay(i32 %62)
  ret void
}

declare dso_local i32 @gpio_config(%struct.TYPE_6__*) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @mcpwm_gpio_init(i32, i32, i32) #1

declare dso_local i32 @mcpwm_init(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gpio_pulldown_en(i32) #1

declare dso_local i32 @mcpwm_sync_enable(i32, i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @mcpwm_sync_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
