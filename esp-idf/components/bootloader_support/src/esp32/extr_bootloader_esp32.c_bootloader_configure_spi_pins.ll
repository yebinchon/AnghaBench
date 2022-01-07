; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_bootloader_esp32.c_bootloader_configure_spi_pins.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_bootloader_esp32.c_bootloader_configure_spi_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CLK_U = common dso_local global i32 0, align 4
@FUNC_SD_CLK_SPICLK = common dso_local global i32 0, align 4
@FUN_DRV = common dso_local global i32 0, align 4
@FUN_DRV_S = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2 = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4 = common dso_local global i32 0, align 4
@EFUSE_SPICONFIG_SPI_DEFAULTS = common dso_local global i32 0, align 4
@FLASH_CS_IO = common dso_local global i32 0, align 4
@SPICS0_OUT_IDX = common dso_local global i32 0, align 4
@FLASH_SPIQ_IO = common dso_local global i32 0, align 4
@SPIQ_OUT_IDX = common dso_local global i32 0, align 4
@SPIQ_IN_IDX = common dso_local global i32 0, align 4
@FLASH_SPID_IO = common dso_local global i32 0, align 4
@SPID_OUT_IDX = common dso_local global i32 0, align 4
@SPID_IN_IDX = common dso_local global i32 0, align 4
@FLASH_SPIWP_IO = common dso_local global i32 0, align 4
@SPIWP_OUT_IDX = common dso_local global i32 0, align 4
@SPIWP_IN_IDX = common dso_local global i32 0, align 4
@FLASH_SPIHD_IO = common dso_local global i32 0, align 4
@SPIHD_OUT_IDX = common dso_local global i32 0, align 4
@SPIHD_IN_IDX = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA0_U = common dso_local global i32 0, align 4
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA1_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA2_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_DATA3_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CMD_U = common dso_local global i32 0, align 4
@FLASH_ID_GD25LQ32C = common dso_local global i32 0, align 4
@g_rom_flashchip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_configure_spi_pins(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @EFUSE_BLK0_RDATA3_REG, align 4
  %7 = load i32, i32* @EFUSE_RD_CHIP_VER_PKG, align 4
  %8 = call i32 @REG_GET_FIELD(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EFUSE_RD_CHIP_VER_PKG_ESP32D2WDQ5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %16 = load i32, i32* @FUNC_SD_CLK_SPICLK, align 4
  %17 = call i32 @PIN_FUNC_SELECT(i32 %15, i32 %16)
  %18 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %19 = load i32, i32* @FUN_DRV, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @FUN_DRV_S, align 4
  %22 = call i32 @SET_PERI_REG_BITS(i32 %18, i32 %19, i32 %20, i32 %21)
  br label %108

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EFUSE_RD_CHIP_VER_PKG_ESP32PICOD2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %29 = load i32, i32* @FUNC_SD_CLK_SPICLK, align 4
  %30 = call i32 @PIN_FUNC_SELECT(i32 %28, i32 %29)
  %31 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %32 = load i32, i32* @FUN_DRV, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @FUN_DRV_S, align 4
  %35 = call i32 @SET_PERI_REG_BITS(i32 %31, i32 %32, i32 %33, i32 %34)
  br label %107

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EFUSE_RD_CHIP_VER_PKG_ESP32PICOD4, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %42 = load i32, i32* @FUNC_SD_CLK_SPICLK, align 4
  %43 = call i32 @PIN_FUNC_SELECT(i32 %41, i32 %42)
  %44 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %45 = load i32, i32* @FUN_DRV, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @FUN_DRV_S, align 4
  %48 = call i32 @SET_PERI_REG_BITS(i32 %44, i32 %45, i32 %46, i32 %47)
  br label %106

49:                                               ; preds = %36
  %50 = call i32 (...) @ets_efuse_get_spiconfig()
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EFUSE_SPICONFIG_SPI_DEFAULTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %49
  %55 = load i32, i32* @FLASH_CS_IO, align 4
  %56 = load i32, i32* @SPICS0_OUT_IDX, align 4
  %57 = call i32 @gpio_matrix_out(i32 %55, i32 %56, i32 0, i32 0)
  %58 = load i32, i32* @FLASH_SPIQ_IO, align 4
  %59 = load i32, i32* @SPIQ_OUT_IDX, align 4
  %60 = call i32 @gpio_matrix_out(i32 %58, i32 %59, i32 0, i32 0)
  %61 = load i32, i32* @FLASH_SPIQ_IO, align 4
  %62 = load i32, i32* @SPIQ_IN_IDX, align 4
  %63 = call i32 @gpio_matrix_in(i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* @FLASH_SPID_IO, align 4
  %65 = load i32, i32* @SPID_OUT_IDX, align 4
  %66 = call i32 @gpio_matrix_out(i32 %64, i32 %65, i32 0, i32 0)
  %67 = load i32, i32* @FLASH_SPID_IO, align 4
  %68 = load i32, i32* @SPID_IN_IDX, align 4
  %69 = call i32 @gpio_matrix_in(i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* @FLASH_SPIWP_IO, align 4
  %71 = load i32, i32* @SPIWP_OUT_IDX, align 4
  %72 = call i32 @gpio_matrix_out(i32 %70, i32 %71, i32 0, i32 0)
  %73 = load i32, i32* @FLASH_SPIWP_IO, align 4
  %74 = load i32, i32* @SPIWP_IN_IDX, align 4
  %75 = call i32 @gpio_matrix_in(i32 %73, i32 %74, i32 0)
  %76 = load i32, i32* @FLASH_SPIHD_IO, align 4
  %77 = load i32, i32* @SPIHD_OUT_IDX, align 4
  %78 = call i32 @gpio_matrix_out(i32 %76, i32 %77, i32 0, i32 0)
  %79 = load i32, i32* @FLASH_SPIHD_IO, align 4
  %80 = load i32, i32* @SPIHD_IN_IDX, align 4
  %81 = call i32 @gpio_matrix_in(i32 %79, i32 %80, i32 0)
  %82 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA0_U, align 4
  %83 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %84 = call i32 @PIN_FUNC_SELECT(i32 %82, i32 %83)
  %85 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA1_U, align 4
  %86 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %87 = call i32 @PIN_FUNC_SELECT(i32 %85, i32 %86)
  %88 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA2_U, align 4
  %89 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %90 = call i32 @PIN_FUNC_SELECT(i32 %88, i32 %89)
  %91 = load i32, i32* @PERIPHS_IO_MUX_SD_DATA3_U, align 4
  %92 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %93 = call i32 @PIN_FUNC_SELECT(i32 %91, i32 %92)
  %94 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %95 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %96 = call i32 @PIN_FUNC_SELECT(i32 %94, i32 %95)
  %97 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %98 = load i32, i32* @FUNC_SD_CLK_SPICLK, align 4
  %99 = call i32 @PIN_FUNC_SELECT(i32 %97, i32 %98)
  %100 = load i32, i32* @PERIPHS_IO_MUX_SD_CLK_U, align 4
  %101 = load i32, i32* @FUN_DRV, align 4
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @FUN_DRV_S, align 4
  %104 = call i32 @SET_PERI_REG_BITS(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %54, %49
  br label %106

106:                                              ; preds = %105, %40
  br label %107

107:                                              ; preds = %106, %27
  br label %108

108:                                              ; preds = %107, %14
  ret void
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @ets_efuse_get_spiconfig(...) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
