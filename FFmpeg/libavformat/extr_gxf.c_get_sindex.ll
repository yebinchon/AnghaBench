; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_get_sindex.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxf.c_get_sindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i8* null, align 8
@AV_CODEC_ID_MJPEG = common dso_local global i8* null, align 8
@AV_CODEC_ID_DVVIDEO = common dso_local global i8* null, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i8* null, align 8
@AVSTREAM_PARSE_HEADERS = common dso_local global i8* null, align 8
@AV_CODEC_ID_MPEG1VIDEO = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_S24LE = common dso_local global i8* null, align 8
@AV_CH_LAYOUT_MONO = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i8* null, align 8
@AV_CODEC_ID_AC3 = common dso_local global i8* null, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i8* null, align 8
@AV_CODEC_ID_H264 = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_DATA = common dso_local global i8* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i8* null, align 8
@AV_CODEC_ID_DNXHD = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @get_sindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sindex(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ff_find_stream_index(%struct.TYPE_10__* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %228

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__* %18, i32* null)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %228

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %212 [
    i32 3, label %30
    i32 4, label %30
    i32 13, label %41
    i32 14, label %41
    i32 15, label %41
    i32 16, label %41
    i32 25, label %41
    i32 11, label %52
    i32 12, label %52
    i32 20, label %52
    i32 22, label %66
    i32 23, label %66
    i32 9, label %80
    i32 10, label %116
    i32 17, label %152
    i32 26, label %176
    i32 29, label %176
    i32 7, label %190
    i32 8, label %190
    i32 24, label %190
    i32 30, label %201
  ]

30:                                               ; preds = %25, %25
  %31 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 6
  store i8* %31, i8** %35, align 8
  %36 = load i8*, i8** @AV_CODEC_ID_MJPEG, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  store i8* %36, i8** %40, align 8
  br label %223

41:                                               ; preds = %25, %25, %25, %25, %25
  %42 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** @AV_CODEC_ID_DVVIDEO, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  store i8* %47, i8** %51, align 8
  br label %223

52:                                               ; preds = %25, %25, %25
  %53 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 6
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** @AV_CODEC_ID_MPEG2VIDEO, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i8* %58, i8** %62, align 8
  %63 = load i8*, i8** @AVSTREAM_PARSE_HEADERS, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %223

66:                                               ; preds = %25, %25
  %67 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @AV_CODEC_ID_MPEG1VIDEO, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @AVSTREAM_PARSE_HEADERS, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %223

80:                                               ; preds = %25
  %81 = load i8*, i8** @AVMEDIA_TYPE_AUDIO, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 6
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** @AV_CODEC_ID_PCM_S24LE, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  store i8* %86, i8** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i8*, i8** @AV_CH_LAYOUT_MONO, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 7
  store i8* %95, i8** %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 48000, i32* %103, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 1152000, i32* %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 3, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  store i32 24, i32* %115, align 8
  br label %223

116:                                              ; preds = %25
  %117 = load i8*, i8** @AVMEDIA_TYPE_AUDIO, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 6
  store i8* %117, i8** %121, align 8
  %122 = load i8*, i8** @AV_CODEC_ID_PCM_S16LE, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  store i8* %122, i8** %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load i8*, i8** @AV_CH_LAYOUT_MONO, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 7
  store i8* %131, i8** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 48000, i32* %139, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i32 768000, i32* %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  store i32 2, i32* %147, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32 16, i32* %151, align 8
  br label %223

152:                                              ; preds = %25
  %153 = load i8*, i8** @AVMEDIA_TYPE_AUDIO, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 6
  store i8* %153, i8** %157, align 8
  %158 = load i8*, i8** @AV_CODEC_ID_AC3, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  store i8* %158, i8** %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 2, i32* %166, align 8
  %167 = load i8*, i8** @AV_CH_LAYOUT_STEREO, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  store i8* %167, i8** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 48000, i32* %175, align 4
  br label %223

176:                                              ; preds = %25, %25
  %177 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 6
  store i8* %177, i8** %181, align 8
  %182 = load i8*, i8** @AV_CODEC_ID_H264, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store i8* %182, i8** %186, align 8
  %187 = load i8*, i8** @AVSTREAM_PARSE_HEADERS, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  br label %223

190:                                              ; preds = %25, %25, %25
  %191 = load i8*, i8** @AVMEDIA_TYPE_DATA, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  store i8* %191, i8** %195, align 8
  %196 = load i8*, i8** @AV_CODEC_ID_NONE, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  store i8* %196, i8** %200, align 8
  br label %223

201:                                              ; preds = %25
  %202 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 6
  store i8* %202, i8** %206, align 8
  %207 = load i8*, i8** @AV_CODEC_ID_DNXHD, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 5
  store i8* %207, i8** %211, align 8
  br label %223

212:                                              ; preds = %25
  %213 = load i8*, i8** @AVMEDIA_TYPE_UNKNOWN, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 6
  store i8* %213, i8** %217, align 8
  %218 = load i8*, i8** @AV_CODEC_ID_NONE, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  store i8* %218, i8** %222, align 8
  br label %223

223:                                              ; preds = %212, %201, %190, %176, %152, %116, %80, %66, %52, %41, %30
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %223, %22, %15
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @ff_find_stream_index(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
