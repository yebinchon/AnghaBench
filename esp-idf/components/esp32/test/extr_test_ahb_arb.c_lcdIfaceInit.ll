; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_lcdIfaceInit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_lcdIfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERIPH_I2S0_MODULE = common dso_local global i32 0, align 4
@GPIO_ENABLE_W1TS_REG = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO0_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO2_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO5_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO16_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO17_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO18_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO19_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO20_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_SD_CMD_U = common dso_local global i32 0, align 4
@PERIPHS_IO_MUX_GPIO26_U = common dso_local global i32 0, align 4
@GPIO_FUNC0_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC0_OUT_SEL_S = common dso_local global i32 0, align 4
@GPIO_FUNC2_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC5_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC16_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC17_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC18_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC19_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC20_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC26_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@GPIO_FUNC11_OUT_SEL_CFG_REG = common dso_local global i32 0, align 4
@I2S0O_WS_OUT_IDX = common dso_local global i32 0, align 4
@GPIO_FUNC11_OUT_INV_SEL = common dso_local global i32 0, align 4
@I2S_RX_RESET = common dso_local global i32 0, align 4
@I2S_TX_RESET = common dso_local global i32 0, align 4
@I2S_RX_BITS_MOD_S = common dso_local global i32 0, align 4
@I2S_TX_BITS_MOD_S = common dso_local global i32 0, align 4
@I2S_RX_BCK_DIV_NUM_S = common dso_local global i32 0, align 4
@I2S_TX_BCK_DIV_NUM_S = common dso_local global i32 0, align 4
@I2S_CLKA_ENA = common dso_local global i32 0, align 4
@I2S_CLK_EN = common dso_local global i32 0, align 4
@I2S_CLKM_DIV_A_S = common dso_local global i32 0, align 4
@I2S_CLKM_DIV_B_S = common dso_local global i32 0, align 4
@I2S_CLKM_DIV_NUM_S = common dso_local global i32 0, align 4
@I2S_TX_DATA_NUM_S = common dso_local global i32 0, align 4
@I2S_RX_DATA_NUM_S = common dso_local global i32 0, align 4
@I2S_RX_PCM_BYPASS = common dso_local global i32 0, align 4
@I2S_TX_PCM_BYPASS = common dso_local global i32 0, align 4
@I2S_TX_CHAN_MOD_S = common dso_local global i32 0, align 4
@I2S_RX_CHAN_MOD_S = common dso_local global i32 0, align 4
@I2S_TX_RIGHT_FIRST = common dso_local global i32 0, align 4
@I2S_RX_RIGHT_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcdIfaceInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcdIfaceInit() #0 {
  %1 = load i32, i32* @PERIPH_I2S0_MODULE, align 4
  %2 = call i32 @periph_module_enable(i32 %1)
  %3 = load i32, i32* @GPIO_ENABLE_W1TS_REG, align 4
  %4 = call i32 @SET_PERI_REG_MASK(i32 %3, i32 2033709)
  %5 = load i32, i32* @PERIPHS_IO_MUX_GPIO0_U, align 4
  %6 = call i32 @PIN_FUNC_SELECT(i32 %5, i32 0)
  %7 = load i32, i32* @PERIPHS_IO_MUX_GPIO2_U, align 4
  %8 = call i32 @PIN_FUNC_SELECT(i32 %7, i32 0)
  %9 = load i32, i32* @PERIPHS_IO_MUX_GPIO5_U, align 4
  %10 = call i32 @PIN_FUNC_SELECT(i32 %9, i32 0)
  %11 = load i32, i32* @PERIPHS_IO_MUX_GPIO16_U, align 4
  %12 = call i32 @PIN_FUNC_SELECT(i32 %11, i32 0)
  %13 = load i32, i32* @PERIPHS_IO_MUX_GPIO17_U, align 4
  %14 = call i32 @PIN_FUNC_SELECT(i32 %13, i32 0)
  %15 = load i32, i32* @PERIPHS_IO_MUX_GPIO18_U, align 4
  %16 = call i32 @PIN_FUNC_SELECT(i32 %15, i32 0)
  %17 = load i32, i32* @PERIPHS_IO_MUX_GPIO19_U, align 4
  %18 = call i32 @PIN_FUNC_SELECT(i32 %17, i32 0)
  %19 = load i32, i32* @PERIPHS_IO_MUX_GPIO20_U, align 4
  %20 = call i32 @PIN_FUNC_SELECT(i32 %19, i32 0)
  %21 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %22 = call i32 @PIN_FUNC_SELECT(i32 %21, i32 2)
  %23 = load i32, i32* @PERIPHS_IO_MUX_GPIO26_U, align 4
  %24 = call i32 @PIN_FUNC_SELECT(i32 %23, i32 0)
  %25 = load i32, i32* @GPIO_FUNC0_OUT_SEL_CFG_REG, align 4
  %26 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %27 = shl i32 148, %26
  %28 = call i32 @WRITE_PERI_REG(i32 %25, i32 %27)
  %29 = load i32, i32* @GPIO_FUNC2_OUT_SEL_CFG_REG, align 4
  %30 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %31 = shl i32 149, %30
  %32 = call i32 @WRITE_PERI_REG(i32 %29, i32 %31)
  %33 = load i32, i32* @GPIO_FUNC5_OUT_SEL_CFG_REG, align 4
  %34 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %35 = shl i32 150, %34
  %36 = call i32 @WRITE_PERI_REG(i32 %33, i32 %35)
  %37 = load i32, i32* @GPIO_FUNC16_OUT_SEL_CFG_REG, align 4
  %38 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %39 = shl i32 151, %38
  %40 = call i32 @WRITE_PERI_REG(i32 %37, i32 %39)
  %41 = load i32, i32* @GPIO_FUNC17_OUT_SEL_CFG_REG, align 4
  %42 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %43 = shl i32 152, %42
  %44 = call i32 @WRITE_PERI_REG(i32 %41, i32 %43)
  %45 = load i32, i32* @GPIO_FUNC18_OUT_SEL_CFG_REG, align 4
  %46 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %47 = shl i32 153, %46
  %48 = call i32 @WRITE_PERI_REG(i32 %45, i32 %47)
  %49 = load i32, i32* @GPIO_FUNC19_OUT_SEL_CFG_REG, align 4
  %50 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %51 = shl i32 154, %50
  %52 = call i32 @WRITE_PERI_REG(i32 %49, i32 %51)
  %53 = load i32, i32* @GPIO_FUNC20_OUT_SEL_CFG_REG, align 4
  %54 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %55 = shl i32 155, %54
  %56 = call i32 @WRITE_PERI_REG(i32 %53, i32 %55)
  %57 = load i32, i32* @GPIO_FUNC26_OUT_SEL_CFG_REG, align 4
  %58 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %59 = shl i32 156, %58
  %60 = call i32 @WRITE_PERI_REG(i32 %57, i32 %59)
  %61 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %62 = load i32, i32* @I2S0O_WS_OUT_IDX, align 4
  %63 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @WRITE_PERI_REG(i32 %61, i32 %64)
  %66 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %67 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %68 = call i32 @READ_PERI_REG(i32 %67)
  %69 = load i32, i32* @GPIO_FUNC11_OUT_INV_SEL, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @WRITE_PERI_REG(i32 %66, i32 %70)
  %72 = call i32 @I2S_CONF_REG(i32 0)
  %73 = load i32, i32* @I2S_RX_RESET, align 4
  %74 = load i32, i32* @I2S_TX_RESET, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @CLEAR_PERI_REG_MASK(i32 %72, i32 %75)
  %77 = call i32 @I2S_CONF_REG(i32 0)
  %78 = load i32, i32* @I2S_RX_RESET, align 4
  %79 = load i32, i32* @I2S_TX_RESET, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @SET_PERI_REG_MASK(i32 %77, i32 %80)
  %82 = call i32 @I2S_CONF_REG(i32 0)
  %83 = load i32, i32* @I2S_RX_RESET, align 4
  %84 = load i32, i32* @I2S_TX_RESET, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @CLEAR_PERI_REG_MASK(i32 %82, i32 %85)
  %87 = call i32 @I2S_CONF_REG(i32 0)
  %88 = call i32 @WRITE_PERI_REG(i32 %87, i32 0)
  %89 = call i32 @I2S_CONF2_REG(i32 0)
  %90 = call i32 @WRITE_PERI_REG(i32 %89, i32 0)
  %91 = call i32 @I2S_SAMPLE_RATE_CONF_REG(i32 0)
  %92 = load i32, i32* @I2S_RX_BITS_MOD_S, align 4
  %93 = shl i32 16, %92
  %94 = load i32, i32* @I2S_TX_BITS_MOD_S, align 4
  %95 = shl i32 16, %94
  %96 = or i32 %93, %95
  %97 = load i32, i32* @I2S_RX_BCK_DIV_NUM_S, align 4
  %98 = shl i32 1, %97
  %99 = or i32 %96, %98
  %100 = load i32, i32* @I2S_TX_BCK_DIV_NUM_S, align 4
  %101 = shl i32 1, %100
  %102 = or i32 %99, %101
  %103 = call i32 @WRITE_PERI_REG(i32 %91, i32 %102)
  %104 = call i32 @I2S_CLKM_CONF_REG(i32 0)
  %105 = load i32, i32* @I2S_CLKA_ENA, align 4
  %106 = load i32, i32* @I2S_CLK_EN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @I2S_CLKM_DIV_A_S, align 4
  %109 = shl i32 1, %108
  %110 = or i32 %107, %109
  %111 = load i32, i32* @I2S_CLKM_DIV_B_S, align 4
  %112 = shl i32 1, %111
  %113 = or i32 %110, %112
  %114 = load i32, i32* @I2S_CLKM_DIV_NUM_S, align 4
  %115 = shl i32 1, %114
  %116 = or i32 %113, %115
  %117 = call i32 @WRITE_PERI_REG(i32 %104, i32 %116)
  %118 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %119 = load i32, i32* @I2S_TX_DATA_NUM_S, align 4
  %120 = shl i32 32, %119
  %121 = load i32, i32* @I2S_RX_DATA_NUM_S, align 4
  %122 = shl i32 32, %121
  %123 = or i32 %120, %122
  %124 = call i32 @WRITE_PERI_REG(i32 %118, i32 %123)
  %125 = call i32 @I2S_CONF1_REG(i32 0)
  %126 = load i32, i32* @I2S_RX_PCM_BYPASS, align 4
  %127 = load i32, i32* @I2S_TX_PCM_BYPASS, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @WRITE_PERI_REG(i32 %125, i32 %128)
  %130 = call i32 @I2S_CONF_CHAN_REG(i32 0)
  %131 = load i32, i32* @I2S_TX_CHAN_MOD_S, align 4
  %132 = shl i32 2, %131
  %133 = load i32, i32* @I2S_RX_CHAN_MOD_S, align 4
  %134 = shl i32 2, %133
  %135 = or i32 %132, %134
  %136 = call i32 @WRITE_PERI_REG(i32 %130, i32 %135)
  %137 = call i32 @I2S_CONF_REG(i32 0)
  %138 = load i32, i32* @I2S_TX_RIGHT_FIRST, align 4
  %139 = load i32, i32* @I2S_RX_RIGHT_FIRST, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @SET_PERI_REG_MASK(i32 %137, i32 %140)
  %142 = call i32 @I2S_TIMING_REG(i32 0)
  %143 = call i32 @WRITE_PERI_REG(i32 %142, i32 0)
  ret void
}

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_CONF_REG(i32) #1

declare dso_local i32 @I2S_CONF2_REG(i32) #1

declare dso_local i32 @I2S_SAMPLE_RATE_CONF_REG(i32) #1

declare dso_local i32 @I2S_CLKM_CONF_REG(i32) #1

declare dso_local i32 @I2S_FIFO_CONF_REG(i32) #1

declare dso_local i32 @I2S_CONF1_REG(i32) #1

declare dso_local i32 @I2S_CONF_CHAN_REG(i32) #1

declare dso_local i32 @I2S_TIMING_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
