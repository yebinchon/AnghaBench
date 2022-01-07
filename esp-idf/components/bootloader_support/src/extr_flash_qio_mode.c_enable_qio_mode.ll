; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_enable_qio_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_enable_qio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rom_flashchip = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Initial flash chip status 0x%x\00", align 1
@CMD_WREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Updated flash chip status 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to set QIE bit, not enabling QIO mode\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"QIO mode already enabled in flash\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Enabling QIO mode...\00", align 1
@ESP_ROM_SPIFLASH_QIO_MODE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@CONFIG_BOOTLOADER_SPI_WP_PIN = common dso_local global i64 0, align 8
@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 = common dso_local global i64 0, align 8
@EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 = common dso_local global i64 0, align 8
@EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 = common dso_local global i64 0, align 8
@EFUSE_SPICONFIG_HSPI_DEFAULTS = common dso_local global i64 0, align 8
@EFUSE_SPICONFIG_SPI_DEFAULTS = common dso_local global i64 0, align 8
@ESP32_D2WD_WP_GPIO = common dso_local global i64 0, align 8
@ESP_ROM_SPIFLASH_QOUT_MODE = common dso_local global i32 0, align 4
@MAX_PAD_GPIO_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64 (...)*, i32 (i64)*, i32)* @enable_qio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_qio_mode(i64 (...)* %0, i32 (i64)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64 (...)*, align 8
  %6 = alloca i32 (i64)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 (...)* %0, i64 (...)** %5, align 8
  store i32 (i64)* %1, i32 (i64)** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i64 (...) @ets_efuse_get_spiconfig()
  store i64 %11, i64* %9, align 8
  %12 = call i32 @esp_rom_spiflash_wait_idle(i32* @g_rom_flashchip)
  %13 = load i64 (...)*, i64 (...)** %5, align 8
  %14 = call i64 (...) %13()
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @TAG, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = and i64 %18, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %3
  %25 = load i32, i32* @CMD_WREN, align 4
  %26 = call i32 @execute_flash_command(i32 %25, i32 0, i32 0, i32 0)
  %27 = load i32 (i64)*, i32 (i64)** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = or i64 %28, %31
  %33 = call i32 %27(i64 %32)
  %34 = call i32 @esp_rom_spiflash_wait_idle(i32* @g_rom_flashchip)
  %35 = load i64 (...)*, i64 (...)** %5, align 8
  %36 = call i64 (...) %35()
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @TAG, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 1, %41
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ESP_FAIL, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %24
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @ESP_ROM_SPIFLASH_QIO_MODE, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @esp_rom_spiflash_config_readmode(i32 %58)
  %60 = load i32, i32* @ESP_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @ets_efuse_get_spiconfig(...) #1

declare dso_local i32 @esp_rom_spiflash_wait_idle(i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @execute_flash_command(i32, i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_rom_spiflash_config_readmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
