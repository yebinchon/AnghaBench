; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_swf_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32*, %struct.TYPE_19__*, %struct.TYPE_18__**, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_23__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, %struct.TYPE_18__*, i32, i64, i64, i64 }
%struct.TYPE_21__ = type { i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SWF muxer only supports 1 audio stream\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@AUDIO_FIFO_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SWF muxer only supports MP3\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"SWF muxer only supports 1 video stream\0A\00", align 1
@AV_CODEC_ID_VP6F = common dso_local global i64 0, align 8
@AV_CODEC_ID_FLV1 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"SWF muxer only supports VP6, FLV1 and MJPEG\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"FWS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"avm2\00", align 1
@DUMMY_FILE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Invalid (too large) frame rate %d/%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUMMY_DURATION = common dso_local global i32 0, align 4
@TAG_FILEATTRIBUTES = common dso_local global i32 0, align 4
@TAG_DEFINESHAPE = common dso_local global i32 0, align 4
@SHAPE_ID = common dso_local global i32 0, align 4
@BITMAP_ID = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@FLAG_MOVETO = common dso_local global i32 0, align 4
@FLAG_SETFILL0 = common dso_local global i32 0, align 4
@TAG_STREAMHEAD2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [75 x i8] c"swf does not support that sample rate, choose from (44100, 22050, 11025).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @swf_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swf_write_header(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %133, %1
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %28
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %37, i64 %39
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %14, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %34
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = icmp ne %struct.TYPE_23__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %55, i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %2, align 4
  br label %443

59:                                               ; preds = %49
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** %68, align 8
  %69 = load i32, i32* @AUDIO_FIFO_SIZE, align 4
  %70 = call i32 @av_fifo_alloc(i32 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %443

80:                                               ; preds = %65
  br label %85

81:                                               ; preds = %59
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %443

85:                                               ; preds = %80
  br label %132

86:                                               ; preds = %34
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = icmp ne %struct.TYPE_23__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %92, i32 %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %2, align 4
  br label %443

96:                                               ; preds = %86
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AV_CODEC_ID_VP6F, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AV_CODEC_ID_FLV1, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108, %102, %96
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %117, i64 %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 4
  store %struct.TYPE_18__* %121, %struct.TYPE_18__** %123, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  store %struct.TYPE_23__* %124, %struct.TYPE_23__** %126, align 8
  br label %131

127:                                              ; preds = %108
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %128, i32 %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %443

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %28

136:                                              ; preds = %28
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = icmp ne %struct.TYPE_23__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  store i32 320, i32* %9, align 4
  store i32 200, i32* %10, align 4
  store i32 10, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %165

142:                                              ; preds = %136
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %9, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %11, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %142, %141
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = icmp ne %struct.TYPE_23__* %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 44100, %172
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = sdiv i64 %173, %175
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %192

179:                                              ; preds = %165
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32, i32* %11, align 4
  %188 = sdiv i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %179, %170
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @avio_write(i32* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %192
  store i32 9, i32* %13, align 4
  br label %234

203:                                              ; preds = %192
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = icmp ne %struct.TYPE_23__* %206, null
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @AV_CODEC_ID_VP6F, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 8, i32* %13, align 4
  br label %233

217:                                              ; preds = %208, %203
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  %221 = icmp ne %struct.TYPE_23__* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @AV_CODEC_ID_FLV1, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i32 6, i32* %13, align 4
  br label %232

231:                                              ; preds = %222, %217
  store i32 4, i32* %13, align 4
  br label %232

232:                                              ; preds = %231, %230
  br label %233

233:                                              ; preds = %232, %216
  br label %234

234:                                              ; preds = %233, %202
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @avio_w8(i32* %235, i32 %236)
  %238 = load i32*, i32** %5, align 8
  %239 = load i32, i32* @DUMMY_FILE_SIZE, align 4
  %240 = call i32 @avio_wl32(i32* %238, i32 %239)
  %241 = load i32*, i32** %5, align 8
  %242 = load i32, i32* %9, align 4
  %243 = mul nsw i32 %242, 20
  %244 = load i32, i32* %10, align 4
  %245 = mul nsw i32 %244, 20
  %246 = call i32 @put_swf_rect(i32* %241, i32 0, i32 %243, i32 0, i32 %245)
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %248, 256
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = sdiv i64 %249, %251
  %253 = icmp sge i64 %252, 65536
  br i1 %253, label %254, label %262

254:                                              ; preds = %234
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %256 = load i32, i32* @AV_LOG_ERROR, align 4
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %12, align 4
  %259 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %255, i32 %256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = call i32 @AVERROR(i32 %260)
  store i32 %261, i32* %2, align 4
  br label %443

262:                                              ; preds = %234
  %263 = load i32*, i32** %5, align 8
  %264 = load i32, i32* %11, align 4
  %265 = mul nsw i32 %264, 256
  %266 = load i32, i32* %12, align 4
  %267 = sdiv i32 %265, %266
  %268 = call i32 @avio_wl16(i32* %263, i32 %267)
  %269 = load i32*, i32** %5, align 8
  %270 = call i32 @avio_tell(i32* %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* @DUMMY_DURATION, align 4
  %275 = load i32, i32* %11, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i32, i32* %12, align 4
  %278 = sdiv i32 %276, %277
  %279 = call i32 @avio_wl16(i32* %273, i32 %278)
  %280 = load i32, i32* %13, align 4
  %281 = icmp eq i32 %280, 9
  br i1 %281, label %282, label %290

282:                                              ; preds = %262
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %284 = load i32, i32* @TAG_FILEATTRIBUTES, align 4
  %285 = call i32 @put_swf_tag(%struct.TYPE_22__* %283, i32 %284)
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @avio_wl32(i32* %286, i32 8)
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %289 = call i32 @put_swf_end_tag(%struct.TYPE_22__* %288)
  br label %290

290:                                              ; preds = %282, %262
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %292, align 8
  %294 = icmp ne %struct.TYPE_23__* %293, null
  br i1 %294, label %295, label %364

295:                                              ; preds = %290
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %364

303:                                              ; preds = %295
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %305 = load i32, i32* @TAG_DEFINESHAPE, align 4
  %306 = call i32 @put_swf_tag(%struct.TYPE_22__* %304, i32 %305)
  %307 = load i32*, i32** %5, align 8
  %308 = load i32, i32* @SHAPE_ID, align 4
  %309 = call i32 @avio_wl16(i32* %307, i32 %308)
  %310 = load i32*, i32** %5, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @put_swf_rect(i32* %310, i32 0, i32 %311, i32 0, i32 %312)
  %314 = load i32*, i32** %5, align 8
  %315 = call i32 @avio_w8(i32* %314, i32 1)
  %316 = load i32*, i32** %5, align 8
  %317 = call i32 @avio_w8(i32* %316, i32 65)
  %318 = load i32*, i32** %5, align 8
  %319 = load i32, i32* @BITMAP_ID, align 4
  %320 = call i32 @avio_wl16(i32* %318, i32 %319)
  %321 = load i32*, i32** %5, align 8
  %322 = load i32, i32* @FRAC_BITS, align 4
  %323 = shl i32 1, %322
  %324 = load i32, i32* @FRAC_BITS, align 4
  %325 = shl i32 1, %324
  %326 = call i32 @put_swf_matrix(i32* %321, i32 %323, i32 0, i32 0, i32 %325, i32 0, i32 0)
  %327 = load i32*, i32** %5, align 8
  %328 = call i32 @avio_w8(i32* %327, i32 0)
  %329 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %330 = call i32 @init_put_bits(%struct.TYPE_21__* %6, i8* %329, i32 256)
  %331 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 4, i32 1)
  %332 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 4, i32 0)
  %333 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 1, i32 0)
  %334 = load i32, i32* @FLAG_MOVETO, align 4
  %335 = load i32, i32* @FLAG_SETFILL0, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 5, i32 %336)
  %338 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 5, i32 1)
  %339 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 1, i32 0)
  %340 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 1, i32 0)
  %341 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 1, i32 1)
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @put_swf_line_edge(%struct.TYPE_21__* %6, i32 %342, i32 0)
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @put_swf_line_edge(%struct.TYPE_21__* %6, i32 0, i32 %344)
  %346 = load i32, i32* %9, align 4
  %347 = sub nsw i32 0, %346
  %348 = call i32 @put_swf_line_edge(%struct.TYPE_21__* %6, i32 %347, i32 0)
  %349 = load i32, i32* %10, align 4
  %350 = sub nsw i32 0, %349
  %351 = call i32 @put_swf_line_edge(%struct.TYPE_21__* %6, i32 0, i32 %350)
  %352 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 1, i32 0)
  %353 = call i32 @put_bits(%struct.TYPE_21__* %6, i32 5, i32 0)
  %354 = call i32 @flush_put_bits(%struct.TYPE_21__* %6)
  %355 = load i32*, i32** %5, align 8
  %356 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %357 = call i32 @put_bits_ptr(%struct.TYPE_21__* %6)
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 %357, %359
  %361 = call i32 @avio_write(i32* %355, i8* %356, i32 %360)
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %363 = call i32 @put_swf_end_tag(%struct.TYPE_22__* %362)
  br label %364

