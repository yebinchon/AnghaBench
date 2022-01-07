; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_rx_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RMT_RX_CHANNEL = common dso_local global i32 0, align 4
@RMT_RX_GPIO_NUM = common dso_local global i32 0, align 4
@RMT_CLK_DIV = common dso_local global i32 0, align 4
@RMT_MODE_RX = common dso_local global i32 0, align 4
@rmt_item32_tIMEOUT_US = common dso_local global i32 0, align 4
@RMT_TICK_10_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nec_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nec_rx_init() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = load i32, i32* @RMT_RX_CHANNEL, align 4
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* @RMT_RX_GPIO_NUM, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @RMT_CLK_DIV, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @RMT_MODE_RX, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 100, i32* %14, align 4
  %15 = load i32, i32* @rmt_item32_tIMEOUT_US, align 4
  %16 = sdiv i32 %15, 10
  %17 = load i32, i32* @RMT_TICK_10_US, align 4
  %18 = mul nsw i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = call i32 @rmt_config(%struct.TYPE_5__* %1)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rmt_driver_install(i32 %23, i32 1000, i32 0)
  ret void
}

declare dso_local i32 @rmt_config(%struct.TYPE_5__*) #1

declare dso_local i32 @rmt_driver_install(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
