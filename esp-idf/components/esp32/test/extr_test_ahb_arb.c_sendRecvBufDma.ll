; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_sendRecvBufDma.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_sendRecvBufDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i32*, i64 }

@dmaDesc = common dso_local global %struct.TYPE_2__* null, align 8
@I2S_IN_RST = common dso_local global i32 0, align 4
@I2S_OUT_RST = common dso_local global i32 0, align 4
@I2S_AHBM_RST = common dso_local global i32 0, align 4
@I2S_AHBM_FIFO_RST = common dso_local global i32 0, align 4
@I2S_RX_RESET = common dso_local global i32 0, align 4
@I2S_TX_RESET = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @sendRecvBufDma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendRecvBufDma(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  store i32* %23, i32** %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  store i32* %52, i32** %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = call i32 @I2S_LC_CONF_REG(i32 0)
  %66 = load i32, i32* @I2S_IN_RST, align 4
  %67 = load i32, i32* @I2S_OUT_RST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @I2S_AHBM_RST, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @I2S_AHBM_FIFO_RST, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @SET_PERI_REG_MASK(i32 %65, i32 %72)
  %74 = call i32 @I2S_LC_CONF_REG(i32 0)
  %75 = load i32, i32* @I2S_IN_RST, align 4
  %76 = load i32, i32* @I2S_OUT_RST, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @I2S_AHBM_RST, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @I2S_AHBM_FIFO_RST, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @CLEAR_PERI_REG_MASK(i32 %74, i32 %81)
  %83 = call i32 @I2S_CONF_REG(i32 0)
  %84 = load i32, i32* @I2S_RX_RESET, align 4
  %85 = load i32, i32* @I2S_TX_RESET, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @SET_PERI_REG_MASK(i32 %83, i32 %90)
  %92 = call i32 @I2S_CONF_REG(i32 0)
  %93 = load i32, i32* @I2S_RX_RESET, align 4
  %94 = load i32, i32* @I2S_TX_RESET, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @CLEAR_PERI_REG_MASK(i32 %92, i32 %99)
  %101 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %102 = load i32, i32* @I2S_OUTLINK_ADDR, align 4
  %103 = call i32 @CLEAR_PERI_REG_MASK(i32 %101, i32 %102)
  %104 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 0
  %107 = ptrtoint %struct.TYPE_2__* %106 to i32
  %108 = load i32, i32* @I2S_OUTLINK_ADDR, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @SET_PERI_REG_MASK(i32 %104, i32 %109)
  %111 = call i32 @I2S_IN_LINK_REG(i32 0)
  %112 = load i32, i32* @I2S_INLINK_ADDR, align 4
  %113 = call i32 @CLEAR_PERI_REG_MASK(i32 %111, i32 %112)
  %114 = call i32 @I2S_IN_LINK_REG(i32 0)
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmaDesc, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 1
  %117 = ptrtoint %struct.TYPE_2__* %116 to i32
  %118 = load i32, i32* @I2S_INLINK_ADDR, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @SET_PERI_REG_MASK(i32 %114, i32 %119)
  %121 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %122 = load i32, i32* @I2S_DSCR_EN, align 4
  %123 = call i32 @SET_PERI_REG_MASK(i32 %121, i32 %122)
  %124 = call i32 @I2S_RXEOF_NUM_REG(i32 0)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @WRITE_PERI_REG(i32 %124, i32 %125)
  %127 = call i32 @I2S_LC_CONF_REG(i32 0)
  %128 = load i32, i32* @I2S_OUT_DATA_BURST_EN, align 4
  %129 = load i32, i32* @I2S_OUT_EOF_MODE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @I2S_OUTDSCR_BURST_EN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @I2S_OUT_DATA_BURST_EN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @I2S_INDSCR_BURST_EN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @I2S_MEM_TRANS_EN, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @WRITE_PERI_REG(i32 %127, i32 %138)
  %140 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %141 = load i32, i32* @I2S_OUTLINK_START, align 4
  %142 = call i32 @SET_PERI_REG_MASK(i32 %140, i32 %141)
  %143 = call i32 @I2S_IN_LINK_REG(i32 0)
  %144 = load i32, i32* @I2S_INLINK_START, align 4
  %145 = call i32 @SET_PERI_REG_MASK(i32 %143, i32 %144)
  %146 = call i32 @I2S_CONF_REG(i32 0)
  %147 = load i32, i32* @I2S_TX_START, align 4
  %148 = load i32, i32* @I2S_RX_START, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @SET_PERI_REG_MASK(i32 %146, i32 %149)
  %151 = call i32 @I2S_INT_CLR_REG(i32 0)
  %152 = call i32 @WRITE_PERI_REG(i32 %151, i32 -1)
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_LC_CONF_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_CONF_REG(i32) #1

declare dso_local i32 @I2S_OUT_LINK_REG(i32) #1

declare dso_local i32 @I2S_IN_LINK_REG(i32) #1

declare dso_local i32 @I2S_FIFO_CONF_REG(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @I2S_RXEOF_NUM_REG(i32) #1

declare dso_local i32 @I2S_INT_CLR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
