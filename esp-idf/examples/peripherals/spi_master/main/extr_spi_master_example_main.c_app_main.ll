; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@PARALLEL_LINES = common dso_local global i32 0, align 4
@PIN_NUM_CLK = common dso_local global i32 0, align 4
@PIN_NUM_MOSI = common dso_local global i32 0, align 4
@PIN_NUM_MISO = common dso_local global i32 0, align 4
@lcd_spi_pre_transfer_callback = common dso_local global i32 0, align 4
@PIN_NUM_CS = common dso_local global i32 0, align 4
@LCD_HOST = common dso_local global i32 0, align 4
@DMA_CHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 -1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %8 = load i32, i32* @PARALLEL_LINES, align 4
  %9 = mul nsw i32 %8, 320
  %10 = mul nsw i32 %9, 2
  %11 = add nsw i32 %10, 8
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %13 = load i32, i32* @PIN_NUM_CLK, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %15 = load i32, i32* @PIN_NUM_MOSI, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %17 = load i32, i32* @PIN_NUM_MISO, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 10000000, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 7, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %21 = load i32, i32* @lcd_spi_pre_transfer_callback, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %23 = load i32, i32* @PIN_NUM_CS, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @LCD_HOST, align 4
  %26 = load i32, i32* @DMA_CHAN, align 4
  %27 = call i32 @spi_bus_initialize(i32 %25, %struct.TYPE_6__* %3, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = load i32, i32* @LCD_HOST, align 4
  %31 = call i32 @spi_bus_add_device(i32 %30, %struct.TYPE_5__* %4, i32* %2)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @lcd_init(i32 %34)
  %36 = call i32 (...) @pretty_effect_init()
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ESP_ERROR_CHECK(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @display_pretty_colors(i32 %39)
  ret void
}

declare dso_local i32 @spi_bus_initialize(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @spi_bus_add_device(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @lcd_init(i32) #1

declare dso_local i32 @pretty_effect_init(...) #1

declare dso_local i32 @display_pretty_colors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
