; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ivfdec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ivfdec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid frame rate\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @avio_rl32(i32 %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @avio_rl16(i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @avio_rl16(i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_13__* %18, i32* null)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %1
  %26 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @avio_rl32(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* @ff_codec_bmp_tags, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @ff_codec_get_id(i32 %39, i8* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @avio_rl16(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @avio_rl16(i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @avio_rl32(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @avio_rl32(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @avio_rl32(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @avio_skip(i32 %84, i32 4)
  %86 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %25
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %92, %25
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(%struct.TYPE_13__* %97, i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %92
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %102, i32 64, i8* %104, i8* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %96, %22
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @avio_rl32(i32) #1

declare dso_local i8* @avio_rl16(i32) #1

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_codec_get_id(i32, i8*) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
