; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_rom_patch.c_esp_rom_spiflash_unlock.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_rom_patch.c_esp_rom_spiflash_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rom_spiflash_chip = common dso_local global i32 0, align 4
@ESP_ROM_SPIFLASH_RESULT_OK = common dso_local global i64 0, align 8
@ESP_ROM_SPIFLASH_RESULT_ERR = common dso_local global i64 0, align 8
@ESP_ROM_SPIFLASH_QE = common dso_local global i32 0, align 4
@SPI_FLASH_WREN = common dso_local global i32 0, align 4
@SPI_IDX = common dso_local global i32 0, align 4
@SPI_MEM_FLASH_WREN = common dso_local global i32 0, align 4
@SPI_MEM_WRSR_2B = common dso_local global i32 0, align 4
@SPI_WRSR_2B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_rom_spiflash_unlock() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @esp_rom_spiflash_wait_idle(i32* @g_rom_spiflash_chip)
  %4 = call i64 @esp_rom_spiflash_read_statushigh(i32* @g_rom_spiflash_chip, i32* %2)
  %5 = load i64, i64* @ESP_ROM_SPIFLASH_RESULT_OK, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @ESP_ROM_SPIFLASH_RESULT_ERR, align 8
  store i64 %8, i64* %1, align 8
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* @ESP_ROM_SPIFLASH_QE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 @esp_rom_spiflash_wait_idle(i32* @g_rom_spiflash_chip)
  %14 = call i32 @esp_rom_spiflash_wait_idle(i32* @g_rom_spiflash_chip)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @esp_rom_spiflash_write_status(i32* @g_rom_spiflash_chip, i32 %15)
  %17 = load i64, i64* @ESP_ROM_SPIFLASH_RESULT_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load i64, i64* @ESP_ROM_SPIFLASH_RESULT_ERR, align 8
  store i64 %20, i64* %1, align 8
  br label %23

21:                                               ; preds = %9
  %22 = load i64, i64* @ESP_ROM_SPIFLASH_RESULT_OK, align 8
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %21, %19, %7
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i32 @esp_rom_spiflash_wait_idle(i32*) #1

declare dso_local i64 @esp_rom_spiflash_read_statushigh(i32*, i32*) #1

declare dso_local i64 @esp_rom_spiflash_write_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
