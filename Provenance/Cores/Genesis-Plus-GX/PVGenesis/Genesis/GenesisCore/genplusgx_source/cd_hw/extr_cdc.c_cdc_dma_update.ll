; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_dma_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_dma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32 (i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DMA_BYTES_PER_LINE = common dso_local global i32 0, align 4
@cdc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BIT_DTBSY = common dso_local global i32 0, align 4
@BIT_DTEN = common dso_local global i32 0, align 4
@BIT_DTEI = common dso_local global i32 0, align 4
@BIT_DTEIEN = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_dma_update() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DMA_BYTES_PER_LINE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 2, i32 0), align 8
  %4 = load i32, i32* @DMA_BYTES_PER_LINE, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %58

6:                                                ; preds = %0
  %7 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 3), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 2, i32 0), align 8
  %9 = add nsw i32 %8, 1
  %10 = ashr i32 %9, 1
  %11 = call i32 %7(i32 %10)
  store i32 61440, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 2, i32 0), align 8
  %12 = load i32, i32* @BIT_DTBSY, align 4
  %13 = load i32, i32* @BIT_DTEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 0), align 8
  %16 = or i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 0), align 8
  %17 = load i32, i32* @BIT_DTEI, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 0), align 8
  %20 = and i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 1), align 4
  %22 = load i32, i32* @BIT_DTEIEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %6
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0), align 8
  %27 = or i32 %26, 32
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0), align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 25
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 25
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %36, %41
  %43 = ashr i32 %42, 1
  %44 = call i32 @s68k_update_irq(i32 %43)
  br label %45

45:                                               ; preds = %35, %25
  br label %46

46:                                               ; preds = %45, %6
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 7
  %53 = or i32 %52, 128
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  store i32 (i32)* null, i32 (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 3), align 8
  br label %66

58:                                               ; preds = %0
  %59 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 3), align 8
  %60 = load i32, i32* @DMA_BYTES_PER_LINE, align 4
  %61 = ashr i32 %60, 1
  %62 = call i32 %59(i32 %61)
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 2, i32 0), align 8
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 2, i32 0), align 8
  br label %66

66:                                               ; preds = %58, %46
  ret void
}

declare dso_local i32 @s68k_update_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
