; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_put_wav_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffenc.c_ff_put_wav_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32* }

@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_ATRAC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_G723_1 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP2 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_GSM_MS = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"requested bits_per_coded_sample (%d) and actually stored (%d) differ\0A\00", align 1
@AV_CODEC_ID_AC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_U8 = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S24LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S32LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_F32LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_F64LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i64 0, align 8
@FF_PUT_WAV_HEADER_SKIP_CHANNELMASK = common dso_local global i32 0, align 4
@FF_COMPLIANCE_NORMAL = common dso_local global i64 0, align 8
@ff_codec_wav_guids = common dso_local global i32 0, align 4
@FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_put_wav_header(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @avio_tell(i32* %21)
  store i32 %22, i32* %15, align 4
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  store i32* %23, i32** %18, align 8
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  store i32* %24, i32** %19, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 65535
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %4
  store i32 -1, i32* %5, align 4
  br label %544

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @av_get_audio_frame_duration2(%struct.TYPE_8__* %36, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %99, label %50

50:                                               ; preds = %45, %35
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %99, label %66

66:                                               ; preds = %60, %55, %50
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %99, label %82

82:                                               ; preds = %76, %71, %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 48000
  br i1 %86, label %99, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @av_get_bits_per_sample(i64 %96)
  %98 = icmp sgt i32 %97, 16
  br label %99

99:                                               ; preds = %93, %87, %82, %76, %60, %45
  %100 = phi i1 [ true, %87 ], [ true, %82 ], [ true, %76 ], [ true, %60 ], [ true, %45 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @avio_wl16(i32* %105, i32 65534)
  br label %113

107:                                              ; preds = %99
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @avio_wl16(i32* %108, i32 %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @avio_wl16(i32* %114, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @avio_wl32(i32* %119, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AV_CODEC_ID_ATRAC3, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %153, label %129

129:                                              ; preds = %113
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AV_CODEC_ID_G723_1, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %153, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_CODEC_ID_GSM_MS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147, %141, %135, %129, %113
  store i32 0, i32* %10, align 4
  br label %172

154:                                              ; preds = %147
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @av_get_bits_per_sample(i64 %157)
  store i32 %158, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %10, align 4
  br label %170

169:                                              ; preds = %160
  store i32 16, i32* %10, align 4
  br label %170

170:                                              ; preds = %169, %165
  br label %171

171:                                              ; preds = %170, %154
  br label %172

172:                                              ; preds = %171, %153
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %172
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = load i32, i32* @AV_LOG_WARNING, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @av_log(%struct.TYPE_7__* %184, i32 %185, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %183, %178, %172
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 144, %200
  %202 = sub nsw i32 %201, 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = sdiv i32 %202, %205
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %270

208:                                              ; preds = %191
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %217, 28000
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 1, i32 2
  %221 = mul nsw i32 576, %220
  store i32 %221, i32* %11, align 4
  br label %269

222:                                              ; preds = %208
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store i32 3840, i32* %11, align 4
  br label %268

229:                                              ; preds = %222
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 768, %238
  store i32 %239, i32* %11, align 4
  br label %267

240:                                              ; preds = %229
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @AV_CODEC_ID_G723_1, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  store i32 24, i32* %11, align 4
  br label %266

247:                                              ; preds = %240
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %11, align 4
  br label %265

256:                                              ; preds = %247
  %257 = load i32, i32* %10, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %257, %260
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @av_gcd(i32 8, i32 %262)
  %264 = sdiv i32 %261, %263
  store i32 %264, i32* %11, align 4
  br label %265

265:                                              ; preds = %256, %252
  br label %266

266:                                              ; preds = %265, %246
  br label %267

267:                                              ; preds = %266, %235
  br label %268

268:                                              ; preds = %267, %228
  br label %269

269:                                              ; preds = %268, %214
  br label %270

270:                                              ; preds = %269, %197
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @AV_CODEC_ID_PCM_U8, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %306, label %276

276:                                              ; preds = %270
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @AV_CODEC_ID_PCM_S24LE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %306, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @AV_CODEC_ID_PCM_S32LE, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %306, label %288

288:                                              ; preds = %282
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @AV_CODEC_ID_PCM_F32LE, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %306, label %294

294:                                              ; preds = %288
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @AV_CODEC_ID_PCM_F64LE, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %306, label %300

300:                                              ; preds = %294
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @AV_CODEC_ID_PCM_S16LE, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %300, %294, %288, %282, %276, %270
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = mul nsw i32 %309, %310
  store i32 %311, i32* %12, align 4
  br label %325

312:                                              ; preds = %300
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 5
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @AV_CODEC_ID_G723_1, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  store i32 800, i32* %12, align 4
  br label %324

319:                                              ; preds = %312
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = sdiv i32 %322, 8
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %319, %318
  br label %325

325:                                              ; preds = %324, %306
  %326 = load i32*, i32** %7, align 8
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @avio_wl32(i32* %326, i32 %327)
  %329 = load i32*, i32** %7, align 8
  %330 = load i32, i32* %11, align 4
  %331 = call i32 @avio_wl16(i32* %329, i32 %330)
  %332 = load i32*, i32** %7, align 8
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @avio_wl16(i32* %332, i32 %333)
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %346

340:                                              ; preds = %325
  %341 = call i32 @bytestream_put_le16(i32** %18, i32 1)
  %342 = call i32 @bytestream_put_le32(i32** %18, i32 2)
  %343 = call i32 @bytestream_put_le16(i32** %18, i32 1152)
  %344 = call i32 @bytestream_put_le16(i32** %18, i32 1)
  %345 = call i32 @bytestream_put_le16(i32** %18, i32 1393)
  br label %416

346:                                              ; preds = %325
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %370

352:                                              ; preds = %346
  %353 = call i32 @bytestream_put_le16(i32** %18, i32 2)
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @bytestream_put_le32(i32** %18, i32 %356)
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i32 1, i32 8
  %364 = call i32 @bytestream_put_le16(i32** %18, i32 %363)
  %365 = call i32 @bytestream_put_le16(i32** %18, i32 0)
  %366 = call i32 @bytestream_put_le16(i32** %18, i32 1)
  %367 = call i32 @bytestream_put_le16(i32** %18, i32 16)
  %368 = call i32 @bytestream_put_le32(i32** %18, i32 0)
  %369 = call i32 @bytestream_put_le32(i32** %18, i32 0)
  br label %415

370:                                              ; preds = %346
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 5
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @AV_CODEC_ID_G723_1, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %370
  %377 = call i32 @bytestream_put_le32(i32** %18, i32 -1697775614)
  %378 = call i32 @bytestream_put_le32(i32** %18, i32 -1365051598)
  %379 = call i32 @bytestream_put_le16(i32** %18, i32 44254)
  br label %414

380:                                              ; preds = %370
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 5
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @AV_CODEC_ID_GSM_MS, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %392, label %386

386:                                              ; preds = %380
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %386, %380
  %393 = load i32, i32* %13, align 4
  %394 = call i32 @bytestream_put_le16(i32** %18, i32 %393)
  br label %413

395:                                              ; preds = %386
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %412

400:                                              ; preds = %395
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 9
  %403 = load i32*, i32** %402, align 8
  store i32* %403, i32** %19, align 8
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 9
  %406 = load i32*, i32** %405, align 8
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 8
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %406, i64 %410
  store i32* %411, i32** %18, align 8
  br label %412

412:                                              ; preds = %400, %395
  br label %413

413:                                              ; preds = %412, %392
  br label %414

414:                                              ; preds = %413, %376
  br label %415

415:                                              ; preds = %414, %352
  br label %416

416:                                              ; preds = %415, %340
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %490

419:                                              ; preds = %416
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* @FF_PUT_WAV_HEADER_SKIP_CHANNELMASK, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %437, label %424

424:                                              ; preds = %419
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @FF_COMPLIANCE_NORMAL, align 8
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %435, label %430

430:                                              ; preds = %424
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = icmp slt i32 %433, 262144
  br label %435

435:                                              ; preds = %430, %424
  %436 = phi i1 [ true, %424 ], [ %434, %430 ]
  br label %437

437:                                              ; preds = %435, %419
  %438 = phi i1 [ false, %419 ], [ %436, %435 ]
  %439 = zext i1 %438 to i32
  store i32 %439, i32* %20, align 4
  %440 = load i32*, i32** %7, align 8
  %441 = load i32*, i32** %18, align 8
  %442 = load i32*, i32** %19, align 8
  %443 = ptrtoint i32* %441 to i64
  %444 = ptrtoint i32* %442 to i64
  %445 = sub i64 %443, %444
  %446 = sdiv exact i64 %445, 4
  %447 = add nsw i64 %446, 22
  %448 = trunc i64 %447 to i32
  %449 = call i32 @avio_wl16(i32* %440, i32 %448)
  %450 = load i32*, i32** %7, align 8
  %451 = load i32, i32* %10, align 4
  %452 = call i32 @avio_wl16(i32* %450, i32 %451)
  %453 = load i32*, i32** %7, align 8
  %454 = load i32, i32* %20, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %437
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 4
  br label %461

460:                                              ; preds = %437
  br label %461

461:                                              ; preds = %460, %456
  %462 = phi i32 [ %459, %456 ], [ 0, %460 ]
  %463 = call i32 @avio_wl32(i32* %453, i32 %462)
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 5
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %477

469:                                              ; preds = %461
  %470 = load i32*, i32** %7, align 8
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 5
  %473 = load i64, i64* %472, align 8
  %474 = load i32, i32* @ff_codec_wav_guids, align 4
  %475 = call i32 @ff_get_codec_guid(i64 %473, i32 %474)
  %476 = call i32 @ff_put_guid(i32* %470, i32 %475)
  br label %489

477:                                              ; preds = %461
  %478 = load i32*, i32** %7, align 8
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @avio_wl32(i32* %478, i32 %481)
  %483 = load i32*, i32** %7, align 8
  %484 = call i32 @avio_wl32(i32* %483, i32 1048576)
  %485 = load i32*, i32** %7, align 8
  %486 = call i32 @avio_wl32(i32* %485, i32 -1442840448)
  %487 = load i32*, i32** %7, align 8
  %488 = call i32 @avio_wl32(i32* %487, i32 1905997824)
  br label %489

489:                                              ; preds = %477, %469
  br label %519

490:                                              ; preds = %416
  %491 = load i32, i32* %9, align 4
  %492 = load i32, i32* @FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %508, label %495

495:                                              ; preds = %490
  %496 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 1
  br i1 %499, label %508, label %500

500:                                              ; preds = %495
  %501 = load i32*, i32** %18, align 8
  %502 = load i32*, i32** %19, align 8
  %503 = ptrtoint i32* %501 to i64
  %504 = ptrtoint i32* %502 to i64
  %505 = sub i64 %503, %504
  %506 = sdiv exact i64 %505, 4
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %518

508:                                              ; preds = %500, %495, %490
  %509 = load i32*, i32** %7, align 8
  %510 = load i32*, i32** %18, align 8
  %511 = load i32*, i32** %19, align 8
  %512 = ptrtoint i32* %510 to i64
  %513 = ptrtoint i32* %511 to i64
  %514 = sub i64 %512, %513
  %515 = sdiv exact i64 %514, 4
  %516 = trunc i64 %515 to i32
  %517 = call i32 @avio_wl16(i32* %509, i32 %516)
  br label %518

518:                                              ; preds = %508, %500
  br label %519

519:                                              ; preds = %518, %489
  %520 = load i32*, i32** %7, align 8
  %521 = load i32*, i32** %19, align 8
  %522 = load i32*, i32** %18, align 8
  %523 = load i32*, i32** %19, align 8
  %524 = ptrtoint i32* %522 to i64
  %525 = ptrtoint i32* %523 to i64
  %526 = sub i64 %524, %525
  %527 = sdiv exact i64 %526, 4
  %528 = trunc i64 %527 to i32
  %529 = call i32 @avio_write(i32* %520, i32* %521, i32 %528)
  %530 = load i32*, i32** %7, align 8
  %531 = call i32 @avio_tell(i32* %530)
  %532 = load i32, i32* %15, align 4
  %533 = sub nsw i32 %531, %532
  store i32 %533, i32* %14, align 4
  %534 = load i32, i32* %14, align 4
  %535 = and i32 %534, 1
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %542

537:                                              ; preds = %519
  %538 = load i32, i32* %14, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %14, align 4
  %540 = load i32*, i32** %7, align 8
  %541 = call i32 @avio_w8(i32* %540, i32 0)
  br label %542

542:                                              ; preds = %537, %519
  %543 = load i32, i32* %14, align 4
  store i32 %543, i32* %5, align 4
  br label %544

544:                                              ; preds = %542, %34
  %545 = load i32, i32* %5, align 4
  ret i32 %545
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_get_audio_frame_duration2(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_get_bits_per_sample(i64) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_gcd(i32, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @ff_put_guid(i32*, i32) #1

declare dso_local i32 @ff_get_codec_guid(i64, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
