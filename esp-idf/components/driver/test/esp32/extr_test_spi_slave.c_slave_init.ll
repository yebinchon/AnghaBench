; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_slave.c_slave_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_slave.c_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@PIN_NUM_CLK = common dso_local global i32 0, align 4
@PIN_NUM_MISO = common dso_local global i32 0, align 4
@PIN_NUM_MOSI = common dso_local global i32 0, align 4
@PIN_NUM_CS = common dso_local global i32 0, align 4
@GPIO_PULLUP_ONLY = common dso_local global i32 0, align 4
@TEST_SLAVE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @slave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_init() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %4 = load i32, i32* @PIN_NUM_CLK, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %6 = load i32, i32* @PIN_NUM_MISO, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %8 = load i32, i32* @PIN_NUM_MOSI, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 3, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %12 = load i32, i32* @PIN_NUM_CS, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @PIN_NUM_MOSI, align 4
  %15 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %16 = call i32 @gpio_set_pull_mode(i32 %14, i32 %15)
  %17 = load i32, i32* @PIN_NUM_CLK, align 4
  %18 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %19 = call i32 @gpio_set_pull_mode(i32 %17, i32 %18)
  %20 = load i32, i32* @PIN_NUM_CS, align 4
  %21 = load i32, i32* @GPIO_PULLUP_ONLY, align 4
  %22 = call i32 @gpio_set_pull_mode(i32 %20, i32 %21)
  %23 = load i32, i32* @TEST_SLAVE_HOST, align 4
  %24 = call i32 @spi_slave_initialize(i32 %23, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i32 2)
  %25 = call i32 @TEST_ESP_OK(i32 %24)
  ret void
}

declare dso_local i32 @gpio_set_pull_mode(i32, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_slave_initialize(i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
