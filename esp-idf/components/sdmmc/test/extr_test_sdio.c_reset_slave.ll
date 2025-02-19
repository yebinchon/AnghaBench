; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_reset_slave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sdio.c_reset_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GPIO_MODE_OUTPUT_OD = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_slave() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  store i32 18, i32* %1, align 4
  store i32 19, i32* %2, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = call i32 @BIT(i32 18)
  %6 = call i32 @BIT(i32 19)
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %9 = load i32, i32* @GPIO_MODE_OUTPUT_OD, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @gpio_config(%struct.TYPE_3__* %3)
  %11 = call i32 @TEST_ESP_OK(i32 %10)
  %12 = call i32 @gpio_set_level(i32 18, i32 0)
  %13 = call i32 @gpio_set_level(i32 19, i32 0)
  %14 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %15 = sdiv i32 10, %14
  %16 = call i32 @vTaskDelay(i32 %15)
  %17 = call i32 @gpio_set_level(i32 18, i32 1)
  %18 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %19 = sdiv i32 10, %18
  %20 = call i32 @vTaskDelay(i32 %19)
  %21 = call i32 @gpio_set_level(i32 19, i32 1)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @gpio_config(%struct.TYPE_3__*) #1

declare dso_local i32 @gpio_set_level(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
