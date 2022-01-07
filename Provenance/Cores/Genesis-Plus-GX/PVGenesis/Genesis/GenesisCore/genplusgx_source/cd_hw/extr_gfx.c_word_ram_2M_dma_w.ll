; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_word_ram_2M_dma_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_word_ram_2M_dma_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@cdc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@scd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @word_ram_2M_dma_w(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 1, i32 0), align 8
  %7 = and i32 %6, 16382
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 3
  %13 = and i32 %12, 262142
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = lshr i32 %14, 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 1, i32 0), align 8
  %24 = add i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 1, i32 0), align 8
  br label %25

25:                                               ; preds = %29, %1
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %2, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 0), align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to i32*
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 2
  %44 = and i32 %43, 16382
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 2
  %47 = and i32 %46, 262142
  store i32 %47, i32* %5, align 4
  br label %25

48:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
