; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_flash_hal_iram.c_spi_flash_hal_common_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/src/hal/extr_spi_flash_hal_iram.c_spi_flash_hal_common_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@SPI_FLASH_FASTRD = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_flash_hal_common_command(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32)** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_FLASH_FASTRD, align 4
  %14 = call i32 %8(%struct.TYPE_9__* %9, i32 %12, i32 0, i32 0, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32* @get_spi_dev(%struct.TYPE_9__* %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @spi_flash_ll_set_dummy(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spi_flash_ll_set_miso_bitlen(i32* %25, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @spi_flash_ll_set_mosi_bitlen(i32* %30, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spi_flash_ll_write_word(i32* %35, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @spi_flash_ll_user_start(i32* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 %44(%struct.TYPE_9__* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spi_flash_ll_get_buffer_data(i32* %47, i32 %50, i32 8)
  %52 = load i32, i32* @ESP_OK, align 4
  ret i32 %52
}

declare dso_local i32* @get_spi_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @spi_flash_ll_set_dummy(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_set_miso_bitlen(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_set_mosi_bitlen(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_write_word(i32*, i32) #1

declare dso_local i32 @spi_flash_ll_user_start(i32*) #1

declare dso_local i32 @spi_flash_ll_get_buffer_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
