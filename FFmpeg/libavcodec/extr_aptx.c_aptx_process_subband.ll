; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_process_subband.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptx_process_subband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_12__*)* @aptx_process_subband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aptx_process_subband(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = call i32 @aptx_invert_quantization(%struct.TYPE_11__* %16, i32 %17, i32 %18, %struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 0, %26
  %28 = call i32 @FFDIFFSIGN(i32 %23, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  store i32 1048576, i32* %15, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = call i32 @rshift32(i32 %68, i32 1)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 0, %71
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @av_clip(i32 %70, i32 %72, i32 %73)
  %75 = and i32 %74, -16
  %76 = mul nsw i32 %75, 16
  store i32 %76, i32* %14, align 4
  store i32 3145728, i32* %15, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 254, %81
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 8388608, %84
  %86 = add nsw i32 %82, %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @rshift32(i32 %91, i32 8)
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 0, %93
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @av_clip(i32 %92, i32 %94, i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 3932160, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 255, %111
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 12582912, %114
  %116 = add nsw i32 %112, %115
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rshift32(i32 %119, i32 8)
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 0, %121
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @av_clip(i32 %120, i32 %122, i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @aptx_prediction_filtering(%struct.TYPE_10__* %129, i32 %132, i32 %135)
  ret void
}

declare dso_local i32 @aptx_invert_quantization(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @FFDIFFSIGN(i32, i32) #1

declare dso_local i32 @rshift32(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @aptx_prediction_filtering(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
