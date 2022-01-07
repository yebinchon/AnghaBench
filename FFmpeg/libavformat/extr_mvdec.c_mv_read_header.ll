; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_mv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_mv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i8* null, align 8
@AV_CODEC_ID_MVC1 = common dso_local global i8* null, align 8
@AV_PIX_FMT_ARGB = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Video compression %i\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid sample rate %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AUDIO_FORMAT_SIGNED = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Audio compression (format %i)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@parse_global_var = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Multiple audio streams support\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@parse_audio_var = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Audio compression %i (format %i, sr %i)\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"No valid channel count found.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Multiple video streams support\00", align 1
@parse_video_var = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"Version %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @mv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_read_header(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %4, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @avio_skip(i32* %22, i32 4)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @avio_rb16(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %236

28:                                               ; preds = %1
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @avio_skip(i32* %29, i32 22)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__* %31, i32* null)
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %6, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = icmp ne %struct.TYPE_20__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %407

38:                                               ; preds = %28
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__* %39, i32* null)
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %7, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %407

46:                                               ; preds = %38
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = call i32 @avpriv_set_pts_info(%struct.TYPE_20__* %47, i32 64, i32 1, i32 15)
  %49 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  store i8* %49, i8** %53, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @av_inv_q(i32 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @avio_rb32(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @avio_rb32(i32* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %86 [
    i32 1, label %69
    i32 2, label %75
  ]

69:                                               ; preds = %46
  %70 = load i8*, i8** @AV_CODEC_ID_MVC1, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 4
  store i8* %70, i8** %74, align 8
  br label %90

75:                                               ; preds = %46
  %76 = load i32, i32* @AV_PIX_FMT_ARGB, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 8
  store i32 %76, i32* %80, align 8
  %81 = load i8*, i8** @AV_CODEC_ID_RAWVIDEO, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 4
  store i8* %81, i8** %85, align 8
  br label %90

86:                                               ; preds = %46
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %75, %69
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* @avio_rb32(i32* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 6
  store i8* %96, i8** %100, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i8* @avio_rb32(i32* %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  store i8* %102, i8** %106, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @avio_skip(i32* %107, i32 12)
  %109 = load i8*, i8** @AVMEDIA_TYPE_AUDIO, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  store i8* %109, i8** %113, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i8* @avio_rb32(i32* %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %90
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %133, i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %141, i32* %2, align 4
  br label %407

142:                                              ; preds = %90
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @avpriv_set_pts_info(%struct.TYPE_20__* %143, i32 33, i32 1, i32 %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = call i8* @avio_rb32(i32* %152)
  %154 = call i64 @set_channels(%struct.TYPE_21__* %150, %struct.TYPE_20__* %151, i8* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %157, i32* %2, align 4
  br label %407

158:                                              ; preds = %142
  %159 = load i32*, i32** %5, align 8
  %160 = call i8* @avio_rb32(i32* %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @AUDIO_FORMAT_SIGNED, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i8*, i8** @AV_CODEC_ID_PCM_S16BE, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 4
  store i8* %166, i8** %170, align 8
  br label %175

171:                                              ; preds = %158
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %165
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @avio_skip(i32* %176, i32 12)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %179 = call i32 @var_read_metadata(%struct.TYPE_21__* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 128)
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %181 = call i32 @var_read_metadata(%struct.TYPE_21__* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 256)
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @avio_skip(i32* %182, i32 128)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %232, %175
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %235

190:                                              ; preds = %184
  %191 = load i32*, i32** %5, align 8
  %192 = call i8* @avio_rb32(i32* %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %13, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = call i8* @avio_rb32(i32* %194)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = call i8* @avio_rb32(i32* %197)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %15, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = call i64 @avio_feof(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %190
  %204 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %204, i32* %2, align 4
  br label %407

205:                                              ; preds = %190
  %206 = load i32*, i32** %5, align 8
  %207 = call i32 @avio_skip(i32* %206, i32 8)
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %213 = call i32 @av_add_index_entry(%struct.TYPE_20__* %208, i32 %209, i32 %210, i32 %211, i32 0, i32 %212)
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %221 = call i32 @av_add_index_entry(%struct.TYPE_20__* %214, i32 %217, i32 %218, i32 %219, i32 0, i32 %220)
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %227, 2
  %229 = sdiv i32 %222, %228
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %205
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %184

235:                                              ; preds = %184
  br label %406

236:                                              ; preds = %1
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %400, label %239

239:                                              ; preds = %236
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @avio_rb16(i32* %240)
  %242 = icmp eq i32 %241, 3
  br i1 %242, label %243, label %400

243:                                              ; preds = %239
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 @avio_skip(i32* %244, i32 4)
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %247 = load i32, i32* @parse_global_var, align 4
  %248 = call i32 @read_table(%struct.TYPE_21__* %246, %struct.TYPE_20__* null, i32 %247)
  store i32 %248, i32* %10, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %2, align 4
  br label %407

252:                                              ; preds = %243
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 1
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %259 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %258, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %260 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %260, i32* %2, align 4
  br label %407

261:                                              ; preds = %252
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %343

266:                                              ; preds = %261
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %268 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__* %267, i32* null)
  store %struct.TYPE_20__* %268, %struct.TYPE_20__** %6, align 8
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %270 = icmp ne %struct.TYPE_20__* %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = load i32, i32* @ENOMEM, align 4
  %273 = call i32 @AVERROR(i32 %272)
  store i32 %273, i32* %2, align 4
  br label %407

274:                                              ; preds = %266
  %275 = load i8*, i8** @AVMEDIA_TYPE_AUDIO, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 3
  store i8* %275, i8** %279, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = load i32, i32* @parse_audio_var, align 4
  %283 = call i32 @read_table(%struct.TYPE_21__* %280, %struct.TYPE_20__* %281, i32 %282)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %274
  %286 = load i32, i32* %10, align 4
  store i32 %286, i32* %2, align 4
  br label %407

287:                                              ; preds = %274
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 100
  br i1 %291, label %292, label %311

292:                                              ; preds = %287
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @AUDIO_FORMAT_SIGNED, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %311

298:                                              ; preds = %292
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 16
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i8*, i8** @AV_CODEC_ID_PCM_S16BE, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 4
  store i8* %306, i8** %310, align 8
  br label %330

311:                                              ; preds = %298, %292, %287
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %312, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %315, i32 %318, i32 %323)
  %325 = load i8*, i8** @AV_CODEC_ID_NONE, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 4
  store i8* %325, i8** %329, align 8
  br label %330

330:                                              ; preds = %311, %305
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp sle i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %339 = load i32, i32* @AV_LOG_ERROR, align 4
  %340 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %338, i32 %339, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %341 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %341, i32* %2, align 4
  br label %407

342:                                              ; preds = %330
  br label %343

343:                                              ; preds = %342, %261
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %347, 1
  br i1 %348, label %349, label %353

349:                                              ; preds = %344
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %351 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %350, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %352 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %352, i32* %2, align 4
  br label %407

353:                                              ; preds = %344
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %380

358:                                              ; preds = %353
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %360 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__* %359, i32* null)
  store %struct.TYPE_20__* %360, %struct.TYPE_20__** %7, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %362 = icmp ne %struct.TYPE_20__* %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %358
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = call i32 @AVERROR(i32 %364)
  store i32 %365, i32* %2, align 4
  br label %407

366:                                              ; preds = %358
  %367 = load i8*, i8** @AVMEDIA_TYPE_VIDEO, align 8
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 3
  store i8* %367, i8** %371, align 8
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %374 = load i32, i32* @parse_video_var, align 4
  %375 = call i32 @read_table(%struct.TYPE_21__* %372, %struct.TYPE_20__* %373, i32 %374)
  store i32 %375, i32* %10, align 4
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %366
  %378 = load i32, i32* %10, align 4
  store i32 %378, i32* %2, align 4
  br label %407

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379, %353
  br label %381

381:                                              ; preds = %380
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load i32*, i32** %5, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %389 = call i32 @read_index(i32* %387, %struct.TYPE_20__* %388)
  br label %390

390:                                              ; preds = %386, %381
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %390
  %396 = load i32*, i32** %5, align 8
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %398 = call i32 @read_index(i32* %396, %struct.TYPE_20__* %397)
  br label %399

399:                                              ; preds = %395, %390
  br label %405

400:                                              ; preds = %239, %236
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %402 = load i32, i32* %8, align 4
  %403 = call i32 (%struct.TYPE_21__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_21__* %401, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %402)
  %404 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %404, i32* %2, align 4
  br label %407

405:                                              ; preds = %399
  br label %406

406:                                              ; preds = %405, %235
  store i32 0, i32* %2, align 4
  br label %407

407:                                              ; preds = %406, %400, %377, %363, %349, %337, %285, %271, %257, %250, %203, %156, %132, %43, %35
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i64 @set_channels(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i32 @var_read_metadata(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_20__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @read_table(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @read_index(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
