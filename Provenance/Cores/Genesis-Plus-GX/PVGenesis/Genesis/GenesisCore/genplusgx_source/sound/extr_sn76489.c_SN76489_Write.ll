; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32**, i32**, i32, i32 }

@SN76489 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PSG_MCYCLES_RATIO = common dso_local global i32 0, align 4
@PSGVolumeValues = common dso_local global i32* null, align 8
@NoiseInitialState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76489_Write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SN76489_RunUntil(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %14 = sub i32 %12, %13
  %15 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %16 = add i32 %14, %15
  %17 = sub i32 %16, 1
  %18 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %19 = udiv i32 %17, %18
  %20 = load i32, i32* @PSG_MCYCLES_RATIO, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %23 = add i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  br label %24

24:                                               ; preds = %9, %2
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = lshr i32 %29, 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %5, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %173 [
    i32 0, label %36
    i32 2, label %36
    i32 4, label %36
    i32 1, label %82
    i32 3, label %82
    i32 5, label %82
    i32 6, label %129
    i32 7, label %138
  ]

36:                                               ; preds = %34, %34, %34
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1008
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 15
  %49 = or i32 %46, %48
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %69

54:                                               ; preds = %36
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 63
  %63 = shl i32 %62, 4
  %64 = or i32 %60, %63
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %40
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %69
  br label %173

82:                                               ; preds = %34, %34, %34
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 15
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32*, i32** @PSGVolumeValues, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = lshr i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 4), align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %97, %104
  %106 = udiv i32 %105, 100
  %107 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 4), align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %113, %120
  %122 = udiv i32 %121, 100
  %123 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %122, i32* %128, align 4
  br label %173

129:                                              ; preds = %34
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, 15
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @NoiseInitialState, align 4
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 6), align 4
  %135 = load i32, i32* %4, align 4
  %136 = and i32 %135, 3
  %137 = shl i32 16, %136
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 5), align 8
  br label %173

138:                                              ; preds = %34
  %139 = load i32, i32* %4, align 4
  %140 = and i32 %139, 15
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 7
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** @PSGVolumeValues, align 8
  %145 = load i32, i32* %4, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 4), align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = mul i32 %149, %154
  %156 = udiv i32 %155, 100
  %157 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 4), align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = mul i32 %161, %166
  %168 = udiv i32 %167, 100
  %169 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %34, %138, %129, %82, %81
  ret void
}

declare dso_local i32 @SN76489_RunUntil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
