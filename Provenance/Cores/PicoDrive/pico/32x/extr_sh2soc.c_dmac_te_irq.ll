; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_te_irq.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_te_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.dma_chan = type { i32 }
%struct.dmac = type { i32, i32, %struct.dma_chan* }

@EL_32XP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dmac irq %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.dma_chan*)* @dmac_te_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmac_te_irq(%struct.TYPE_4__* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 384
  %15 = bitcast i8* %14 to %struct.dmac*
  store %struct.dmac* %15, %struct.dmac** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @PREG8(i8* %16, i32 226)
  %18 = and i32 %17, 15
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %20 = load %struct.dmac*, %struct.dmac** %6, align 8
  %21 = getelementptr inbounds %struct.dmac, %struct.dmac* %20, i32 0, i32 2
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  %23 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %22, i64 0
  %24 = icmp eq %struct.dma_chan* %19, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.dmac*, %struct.dmac** %6, align 8
  %27 = getelementptr inbounds %struct.dmac, %struct.dmac* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.dmac*, %struct.dmac** %6, align 8
  %31 = getelementptr inbounds %struct.dmac, %struct.dmac* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %28, %25 ], [ %32, %29 ]
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @EL_32XP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @elprintf(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 127
  %43 = call i32 @sh2_internal_irq(%struct.TYPE_4__* %39, i32 %40, i32 %42)
  ret void
}

declare dso_local i32 @PREG8(i8*, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @sh2_internal_irq(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
