; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_bootloader_esp32s2beta.c_bootloader_configure_spi_pins.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_bootloader_esp32s2beta.c_bootloader_configure_spi_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EFUSE_SPICONFIG_SPI_DEFAULTS = common dso_local global i64 0, align 8
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
@PERIPHS_IO_MUX_SPIHD_U = common dso_local global i32 0, align 4
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SPIWP_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SPICS0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SPIQ_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SPID_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SPICLK_U = common dso_local global i32 0, align 4
@FUNC_SPICLK_SPICLK = common dso_local global i32 0, align 4
@FUN_DRV = common dso_local global i32 0, align 4
@FUN_DRV_S = common dso_local global i32 0, align 4
@FLASH_ID_GD25LQ32C = common dso_local global i64 0, align 8
@g_rom_flashchip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_configure_spi_pins(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @ets_efuse_get_spiconfig()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @EFUSE_SPICONFIG_SPI_DEFAULTS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = load i32, i32* @FLASH_CS_IO, align 4
  %10 = load i32, i32* @SPICS0_OUT_IDX, align 4
  %11 = call i32 @gpio_matrix_out(i32 %9, i32 %10, i32 0, i32 0)
  %12 = load i32, i32* @FLASH_SPIQ_IO, align 4
  %13 = load i32, i32* @SPIQ_OUT_IDX, align 4
  %14 = call i32 @gpio_matrix_out(i32 %12, i32 %13, i32 0, i32 0)
  %15 = load i32, i32* @FLASH_SPIQ_IO, align 4
  %16 = load i32, i32* @SPIQ_IN_IDX, align 4
  %17 = call i32 @gpio_matrix_in(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* @FLASH_SPID_IO, align 4
  %19 = load i32, i32* @SPID_OUT_IDX, align 4
  %20 = call i32 @gpio_matrix_out(i32 %18, i32 %19, i32 0, i32 0)
  %21 = load i32, i32* @FLASH_SPID_IO, align 4
  %22 = load i32, i32* @SPID_IN_IDX, align 4
  %23 = call i32 @gpio_matrix_in(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* @FLASH_SPIWP_IO, align 4
  %25 = load i32, i32* @SPIWP_OUT_IDX, align 4
  %26 = call i32 @gpio_matrix_out(i32 %24, i32 %25, i32 0, i32 0)
  %27 = load i32, i32* @FLASH_SPIWP_IO, align 4
  %28 = load i32, i32* @SPIWP_IN_IDX, align 4
  %29 = call i32 @gpio_matrix_in(i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* @FLASH_SPIHD_IO, align 4
  %31 = load i32, i32* @SPIHD_OUT_IDX, align 4
  %32 = call i32 @gpio_matrix_out(i32 %30, i32 %31, i32 0, i32 0)
  %33 = load i32, i32* @FLASH_SPIHD_IO, align 4
  %34 = load i32, i32* @SPIHD_IN_IDX, align 4
  %35 = call i32 @gpio_matrix_in(i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* @PERIPHS_IO_MUX_SPIHD_U, align 4
  %37 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %38 = call i32 @PIN_FUNC_SELECT(i32 %36, i32 %37)
  %39 = load i32, i32* @PERIPHS_IO_MUX_SPIWP_U, align 4
  %40 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %41 = call i32 @PIN_FUNC_SELECT(i32 %39, i32 %40)
  %42 = load i32, i32* @PERIPHS_IO_MUX_SPICS0_U, align 4
  %43 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %44 = call i32 @PIN_FUNC_SELECT(i32 %42, i32 %43)
  %45 = load i32, i32* @PERIPHS_IO_MUX_SPIQ_U, align 4
  %46 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %47 = call i32 @PIN_FUNC_SELECT(i32 %45, i32 %46)
  %48 = load i32, i32* @PERIPHS_IO_MUX_SPID_U, align 4
  %49 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %50 = call i32 @PIN_FUNC_SELECT(i32 %48, i32 %49)
  %51 = load i32, i32* @PERIPHS_IO_MUX_SPICLK_U, align 4
  %52 = load i32, i32* @FUNC_SPICLK_SPICLK, align 4
  %53 = call i32 @PIN_FUNC_SELECT(i32 %51, i32 %52)
  %54 = load i32, i32* @PERIPHS_IO_MUX_SPICLK_U, align 4
  %55 = load i32, i32* @FUN_DRV, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @FUN_DRV_S, align 4
  %58 = call i32 @SET_PERI_REG_BITS(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @ets_efuse_get_spiconfig(...) #1

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i32, i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
