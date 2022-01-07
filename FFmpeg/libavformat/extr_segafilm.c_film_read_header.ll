; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilm.c_film_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segafilm.c_film_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__**, i32*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S8 = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_ADX = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S8_PLANAR = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S16BE_PLANAR = common dso_local global i64 0, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@FDSC_TAG = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@CVID_TAG = common dso_local global i32 0, align 4
@AV_CODEC_ID_CINEPAK = common dso_local global i64 0, align 8
@RAW_TAG = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"raw video is using unhandled %dbpp\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@STAB_TAG = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @film_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @film_read_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 11
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %23 = call i32 @avio_read(i32* %21, i8* %22, i32 16)
  %24 = icmp ne i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %688

28:                                               ; preds = %1
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 4
  %30 = call i32 @AV_RB32(i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %32 = call i32 @AV_RB32(i8* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %28
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = call i32 @avio_read(i32* %40, i8* %41, i32 20)
  %43 = icmp ne i32 %42, 20
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %688

47:                                               ; preds = %39
  %48 = load i64, i64* @AV_CODEC_ID_PCM_S8, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i32 22050, i32* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  store i32 8, i32* %56, align 8
  br label %128

57:                                               ; preds = %28
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %60 = call i32 @avio_read(i32* %58, i8* %59, i32 32)
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %688

65:                                               ; preds = %57
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 24
  %67 = call i32 @AV_RB16(i8* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 21
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 22
  %76 = load i8, i8* %75, align 2
  %77 = zext i8 %76 to i32
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 23
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %93

84:                                               ; preds = %65
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, i64* @AV_CODEC_ID_ADPCM_ADX, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %127

93:                                               ; preds = %84, %65
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i64, i64* @AV_CODEC_ID_PCM_S8_PLANAR, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %121

107:                                              ; preds = %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i64, i64* @AV_CODEC_ID_PCM_S16BE_PLANAR, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %120

116:                                              ; preds = %107
  %117 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %103
  br label %126

122:                                              ; preds = %93
  %123 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %121
  br label %127

127:                                              ; preds = %126, %89
  br label %128

128:                                              ; preds = %127, %47
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %130 = call i32 @AV_RB32(i8* %129)
  %131 = load i32, i32* @FDSC_TAG, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %134, i32* %2, align 4
  br label %688

135:                                              ; preds = %128
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %137 = call i32 @AV_RB32(i8* %136)
  %138 = load i32, i32* @CVID_TAG, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* @AV_CODEC_ID_CINEPAK, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 5
  store i64 %141, i64* %143, align 8
  br label %158

144:                                              ; preds = %135
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %146 = call i32 @AV_RB32(i8* %145)
  %147 = load i32, i32* @RAW_TAG, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 5
  store i64 %150, i64* %152, align 8
  br label %157

153:                                              ; preds = %144
  %154 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157, %140
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %229

163:                                              ; preds = %158
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %165 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %164, i32* null)
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %6, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = icmp ne %struct.TYPE_16__* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = call i32 @AVERROR(i32 %169)
  store i32 %170, i32* %2, align 4
  br label %688

171:                                              ; preds = %163
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 6
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i64 %177, i64* %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  store i64 %184, i64* %188, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 16
  %194 = call i32 @AV_RB32(i8* %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 3
  store i32 %194, i32* %198, align 4
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 12
  %200 = call i32 @AV_RB32(i8* %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  store i32 %200, i32* %204, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %171
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 20
  %212 = load i8, i8* %211, align 4
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 24
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 10
  store i32 %216, i32* %220, align 8
  br label %227

221:                                              ; preds = %210
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = load i32, i32* @AV_LOG_ERROR, align 4
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 20
  %225 = load i8, i8* %224, align 4
  %226 = call i32 @av_log(%struct.TYPE_17__* %222, i32 %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %225)
  store i32 -1, i32* %2, align 4
  br label %688

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %171
  br label %229

229:                                              ; preds = %228, %158
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %351

234:                                              ; preds = %229
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %236 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %235, i32* null)
  store %struct.TYPE_16__* %236, %struct.TYPE_16__** %6, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = icmp ne %struct.TYPE_16__* %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* @ENOMEM, align 4
  %241 = call i32 @AVERROR(i32 %240)
  store i32 %241, i32* %2, align 4
  br label %688

242:                                              ; preds = %234
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 7
  store i64 %245, i64* %247, align 8
  %248 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  store i64 %248, i64* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  store i64 %255, i64* %259, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  store i32 1, i32* %263, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = trunc i32 %266 to i8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 5
  store i8 %267, i8* %271, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 6
  store i32 %274, i32* %278, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @AV_CODEC_ID_ADPCM_ADX, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %242
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 7
  store i32 4, i32* %288, align 4
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 5
  %293 = load i8, i8* %292, align 4
  %294 = zext i8 %293 to i32
  %295 = mul nsw i32 %294, 18
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 8
  store i32 %295, i32* %299, align 8
  %300 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 8
  br label %328

303:                                              ; preds = %242
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 7
  store i32 %306, i32* %310, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 5
  %315 = load i8, i8* %314, align 4
  %316 = zext i8 %315 to i32
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %316, %321
  %323 = sdiv i32 %322, 8
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 8
  store i32 %323, i32* %327, align 8
  br label %328

328:                                              ; preds = %303, %284
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 5
  %333 = load i8, i8* %332, align 4
  %334 = zext i8 %333 to i32
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  %340 = mul nsw i32 %334, %339
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %340, %345
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 9
  store i32 %346, i32* %350, align 4
  br label %351

351:                                              ; preds = %328, %229
  %352 = load i32*, i32** %5, align 8
  %353 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %354 = call i32 @avio_read(i32* %352, i8* %353, i32 16)
  %355 = icmp ne i32 %354, 16
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i32, i32* @EIO, align 4
  %358 = call i32 @AVERROR(i32 %357)
  store i32 %358, i32* %2, align 4
  br label %688

359:                                              ; preds = %351
  %360 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %361 = call i32 @AV_RB32(i8* %360)
  %362 = load i32, i32* @STAB_TAG, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %365, i32* %2, align 4
  br label %688

366:                                              ; preds = %359
  %367 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %368 = call i32 @AV_RB32(i8* %367)
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 8
  store i32 %368, i32* %370, align 8
  %371 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 12
  %372 = call i32 @AV_RB32(i8* %371)
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 9
  store i32 %372, i32* %374, align 4
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = load i32, i32* @UINT_MAX, align 4
  %380 = sext i32 %379 to i64
  %381 = udiv i64 %380, 4
  %382 = icmp uge i64 %378, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %366
  store i32 -1, i32* %2, align 4
  br label %688

384:                                              ; preds = %366
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 4
  %388 = call %struct.TYPE_13__* @av_malloc_array(i32 %387, i32 4)
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 11
  store %struct.TYPE_13__* %388, %struct.TYPE_13__** %390, align 8
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 11
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %392, align 8
  %394 = icmp ne %struct.TYPE_13__* %393, null
  br i1 %394, label %398, label %395

395:                                              ; preds = %384
  %396 = load i32, i32* @ENOMEM, align 4
  %397 = call i32 @AVERROR(i32 %396)
  store i32 %397, i32* %2, align 4
  br label %688

398:                                              ; preds = %384
  store i32 0, i32* %8, align 4
  br label %399

399:                                              ; preds = %433, %398
  %400 = load i32, i32* %8, align 4
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = icmp slt i32 %400, %403
  br i1 %404, label %405, label %436

405:                                              ; preds = %399
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %408, i64 %410
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %411, align 8
  store %struct.TYPE_16__* %412, %struct.TYPE_16__** %6, align 8
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 2
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %426

420:                                              ; preds = %405
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %421, i32 33, i32 1, i32 %424)
  br label %432

426:                                              ; preds = %405
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %427, i32 64, i32 1, i32 %430)
  br label %432

432:                                              ; preds = %426, %420
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %8, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %8, align 4
  br label %399

436:                                              ; preds = %399
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %437

437:                                              ; preds = %646, %436
  %438 = load i32, i32* %8, align 4
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %443, label %649

443:                                              ; preds = %437
  %444 = load i32*, i32** %5, align 8
  %445 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %446 = call i32 @avio_read(i32* %444, i8* %445, i32 16)
  %447 = icmp ne i32 %446, 16
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load i32, i32* @EIO, align 4
  %450 = call i32 @AVERROR(i32 %449)
  store i32 %450, i32* %9, align 4
  br label %684

451:                                              ; preds = %443
  %452 = load i32, i32* %10, align 4
  %453 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %454 = call i32 @AV_RB32(i8* %453)
  %455 = add i32 %452, %454
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 11
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %457, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 0
  store i32 %455, i32* %462, align 8
  %463 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 4
  %464 = call i32 @AV_RB32(i8* %463)
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 11
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 1
  store i32 %464, i32* %471, align 4
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 11
  %474 = load %struct.TYPE_13__*, %struct.TYPE_13__** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @INT_MAX, align 4
  %481 = sdiv i32 %480, 4
  %482 = icmp sgt i32 %479, %481
  br i1 %482, label %483, label %485

483:                                              ; preds = %451
  %484 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %484, i32* %9, align 4
  br label %684

485:                                              ; preds = %451
  %486 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %487 = call i32 @AV_RB32(i8* %486)
  %488 = icmp eq i32 %487, -1
  br i1 %488, label %489, label %558

489:                                              ; preds = %485
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 7
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 11
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %498, i32 0, i32 2
  store i64 %492, i64* %499, align 8
  %500 = load i32, i32* %11, align 4
  %501 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 11
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %502, align 8
  %504 = load i32, i32* %8, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 3
  store i32 %500, i32* %507, align 8
  %508 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @AV_CODEC_ID_ADPCM_ADX, align 8
  %512 = icmp eq i64 %510, %511
  br i1 %512, label %513, label %530

513:                                              ; preds = %489
  %514 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %514, i32 0, i32 11
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %515, align 8
  %517 = load i32, i32* %8, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = mul nsw i32 %521, 32
  %523 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = mul nsw i32 18, %525
  %527 = sdiv i32 %522, %526
  %528 = load i32, i32* %11, align 4
  %529 = add i32 %528, %527
  store i32 %529, i32* %11, align 4
  br label %557

530:                                              ; preds = %489
  %531 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %535 = icmp ne i64 %533, %534
  br i1 %535, label %536, label %556

536:                                              ; preds = %530
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 11
  %539 = load %struct.TYPE_13__*, %struct.TYPE_13__** %538, align 8
  %540 = load i32, i32* %8, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 4
  %548 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 4
  %550 = load i32, i32* %549, align 8
  %551 = mul nsw i32 %547, %550
  %552 = sdiv i32 %551, 8
  %553 = sdiv i32 %544, %552
  %554 = load i32, i32* %11, align 4
  %555 = add i32 %554, %553
  store i32 %555, i32* %11, align 4
  br label %556

556:                                              ; preds = %536, %530
  br label %557

557:                                              ; preds = %556, %513
  br label %645

558:                                              ; preds = %485
  %559 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %559, i32 0, i32 6
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %563 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %562, i32 0, i32 11
  %564 = load %struct.TYPE_13__*, %struct.TYPE_13__** %563, align 8
  %565 = load i32, i32* %8, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %567, i32 0, i32 2
  store i64 %561, i64* %568, align 8
  %569 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %570 = call i32 @AV_RB32(i8* %569)
  %571 = and i32 %570, 2147483647
  %572 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %572, i32 0, i32 11
  %574 = load %struct.TYPE_13__*, %struct.TYPE_13__** %573, align 8
  %575 = load i32, i32* %8, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 3
  store i32 %571, i32* %578, align 8
  %579 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 8
  %580 = load i8, i8* %579, align 8
  %581 = zext i8 %580 to i32
  %582 = and i32 %581, 128
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %585

584:                                              ; preds = %558
  br label %587

585:                                              ; preds = %558
  %586 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  br label %587

587:                                              ; preds = %585, %584
  %588 = phi i32 [ 0, %584 ], [ %586, %585 ]
  %589 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %589, i32 0, i32 11
  %591 = load %struct.TYPE_13__*, %struct.TYPE_13__** %590, align 8
  %592 = load i32, i32* %8, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 4
  store i32 %588, i32* %595, align 4
  %596 = load i32, i32* %12, align 4
  %597 = add i32 %596, 1
  store i32 %597, i32* %12, align 4
  %598 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %599 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %598, i32 0, i32 5
  %600 = load i64, i64* %599, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %644

602:                                              ; preds = %587
  %603 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %603, i32 0, i32 1
  %605 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %604, align 8
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 6
  %608 = load i64, i64* %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %605, i64 %608
  %610 = load %struct.TYPE_16__*, %struct.TYPE_16__** %609, align 8
  %611 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %612 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %611, i32 0, i32 11
  %613 = load %struct.TYPE_13__*, %struct.TYPE_13__** %612, align 8
  %614 = load i32, i32* %8, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %620 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %619, i32 0, i32 11
  %621 = load %struct.TYPE_13__*, %struct.TYPE_13__** %620, align 8
  %622 = load i32, i32* %8, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 8
  %627 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %627, i32 0, i32 11
  %629 = load %struct.TYPE_13__*, %struct.TYPE_13__** %628, align 8
  %630 = load i32, i32* %8, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %629, i64 %631
  %633 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %636 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %635, i32 0, i32 11
  %637 = load %struct.TYPE_13__*, %struct.TYPE_13__** %636, align 8
  %638 = load i32, i32* %8, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @av_add_index_entry(%struct.TYPE_16__* %610, i32 %618, i32 %626, i32 %634, i32 0, i32 %642)
  br label %644

644:                                              ; preds = %602, %587
  br label %645

645:                                              ; preds = %644, %557
  br label %646

646:                                              ; preds = %645
  %647 = load i32, i32* %8, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %8, align 4
  br label %437

649:                                              ; preds = %437
  %650 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %651 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %650, i32 0, i32 1
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %665

654:                                              ; preds = %649
  %655 = load i32, i32* %11, align 4
  %656 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %657 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %656, i32 0, i32 1
  %658 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %657, align 8
  %659 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %660 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %659, i32 0, i32 7
  %661 = load i64, i64* %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %658, i64 %661
  %663 = load %struct.TYPE_16__*, %struct.TYPE_16__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %663, i32 0, i32 1
  store i32 %655, i32* %664, align 8
  br label %665

665:                                              ; preds = %654, %649
  %666 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %667 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %666, i32 0, i32 5
  %668 = load i64, i64* %667, align 8
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %681

670:                                              ; preds = %665
  %671 = load i32, i32* %12, align 4
  %672 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %673 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %672, i32 0, i32 1
  %674 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %673, align 8
  %675 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %675, i32 0, i32 6
  %677 = load i64, i64* %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %674, i64 %677
  %679 = load %struct.TYPE_16__*, %struct.TYPE_16__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %679, i32 0, i32 1
  store i32 %671, i32* %680, align 8
  br label %681

681:                                              ; preds = %670, %665
  %682 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %683 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %682, i32 0, i32 10
  store i64 0, i64* %683, align 8
  store i32 0, i32* %2, align 4
  br label %688

684:                                              ; preds = %483, %448
  %685 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %686 = call i32 @film_read_close(%struct.TYPE_17__* %685)
  %687 = load i32, i32* %9, align 4
  store i32 %687, i32* %2, align 4
  br label %688

688:                                              ; preds = %684, %681, %395, %383, %364, %356, %239, %221, %168, %133, %62, %44, %25
  %689 = load i32, i32* %2, align 4
  ret i32 %689
}

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, i8 zeroext) #1

declare dso_local %struct.TYPE_13__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @film_read_close(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
