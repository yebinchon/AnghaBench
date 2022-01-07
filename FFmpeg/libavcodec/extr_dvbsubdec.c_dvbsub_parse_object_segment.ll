; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_object_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_parse_object_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Field data size %d+%d too large\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown object coding %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @dvbsub_parse_object_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_parse_object_segment(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @AV_RB16(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_10__* @get_object(i32* %30, i32 %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %11, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 2
  %41 = and i32 %40, 3
  store i32 %41, i32* %15, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = ashr i32 %44, 1
  %46 = and i32 %45, 1
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %111

49:                                               ; preds = %37
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @AV_RB16(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @AV_RB16(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ugt i32* %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_11__* %68, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %4, align 4
  br label %117

74:                                               ; preds = %49
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %12, align 8
  br label %78

78:                                               ; preds = %106, %74
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %17, align 8
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %18, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @dvbsub_parse_pixel_data_block(%struct.TYPE_11__* %84, %struct.TYPE_9__* %85, i32* %86, i32 %87, i32 0, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32* %96, i32** %17, align 8
  br label %99

97:                                               ; preds = %81
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %97, %92
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @dvbsub_parse_pixel_data_block(%struct.TYPE_11__* %100, %struct.TYPE_9__* %101, i32* %102, i32 %103, i32 1, i32 %104)
  br label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %12, align 8
  br label %78

110:                                              ; preds = %78
  br label %116

111:                                              ; preds = %37
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_11__* %112, i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %110
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %67, %35
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local %struct.TYPE_10__* @get_object(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, ...) #1

declare dso_local i32 @dvbsub_parse_pixel_data_block(%struct.TYPE_11__*, %struct.TYPE_9__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
