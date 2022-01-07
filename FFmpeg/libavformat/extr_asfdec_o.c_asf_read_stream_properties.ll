; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_stream_properties.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }

@ASF_MAX_STREAMS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_asf_audio_stream = common dso_local global i32 0, align 4
@ff_asf_video_stream = common dso_local global i32 0, align 4
@ff_asf_jfif_media = common dso_local global i32 0, align 4
@ff_asf_command_stream = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@ff_asf_ext_stream_embed_stream_header = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ASF_STREAM_NUM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Duplicate stream found, this stream will be ignored.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @asf_read_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_stream_properties(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %6, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ASF_MAX_STREAMS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %3, align 4
  br label %274

33:                                               ; preds = %2
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @avio_rl64(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @ff_get_guid(i32* %36, i32* %12)
  %38 = call i32 @ff_guidcmp(i32* %12, i32* @ff_asf_audio_stream)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 129, i32* %13, align 4
  br label %65

41:                                               ; preds = %33
  %42 = call i32 @ff_guidcmp(i32* %12, i32* @ff_asf_video_stream)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 128, i32* %13, align 4
  br label %64

45:                                               ; preds = %41
  %46 = call i32 @ff_guidcmp(i32* %12, i32* @ff_asf_jfif_media)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 128, i32* %13, align 4
  br label %63

49:                                               ; preds = %45
  %50 = call i32 @ff_guidcmp(i32* %12, i32* @ff_asf_command_stream)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  store i32 %53, i32* %13, align 4
  br label %62

54:                                               ; preds = %49
  %55 = call i32 @ff_guidcmp(i32* %12, i32* @ff_asf_ext_stream_embed_stream_header)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  store i32 %58, i32* %13, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %3, align 4
  br label %274

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @ff_get_guid(i32* %66, i32* %12)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @avio_skip(i32* %68, i32 8)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @avio_rl32(i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @avio_rl32(i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i8* @avio_rl16(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ASF_STREAM_NUM, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %109, %65
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %90, i64 %92
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %87, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = load i32, i32* @AV_LOG_WARNING, align 4
  %101 = call i32 @av_log(%struct.TYPE_17__* %99, i32 %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @align_position(i32* %102, i32 %105, i32 %106)
  store i32 0, i32* %3, align 4
  br label %274

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %80

112:                                              ; preds = %80
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %113, i32* null)
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %17, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %116 = icmp ne %struct.TYPE_16__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %274

120:                                              ; preds = %112
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %122 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %121, i32 32, i32 1, i32 1000)
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  %128 = call %struct.TYPE_18__* @av_mallocz(i32 64)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %131, i64 %135
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %139, i64 %143
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = icmp ne %struct.TYPE_18__* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %120
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @AVERROR(i32 %148)
  store i32 %149, i32* %3, align 4
  br label %274

150:                                              ; preds = %120
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %152, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %153, i64 %157
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %18, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 6
  store i64 0, i64* %173, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @ASF_STREAM_NUM, align 4
  %176 = and i32 %174, %175
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = call i32 @av_init_packet(i32* %181)
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = call i32 @avio_skip(i32* %186, i32 4)
  %188 = load i32, i32* %13, align 4
  switch i32 %188, label %213 [
    i32 129, label %189
    i32 128, label %203
  ]

189:                                              ; preds = %150
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  store i32 129, i32* %191, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @ff_get_wav_header(%struct.TYPE_17__* %192, i32* %193, %struct.TYPE_20__* %196, i32 %197, i32 0)
  store i32 %198, i32* %15, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %189
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %3, align 4
  br label %274

202:                                              ; preds = %189
  br label %217

203:                                              ; preds = %150
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  store i32 128, i32* %205, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %208 = call i32 @parse_video_info(i32* %206, %struct.TYPE_16__* %207)
  store i32 %208, i32* %15, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %3, align 4
  br label %274

212:                                              ; preds = %203
  br label %217

213:                                              ; preds = %150
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @avio_skip(i32* %214, i32 %215)
  br label %217

217:                                              ; preds = %213, %212, %202
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %267

220:                                              ; preds = %217
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, 129
  br i1 %222, label %223, label %262

223:                                              ; preds = %220
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @avio_r8(i32* %224)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %256

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = call i8* @avio_rl16(i32* %232)
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 3
  store i8* %233, i8** %235, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = call i8* @avio_rl16(i32* %236)
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 4
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %228
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %244, %228
  %250 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %250, i32* %3, align 4
  br label %274

251:                                              ; preds = %244
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sub nsw i32 %253, 5
  %255 = call i32 @avio_skip(i32* %252, i32 %254)
  br label %261

256:                                              ; preds = %223
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sub nsw i32 %258, 1
  %260 = call i32 @avio_skip(i32* %257, i32 %259)
  br label %261

261:                                              ; preds = %256, %251
  br label %266

262:                                              ; preds = %220
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @avio_skip(i32* %263, i32 %264)
  br label %266

266:                                              ; preds = %262, %261
  br label %267

267:                                              ; preds = %266, %217
  %268 = load i32*, i32** %7, align 8
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @align_position(i32* %268, i32 %271, i32 %272)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %267, %249, %210, %200, %147, %117, %98, %59, %31
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i32 @ff_get_guid(i32*, i32*) #1

declare dso_local i32 @ff_guidcmp(i32*, i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @align_position(i32*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @av_mallocz(i32) #1

declare dso_local i32 @av_init_packet(i32*) #1

declare dso_local i32 @ff_get_wav_header(%struct.TYPE_17__*, i32*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @parse_video_info(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
