; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }

@DMA_TE = common dso_local global i32 0, align 4
@SH2_STATE_SLEEP = common dso_local global i32 0, align 4
@DMA_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dma_chan*)* @dmac_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmac_transfer_complete(i32* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %5 = load i32, i32* @DMA_TE, align 4
  %6 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @SH2_STATE_SLEEP, align 4
  %12 = call i32 (...) @SekCyclesDone()
  %13 = call i32 @p32x_sh2_poll_event(i32* %10, i32 %11, i32 %12)
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_IE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %23 = call i32 @dmac_te_irq(i32* %21, %struct.dma_chan* %22)
  br label %24

24:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @p32x_sh2_poll_event(i32*, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @dmac_te_irq(i32*, %struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
