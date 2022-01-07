; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_ty_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ty.c_ty_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i8* }
%struct.TYPE_10__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@CHUNK_PEEK_COUNT = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@TIVO_SERIES_UNKNOWN = common dso_local global i64 0, align 8
@TIVO_AUDIO_UNKNOWN = common dso_local global i64 0, align 8
@TIVO_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL_RAW = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@TIVO_AUDIO_MPEG = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_AC3 = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ty_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ty_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %65, %1
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CHUNK_PEEK_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CHUNK_SIZE, align 4
  %35 = call i32 @avio_read(i32* %30, i32 %33, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @analyze_chunk(%struct.TYPE_13__* %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %154

45:                                               ; preds = %29
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TIVO_SERIES_UNKNOWN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TIVO_AUDIO_UNKNOWN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57, %51, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %25

68:                                               ; preds = %63, %25
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TIVO_SERIES_UNKNOWN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TIVO_AUDIO_UNKNOWN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %74, %68
  %87 = load i32, i32* @EIO, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %154

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %90, i32* null)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %6, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %154

97:                                               ; preds = %89
  %98 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @AV_CODEC_ID_MPEG2VIDEO, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i8*, i8** @AVSTREAM_PARSE_FULL_RAW, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %111, i32 64, i32 1, i32 90000)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %113, i32* null)
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %7, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %97
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %154

120:                                              ; preds = %97
  %121 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TIVO_AUDIO_MPEG, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load i32, i32* @AV_CODEC_ID_MP2, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load i8*, i8** @AVSTREAM_PARSE_FULL_RAW, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %146

140:                                              ; preds = %120
  %141 = load i32, i32* @AV_CODEC_ID_AC3, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %131
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %147, i32 64, i32 1, i32 90000)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  store i32 1, i32* %150, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* @SEEK_SET, align 4
  %153 = call i32 @avio_seek(i32* %151, i32 0, i32 %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %146, %117, %94, %86, %43
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @avio_read(i32*, i32, i32) #1

declare dso_local i32 @analyze_chunk(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
