; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_oneshot_fault_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_oneshot_fault_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GPIO_INTR_DISABLE = common dso_local global i32 0, align 4
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@FAULT_SIG_NUM = common dso_local global i32 0, align 4
@GPIO_PWMA_PCNT_INPUT = common dso_local global i32 0, align 4
@PCNT_CTRL_FLOATING_IO1 = common dso_local global i32 0, align 4
@GPIO_PWMB_PCNT_INPUT = common dso_local global i32 0, align 4
@PCNT_CTRL_FLOATING_IO2 = common dso_local global i32 0, align 4
@GPIO_FAULT_IN = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @oneshot_fault_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oneshot_fault_test(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* @GPIO_INTR_DISABLE, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @FAULT_SIG_NUM, align 4
  %25 = shl i32 1, %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = call i32 @gpio_config(%struct.TYPE_3__* %19)
  %28 = load i32, i32* @FAULT_SIG_NUM, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @gpio_set_level(i32 %28, i32 %32)
  %34 = load i32, i32* @GPIO_PWMA_PCNT_INPUT, align 4
  %35 = load i32, i32* @PCNT_CTRL_FLOATING_IO1, align 4
  %36 = call i32 @pcnt_init(i32 %34, i32 %35)
  %37 = load i32, i32* @GPIO_PWMB_PCNT_INPUT, align 4
  %38 = load i32, i32* @PCNT_CTRL_FLOATING_IO2, align 4
  %39 = call i32 @pcnt_init(i32 %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @mcpwm_basic_config(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @GPIO_FAULT_IN, align 4
  %48 = call i32 @mcpwm_gpio_init(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @mcpwm_fault_init(i32 %49, i32 %50, i32 %51)
  %53 = call i32 @TEST_ESP_OK(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @mcpwm_fault_set_oneshot_mode(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = call i32 @TEST_ESP_OK(i32 %59)
  %61 = load i32, i32* @portTICK_RATE_MS, align 4
  %62 = sdiv i32 1000, %61
  %63 = call i32 @vTaskDelay(i32 %62)
  %64 = load i32, i32* @FAULT_SIG_NUM, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @gpio_set_level(i32 %64, i32 %65)
  %67 = load i32, i32* @portTICK_RATE_MS, align 4
  %68 = sdiv i32 1000, %67
  %69 = call i32 @vTaskDelay(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @get_action_level(i32 %70, i32 %71, i32 %72, i32 1000, i32 5)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @mcpwm_fault_deinit(i32 %74, i32 %75)
  %77 = call i32 @TEST_ESP_OK(i32 %76)
  ret void
}

declare dso_local i32 @gpio_config(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @pcnt_init(i32, i32) #1

declare dso_local i32 @mcpwm_basic_config(i32, i32, i32, i32) #1

declare dso_local i32 @mcpwm_gpio_init(i32, i32, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @mcpwm_fault_init(i32, i32, i32) #1

declare dso_local i32 @mcpwm_fault_set_oneshot_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @get_action_level(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mcpwm_fault_deinit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
