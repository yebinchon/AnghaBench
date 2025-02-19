; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_flash_hal_iram.c_spi_flash_hal_erase_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_flash_hal_iram.c_spi_flash_hal_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }

@ADDRESS_MASK_24BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_flash_hal_erase_block(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32* @get_spi_dev(%struct.TYPE_5__* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @spi_flash_ll_set_addr_bitlen(i32* %8, i32 24)
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ADDRESS_MASK_24BIT, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @spi_flash_ll_set_address(i32* %10, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @spi_flash_ll_erase_block(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_5__* %20)
  ret void
}

declare dso_local i32* @get_spi_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @spi_flash_ll_set_addr_bitlen(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_set_address(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_erase_block(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
