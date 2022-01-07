; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_film_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilmenc.c_film_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i64, i64 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Sega FILM allows a maximum of one audio stream.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Sega FILM allows a maximum of one video stream.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No video stream present.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Incompatible audio stream format.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @film_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @film_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %95, %1
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %7, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %29
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 @av_log(%struct.TYPE_10__* %50, i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %116

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %4, align 8
  br label %60

60:                                               ; preds = %55, %29
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 @av_log(%struct.TYPE_10__* %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %116

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %60
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load i32, i32* @AV_LOG_ERROR, align 4
  %91 = call i32 @av_log(%struct.TYPE_10__* %89, i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %116

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %23

98:                                               ; preds = %23
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @get_audio_codec_id(i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 @av_log(%struct.TYPE_10__* %110, i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %101, %98
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %109, %88, %73, %49
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @get_audio_codec_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
