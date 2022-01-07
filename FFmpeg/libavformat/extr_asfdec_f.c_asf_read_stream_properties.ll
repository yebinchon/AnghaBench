; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_stream_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_f.c_asf_read_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64*, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i8*, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, i64, i8*, i8* }

@ASF_MAX_STREAMS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too many streams\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ff_asf_audio_stream = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@ff_asf_video_stream = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@ff_asf_jfif_media = common dso_local global i32 0, align 4
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@ff_asf_command_stream = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@ff_asf_ext_stream_embed_stream_header = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ff_asf_ext_stream_audio_stream = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AVSTREAM_PARSE_NONE = common dso_local global i8* null, align 8
@AVSTREAM_PARSE_FULL = common dso_local global i8* null, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@AVPALETTE_SIZE = common dso_local global i64 0, align 8
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AVSTREAM_PARSE_FULL_ONCE = common dso_local global i8* null, align 8
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @asf_read_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_stream_properties(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ASF_MAX_STREAMS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(%struct.TYPE_15__* %34, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %506

39:                                               ; preds = %2
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @avio_tell(i32* %40)
  store i64 %41, i64* %15, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %42, i32* null)
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %8, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %506

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %50, i32 32, i32 1, i32 1000)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %101, label %62

62:                                               ; preds = %49
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @avio_size(i32* %63)
  store i64 %64, i64* %20, align 8
  %65 = load i64, i64* %20, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %67
  %74 = load i64, i64* %20, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  %80 = call i32 @FFABS(i64 %79)
  %81 = mul nsw i32 20, %80
  %82 = load i64, i64* %20, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @FFMIN(i64 %82, i64 %86)
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %73, %67, %62
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 10000
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %17, align 8
  %97 = sub nsw i64 %95, %96
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %73
  br label %101

101:                                              ; preds = %100, %49
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @ff_get_guid(i32* %102, i32* %10)
  store i32 0, i32* %18, align 4
  %104 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_audio_stream)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  store i32 %107, i32* %11, align 4
  br label %138

108:                                              ; preds = %101
  %109 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_video_stream)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  store i32 %112, i32* %11, align 4
  br label %137

113:                                              ; preds = %108
  %114 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_jfif_media)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  store i32 %117, i32* %11, align 4
  %118 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  store i64 %118, i64* %122, align 8
  br label %136

123:                                              ; preds = %113
  %124 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_command_stream)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  store i32 %127, i32* %11, align 4
  br label %135

128:                                              ; preds = %123
  %129 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_ext_stream_embed_stream_header)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  store i32 1, i32* %18, align 4
  %132 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  store i32 %132, i32* %11, align 4
  br label %134

