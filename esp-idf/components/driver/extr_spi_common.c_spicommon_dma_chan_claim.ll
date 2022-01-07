; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_dma_chan_claim.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_dma_chan_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOC_SPI_DMA_CHAN_NUM = common dso_local global i32 0, align 4
@spi_dma_spinlock = common dso_local global i32 0, align 4
@spi_dma_chan_enabled = common dso_local global i32 0, align 4
@PERIPH_SPI2_DMA_MODULE = common dso_local global i32 0, align 4
@PERIPH_SPI3_DMA_MODULE = common dso_local global i32 0, align 4
@PERIPH_SPI_SHARED_DMA_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spicommon_dma_chan_claim(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @SOC_SPI_DMA_CHAN_NUM, align 4
  %9 = icmp sle i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @portENTER_CRITICAL(i32* @spi_dma_spinlock)
  %15 = load i32, i32* @spi_dma_chan_enabled, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @DMA_CHANNEL_ENABLED(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @DMA_CHANNEL_ENABLED(i32 %21)
  %23 = load i32, i32* @spi_dma_chan_enabled, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @spi_dma_chan_enabled, align 4
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %10
  %26 = call i32 @portEXIT_CRITICAL(i32* @spi_dma_spinlock)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @DMA_CHANNEL_ENABLED(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
