; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_prg_ram_dma_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_prg_ram_dma_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cdc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@scd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prg_ram_dma_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 1, i32 0), align 8
  %7 = and i32 %6, 16382
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 5
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 3
  %13 = and i32 %12, 524286
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = lshr i32 %14, 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 5
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 1, i32 0), align 8
  %24 = add i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 1, i32 0), align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 9
  %32 = icmp slt i32 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %58

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %2, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %2, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cdc, i32 0, i32 0), align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0), align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = inttoptr i64 %50 to i32*
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 2
  %54 = and i32 %53, 16382
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 2
  %57 = and i32 %56, 524286
  store i32 %57, i32* %5, align 4
  br label %35

58:                                               ; preds = %33, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
