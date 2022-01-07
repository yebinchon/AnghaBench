; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32**, i64, i64 }

@scd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cdc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_reset() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i64 2
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 1), align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 2), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 2), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 3), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 3), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 3), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 3), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 128, i32* %16, align 4
  %17 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %24, align 4
  %25 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 0, i32* %28, align 4
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 1, i32* %32, align 4
  %33 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 0, i32* %36, align 4
  %37 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  %41 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 0, i32* %44, align 4
  %45 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 4), align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 0, i32* %48, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cdc, i32 0, i32 5), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %0
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %54 = and i32 %53, -33
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 0), align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @scd, i32 0, i32 1), align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 25
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %55, %60
  %62 = ashr i32 %61, 1
  %63 = call i32 @s68k_update_irq(i32 %62)
  br label %64

64:                                               ; preds = %52, %0
  ret void
}

declare dso_local i32 @s68k_update_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
