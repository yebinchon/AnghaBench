; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32**, i32**, i64* }

@SN76489 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PSG_MCYCLES_RATIO = common dso_local global i32 0, align 4
@PSGVolumeValues = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76489_Config(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SN76489_RunUntil(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %18 = sub i32 %16, %17
  %19 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 1
  %22 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %23 = udiv i32 %21, %22
  %24 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %25 = mul i32 %23, %24
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %27 = add i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %13, %4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %135, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %138

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 4
  %37 = ashr i32 %34, %36
  %38 = and i32 %37, 1
  %39 = mul nsw i32 %33, %38
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 0
  %50 = ashr i32 %47, %49
  %51 = and i32 %50, 1
  %52 = mul nsw i32 %46, %51
  %53 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %84

61:                                               ; preds = %32
  %62 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %66, %67
  %69 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %77, %78
  %80 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %61, %32
  %85 = load i32*, i32** @PSGVolumeValues, align 8
  %86 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %94, %101
  %103 = sdiv i32 %102, 100
  %104 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %103, i32* %109, align 4
  %110 = load i32*, i32** @PSGVolumeValues, align 8
  %111 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 2
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %119, %126
  %128 = sdiv i32 %127, 100
  %129 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %84
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %29

138:                                              ; preds = %29
  ret void
}

declare dso_local i32 @SN76489_RunUntil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
