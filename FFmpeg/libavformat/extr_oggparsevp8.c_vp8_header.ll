; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevp8.c_vp8_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__**, %struct.ogg* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i8* }

@VP8_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid OggVP8 header packet\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown OggVP8 version %d.%d\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP8 = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown VP8 header type 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @vp8_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_header(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.ogg*, %struct.ogg** %12, align 8
  store %struct.ogg* %13, %struct.ogg** %6, align 8
  %14 = load %struct.ogg*, %struct.ogg** %6, align 8
  %15 = getelementptr inbounds %struct.ogg, %struct.ogg* %14, i32 0, i32 0
  %16 = load %struct.ogg_stream*, %struct.ogg_stream** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %16, i64 %18
  store %struct.ogg_stream* %19, %struct.ogg_stream** %7, align 8
  %20 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %21 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %24 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %9, align 8
  %35 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %36 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 7
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 79
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %156

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %147 [
    i32 1, label %49
    i32 2, label %130
  ]

49:                                               ; preds = %45
  %50 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %51 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VP8_HEADER_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %3, align 4
  br label %156

60:                                               ; preds = %49
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load i32, i32* @AV_LOG_WARNING, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %66, i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %3, align 4
  br label %156

76:                                               ; preds = %60
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = call i8* @AV_RB16(i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  store i8* %79, i8** %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = call i8* @AV_RB16(i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = call i8* @AV_RB24(i32* %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 15
  %99 = call i8* @AV_RB24(i32* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 18
  %105 = call i8* @AV_RB32(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 22
  %109 = call i8* @AV_RB32(i32* %108)
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %111, i32 64, i8* %113, i8* %115)
  %117 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @AV_CODEC_ID_VP8, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %155

130:                                              ; preds = %45
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 6
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 32
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %3, align 4
  br label %156

137:                                              ; preds = %130
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 7
  %142 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %143 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 7
  %146 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_15__* %138, %struct.TYPE_13__* %139, i32* %141, i32 %145)
  br label %155

147:                                              ; preds = %45
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = load i32, i32* @AV_LOG_ERROR, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %148, i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %154, i32* %3, align 4
  br label %156

155:                                              ; preds = %137, %76
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %147, %135, %65, %55, %44
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i8* @AV_RB24(i32*) #1

declare dso_local i8* @AV_RB32(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i8*, i8*) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_15__*, %struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
