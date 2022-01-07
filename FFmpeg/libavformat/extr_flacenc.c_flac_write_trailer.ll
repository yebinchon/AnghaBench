; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { %struct.TYPE_10__**, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i64, i32* }
%struct.TYPE_12__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"No packets were sent for some of the attached pictures.\0A\00", align 1
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to rewrite FLAC header.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @flac_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_write_trailer(%struct.AVFormatContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AVFormatContext*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %3, align 8
  %8 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %9 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %12 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %24 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %35

35:                                               ; preds = %22, %18
  %36 = phi i32* [ %21, %18 ], [ %34, %22 ]
  store i32* %36, i32** %7, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %43 = load i32, i32* @AV_LOG_WARNING, align 4
  %44 = call i32 @av_log(%struct.AVFormatContext* %42, i32 %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %46 = call i32 @flac_queue_flush(%struct.AVFormatContext* %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %47
  store i32 0, i32* %2, align 4
  br label %84

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = call i32 @avio_tell(%struct.TYPE_12__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i32 @avio_seek(%struct.TYPE_12__* %66, i32 8, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %72 = call i32 @avio_write(%struct.TYPE_12__* %69, i32* %70, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @avio_seek(%struct.TYPE_12__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = call i32 @avio_flush(%struct.TYPE_12__* %77)
  br label %83

79:                                               ; preds = %56
  %80 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %81 = load i32, i32* @AV_LOG_WARNING, align 4
  %82 = call i32 @av_log(%struct.AVFormatContext* %80, i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %63
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %55
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*) #1

declare dso_local i32 @flac_queue_flush(%struct.AVFormatContext*) #1

declare dso_local i32 @avio_tell(%struct.TYPE_12__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @avio_flush(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
