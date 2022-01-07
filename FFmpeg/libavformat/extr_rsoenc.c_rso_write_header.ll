; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsoenc.c_rso_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsoenc.c_rso_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RSO only supports mono\0A\00", align 1
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"muxer does not support non seekable output\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Sample rate must be < 65536\0A\00", align 1
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"ADPCM in RSO\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @rso_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rso_write_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %11, i64 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(%struct.TYPE_12__* %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %2, align 4
  br label %83

32:                                               ; preds = %22
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_12__* %42, i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %2, align 4
  br label %83

46:                                               ; preds = %32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp uge i32 %49, 65536
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(%struct.TYPE_12__* %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %2, align 4
  br label %83

56:                                               ; preds = %46
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = call i32 @avpriv_report_missing_feature(%struct.TYPE_12__* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %65, i32* %2, align 4
  br label %83

66:                                               ; preds = %56
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @avio_wb16(%struct.TYPE_11__* %67, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @avio_wb16(%struct.TYPE_11__* %72, i32 0)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @avio_wb16(%struct.TYPE_11__* %74, i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = call i32 @avio_wb16(%struct.TYPE_11__* %79, i32 0)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = call i32 @avio_flush(%struct.TYPE_11__* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %66, %62, %51, %41, %27, %20
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @avio_wb16(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avio_flush(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
