; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sn76489.c_SN76489_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i64, i32, i64, i64**, i64**, i64* }

@SN76489 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NoiseInitialState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SN76489_Reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %49, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 3
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 2, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 0), align 8
  %12 = load i32, i32* %1, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32 15, i32* %16, align 4
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 8), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 1), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 7), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %25, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 0, i64* %30, align 8
  %31 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 7), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %36, align 8
  %37 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 6), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %37, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  %43 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 6), align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64*, i64** %43, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %5
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %2

52:                                               ; preds = %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 5), align 8
  %53 = load i32, i32* @NoiseInitialState, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 4), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SN76489, i32 0, i32 3), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
