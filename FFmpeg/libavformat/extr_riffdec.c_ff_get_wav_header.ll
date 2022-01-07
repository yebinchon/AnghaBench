; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_get_wav_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_get_wav_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i32, i8*, i64*, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"wav header size < 14\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"WAVEFORMATEX support for RIFX files\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid sample rate: %d\0A\00", align 1
@AV_CODEC_ID_AAC_LATM = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_G726 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_wav_header(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 14
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @avpriv_request_sample(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %6, align 4
  br label %292

23:                                               ; preds = %5
  %24 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = call i8* @avio_rl16(i32* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 357
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = call i8* @avio_rl16(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @avio_rl32(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @avio_rl32(i32* %44)
  %46 = mul nsw i64 %45, 8
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i8* @avio_rl16(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %35, %29
  br label %71

52:                                               ; preds = %23
  %53 = load i32*, i32** %8, align 8
  %54 = call i8* @avio_rb16(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i8* @avio_rb16(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @avio_rb32(i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @avio_rb32(i32* %64)
  %66 = mul nsw i64 %65, 8
  store i64 %66, i64* %13, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i8* @avio_rb16(i32* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %52, %51
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 14
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 8, i32* %76, align 8
  br label %93

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = call i8* @avio_rl16(i32* %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %92

86:                                               ; preds = %77
  %87 = load i32*, i32** %8, align 8
  %88 = call i8* @avio_rb16(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 65534
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 4
  br label %110

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ff_wav_codec_get_id(i32 %103, i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %99, %96
  %111 = load i32, i32* %10, align 4
  %112 = icmp sge i32 %111, 18
  br i1 %112, label %113, label %174

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 357
  br i1 %115, label %116, label %174

116:                                              ; preds = %113
  %117 = load i32*, i32** %8, align 8
  %118 = call i8* @avio_rl16(i32* %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @avpriv_report_missing_feature(i32* %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %125, i32* %6, align 4
  br label %292

126:                                              ; preds = %116
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 18
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @FFMIN(i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp sge i32 %132, 22
  br i1 %133, label %134, label %146

134:                                              ; preds = %126
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 65534
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = call i32 @parse_waveformatex(i32* %138, i32* %139, %struct.TYPE_5__* %140)
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %142, 22
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %144, 22
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %137, %134, %126
  %147 = load i32, i32* %14, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 6
  %152 = call i32 @av_freep(i64** %151)
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i64 @ff_get_extradata(i32* %153, %struct.TYPE_5__* %154, i32* %155, i32 %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %6, align 4
  br label %292

162:                                              ; preds = %149
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %146
  %167 = load i32, i32* %10, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @avio_skip(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %166
  br label %242

174:                                              ; preds = %113, %110
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %175, 357
  br i1 %176, label %177, label %241

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = icmp sge i32 %178, 32
  br i1 %179, label %180, label %241

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 4
  store i32 %182, i32* %10, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  %185 = call i32 @av_freep(i64** %184)
  %186 = load i32*, i32** %7, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @ff_get_extradata(i32* %186, %struct.TYPE_5__* %187, i32* %188, i32 %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = call i32 @AVERROR(i32 %193)
  store i32 %194, i32* %6, align 4
  br label %292

195:                                              ; preds = %180
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 6
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 4
  %200 = call i32 @AV_RL16(i64* %199)
  store i32 %200, i32* %15, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 6
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 12
  %205 = call i64 @AV_RL32(i64* %204)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 5
  store i8* null, i8** %209, align 8
  store i64 0, i64* %13, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %15, align 4
  %212 = mul nsw i32 %211, 20
  %213 = add nsw i32 8, %212
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %195
  %216 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %216, i32* %6, align 4
  br label %292

217:                                              ; preds = %195
  store i32 0, i32* %16, align 4
  br label %218

218:                                              ; preds = %237, %217
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %240

222:                                              ; preds = %218
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 6
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = mul nsw i32 %226, 20
  %228 = add nsw i32 8, %227
  %229 = add nsw i32 %228, 17
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %225, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 5
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr i8, i8* %235, i64 %232
  store i8* %236, i8** %234, align 8
  br label %237

237:                                              ; preds = %222
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %16, align 4
  br label %218

240:                                              ; preds = %218
  br label %241

241:                                              ; preds = %240, %177, %174
  br label %242

242:                                              ; preds = %241, %173
  %243 = load i64, i64* %13, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 3
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp sle i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %242
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* @AV_LOG_ERROR, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @av_log(i32* %251, i32 %252, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %255)
  %257 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %257, i32* %6, align 4
  br label %292

258:                                              ; preds = %242
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AV_CODEC_ID_AAC_LATM, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %258
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 5
  store i8* null, i8** %266, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %264, %258
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @AV_CODEC_ID_ADPCM_G726, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %269
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %275
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = sdiv i64 %283, %286
  %288 = trunc i64 %287 to i32
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %280, %275, %269
  store i32 0, i32* %6, align 4
  br label %292

292:                                              ; preds = %291, %250, %215, %192, %159, %122, %19
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @avpriv_request_sample(i32*, i8*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i8* @avio_rb16(i32*) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i32 @ff_wav_codec_get_id(i32, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @parse_waveformatex(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @av_freep(i64**) #1

declare dso_local i64 @ff_get_extradata(i32*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @AV_RL16(i64*) #1

declare dso_local i64 @AV_RL32(i64*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