133:                                              ; preds = %128
  store i32 -1, i32* %3, align 4
  br label %506

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %126
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %111
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @ff_get_guid(i32* %139, i32* %10)
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @avio_skip(i32* %141, i64 8)
  %143 = load i32*, i32** %7, align 8
  %144 = call i8* @avio_rl32(i32* %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %12, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = call i8* @avio_rl32(i32* %146)
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @avio_rl16(i32* %148)
  %150 = and i32 %149, 127
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %159, i64 %163
  store i64 %156, i64* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i64 %171
  store %struct.TYPE_16__* %172, %struct.TYPE_16__** %9, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = call i8* @avio_rl32(i32* %173)
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %138
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @ff_get_guid(i32* %178, i32* %10)
  %180 = call i32 @ff_guidcmp(i32* %10, i32* @ff_asf_ext_stream_audio_stream)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  store i32 %183, i32* %11, align 4
  store i32 1, i32* %19, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @ff_get_guid(i32* %184, i32* %10)
  %186 = load i32*, i32** %7, align 8
  %187 = call i8* @avio_rl32(i32* %186)
  %188 = load i32*, i32** %7, align 8
  %189 = call i8* @avio_rl32(i32* %188)
  %190 = load i32*, i32** %7, align 8
  %191 = call i8* @avio_rl32(i32* %190)
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @ff_get_guid(i32* %192, i32* %10)
  %194 = load i32*, i32** %7, align 8
  %195 = call i8* @avio_rl32(i32* %194)
  br label %196

196:                                              ; preds = %182, %177
  br label %197

197:                                              ; preds = %196, %138
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  store i32 %198, i32* %202, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %304

206:                                              ; preds = %197
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @ff_get_wav_header(%struct.TYPE_15__* %207, i32* %208, %struct.TYPE_18__* %211, i32 %212, i32 0)
  store i32 %213, i32* %21, align 4
  %214 = load i32, i32* %21, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %206
  %217 = load i32, i32* %21, align 4
  store i32 %217, i32* %3, align 4
  br label %506

218:                                              ; preds = %206
  %219 = load i32, i32* %19, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  store i32 0, i32* %227, align 4
  br label %228

228:                                              ; preds = %221, %218
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load i8*, i8** @AVSTREAM_PARSE_NONE, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  br label %244

240:                                              ; preds = %228
  %241 = load i8*, i8** @AVSTREAM_PARSE_FULL, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %240, %236
  %245 = load i32*, i32** %7, align 8
  %246 = call i64 @avio_tell(i32* %245)
  store i64 %246, i64* %16, align 8
  %247 = load i64, i64* %5, align 8
  %248 = load i64, i64* %16, align 8
  %249 = add nsw i64 %248, 8
  %250 = load i64, i64* %15, align 8
  %251 = sub nsw i64 %249, %250
  %252 = add nsw i64 %251, 24
  %253 = icmp sge i64 %247, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %244
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @avio_r8(i32* %255)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = call i32 @avio_rl16(i32* %259)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load i32*, i32** %7, align 8
  %264 = call i32 @avio_rl16(i32* %263)
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = call i32 @avio_rl16(i32* %267)
  %269 = load i32*, i32** %7, align 8
  %270 = call i32 @avio_r8(i32* %269)
  br label %271

271:                                              ; preds = %254, %244
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %274, 1
  br i1 %275, label %276, label %303

276:                                              ; preds = %271
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %276
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = sdiv i32 %284, %287
  %289 = icmp sle i32 %288, 1
  br i1 %289, label %299, label %290

290:                                              ; preds = %281
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = srem i32 %293, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %290, %281, %276
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  store i32 0, i32* %301, align 8
  br label %302

302:                                              ; preds = %299, %290
  br label %303

303:                                              ; preds = %302, %271
  br label %495

304:                                              ; preds = %197
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %494

308:                                              ; preds = %304
  %309 = load i64, i64* %5, align 8
  %310 = load i32*, i32** %7, align 8
  %311 = call i64 @avio_tell(i32* %310)
  %312 = load i64, i64* %15, align 8
  %313 = sub nsw i64 %311, %312
  %314 = add nsw i64 %313, 24
  %315 = sub nsw i64 %309, %314
  %316 = icmp sge i64 %315, 51
  br i1 %316, label %317, label %494

317:                                              ; preds = %308
  %318 = load i32*, i32** %7, align 8
  %319 = call i8* @avio_rl32(i32* %318)
  %320 = load i32*, i32** %7, align 8
  %321 = call i8* @avio_rl32(i32* %320)
  %322 = load i32*, i32** %7, align 8
  %323 = call i32 @avio_r8(i32* %322)
  %324 = load i32*, i32** %7, align 8
  %325 = call i32 @avio_rl16(i32* %324)
  %326 = load i32*, i32** %7, align 8
  %327 = call i8* @avio_rl32(i32* %326)
  %328 = ptrtoint i8* %327 to i32
  store i32 %328, i32* %13, align 4
  %329 = load i32*, i32** %7, align 8
  %330 = call i8* @avio_rl32(i32* %329)
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 3
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 7
  store i8* %330, i8** %334, align 8
  %335 = load i32*, i32** %7, align 8
  %336 = call i8* @avio_rl32(i32* %335)
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 6
  store i8* %336, i8** %340, align 8
  %341 = load i32*, i32** %7, align 8
  %342 = call i32 @avio_rl16(i32* %341)
  %343 = load i32*, i32** %7, align 8
  %344 = call i32 @avio_rl16(i32* %343)
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 3
  store i32 %344, i32* %348, align 8
  %349 = load i32*, i32** %7, align 8
  %350 = call i8* @avio_rl32(i32* %349)
  %351 = ptrtoint i8* %350 to i32
  store i32 %351, i32* %14, align 4
  %352 = load i32*, i32** %7, align 8
  %353 = call i32 @avio_skip(i32* %352, i64 20)
  %354 = load i32, i32* %13, align 4
  %355 = icmp sgt i32 %354, 40
  br i1 %355, label %356, label %399

356:                                              ; preds = %317
  %357 = load i32*, i32** %7, align 8
  %358 = load i32, i32* %13, align 4
  %359 = sub nsw i32 %358, 40
  %360 = call i64 @ffio_limit(i32* %357, i32 %359)
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 3
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 4
  store i64 %360, i64* %364, align 8
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 3
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %371 = add nsw i64 %369, %370
  %372 = call i64 @av_mallocz(i64 %371)
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 3
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 5
  store i64 %372, i64* %376, align 8
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 5
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %356
  %384 = load i32, i32* @ENOMEM, align 4
  %385 = call i32 @AVERROR(i32 %384)
  store i32 %385, i32* %3, align 4
  br label %506

386:                                              ; preds = %356
  %387 = load i32*, i32** %7, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 5
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 3
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 4
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @avio_read(i32* %387, i64 %392, i64 %397)
  br label %399

399:                                              ; preds = %386, %317
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 3
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 4
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %432

406:                                              ; preds = %399
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_18__*, %struct.TYPE_18__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = icmp sle i32 %411, 8
  br i1 %412, label %413, label %432

413:                                              ; preds = %406
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 4
  %416 = load i32*, i32** %415, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 3
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @AVPALETTE_SIZE, align 8
  %428 = call i32 @FFMIN(i64 %426, i64 %427)
  %429 = call i32 @memcpy(i32* %416, i64 %421, i32 %428)
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 3
  store i32 1, i32* %431, align 4
  br label %432

432:                                              ; preds = %413, %406, %399
  %433 = load i32, i32* %14, align 4
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 3
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 2
  store i32 %433, i32* %437, align 4
  %438 = load i32, i32* @ff_codec_bmp_tags, align 4
  %439 = load i32, i32* %14, align 4
  %440 = call i64 @ff_codec_get_id(i32 %438, i32 %439)
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 3
  %443 = load %struct.TYPE_18__*, %struct.TYPE_18__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 0
  store i64 %440, i64* %444, align 8
  %445 = load i32, i32* %14, align 4
  %446 = call i32 @MKTAG(i8 signext 68, i8 signext 86, i8 signext 82, i8 signext 32)
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %469

448:                                              ; preds = %432
  %449 = load i8*, i8** @AVSTREAM_PARSE_FULL, align 8
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 2
  store i8* %449, i8** %451, align 8
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 3
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 6
  store i8* null, i8** %455, align 8
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 3
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 7
  store i8* null, i8** %459, align 8
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 3
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 5
  %464 = call i32 @av_freep(i64* %463)
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i32 0, i32 3
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 4
  store i64 0, i64* %468, align 8
  br label %469

469:                                              ; preds = %448, %432
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 3
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %481

477:                                              ; preds = %469
  %478 = load i8*, i8** @AVSTREAM_PARSE_FULL_ONCE, align 8
  %479 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 2
  store i8* %478, i8** %480, align 8
  br label %481

481:                                              ; preds = %477, %469
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 3
  %484 = load %struct.TYPE_18__*, %struct.TYPE_18__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %493

489:                                              ; preds = %481
  %490 = load i8*, i8** @AVSTREAM_PARSE_FULL_ONCE, align 8
  %491 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 2
  store i8* %490, i8** %492, align 8
  br label %493

493:                                              ; preds = %489, %481
  br label %494

494:                                              ; preds = %493, %308, %304
  br label %495

495:                                              ; preds = %494, %303
  %496 = load i32*, i32** %7, align 8
  %497 = call i64 @avio_tell(i32* %496)
  store i64 %497, i64* %16, align 8
  %498 = load i32*, i32** %7, align 8
  %499 = load i64, i64* %5, align 8
  %500 = load i64, i64* %16, align 8
  %501 = load i64, i64* %15, align 8
  %502 = sub nsw i64 %500, %501
  %503 = add nsw i64 %502, 24
  %504 = sub nsw i64 %499, %503
  %505 = call i32 @avio_skip(i32* %498, i64 %504)
  store i32 0, i32* %3, align 4
  br label %506

506:                                              ; preds = %495, %383, %216, %133, %46, %33
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i64 @avio_size(i32*) #1

declare dso_local i32 @FFABS(i64) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i32 @ff_get_guid(i32*, i32*) #1

declare dso_local i32 @ff_guidcmp(i32*, i32*) #1

declare dso_local i32 @avio_skip(i32*, i64) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @ff_get_wav_header(%struct.TYPE_15__*, i32*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @ffio_limit(i32*, i32) #1

declare dso_local i64 @av_mallocz(i64) #1

declare dso_local i32 @avio_read(i32*, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_freep(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