364:                                              ; preds = %303, %295, %290
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %366, align 8
  %368 = icmp ne %struct.TYPE_23__* %367, null
  br i1 %368, label %369, label %438

369:                                              ; preds = %364
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %438

377:                                              ; preds = %369
  store i32 0, i32* %15, align 4
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %379 = load i32, i32* @TAG_STREAMHEAD2, align 4
  %380 = call i32 @put_swf_tag(%struct.TYPE_22__* %378, i32 %379)
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  switch i32 %385, label %395 [
    i32 11025, label %386
    i32 22050, label %389
    i32 44100, label %392
  ]

386:                                              ; preds = %377
  %387 = load i32, i32* %15, align 4
  %388 = or i32 %387, 4
  store i32 %388, i32* %15, align 4
  br label %399

389:                                              ; preds = %377
  %390 = load i32, i32* %15, align 4
  %391 = or i32 %390, 8
  store i32 %391, i32* %15, align 4
  br label %399

392:                                              ; preds = %377
  %393 = load i32, i32* %15, align 4
  %394 = or i32 %393, 12
  store i32 %394, i32* %15, align 4
  br label %399

395:                                              ; preds = %377
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %397 = load i32, i32* @AV_LOG_ERROR, align 4
  %398 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %396, i32 %397, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %443

