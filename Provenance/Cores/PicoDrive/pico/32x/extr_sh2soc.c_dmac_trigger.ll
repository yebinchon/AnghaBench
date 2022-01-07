; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_trigger.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_dmac_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dma_chan = type { i32, i32, i32, i32 }

@EL_32XP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DMA %08x->%08x, cnt %d, chcr %04x @%06x\00", align 1
@DMA_AR = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"68k -> sh2 DMA\00", align 1
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"unhandled DMA: %08x->%08x, cnt %d, chcr %04x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.dma_chan*)* @dmac_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmac_trigger(%struct.TYPE_7__* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = load i32, i32* @EL_32XP, align 4
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @elprintf_sh2(%struct.TYPE_7__* %5, i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 16777215
  store i32 %26, i32* %24, align 4
  %27 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %28 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMA_AR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %42 = call i32 @dmac_transfer_one(%struct.TYPE_7__* %40, %struct.dma_chan* %41)
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %46 = call i32 @dmac_transfer_complete(%struct.TYPE_7__* %44, %struct.dma_chan* %45)
  br label %92

47:                                               ; preds = %2
  %48 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %49 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -536870913
  %52 = icmp eq i32 %51, 16402
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico32x, i32 0, i32 0), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico32x, i32 0, i32 0), align 4
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @EL_32XP, align 4
  %62 = call i32 (i32, i8*, ...) @elprintf(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 (...) @p32x_dreq0_trigger()
  br label %64

64:                                               ; preds = %60, %56, %53
  br label %92

65:                                               ; preds = %47
  %66 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %67 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -939524112
  %70 = icmp eq i32 %69, 16432
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %92

72:                                               ; preds = %65
  %73 = load i32, i32* @EL_32XP, align 4
  %74 = load i32, i32* @EL_ANOMALY, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %77 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %80 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %83 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %86 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @elprintf(i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %81, i32 %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %72, %71, %64, %43
  ret void
}

declare dso_local i32 @elprintf_sh2(%struct.TYPE_7__*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmac_transfer_one(%struct.TYPE_7__*, %struct.dma_chan*) #1

declare dso_local i32 @dmac_transfer_complete(%struct.TYPE_7__*, %struct.dma_chan*) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @p32x_dreq0_trigger(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
