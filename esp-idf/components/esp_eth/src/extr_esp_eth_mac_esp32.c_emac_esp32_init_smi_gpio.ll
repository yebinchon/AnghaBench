; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_esp32.c_emac_esp32_init_smi_gpio.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_esp32.c_emac_esp32_init_smi_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ETH_SMI_MDC_GPIO = common dso_local global i64 0, align 8
@GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@EMAC_MDC_O_IDX = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PIN_FUNC_GPIO = common dso_local global i32 0, align 4
@CONFIG_ETH_SMI_MDIO_GPIO = common dso_local global i64 0, align 8
@GPIO_MODE_INPUT_OUTPUT = common dso_local global i32 0, align 4
@EMAC_MDO_O_IDX = common dso_local global i32 0, align 4
@EMAC_MDI_I_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @emac_esp32_init_smi_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_esp32_init_smi_gpio() #0 {
  %1 = load i64, i64* @CONFIG_ETH_SMI_MDC_GPIO, align 8
  %2 = load i32, i32* @GPIO_MODE_OUTPUT, align 4
  %3 = call i32 @gpio_set_direction(i64 %1, i32 %2)
  %4 = load i64, i64* @CONFIG_ETH_SMI_MDC_GPIO, align 8
  %5 = load i32, i32* @EMAC_MDC_O_IDX, align 4
  %6 = call i32 @gpio_matrix_out(i64 %4, i32 %5, i32 0, i32 0)
  %7 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %8 = load i64, i64* @CONFIG_ETH_SMI_MDC_GPIO, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %12 = call i32 @PIN_FUNC_SELECT(i32 %10, i32 %11)
  %13 = load i64, i64* @CONFIG_ETH_SMI_MDIO_GPIO, align 8
  %14 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %15 = call i32 @gpio_set_direction(i64 %13, i32 %14)
  %16 = load i64, i64* @CONFIG_ETH_SMI_MDIO_GPIO, align 8
  %17 = load i32, i32* @EMAC_MDO_O_IDX, align 4
  %18 = call i32 @gpio_matrix_out(i64 %16, i32 %17, i32 0, i32 0)
  %19 = load i64, i64* @CONFIG_ETH_SMI_MDIO_GPIO, align 8
  %20 = load i32, i32* @EMAC_MDI_I_IDX, align 4
  %21 = call i32 @gpio_matrix_in(i64 %19, i32 %20, i32 0)
  %22 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %23 = load i64, i64* @CONFIG_ETH_SMI_MDIO_GPIO, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PIN_FUNC_GPIO, align 4
  %27 = call i32 @PIN_FUNC_SELECT(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @gpio_set_direction(i64, i32) #1

declare dso_local i32 @gpio_matrix_out(i64, i32, i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
