; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i64 }

@Pico_mcd = common dso_local global %struct.TYPE_2__* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_MCD_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcd_pcm_update(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @SekCyclesDoneS68k()
  %11 = call i32 @pcd_pcm_sync(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @PicoOpt, align 4
  %18 = load i32, i32* @POPT_EN_MCD_PCM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %3
  br label %103

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  %45 = load i32, i32* %43, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %43, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* %50, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %50, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 16
  %59 = mul nsw i32 %58, 2
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 65535
  store i32 %64, i32* %9, align 4
  br label %35

65:                                               ; preds = %35
  br label %91

66:                                               ; preds = %22
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %4, align 8
  %77 = load i32, i32* %75, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %75, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 16
  %84 = mul nsw i32 %83, 2
  %85 = load i32*, i32** %8, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 65535
  store i32 %89, i32* %9, align 4
  br label %67

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %65
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memset(i32* %94, i32 0, i32 %101)
  br label %103

103:                                              ; preds = %91, %21
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  ret void
}

declare dso_local i32 @pcd_pcm_sync(i32) #1

declare dso_local i32 @SekCyclesDoneS68k(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