399:                                              ; preds = %392, %389, %386
  %400 = load i32, i32* %15, align 4
  %401 = or i32 %400, 2
  store i32 %401, i32* %15, align 4
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %406, 2
  br i1 %407, label %408, label %411

408:                                              ; preds = %399
  %409 = load i32, i32* %15, align 4
  %410 = or i32 %409, 1
  store i32 %410, i32* %15, align 4
  br label %411

411:                                              ; preds = %408, %399
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %15, align 4
  %416 = call i32 @avio_w8(i32* %414, i32 %415)
  %417 = load i32, i32* %15, align 4
  %418 = or i32 %417, 32
  store i32 %418, i32* %15, align 4
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %15, align 4
  %423 = call i32 @avio_w8(i32* %421, i32 %422)
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = call i32 @avio_wl16(i32* %426, i32 %430)
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 1
  %434 = load i32*, i32** %433, align 8
  %435 = call i32 @avio_wl16(i32* %434, i32 0)
  %436 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %437 = call i32 @put_swf_end_tag(%struct.TYPE_22__* %436)
  br label %438

438:                                              ; preds = %411, %369, %364
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @avio_flush(i32* %441)
  store i32 0, i32* %2, align 4
  br label %443

443:                                              ; preds = %438, %395, %254, %127, %91, %81, %77, %54
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @av_fifo_alloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @put_swf_rect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @put_swf_tag(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @put_swf_end_tag(%struct.TYPE_22__*) #1

declare dso_local i32 @put_swf_matrix(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_put_bits(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @put_bits(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @put_swf_line_edge(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @flush_put_bits(%struct.TYPE_21__*) #1

declare dso_local i32 @put_bits_ptr(%struct.TYPE_21__*) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
