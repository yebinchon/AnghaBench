; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wavdec.c_set_spdif.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wavdec.c_set_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CONFIG_SPDIF_DEMUXER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot check for SPDIF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @set_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_spdif(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load i64, i64* @CONFIG_SPDIF_DEMUXER, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %90

23:                                               ; preds = %12
  store i32 65536, i32* %6, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ffio_ensure_seekback(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = call i32* @av_malloc(i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %7, align 4
  br label %81

39:                                               ; preds = %31
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @avio_tell(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @avio_read(i32 %46, i32* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %39
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ff_spdif_probe(i32* %53, i32 %54, i32* %5)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %63, i64 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %60, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %52
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @avio_seek(i32 %75, i32 %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @av_free(i32* %79)
  br label %81

81:                                               ; preds = %72, %36
  br label %82

82:                                               ; preds = %81, %23
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = load i32, i32* @AV_LOG_WARNING, align 4
  %88 = call i32 @av_log(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %12, %2
  ret void
}

declare dso_local i32 @ffio_ensure_seekback(i32, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avio_read(i32, i32*, i32) #1

declare dso_local i32 @ff_spdif_probe(i32*, i32, i32*) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
