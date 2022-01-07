; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_audio_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_audio_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i64, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, i32, i64 }

@MODE_MOV = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lpcm\00", align 1
@AV_CODEC_ID_ADPCM_MS = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i64 0, align 8
@AV_CODEC_ID_QDM2 = common dso_local global i64 0, align 8
@MOV_ENC_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"enca\00", align 1
@AV_CODEC_ID_PCM_U8 = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S8 = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_G726 = common dso_local global i64 0, align 8
@AV_CODEC_ID_FLAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_ALAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_OPUS = common dso_local global i64 0, align 8
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_AC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_AMR_NB = common dso_local global i64 0, align 8
@AV_CODEC_ID_WMAPRO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @mov_write_audio_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_audio_tag(i32* %0, i32* %1, %struct.TYPE_22__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @avio_tell(i32* %14)
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MODE_MOV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UINT16_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mov_get_lpcm_flags(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %45, %37
  store i32 2, i32* %11, align 4
  br label %95

48:                                               ; preds = %30
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @mov_pcm_le_gt16(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @mov_pcm_be_gt16(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_CODEC_ID_ADPCM_MS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %93, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %77, %69, %61, %53, %48
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %47
  br label %96

96:                                               ; preds = %95, %4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @avio_wb32(i32* %97, i32 0)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MOV_ENC_NONE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @ffio_wfourcc(i32* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %111

107:                                              ; preds = %96
  %108 = load i32*, i32** %7, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @avio_wl32(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @avio_wb32(i32* %112, i32 0)
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @avio_wb16(i32* %114, i32 0)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @avio_wb16(i32* %116, i32 1)
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @avio_wb16(i32* %118, i32 %119)
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @avio_wb16(i32* %121, i32 0)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @avio_wb32(i32* %123, i32 0)
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %182

127:                                              ; preds = %111
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @avio_wb16(i32* %128, i32 3)
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @avio_wb16(i32* %130, i32 16)
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @avio_wb16(i32* %132, i32 65534)
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @avio_wb16(i32* %134, i32 0)
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @avio_wb32(i32* %136, i32 65536)
  %138 = load i32*, i32** %7, align 8
  %139 = call i32 @avio_wb32(i32* %138, i32 72)
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @av_double2int(i32 %145)
  %147 = call i32 @avio_wb64(i32* %140, i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @avio_wb32(i32* %148, i32 %153)
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @avio_wb32(i32* %155, i32 2130706432)
  %157 = load i32*, i32** %7, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @av_get_bits_per_sample(i64 %162)
  %164 = call i32 @avio_wb32(i32* %157, i32 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @mov_get_lpcm_flags(i64 %170)
  %172 = call i32 @avio_wb32(i32* %165, i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @avio_wb32(i32* %173, i32 %176)
  %178 = load i32*, i32** %7, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %180 = call i32 @get_samples_per_packet(%struct.TYPE_21__* %179)
  %181 = call i32 @avio_wb32(i32* %178, i32 %180)
  br label %369

182:                                              ; preds = %111
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MODE_MOV, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %243

188:                                              ; preds = %182
  %189 = load i32*, i32** %7, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @avio_wb16(i32* %189, i32 %194)
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @AV_CODEC_ID_PCM_U8, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %188
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 5
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AV_CODEC_ID_PCM_S8, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %203, %188
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @avio_wb16(i32* %212, i32 8)
  br label %234

214:                                              ; preds = %203
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @AV_CODEC_ID_ADPCM_G726, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load i32*, i32** %7, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @avio_wb16(i32* %223, i32 %228)
  br label %233

230:                                              ; preds = %214
  %231 = load i32*, i32** %7, align 8
  %232 = call i32 @avio_wb16(i32* %231, i32 16)
  br label %233

233:                                              ; preds = %230, %222
  br label %234

234:                                              ; preds = %233, %211
  %235 = load i32*, i32** %7, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 -2, i32 0
  %242 = call i32 @avio_wb16(i32* %235, i32 %241)
  br label %308

243:                                              ; preds = %182
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 5
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %267, label %251

251:                                              ; preds = %243
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 5
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %267, label %259

259:                                              ; preds = %251
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 5
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %259, %251, %243
  %268 = load i32*, i32** %7, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @avio_wb16(i32* %268, i32 %273)
  br label %278

275:                                              ; preds = %259
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @avio_wb16(i32* %276, i32 2)
  br label %278

278:                                              ; preds = %275, %267
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 5
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %294, label %286

286:                                              ; preds = %278
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %302

294:                                              ; preds = %286, %278
  %295 = load i32*, i32** %7, align 8
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @avio_wb16(i32* %295, i32 %300)
  br label %305

302:                                              ; preds = %286
  %303 = load i32*, i32** %7, align 8
  %304 = call i32 @avio_wb16(i32* %303, i32 16)
  br label %305

305:                                              ; preds = %302, %294
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @avio_wb16(i32* %306, i32 0)
  br label %308

308:                                              ; preds = %305, %234
  %309 = load i32*, i32** %7, align 8
  %310 = call i32 @avio_wb16(i32* %309, i32 0)
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 5
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %308
  %319 = load i32*, i32** %7, align 8
  %320 = call i32 @avio_wb16(i32* %319, i32 48000)
  br label %357

321:                                              ; preds = %308
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 5
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %321
  %330 = load i32*, i32** %7, align 8
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 5
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @avio_wb32(i32* %330, i32 %335)
  br label %356

337:                                              ; preds = %321
  %338 = load i32*, i32** %7, align 8
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 5
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @UINT16_MAX, align 4
  %345 = icmp sle i32 %343, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %337
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 5
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  br label %353

352:                                              ; preds = %337
  br label %353

353:                                              ; preds = %352, %346
  %354 = phi i32 [ %351, %346 ], [ 0, %352 ]
  %355 = call i32 @avio_wb16(i32* %338, i32 %354)
  br label %356

356:                                              ; preds = %353, %329
  br label %357

357:                                              ; preds = %356, %318
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 5
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %357
  %366 = load i32*, i32** %7, align 8
  %367 = call i32 @avio_wb16(i32* %366, i32 0)
  br label %368

368:                                              ; preds = %365, %357
  br label %369

369:                                              ; preds = %368, %127
  %370 = load i32, i32* %11, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %418

372:                                              ; preds = %369
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 5
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = call i64 @mov_pcm_le_gt16(i64 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %388, label %380

380:                                              ; preds = %372
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 5
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = call i64 @mov_pcm_be_gt16(i64 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %380, %372
  %389 = load i32*, i32** %7, align 8
  %390 = call i32 @avio_wb32(i32* %389, i32 1)
  br label %399

391:                                              ; preds = %380
  %392 = load i32*, i32** %7, align 8
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 5
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @avio_wb32(i32* %392, i32 %397)
  br label %399

399:                                              ; preds = %391, %388
  %400 = load i32*, i32** %7, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 5
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = sdiv i32 %403, %408
  %410 = call i32 @avio_wb32(i32* %400, i32 %409)
  %411 = load i32*, i32** %7, align 8
  %412 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @avio_wb32(i32* %411, i32 %414)
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 @avio_wb32(i32* %416, i32 2)
  br label %418

418:                                              ; preds = %399, %369
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @MODE_MOV, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %515

424:                                              ; preds = %418
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 5
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %510, label %432

432:                                              ; preds = %424
  %433 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %433, i32 0, i32 5
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %510, label %440

440:                                              ; preds = %432
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 5
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %510, label %448

448:                                              ; preds = %440
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 5
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @AV_CODEC_ID_AMR_NB, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %510, label %456

456:                                              ; preds = %448
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 5
  %459 = load %struct.TYPE_20__*, %struct.TYPE_20__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %510, label %464

464:                                              ; preds = %456
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %465, i32 0, i32 5
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @AV_CODEC_ID_ADPCM_MS, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %510, label %472

472:                                              ; preds = %464
  %473 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %473, i32 0, i32 5
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %510, label %480

480:                                              ; preds = %472
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %482 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i32 0, i32 5
  %483 = load %struct.TYPE_20__*, %struct.TYPE_20__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %510, label %488

488:                                              ; preds = %480
  %489 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %490 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %489, i32 0, i32 5
  %491 = load %struct.TYPE_20__*, %struct.TYPE_20__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = call i64 @mov_pcm_le_gt16(i64 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %488
  %497 = load i32, i32* %11, align 4
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %510, label %499

499:                                              ; preds = %496, %488
  %500 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %501 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %500, i32 0, i32 5
  %502 = load %struct.TYPE_20__*, %struct.TYPE_20__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = call i64 @mov_pcm_be_gt16(i64 %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %515

507:                                              ; preds = %499
  %508 = load i32, i32* %11, align 4
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %510, label %515

510:                                              ; preds = %507, %496, %480, %472, %464, %456, %448, %440, %432, %424
  %511 = load i32*, i32** %6, align 8
  %512 = load i32*, i32** %7, align 8
  %513 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %514 = call i32 @mov_write_wave_tag(i32* %511, i32* %512, %struct.TYPE_21__* %513)
  store i32 %514, i32* %13, align 4
  br label %645

515:                                              ; preds = %507, %499, %418
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = call i64 @MKTAG(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 97)
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %525

521:                                              ; preds = %515
  %522 = load i32*, i32** %7, align 8
  %523 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %524 = call i32 @mov_write_esds_tag(i32* %522, %struct.TYPE_21__* %523)
  store i32 %524, i32* %13, align 4
  br label %644

525:                                              ; preds = %515
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 5
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i32 0, i32 1
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @AV_CODEC_ID_AMR_NB, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %537

533:                                              ; preds = %525
  %534 = load i32*, i32** %7, align 8
  %535 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %536 = call i32 @mov_write_amr_tag(i32* %534, %struct.TYPE_21__* %535)
  store i32 %536, i32* %13, align 4
  br label %643

537:                                              ; preds = %525
  %538 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %539 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %538, i32 0, i32 5
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 1
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %545, label %550

545:                                              ; preds = %537
  %546 = load i32*, i32** %6, align 8
  %547 = load i32*, i32** %7, align 8
  %548 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %549 = call i32 @mov_write_ac3_tag(i32* %546, i32* %547, %struct.TYPE_21__* %548)
  store i32 %549, i32* %13, align 4
  br label %642

550:                                              ; preds = %537
  %551 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %552 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %551, i32 0, i32 5
  %553 = load %struct.TYPE_20__*, %struct.TYPE_20__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %563

558:                                              ; preds = %550
  %559 = load i32*, i32** %6, align 8
  %560 = load i32*, i32** %7, align 8
  %561 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %562 = call i32 @mov_write_eac3_tag(i32* %559, i32* %560, %struct.TYPE_21__* %561)
  store i32 %562, i32* %13, align 4
  br label %641

563:                                              ; preds = %550
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 5
  %566 = load %struct.TYPE_20__*, %struct.TYPE_20__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %566, i32 0, i32 1
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %571, label %575

571:                                              ; preds = %563
  %572 = load i32*, i32** %7, align 8
  %573 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %574 = call i32 @mov_write_extradata_tag(i32* %572, %struct.TYPE_21__* %573)
  store i32 %574, i32* %13, align 4
  br label %640

575:                                              ; preds = %563
  %576 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %577 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %576, i32 0, i32 5
  %578 = load %struct.TYPE_20__*, %struct.TYPE_20__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 1
  %580 = load i64, i64* %579, align 8
  %581 = load i64, i64* @AV_CODEC_ID_WMAPRO, align 8
  %582 = icmp eq i64 %580, %581
  br i1 %582, label %583, label %588

583:                                              ; preds = %575
  %584 = load i32*, i32** %6, align 8
  %585 = load i32*, i32** %7, align 8
  %586 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %587 = call i32 @mov_write_wfex_tag(i32* %584, i32* %585, %struct.TYPE_21__* %586)
  store i32 %587, i32* %13, align 4
  br label %639

588:                                              ; preds = %575
  %589 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %590 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %589, i32 0, i32 5
  %591 = load %struct.TYPE_20__*, %struct.TYPE_20__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %591, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %595 = icmp eq i64 %593, %594
  br i1 %595, label %596, label %600

596:                                              ; preds = %588
  %597 = load i32*, i32** %7, align 8
  %598 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %599 = call i32 @mov_write_dfla_tag(i32* %597, %struct.TYPE_21__* %598)
  store i32 %599, i32* %13, align 4
  br label %638

600:                                              ; preds = %588
  %601 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %602 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %601, i32 0, i32 5
  %603 = load %struct.TYPE_20__*, %struct.TYPE_20__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %603, i32 0, i32 1
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %613

608:                                              ; preds = %600
  %609 = load i32*, i32** %6, align 8
  %610 = load i32*, i32** %7, align 8
  %611 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %612 = call i32 @mov_write_dops_tag(i32* %609, i32* %610, %struct.TYPE_21__* %611)
  store i32 %612, i32* %13, align 4
  br label %637

613:                                              ; preds = %600
  %614 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %615 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %614, i32 0, i32 5
  %616 = load %struct.TYPE_20__*, %struct.TYPE_20__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %616, i32 0, i32 1
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %620 = icmp eq i64 %618, %619
  br i1 %620, label %621, label %626

621:                                              ; preds = %613
  %622 = load i32*, i32** %6, align 8
  %623 = load i32*, i32** %7, align 8
  %624 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %625 = call i32 @mov_write_dmlp_tag(i32* %622, i32* %623, %struct.TYPE_21__* %624)
  store i32 %625, i32* %13, align 4
  br label %636

626:                                              ; preds = %613
  %627 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %628 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %627, i32 0, i32 4
  %629 = load i64, i64* %628, align 8
  %630 = icmp sgt i64 %629, 0
  br i1 %630, label %631, label %635

631:                                              ; preds = %626
  %632 = load i32*, i32** %7, align 8
  %633 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %634 = call i32 @mov_write_glbl_tag(i32* %632, %struct.TYPE_21__* %633)
  store i32 %634, i32* %13, align 4
  br label %635

635:                                              ; preds = %631, %626
  br label %636

636:                                              ; preds = %635, %621
  br label %637

637:                                              ; preds = %636, %608
  br label %638

638:                                              ; preds = %637, %596
  br label %639

639:                                              ; preds = %638, %583
  br label %640

640:                                              ; preds = %639, %571
  br label %641

641:                                              ; preds = %640, %558
  br label %642

642:                                              ; preds = %641, %545
  br label %643

643:                                              ; preds = %642, %533
  br label %644

644:                                              ; preds = %643, %521
  br label %645

645:                                              ; preds = %644, %510
  %646 = load i32, i32* %13, align 4
  %647 = icmp slt i32 %646, 0
  br i1 %647, label %648, label %650

648:                                              ; preds = %645
  %649 = load i32, i32* %13, align 4
  store i32 %649, i32* %5, align 4
  br label %693

650:                                              ; preds = %645
  %651 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %652 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %651, i32 0, i32 1
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @MODE_MOV, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %672

656:                                              ; preds = %650
  %657 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %658 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %657, i32 0, i32 5
  %659 = load %struct.TYPE_20__*, %struct.TYPE_20__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %659, i32 0, i32 6
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %663 = icmp eq i64 %661, %662
  br i1 %663, label %664, label %672

664:                                              ; preds = %656
  %665 = load i32*, i32** %6, align 8
  %666 = load i32*, i32** %7, align 8
  %667 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %668 = call i32 @mov_write_chan_tag(i32* %665, i32* %666, %struct.TYPE_21__* %667)
  store i32 %668, i32* %13, align 4
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %664
  %671 = load i32, i32* %13, align 4
  store i32 %671, i32* %5, align 4
  br label %693

672:                                              ; preds = %664, %656, %650
  %673 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %674 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %673, i32 0, i32 0
  %675 = load i64, i64* %674, align 8
  %676 = load i64, i64* @MOV_ENC_NONE, align 8
  %677 = icmp ne i64 %675, %676
  br i1 %677, label %678, label %688

678:                                              ; preds = %672
  %679 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %680 = load i32*, i32** %7, align 8
  %681 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %682 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 8
  %684 = call i32 @ff_mov_cenc_write_sinf_tag(%struct.TYPE_21__* %679, i32* %680, i32 %683)
  store i32 %684, i32* %13, align 4
  %685 = icmp slt i32 %684, 0
  br i1 %685, label %686, label %688

686:                                              ; preds = %678
  %687 = load i32, i32* %13, align 4
  store i32 %687, i32* %5, align 4
  br label %693

688:                                              ; preds = %678, %672
  %689 = load i32*, i32** %7, align 8
  %690 = load i32, i32* %10, align 4
  %691 = call i32 @update_size(i32* %689, i32 %690)
  store i32 %691, i32* %13, align 4
  %692 = load i32, i32* %13, align 4
  store i32 %692, i32* %5, align 4
  br label %693

693:                                              ; preds = %688, %686, %670, %648
  %694 = load i32, i32* %5, align 4
  ret i32 %694
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @mov_get_lpcm_flags(i64) #1

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i64 @mov_pcm_le_gt16(i64) #1

declare dso_local i64 @mov_pcm_be_gt16(i64) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wl32(i32*, i64) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @av_double2int(i32) #1

declare dso_local i32 @av_get_bits_per_sample(i64) #1

declare dso_local i32 @get_samples_per_packet(%struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_wave_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_write_esds_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_amr_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_ac3_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_eac3_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_extradata_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_wfex_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_dfla_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_dops_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_dmlp_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_glbl_tag(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @mov_write_chan_tag(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ff_mov_cenc_write_sinf_tag(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
