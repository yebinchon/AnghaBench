; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flac_picture.c_ff_flac_parse_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flac_picture.c_ff_flac_parse_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64*, %struct.TYPE_19__* }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_16__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@ff_id3v2_picture_types = common dso_local global i64** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid picture type: %d.\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Could not read mimetype from an attached picture.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unknown attached picture mimetype: %s.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Error reading attached picture description.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid attached picture size: %d.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Error reading attached picture data.\0A\00", align 1
@PNGSIG = common dso_local global i64 0, align 8
@AV_CODEC_ID_PNG = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_parse_picture(%struct.TYPE_18__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca [64 x i64], align 16
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  store i64* null, i64** %12, align 8
  store i32* %13, i32** %14, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ffio_init_context(i32* %24, i64* %25, i32 %26, i32 0, i32* null, i32* null, i32* null, i32* null)
  %28 = load i32*, i32** %14, align 8
  %29 = call i8* @avio_rb32(i32* %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i64**, i64*** @ff_id3v2_picture_types, align 8
  %33 = call i32 @FF_ARRAY_ELEMS(i64** %32)
  %34 = icmp uge i32 %31, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i32, i32* %20, align 4
  %39 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %36, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AV_EF_EXPLODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %48 = call i32 @RETURN_ERROR(i32 %47)
  br label %49

49:                                               ; preds = %46, %35
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32*, i32** %14, align 8
  %52 = call i8* @avio_rb32(i32* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %19, align 4
  %58 = icmp sge i32 %57, 64
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @FFMIN(i32 %62, i32 511)
  %64 = call i32 @avio_read(i32* %60, i64* %61, i32 %63)
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %59, %56, %50
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %68, i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_EF_EXPLODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %67
  br label %330

80:                                               ; preds = %59
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 512
  %84 = zext i1 %83 to i32
  %85 = call i32 @av_assert0(i32 %84)
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 %87
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %107, %80
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %100 = call i32 @strncmp(i32 %98, i64* %99, i32 512)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %110

107:                                              ; preds = %95
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 1
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %8, align 8
  br label %89

110:                                              ; preds = %102, %89
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = getelementptr inbounds [64 x i64], [64 x i64]* %11, i64 0, i64 0
  %119 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %116, i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AV_EF_EXPLODE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %126, %115
  br label %330

129:                                              ; preds = %110
  %130 = load i32*, i32** %14, align 8
  %131 = call i8* @avio_rb32(i32* %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %170

135:                                              ; preds = %129
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i64* @av_malloc(i32 %137)
  store i64* %138, i64** %12, align 8
  %139 = icmp ne i64* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @AVERROR(i32 %141)
  %143 = call i32 @RETURN_ERROR(i32 %142)
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32*, i32** %14, align 8
  %146 = load i64*, i64** %12, align 8
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @avio_read(i32* %145, i64* %146, i32 %147)
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %152, i32 %153, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AV_EF_EXPLODE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* @EIO, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %161, %151
  br label %330

165:                                              ; preds = %144
  %166 = load i64*, i64** %12, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %129
  %171 = load i32*, i32** %14, align 8
  %172 = call i8* @avio_rb32(i32* %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = call i8* @avio_rb32(i32* %174)
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %17, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = call i32 @avio_skip(i32* %177, i32 8)
  %179 = load i32*, i32** %14, align 8
  %180 = call i8* @avio_rb32(i32* %179)
  %181 = ptrtoint i8* %180 to i32
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %170
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %186 = load i32, i32* @AV_LOG_ERROR, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %185, i32 %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @AV_EF_EXPLODE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %195, %184
  br label %330

198:                                              ; preds = %170
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %202 = add nsw i64 %200, %201
  %203 = call %struct.TYPE_19__* @av_buffer_alloc(i64 %202)
  store %struct.TYPE_19__* %203, %struct.TYPE_19__** %10, align 8
  %204 = icmp ne %struct.TYPE_19__* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = call i32 @AVERROR(i32 %206)
  %208 = call i32 @RETURN_ERROR(i32 %207)
  br label %209

209:                                              ; preds = %205, %198
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %217 = call i32 @memset(i64* %215, i32 0, i64 %216)
  %218 = load i32*, i32** %14, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @avio_read(i32* %218, i64* %221, i32 %222)
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %209
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %228 = load i32, i32* @AV_LOG_ERROR, align 4
  %229 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %227, i32 %228, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @AV_EF_EXPLODE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load i32, i32* @EIO, align 4
  %238 = call i32 @AVERROR(i32 %237)
  store i32 %238, i32* %18, align 4
  br label %239

239:                                              ; preds = %236, %226
  br label %330

240:                                              ; preds = %209
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = call i64 @AV_RB64(i64* %243)
  %245 = load i64, i64* @PNGSIG, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @AV_CODEC_ID_PNG, align 4
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %247, %240
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %251 = call %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__* %250, i32* null)
  store %struct.TYPE_17__* %251, %struct.TYPE_17__** %15, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %253 = icmp ne %struct.TYPE_17__* %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = call i32 @AVERROR(i32 %255)
  %257 = call i32 @RETURN_ERROR(i32 %256)
  br label %258

258:                                              ; preds = %254, %249
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 3
  %261 = call i32 @av_init_packet(%struct.TYPE_14__* %260)
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 4
  store %struct.TYPE_19__* %262, %struct.TYPE_19__** %265, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  store i64* %268, i64** %271, align 8
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 8
  %282 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %282
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 3
  store i32 %293, i32* %297, align 4
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  store i32 %298, i32* %302, align 4
  %303 = load i32, i32* %16, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  store i32 %303, i32* %307, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 2
  store i32 %308, i32* %312, align 4
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = load i64**, i64*** @ff_id3v2_picture_types, align 8
  %316 = load i32, i32* %20, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds i64*, i64** %315, i64 %317
  %319 = load i64*, i64** %318, align 8
  %320 = call i32 @av_dict_set(i32* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64* %319, i32 0)
  %321 = load i64*, i64** %12, align 8
  %322 = icmp ne i64* %321, null
  br i1 %322, label %323, label %329

323:                                              ; preds = %258
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 0
  %326 = load i64*, i64** %12, align 8
  %327 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %328 = call i32 @av_dict_set(i32* %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* %326, i32 %327)
  br label %329

329:                                              ; preds = %323, %258
  store i32 0, i32* %4, align 4
  br label %334

330:                                              ; preds = %239, %197, %164, %128, %79
  %331 = call i32 @av_buffer_unref(%struct.TYPE_19__** %10)
  %332 = call i32 @av_freep(i64** %12)
  %333 = load i32, i32* %18, align 4
  store i32 %333, i32* %4, align 4
  br label %334

334:                                              ; preds = %330, %329
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local i32 @ffio_init_context(i32*, i64*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i64**) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @avio_read(i32*, i64*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @strncmp(i32, i64*, i32) #1

declare dso_local i64* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @av_buffer_alloc(i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i64 @AV_RB64(i64*) #1

declare dso_local %struct.TYPE_17__* @avformat_new_stream(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_14__*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_19__**) #1

declare dso_local i32 @av_freep(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
