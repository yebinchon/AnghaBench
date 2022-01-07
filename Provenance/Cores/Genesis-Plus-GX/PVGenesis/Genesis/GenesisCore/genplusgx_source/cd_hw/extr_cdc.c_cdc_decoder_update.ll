; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_decoder_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_decoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, i32, i64* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cdc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BIT_DECEN = common dso_local global i32 0, align 4
@BIT_DECI = common dso_local global i32 0, align 4
@BIT_DECIEN = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BIT_WRRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_decoder_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BIT_DECEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %87

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 7), align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32 %12, i32* %16, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @BIT_DECI, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 6), align 8
  %22 = and i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 6), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 2), align 8
  %24 = load i32, i32* @BIT_DECIEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %11
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %29 = or i32 %28, 32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 25
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 25
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %38, %43
  %45 = ashr i32 %44, 1
  %46 = call i32 @s68k_update_irq(i32 %45)
  br label %47

47:                                               ; preds = %37, %27
  br label %48

48:                                               ; preds = %47, %11
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 0), align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BIT_WRRQ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 4, i32 0), align 8
  %57 = add nsw i32 %56, 2352
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 4, i32 0), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 5, i32 0), align 4
  %59 = add nsw i32 %58, 2352
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 5, i32 0), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 4, i32 0), align 8
  %61 = and i32 %60, 16383
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 3), align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = inttoptr i64 %66 to i32*
  store i32 %62, i32* %67, align 4
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 3), align 8
  %69 = add nsw i64 %68, 4
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 @cdd_read_data(i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 14332
  br i1 %75, label %76, label %85

76:                                               ; preds = %55
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 3), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cdc, i32 0, i32 3), align 8
  %79 = add nsw i64 %78, 16384
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 2048
  %82 = add nsw i32 %81, 4
  %83 = sub nsw i32 %82, 16384
  %84 = call i32 @memcpy(i64 %77, i64 %79, i32 %83)
  br label %85

85:                                               ; preds = %76, %55
  store i32 1, i32* %2, align 4
  br label %88

86:                                               ; preds = %48
  br label %87

87:                                               ; preds = %86, %1
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %85
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @s68k_update_irq(i32) #1

declare dso_local i32 @cdd_read_data(i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
