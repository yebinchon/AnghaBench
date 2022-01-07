; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hnm.c_hnm_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hnm.c_hnm_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid resolution: %ux%u\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_HNM4_VIDEO = common dso_local global i32 0, align 4
@HNM4_FRAME_FPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @hnm_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnm_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 12
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 11
  %17 = call i32 @av_init_packet(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @avio_skip(i32* %26, i32 8)
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @avio_rl16(i32* %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @avio_rl16(i32* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* @avio_rl32(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @avio_rl32(i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @avio_rl32(i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @avio_rl16(i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @avio_rl16(i32* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @avio_rl32(i32* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @avio_skip(i32* %62, i32 32)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 256
  br i1 %69, label %85, label %70

70:                                               ; preds = %1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 640
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 150
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 480
  br i1 %84, label %85, label %96

85:                                               ; preds = %80, %75, %70, %1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @av_log(%struct.TYPE_15__* %86, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %2, align 4
  br label %165

96:                                               ; preds = %80
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 640
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  store i32 74, i32* %103, align 8
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  store i32 64, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %108, i32* null)
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %6, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %165

114:                                              ; preds = %107
  %115 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 6
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @AV_CODEC_ID_HNM4_VIDEO, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 5
  store i32 %120, i32* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 4
  %143 = call i32 @av_mallocz(i32 1)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  store i32 %143, i32* %147, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = call i32 @memcpy(i32 %156, i32* %158, i32 1)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = load i32, i32* @HNM4_FRAME_FPS, align 4
  %164 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %162, i32 33, i32 1, i32 %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %114, %111, %85
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @av_init_packet(%struct.TYPE_11__*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_mallocz(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
