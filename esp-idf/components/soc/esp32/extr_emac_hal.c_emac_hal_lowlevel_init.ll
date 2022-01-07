; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_emac_hal.c_emac_hal_lowlevel_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_emac_hal.c_emac_hal_lowlevel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PERIPHS_IO_MUX_GPIO21_U = common dso_local global i32 0, align 4
@FUNC_GPIO21_EMAC_TX_EN = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@PERIPHS_IO_MUX_GPIO19_U = common dso_local global i32 0, align 4
@FUNC_GPIO19_EMAC_TXD0 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO22_U = common dso_local global i32 0, align 4
@FUNC_GPIO22_EMAC_TXD1 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO25_U = common dso_local global i32 0, align 4
@FUNC_GPIO25_EMAC_RXD0 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO26_U = common dso_local global i32 0, align 4
@FUNC_GPIO26_EMAC_RXD1 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO27_U = common dso_local global i32 0, align 4
@FUNC_GPIO27_EMAC_RX_DV = common dso_local global i32 0, align 4
@FUNC_GPIO0_CLK_OUT1 = common dso_local global i32 0, align 4
@FUNC_GPIO0_EMAC_TX_CLK = common dso_local global i32 0, align 4
@FUNC_GPIO16_EMAC_CLK_OUT = common dso_local global i32 0, align 4
@FUNC_GPIO17_EMAC_CLK_OUT_180 = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO16_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO17_U = common dso_local global i32 0, align 4
@PIN_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_hal_lowlevel_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load i32, i32* @PERIPHS_IO_MUX_GPIO21_U, align 4
  %4 = load i32, i32* @FUNC_GPIO21_EMAC_TX_EN, align 4
  %5 = call i32 @PIN_FUNC_SELECT(i32 %3, i32 %4)
  %6 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 21
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PIN_INPUT_DISABLE(i32 %8)
  %10 = load i32, i32* @PERIPHS_IO_MUX_GPIO19_U, align 4
  %11 = load i32, i32* @FUNC_GPIO19_EMAC_TXD0, align 4
  %12 = call i32 @PIN_FUNC_SELECT(i32 %10, i32 %11)
  %13 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 19
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PIN_INPUT_DISABLE(i32 %15)
  %17 = load i32, i32* @PERIPHS_IO_MUX_GPIO22_U, align 4
  %18 = load i32, i32* @FUNC_GPIO22_EMAC_TXD1, align 4
  %19 = call i32 @PIN_FUNC_SELECT(i32 %17, i32 %18)
  %20 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 22
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PIN_INPUT_DISABLE(i32 %22)
  %24 = load i32, i32* @PERIPHS_IO_MUX_GPIO25_U, align 4
  %25 = load i32, i32* @FUNC_GPIO25_EMAC_RXD0, align 4
  %26 = call i32 @PIN_FUNC_SELECT(i32 %24, i32 %25)
  %27 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 25
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PIN_INPUT_ENABLE(i32 %29)
  %31 = load i32, i32* @PERIPHS_IO_MUX_GPIO26_U, align 4
  %32 = load i32, i32* @FUNC_GPIO26_EMAC_RXD1, align 4
  %33 = call i32 @PIN_FUNC_SELECT(i32 %31, i32 %32)
  %34 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 26
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PIN_INPUT_ENABLE(i32 %36)
  %38 = load i32, i32* @PERIPHS_IO_MUX_GPIO27_U, align 4
  %39 = load i32, i32* @FUNC_GPIO27_EMAC_RX_DV, align 4
  %40 = call i32 @PIN_FUNC_SELECT(i32 %38, i32 %39)
  %41 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 27
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PIN_INPUT_ENABLE(i32 %43)
  ret void
}

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @PIN_INPUT_DISABLE(i32) #1

declare dso_local i32 @PIN_INPUT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
