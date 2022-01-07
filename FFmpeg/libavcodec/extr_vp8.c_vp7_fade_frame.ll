; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp7_fade_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8.c_vp7_fade_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__**, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32* }

@VP56_FRAME_PREVIOUS = common dso_local global i64 0, align 8
@VP56_FRAME_GOLDEN = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Discarding interframe without a prior keyframe!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @vp7_fade_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7_fade_frame(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %137, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %137

23:                                               ; preds = %20, %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 16
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 16
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %33, align 8
  %35 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %34, i64 %35
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %41, align 8
  %43 = load i64, i64* @VP56_FRAME_GOLDEN, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %42, i64 %43
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %39, %23
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = call i32 @av_log(i32 %50, i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %138

54:                                               ; preds = %39
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 %58
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %12, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %65, align 8
  %67 = load i64, i64* @VP56_FRAME_GOLDEN, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %66, i64 %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %71, align 8
  %73 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %72, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = icmp eq %struct.TYPE_14__* %69, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %54
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = call %struct.TYPE_14__* @vp8_find_free_buffer(%struct.TYPE_12__* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 %83
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %87, align 8
  %89 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %88, i64 %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = call i32 @vp8_alloc_frame(%struct.TYPE_12__* %85, %struct.TYPE_14__* %91, i32 1)
  store i32 %92, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %138

96:                                               ; preds = %77
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = load i64, i64* @VP56_FRAME_PREVIOUS, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %12, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @copy_chroma(%struct.TYPE_13__* %106, %struct.TYPE_13__* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %96, %54
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @fade(i32 %116, i32 %121, i32 %126, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %111, %20, %3
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %94, %47
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @vp8_find_free_buffer(%struct.TYPE_12__*) #1

declare dso_local i32 @vp8_alloc_frame(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @copy_chroma(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @fade(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
