; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_unal_dma.c_dmaMemcpy.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_unal_dma.c_dmaMemcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i32*, i64 }

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
@dmaDesc = common dso_local global %struct.TYPE_2__* null, align 8
@I2S_IN_RST = common dso_local global i32 0, align 4
@I2S_OUT_RST = common dso_local global i32 0, align 4
@I2S_AHBM_RST = common dso_local global i32 0, align 4
@I2S_AHBM_FIFO_RST = common dso_local global i32 0, align 4
@I2S_TX_FIFO_RESET = common dso_local global i32 0, align 4
@I2S_RX_FIFO_RESET = common dso_local global i32 0, align 4
@I2S_OUTLINK_ADDR = common dso_local global i32 0, align 4
@I2S_INLINK_ADDR = common dso_local global i32 0, align 4
@I2S_DSCR_EN = common dso_local global i32 0, align 4
@I2S_OUT_DATA_BURST_EN = common dso_local global i32 0, align 4
@I2S_OUT_EOF_MODE = common dso_local global i32 0, align 4
@I2S_OUTDSCR_BURST_EN = common dso_local global i32 0, align 4
@I2S_INDSCR_BURST_EN = common dso_local global i32 0, align 4
@I2S_MEM_TRANS_EN = common dso_local global i32 0, align 4
@I2S_OUTLINK_START = common dso_local global i32 0, align 4
@I2S_INLINK_START = common dso_local global i32 0, align 4
@I2S_TX_START = common dso_local global i32 0, align 4
@I2S_RX_START = common dso_local global i32 0, align 4
@I2S_TX_REMPTY_INT_RAW = common dso_local global i32 0, align 4
@I2S_TX_IDLE = common dso_local global i32 0, align 4
@I2S_TX_FIFO_RESET_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @dmaMemcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmaMemcpy(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @PERIPH_I2S0_MODULE, align 4
  %9 = call i32 @periph_module_enable(i32 %8)
  %10 = load i32, i32* @GPIO_ENABLE_W1TS_REG, align 4
  %11 = call i32 @SET_PERI_REG_MASK(i32 %10, i32 2033709)
  %12 = load i32, i32* @PERIPHS_IO_MUX_GPIO0_U, align 4
  %13 = call i32 @PIN_FUNC_SELECT(i32 %12, i32 0)
  %14 = load i32, i32* @PERIPHS_IO_MUX_GPIO2_U, align 4
  %15 = call i32 @PIN_FUNC_SELECT(i32 %14, i32 0)
  %16 = load i32, i32* @PERIPHS_IO_MUX_GPIO5_U, align 4
  %17 = call i32 @PIN_FUNC_SELECT(i32 %16, i32 0)
  %18 = load i32, i32* @PERIPHS_IO_MUX_GPIO16_U, align 4
  %19 = call i32 @PIN_FUNC_SELECT(i32 %18, i32 0)
  %20 = load i32, i32* @PERIPHS_IO_MUX_GPIO17_U, align 4
  %21 = call i32 @PIN_FUNC_SELECT(i32 %20, i32 0)
  %22 = load i32, i32* @PERIPHS_IO_MUX_GPIO18_U, align 4
  %23 = call i32 @PIN_FUNC_SELECT(i32 %22, i32 0)
  %24 = load i32, i32* @PERIPHS_IO_MUX_GPIO19_U, align 4
  %25 = call i32 @PIN_FUNC_SELECT(i32 %24, i32 0)
  %26 = load i32, i32* @PERIPHS_IO_MUX_GPIO20_U, align 4
  %27 = call i32 @PIN_FUNC_SELECT(i32 %26, i32 0)
  %28 = load i32, i32* @PERIPHS_IO_MUX_SD_CMD_U, align 4
  %29 = call i32 @PIN_FUNC_SELECT(i32 %28, i32 2)
  %30 = load i32, i32* @PERIPHS_IO_MUX_GPIO26_U, align 4
  %31 = call i32 @PIN_FUNC_SELECT(i32 %30, i32 0)
  %32 = load i32, i32* @GPIO_FUNC0_OUT_SEL_CFG_REG, align 4
  %33 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %34 = shl i32 148, %33
  %35 = call i32 @WRITE_PERI_REG(i32 %32, i32 %34)
  %36 = load i32, i32* @GPIO_FUNC2_OUT_SEL_CFG_REG, align 4
  %37 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %38 = shl i32 149, %37
  %39 = call i32 @WRITE_PERI_REG(i32 %36, i32 %38)
  %40 = load i32, i32* @GPIO_FUNC5_OUT_SEL_CFG_REG, align 4
  %41 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %42 = shl i32 150, %41
  %43 = call i32 @WRITE_PERI_REG(i32 %40, i32 %42)
  %44 = load i32, i32* @GPIO_FUNC16_OUT_SEL_CFG_REG, align 4
  %45 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %46 = shl i32 151, %45
  %47 = call i32 @WRITE_PERI_REG(i32 %44, i32 %46)
  %48 = load i32, i32* @GPIO_FUNC17_OUT_SEL_CFG_REG, align 4
  %49 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %50 = shl i32 152, %49
  %51 = call i32 @WRITE_PERI_REG(i32 %48, i32 %50)
  %52 = load i32, i32* @GPIO_FUNC18_OUT_SEL_CFG_REG, align 4
  %53 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %54 = shl i32 153, %53
  %55 = call i32 @WRITE_PERI_REG(i32 %52, i32 %54)
  %56 = load i32, i32* @GPIO_FUNC19_OUT_SEL_CFG_REG, align 4
  %57 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %58 = shl i32 154, %57
  %59 = call i32 @WRITE_PERI_REG(i32 %56, i32 %58)
  %60 = load i32, i32* @GPIO_FUNC20_OUT_SEL_CFG_REG, align 4
  %61 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %62 = shl i32 155, %61
  %63 = call i32 @WRITE_PERI_REG(i32 %60, i32 %62)
  %64 = load i32, i32* @GPIO_FUNC26_OUT_SEL_CFG_REG, align 4
  %65 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %66 = shl i32 156, %65
  %67 = call i32 @WRITE_PERI_REG(i32 %64, i32 %66)
  %68 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %69 = load i32, i32* @I2S0O_WS_OUT_IDX, align 4
  %70 = load i32, i32* @GPIO_FUNC0_OUT_SEL_S, align 4
  %71 = shl i32 %69, %70
  %72 = call i32 @WRITE_PERI_REG(i32 %68, i32 %71)
  %73 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %74 = load i32, i32* @GPIO_FUNC11_OUT_SEL_CFG_REG, align 4
  %75 = call i32 @READ_PERI_REG(i32 %74)
  %76 = load i32, i32* @GPIO_FUNC11_OUT_INV_SEL, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @WRITE_PERI_REG(i32 %73, i32 %77)
  %79 = call i32 @I2S_CONF_REG(i32 0)
  %80 = load i32, i32* @I2S_RX_RESET, align 4
  %81 = load i32, i32* @I2S_TX_RESET, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @CLEAR_PERI_REG_MASK(i32 %79, i32 %82)
  %84 = call i32 @I2S_CONF_REG(i32 0)
  %85 = load i32, i32* @I2S_RX_RESET, align 4
  %86 = load i32, i32* @I2S_TX_RESET, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @SET_PERI_REG_MASK(i32 %84, i32 %87)
  %89 = call i32 @I2S_CONF_REG(i32 0)
  %90 = load i32, i32* @I2S_RX_RESET, align 4
  %91 = load i32, i32* @I2S_TX_RESET, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @CLEAR_PERI_REG_MASK(i32 %89, i32 %92)
  %94 = call i32 @I2S_CONF_REG(i32 0)
  %95 = call i32 @WRITE_PERI_REG(i32 %94, i32 0)
  %96 = call i32 @I2S_CONF2_REG(i32 0)
  %97 = call i32 @WRITE_PERI_REG(i32 %96, i32 0)
  %98 = call i32 @I2S_SAMPLE_RATE_CONF_REG(i32 0)
  %99 = load i32, i32* @I2S_RX_BITS_MOD_S, align 4
  %100 = shl i32 16, %99
  %101 = load i32, i32* @I2S_TX_BITS_MOD_S, align 4
  %102 = shl i32 16, %101
  %103 = or i32 %100, %102
  %104 = load i32, i32* @I2S_RX_BCK_DIV_NUM_S, align 4
  %105 = shl i32 1, %104
  %106 = or i32 %103, %105
  %107 = load i32, i32* @I2S_TX_BCK_DIV_NUM_S, align 4
  %108 = shl i32 1, %107
  %109 = or i32 %106, %108
  %110 = call i32 @WRITE_PERI_REG(i32 %98, i32 %109)
  %111 = call i32 @I2S_CLKM_CONF_REG(i32 0)
  %112 = load i32, i32* @I2S_CLKA_ENA, align 4
  %113 = load i32, i32* @I2S_CLK_EN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @I2S_CLKM_DIV_A_S, align 4
  %116 = shl i32 1, %115
  %117 = or i32 %114, %116
  %118 = load i32, i32* @I2S_CLKM_DIV_B_S, align 4
  %119 = shl i32 1, %118
  %120 = or i32 %117, %119
  %121 = load i32, i32* @I2S_CLKM_DIV_NUM_S, align 4
  %122 = shl i32 1, %121
  %123 = or i32 %120, %122
  %124 = call i32 @WRITE_PERI_REG(i32 %111, i32 %123)
  %125 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %126 = load i32, i32* @I2S_TX_DATA_NUM_S, align 4
  %127 = shl i32 32, %126
  %128 = load i32, i32* @I2S_RX_DATA_NUM_S, align 4
  %129 = shl i32 32, %128
  %130 = or i32 %127, %129
  %131 = call i32 @WRITE_PERI_REG(i32 %125, i32 %130)
  %132 = call i32 @I2S_CONF1_REG(i32 0)
  %133 = load i32, i32* @I2S_RX_PCM_BYPASS, align 4
  %134 = load i32, i32* @I2S_TX_PCM_BYPASS, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @WRITE_PERI_REG(i32 %132, i32 %135)
  %137 = call i32 @I2S_CONF_CHAN_REG(i32 0)
  %138 = load i32, i32* @I2S_TX_CHAN_MOD_S, align 4
  %139 = shl i32 2, %138
  %140 = load i32, i32* @I2S_RX_CHAN_MOD_S, align 4
  %141 = shl i32 2, %140
  %142 = or i32 %139, %141
  %143 = call i32 @WRITE_PERI_REG(i32 %137, i32 %142)
  %144 = call i32 @I2S_CONF_REG(i32 0)
  %145 = load i32, i32* @I2S_TX_RIGHT_FIRST, align 4
  %146 = load i32, i32* @I2S_RX_RIGHT_FIRST, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @SET_PERI_REG_MASK(i32 %144, i32 %147)
  %149 = call i32 @I2S_TIMING_REG(i32 0)
  %150 = call i32 @WRITE_PERI_REG(i32 %149, i32 0)
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  store i32 1, i32* %161, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 7
  store i64 0, i64* %164, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 6
  store i32* %166, i32** %169, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  store i32 1, i32* %178, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 7
  store i64 0, i64* %192, align 8
  %193 = load i8*, i8** %5, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 6
  store i32* %194, i32** %197, align 8
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 5
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 1
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  store i32 1, i32* %206, align 4
  %207 = call i32 @I2S_LC_CONF_REG(i32 0)
  %208 = load i32, i32* @I2S_IN_RST, align 4
  %209 = load i32, i32* @I2S_OUT_RST, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @I2S_AHBM_RST, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @I2S_AHBM_FIFO_RST, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @SET_PERI_REG_MASK(i32 %207, i32 %214)
  %216 = call i32 @I2S_LC_CONF_REG(i32 0)
  %217 = load i32, i32* @I2S_IN_RST, align 4
  %218 = load i32, i32* @I2S_OUT_RST, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @I2S_AHBM_RST, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @I2S_AHBM_FIFO_RST, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @CLEAR_PERI_REG_MASK(i32 %216, i32 %223)
  %225 = call i32 @I2S_CONF_REG(i32 0)
  %226 = load i32, i32* @I2S_RX_RESET, align 4
  %227 = load i32, i32* @I2S_TX_RESET, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @SET_PERI_REG_MASK(i32 %225, i32 %232)
  %234 = call i32 @I2S_CONF_REG(i32 0)
  %235 = load i32, i32* @I2S_RX_RESET, align 4
  %236 = load i32, i32* @I2S_TX_RESET, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @CLEAR_PERI_REG_MASK(i32 %234, i32 %241)
  %243 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %244 = load i32, i32* @I2S_OUTLINK_ADDR, align 4
  %245 = call i32 @CLEAR_PERI_REG_MASK(i32 %243, i32 %244)
  %246 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 0
  %249 = ptrtoint %struct.TYPE_2__* %248 to i32
  %250 = load i32, i32* @I2S_OUTLINK_ADDR, align 4
  %251 = and i32 %249, %250
  %252 = call i32 @SET_PERI_REG_MASK(i32 %246, i32 %251)
  %253 = call i32 @I2S_IN_LINK_REG(i32 0)
  %254 = load i32, i32* @I2S_INLINK_ADDR, align 4
  %255 = call i32 @CLEAR_PERI_REG_MASK(i32 %253, i32 %254)
  %256 = call i32 @I2S_IN_LINK_REG(i32 0)
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 1
  %259 = ptrtoint %struct.TYPE_2__* %258 to i32
  %260 = load i32, i32* @I2S_INLINK_ADDR, align 4
  %261 = and i32 %259, %260
  %262 = call i32 @SET_PERI_REG_MASK(i32 %256, i32 %261)
  %263 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %264 = load i32, i32* @I2S_DSCR_EN, align 4
  %265 = call i32 @SET_PERI_REG_MASK(i32 %263, i32 %264)
  %266 = call i32 @I2S_RXEOF_NUM_REG(i32 0)
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @WRITE_PERI_REG(i32 %266, i32 %267)
  %269 = call i32 @I2S_LC_CONF_REG(i32 0)
  %270 = load i32, i32* @I2S_OUT_DATA_BURST_EN, align 4
  %271 = load i32, i32* @I2S_OUT_EOF_MODE, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @I2S_OUTDSCR_BURST_EN, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @I2S_OUT_DATA_BURST_EN, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @I2S_INDSCR_BURST_EN, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @I2S_MEM_TRANS_EN, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @WRITE_PERI_REG(i32 %269, i32 %280)
  %282 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %283 = load i32, i32* @I2S_OUTLINK_START, align 4
  %284 = call i32 @SET_PERI_REG_MASK(i32 %282, i32 %283)
  %285 = call i32 @I2S_IN_LINK_REG(i32 0)
  %286 = load i32, i32* @I2S_INLINK_START, align 4
  %287 = call i32 @SET_PERI_REG_MASK(i32 %285, i32 %286)
  %288 = call i32 @I2S_CONF_REG(i32 0)
  %289 = load i32, i32* @I2S_TX_START, align 4
  %290 = load i32, i32* @I2S_RX_START, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @SET_PERI_REG_MASK(i32 %288, i32 %291)
  %293 = call i32 @I2S_INT_CLR_REG(i32 0)
  %294 = call i32 @WRITE_PERI_REG(i32 %293, i32 -1)
  %295 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %296 = call i32 @READ_PERI_REG(i32 %295)
  %297 = load i32, i32* @I2S_DSCR_EN, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %3
  br label %363

301:                                              ; preds = %3
  br label %302

302:                                              ; preds = %309, %301
  %303 = call i32 @I2S_INT_RAW_REG(i32 0)
  %304 = call i32 @READ_PERI_REG(i32 %303)
  %305 = load i32, i32* @I2S_TX_REMPTY_INT_RAW, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  br label %302

310:                                              ; preds = %302
  store volatile i32 0, i32* %7, align 4
  br label %311

311:                                              ; preds = %315, %310
  %312 = load volatile i32, i32* %7, align 4
  %313 = icmp slt i32 %312, 256
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  br label %315

315:                                              ; preds = %314
  %316 = load volatile i32, i32* %7, align 4
  %317 = add nsw i32 %316, 1
  store volatile i32 %317, i32* %7, align 4
  br label %311

318:                                              ; preds = %311
  br label %319

319:                                              ; preds = %326, %318
  %320 = call i32 @I2S_STATE_REG(i32 0)
  %321 = call i32 @READ_PERI_REG(i32 %320)
  %322 = load i32, i32* @I2S_TX_IDLE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  %325 = xor i1 %324, true
  br i1 %325, label %326, label %327

326:                                              ; preds = %319
  br label %319

327:                                              ; preds = %319
  %328 = call i32 @I2S_CONF_REG(i32 0)
  %329 = load i32, i32* @I2S_TX_START, align 4
  %330 = load i32, i32* @I2S_RX_START, align 4
  %331 = or i32 %329, %330
  %332 = call i32 @CLEAR_PERI_REG_MASK(i32 %328, i32 %331)
  %333 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %334 = load i32, i32* @I2S_OUTLINK_START, align 4
  %335 = load i32, i32* @I2S_INLINK_START, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @CLEAR_PERI_REG_MASK(i32 %333, i32 %336)
  %338 = call i32 @I2S_CONF_REG(i32 0)
  %339 = load i32, i32* @I2S_TX_RESET, align 4
  %340 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @I2S_RX_RESET, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %345 = or i32 %343, %344
  %346 = call i32 @SET_PERI_REG_MASK(i32 %338, i32 %345)
  %347 = call i32 @I2S_CONF_REG(i32 0)
  %348 = load i32, i32* @I2S_TX_RESET, align 4
  %349 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @I2S_RX_RESET, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %354 = or i32 %352, %353
  %355 = call i32 @CLEAR_PERI_REG_MASK(i32 %347, i32 %354)
  br label %356

356:                                              ; preds = %362, %327
  %357 = call i32 @I2S_STATE_REG(i32 0)
  %358 = call i32 @READ_PERI_REG(i32 %357)
  %359 = load i32, i32* @I2S_TX_FIFO_RESET_BACK, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  br label %356

363:                                              ; preds = %300, %356
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

declare dso_local i32 @I2S_LC_CONF_REG(i32) #1

declare dso_local i32 @I2S_OUT_LINK_REG(i32) #1

declare dso_local i32 @I2S_IN_LINK_REG(i32) #1

declare dso_local i32 @I2S_RXEOF_NUM_REG(i32) #1

declare dso_local i32 @I2S_INT_CLR_REG(i32) #1

declare dso_local i32 @I2S_INT_RAW_REG(i32) #1

declare dso_local i32 @I2S_STATE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
