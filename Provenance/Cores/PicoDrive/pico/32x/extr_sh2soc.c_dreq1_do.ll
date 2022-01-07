; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dreq1_do.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dreq1_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32, i64 }

@EL_32XP = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dreq1: bad control: %04x\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dreq1: bad dar?: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dma_chan*)* @dreq1_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dreq1_do(i32* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %6 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 49928
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @EL_32XP, align 4
  %12 = load i32, i32* @EL_ANOMALY, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @elprintf(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -16
  %23 = icmp ne i32 %22, 536887344
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @EL_32XP, align 4
  %26 = load i32, i32* @EL_ANOMALY, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @elprintf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %35 = call i32 @dmac_transfer_one(i32* %33, %struct.dma_chan* %34)
  %36 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %43 = call i32 @dmac_transfer_complete(i32* %41, %struct.dma_chan* %42)
  br label %44

44:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @dmac_transfer_one(i32*, %struct.dma_chan*) #1

declare dso_local i32 @dmac_transfer_complete(i32*, %struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
