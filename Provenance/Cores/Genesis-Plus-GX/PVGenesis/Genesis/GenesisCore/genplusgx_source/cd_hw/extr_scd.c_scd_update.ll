; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@cdc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@scd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SCYCLES_PER_LINE = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@s68k = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cdd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@TIMERS_SCYCLES_RATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scd_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cdc, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @cdc_dma_update()
  br label %7

7:                                                ; preds = %5, %1
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @m68k_run(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %12 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @s68k_run(i64 %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @m68k, i32 0, i32 0), align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s68k, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %23 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = icmp slt i64 %21, %25
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ true, %16 ], [ %26, %20 ]
  br i1 %28, label %8, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %34 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %35 = mul nsw i32 %34, 3
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cdd, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cdd, i32 0, i32 0), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cdd, i32 0, i32 0), align 4
  %39 = icmp sge i32 %38, 2000000
  br i1 %39, label %40, label %77

40:                                               ; preds = %29
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cdd, i32 0, i32 0), align 4
  %42 = sub nsw i32 %41, 2000000
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cdd, i32 0, i32 0), align 4
  %43 = call i32 (...) @cdd_update()
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 37
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 240
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 37
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 240, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %57 = or i32 %56, 16
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 25
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 16
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 25
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = ashr i32 %72, 1
  %74 = call i32 @s68k_update_irq(i32 %73)
  br label %75

75:                                               ; preds = %65, %51
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %77
  %81 = load i32, i32* @SCYCLES_PER_LINE, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %80
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 24
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TIMERS_SCYCLES_RATIO, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 2), align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 25
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %87
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %107 = or i32 %106, 8
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1), align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 25
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %108, %113
  %115 = ashr i32 %114, 1
  %116 = call i32 @s68k_update_irq(i32 %115)
  br label %117

117:                                              ; preds = %105, %87
  br label %118

118:                                              ; preds = %117, %80
  br label %119

119:                                              ; preds = %118, %77
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 3), align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 44
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 128
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %129 = call i32 @gfx_update(i64 %128)
  br label %130

130:                                              ; preds = %127, %119
  ret void
}

declare dso_local i32 @cdc_dma_update(...) #1

declare dso_local i32 @m68k_run(i32) #1

declare dso_local i32 @s68k_run(i64) #1

declare dso_local i32 @cdd_update(...) #1

declare dso_local i32 @s68k_update_irq(i32) #1

declare dso_local i32 @gfx_update(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
