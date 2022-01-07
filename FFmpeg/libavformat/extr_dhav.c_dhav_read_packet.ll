; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_dhav_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dhav.c_dhav_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_21__**, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_20__ = type { i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i8* null, align 8
@AV_CODEC_ID_MJPEG = common dso_local global i8* null, align 8
@AV_CODEC_ID_H264 = common dso_local global i8* null, align 8
@AV_CODEC_ID_HEVC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown video codec %X\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S8 = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_MULAW = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_ALAW = common dso_local global i8* null, align 8
@AV_CODEC_ID_AAC = common dso_local global i8* null, align 8
@AV_CODEC_ID_MP2 = common dso_local global i8* null, align 8
@AV_CODEC_ID_MP3 = common dso_local global i8* null, align 8
@AV_CODEC_ID_ADPCM_MS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown audio codec %X\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*)* @dhav_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhav_read_packet(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %6, align 8
  br label %16

16:                                               ; preds = %293, %2
  br label %17

17:                                               ; preds = %21, %16
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %19 = call i32 @read_chunk(%struct.TYPE_26__* %18)
  store i32 %19, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %361

27:                                               ; preds = %22
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 253
  br i1 %31, label %32, label %129

32:                                               ; preds = %27
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %129

37:                                               ; preds = %32
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = call %struct.TYPE_24__* @avformat_new_stream(%struct.TYPE_26__* %38, i32* null)
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %9, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = icmp ne %struct.TYPE_24__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %361

45:                                               ; preds = %37
  %46 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %78 [
    i32 1, label %54
    i32 3, label %60
    i32 2, label %66
    i32 4, label %66
    i32 8, label %66
    i32 12, label %72
  ]

54:                                               ; preds = %45
  %55 = load i8*, i8** @AV_CODEC_ID_MPEG4, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  store i8* %55, i8** %59, align 8
  br label %84

60:                                               ; preds = %45
  %61 = load i8*, i8** @AV_CODEC_ID_MJPEG, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  store i8* %61, i8** %65, align 8
  br label %84

66:                                               ; preds = %45, %45, %45
  %67 = load i8*, i8** @AV_CODEC_ID_H264, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  store i8* %67, i8** %71, align 8
  br label %84

72:                                               ; preds = %45
  %73 = load i8*, i8** @AV_CODEC_ID_HEVC, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  store i8* %73, i8** %77, align 8
  br label %84

78:                                               ; preds = %45
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @avpriv_request_sample(%struct.TYPE_26__* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %72, %66, %60, %54
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 5
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = call %struct.TYPE_22__* @av_mallocz(i32 8)
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %10, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %110, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = icmp ne %struct.TYPE_22__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %84
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = call i32 @AVERROR(i32 %116)
  store i32 %117, i32* %3, align 4
  br label %361

118:                                              ; preds = %84
  %119 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %128 = call i32 @avpriv_set_pts_info(%struct.TYPE_24__* %127, i32 64, i32 1, i32 1000)
  br label %259

129:                                              ; preds = %32, %27
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 240
  br i1 %133, label %134, label %258

134:                                              ; preds = %129
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %258

139:                                              ; preds = %134
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %141 = call %struct.TYPE_24__* @avformat_new_stream(%struct.TYPE_26__* %140, i32* null)
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %11, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %143 = icmp ne %struct.TYPE_24__* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = call i32 @AVERROR(i32 %145)
  store i32 %146, i32* %3, align 4
  br label %361

147:                                              ; preds = %139
  %148 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 3
  store i32 %148, i32* %152, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %216 [
    i32 7, label %156
    i32 12, label %162
    i32 16, label %168
    i32 10, label %174
    i32 22, label %180
    i32 14, label %186
    i32 26, label %192
    i32 31, label %198
    i32 33, label %204
    i32 13, label %210
  ]

156:                                              ; preds = %147
  %157 = load i8*, i8** @AV_CODEC_ID_PCM_S8, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 2
  store i8* %157, i8** %161, align 8
  br label %222

162:                                              ; preds = %147
  %163 = load i8*, i8** @AV_CODEC_ID_PCM_S16LE, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  store i8* %163, i8** %167, align 8
  br label %222

168:                                              ; preds = %147
  %169 = load i8*, i8** @AV_CODEC_ID_PCM_S16LE, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  store i8* %169, i8** %173, align 8
  br label %222

174:                                              ; preds = %147
  %175 = load i8*, i8** @AV_CODEC_ID_PCM_MULAW, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 2
  store i8* %175, i8** %179, align 8
  br label %222

180:                                              ; preds = %147
  %181 = load i8*, i8** @AV_CODEC_ID_PCM_MULAW, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  store i8* %181, i8** %185, align 8
  br label %222

186:                                              ; preds = %147
  %187 = load i8*, i8** @AV_CODEC_ID_PCM_ALAW, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  store i8* %187, i8** %191, align 8
  br label %222

192:                                              ; preds = %147
  %193 = load i8*, i8** @AV_CODEC_ID_AAC, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  store i8* %193, i8** %197, align 8
  br label %222

198:                                              ; preds = %147
  %199 = load i8*, i8** @AV_CODEC_ID_MP2, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 2
  store i8* %199, i8** %203, align 8
  br label %222

204:                                              ; preds = %147
  %205 = load i8*, i8** @AV_CODEC_ID_MP3, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  store i8* %205, i8** %209, align 8
  br label %222

210:                                              ; preds = %147
  %211 = load i8*, i8** @AV_CODEC_ID_ADPCM_MS, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  store i8* %211, i8** %215, align 8
  br label %222

216:                                              ; preds = %147
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @avpriv_request_sample(%struct.TYPE_26__* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %216, %210, %204, %198, %192, %186, %180, %174, %168, %162, %156
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  store i32 %225, i32* %229, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  store i32 %232, i32* %236, align 8
  %237 = call %struct.TYPE_22__* @av_mallocz(i32 8)
  store %struct.TYPE_22__* %237, %struct.TYPE_22__** %12, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 1
  store %struct.TYPE_22__* %237, %struct.TYPE_22__** %239, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %241, align 8
  %243 = icmp ne %struct.TYPE_22__* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %222
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = call i32 @AVERROR(i32 %245)
  store i32 %246, i32* %3, align 4
  br label %361

247:                                              ; preds = %222
  %248 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %257 = call i32 @avpriv_set_pts_info(%struct.TYPE_24__* %256, i32 64, i32 1, i32 1000)
  br label %258

258:                                              ; preds = %247, %134, %129
  br label %259

259:                                              ; preds = %258, %118
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 240
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  br label %272

268:                                              ; preds = %259
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  br label %272

272:                                              ; preds = %268, %264
  %273 = phi i32 [ %267, %264 ], [ %271, %268 ]
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %272
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @avio_skip(i32 %279, i32 %280)
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @avio_rl32(i32 %284)
  %286 = call i64 @MKTAG(i8 signext 100, i8 signext 104, i8 signext 97, i8 signext 118)
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %276
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @avio_skip(i32 %291, i32 4)
  br label %293

293:                                              ; preds = %288, %276
  br label %16

294:                                              ; preds = %272
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %299 = load i32, i32* %7, align 4
  %300 = call i32 @av_get_packet(i32 %297, %struct.TYPE_25__* %298, i32 %299)
  store i32 %300, i32* %7, align 4
  %301 = load i32, i32* %7, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %294
  %304 = load i32, i32* %7, align 4
  store i32 %304, i32* %3, align 4
  br label %361

305:                                              ; preds = %294
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 4
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 252
  br i1 %312, label %313, label %319

313:                                              ; preds = %305
  %314 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %313, %305
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %340

324:                                              ; preds = %319
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %327, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %328, i64 %332
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @get_pts(%struct.TYPE_26__* %325, i32 %336)
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 3
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %324, %319
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 1
  store i32 1, i32* %342, align 4
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i64 @avio_rl32(i32 %350)
  %352 = call i64 @MKTAG(i8 signext 100, i8 signext 104, i8 signext 97, i8 signext 118)
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %340
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @avio_skip(i32 %357, i32 4)
  br label %359

359:                                              ; preds = %354, %340
  %360 = load i32, i32* %7, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %359, %303, %244, %144, %115, %42, %25
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @read_chunk(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @avformat_new_stream(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @av_mallocz(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i64 @avio_rl32(i32) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @get_pts(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
