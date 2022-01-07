; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_end_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_end_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@scd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TIMERS_SCYCLES_RATIO = common dso_local global i32 0, align 4
@s68k = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@gfx = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@m68k = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scd_end_frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %6 = sub i32 %4, %5
  %7 = load i32, i32* @TIMERS_SCYCLES_RATIO, align 4
  %8 = udiv i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i64 6
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %12, %13
  %15 = and i32 %14, 4095
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 6
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @TIMERS_SCYCLES_RATIO, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* %2, align 4
  %23 = sub i32 %21, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %25 = add i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s68k, i32 0, i32 0), align 8
  %28 = sub i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s68k, i32 0, i32 0), align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gfx, i32 0, i32 0), align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gfx, i32 0, i32 0), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @m68k, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s68k, i32 0, i32 1, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
