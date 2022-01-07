; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_choose_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_choose_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@codec_names = common dso_local global i32 0, align 4
@str = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [160 x i8] c"Automatic encoder selection failed for output stream #%d:%d. Default encoder for format %s (codec %s) is probably disabled. Please choose an encoder manually.\0A\00", align 1
@AVERROR_ENCODER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @choose_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_encoder(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %24, %20, %3
  %29 = load i32, i32* @codec_names, align 4
  %30 = load i32, i32* @str, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i32 @MATCH_PER_STREAM_OPT(i32 %29, i32 %30, i8* %31, %struct.TYPE_14__* %32, %struct.TYPE_11__* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %98, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @av_guess_codec(%struct.TYPE_16__* %42, i32* null, i32 %45, i32* null, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 %53, i32* %59, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_15__* @avcodec_find_encoder(i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  br i1 %73, label %97, label %74

74:                                               ; preds = %39
  %75 = load i32, i32* @AV_LOG_FATAL, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @avcodec_get_name(i32 %93)
  %95 = call i32 @av_log(i32* null, i32 %75, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %86, i32 %94)
  %96 = load i32, i32* @AVERROR_ENCODER_NOT_FOUND, align 4
  store i32 %96, i32* %4, align 4
  br label %144

97:                                               ; preds = %39
  br label %129

98:                                               ; preds = %28
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %128

105:                                              ; preds = %98
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_15__* @find_codec_or_die(i8* %106, i32 %113, i32 1)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %105, %102
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %143

138:                                              ; preds = %24
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %129
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %74
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @MATCH_PER_STREAM_OPT(i32, i32, i8*, %struct.TYPE_14__*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_guess_codec(%struct.TYPE_16__*, i32*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @avcodec_find_encoder(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @avcodec_get_name(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @find_codec_or_die(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
