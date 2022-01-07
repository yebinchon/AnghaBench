; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_13__*, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }

@scd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@s68k = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scd_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %8 = call i32 @memset(%struct.TYPE_13__* %7, i32 0, i32 8)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 7), align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 112
  %14 = inttoptr i64 %13 to i32*
  store i32 255, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 114
  %20 = inttoptr i64 %19 to i32*
  store i32 65535, i32* %20, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = call i32 @word_ram_switch(i32 0)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 6, i32 0), align 8
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %50, %6
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 6, i32 0), align 8
  %33 = add nsw i32 %32, 32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 5), align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 1), align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 5), align 8
  %43 = add nsw i64 %42, 65536
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 1), align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i64 %43, i64* %49, align 8
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %3, align 4
  br label %30

53:                                               ; preds = %30
  br label %58

54:                                               ; preds = %1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 2
  %57 = call i32 @memset(%struct.TYPE_13__* %56, i32 0, i32 4)
  br label %58

58:                                               ; preds = %54, %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 65535, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 5
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 65535, i32* %64, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 27
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 256, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 32
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 15, i32* %70, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 33
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 65535, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 34
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 65535, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 35
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 65535, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 36
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 65535, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 37
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 65535, i32* %85, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 4), align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 3
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @scd, i32 0, i32 0), align 8
  %90 = call i32 @memset(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), i32 0, i32 8)
  %91 = call i32 @memset(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s68k, i32 0, i32 0), i32 0, i32 8)
  %92 = call i32 (...) @cdd_reset()
  %93 = call i32 (...) @cdc_reset()
  %94 = call i32 (...) @gfx_reset()
  %95 = call i32 (...) @pcm_reset()
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @word_ram_switch(i32) #1

declare dso_local i32 @cdd_reset(...) #1

declare dso_local i32 @cdc_reset(...) #1

declare dso_local i32 @gfx_reset(...) #1

declare dso_local i32 @pcm_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
