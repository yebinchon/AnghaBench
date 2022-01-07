; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_YM2413Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_YM2413Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@output = common dso_local global i32* null, align 8
@ym2413 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2413Update(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %74, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %77

11:                                               ; preds = %7
  %12 = load i32*, i32** @output, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** @output, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = call i32 (...) @advance_lfo()
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @chan_calc(i32* %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @chan_calc(i32* %21)
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = call i32 @chan_calc(i32* %24)
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = call i32 @chan_calc(i32* %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = call i32 @chan_calc(i32* %30)
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = call i32 @chan_calc(i32* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 0), align 8
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %11
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = call i32 @chan_calc(i32* %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 7
  %44 = call i32 @chan_calc(i32* %43)
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = call i32 @chan_calc(i32* %46)
  br label %55

48:                                               ; preds = %11
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 3), align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 1), align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 1
  %54 = call i32 @rhythm_calc(i32* %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %38
  %56 = load i32*, i32** @output, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @output, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %58, %62
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %3, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %3, align 8
  store i32 %70, i32* %71, align 4
  %73 = call i32 (...) @advance()
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %7

77:                                               ; preds = %7
  ret void
}

declare dso_local i32 @advance_lfo(...) #1

declare dso_local i32 @chan_calc(i32*) #1

declare dso_local i32 @rhythm_calc(i32*, i32) #1

declare dso_local i32 @advance(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
