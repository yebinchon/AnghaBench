; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_build_frame_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_build_frame_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32 }

@FLAG_CODED = common dso_local global i32 0, align 4
@FLAG_STREAM_ID = common dso_local global i32 0, align 4
@FLAG_SIZE_MSB = common dso_local global i32 0, align 4
@FLAG_CODED_PTS = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_CODEC_ID_VORBIS = common dso_local global i64 0, align 8
@FLAG_KEY = common dso_local global i32 0, align 4
@FLAG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @build_frame_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_frame_code(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i32], align 16
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__, align 4
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %3, align 8
  store i32 1, i32* %8, align 4
  store i32 254, i32* %9, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 2
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i64 %43
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %12, align 8
  %45 = load i32, i32* @FLAG_CODED, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i64 %61
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %13, align 8
  %63 = load i32, i32* @FLAG_STREAM_ID, align 4
  %64 = load i32, i32* @FLAG_SIZE_MSB, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FLAG_CODED_PTS, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %56, %1
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %448, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %451

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %87, %90
  %92 = add nsw i32 %82, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %96, %98
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %99, %102
  %104 = add nsw i32 %93, %103
  store i32 %104, i32* %15, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %107, i64 %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %16, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %81
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %128 = call i32 @av_get_audio_frame_duration2(%struct.TYPE_21__* %127, i32 0)
  store i32 %128, i32* %20, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 64, i32* %20, align 4
  br label %138

138:                                              ; preds = %137, %134, %126
  br label %172

139:                                              ; preds = %81
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %142, i64 %144
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @av_inv_q(i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @av_div_q(i32 %149, i32 %158)
  %160 = bitcast %struct.TYPE_19__* %21 to i64*
  store i64 %159, i64* %160, align 4
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %171

164:                                              ; preds = %139
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %20, align 4
  br label %171

171:                                              ; preds = %168, %164, %139
  br label %172

172:                                              ; preds = %171, %138
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  store i32 1, i32* %20, align 4
  br label %176

176:                                              ; preds = %175, %172
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %226, %176
  %178 = load i32, i32* %4, align 4
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %229

180:                                              ; preds = %177
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %186, %183, %180
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %194
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %22, align 8
  %196 = load i32, i32* @FLAG_KEY, align 4
  %197 = load i32, i32* %4, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @FLAG_SIZE_MSB, align 4
  %202 = load i32, i32* @FLAG_CODED_PTS, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %189
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i8* @find_header_idx(%struct.TYPE_20__* %216, %struct.TYPE_21__* %217, i32 -1, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 5
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %215, %189
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %225

225:                                              ; preds = %222, %186
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %177

229:                                              ; preds = %177
  %230 = load i32, i32* %18, align 4
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %17, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %312

233:                                              ; preds = %229
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %23, align 4
  br label %256

242:                                              ; preds = %233
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %244 = call i32 @av_get_audio_frame_duration2(%struct.TYPE_21__* %243, i32 0)
  store i32 %244, i32* %25, align 4
  %245 = load i32, i32* %25, align 4
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = mul nsw i32 %245, %249
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 8, %253
  %255 = sdiv i32 %250, %254
  store i32 %255, i32* %23, align 4
  br label %256

256:                                              ; preds = %242, %238
  store i32 0, i32* %24, align 4
  br label %257

257:                                              ; preds = %308, %256
  %258 = load i32, i32* %24, align 4
  %259 = icmp slt i32 %258, 2
  br i1 %259, label %260, label %311

260:                                              ; preds = %257
  store i32 0, i32* %6, align 4
  br label %261

261:                                              ; preds = %304, %260
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %264, label %307

264:                                              ; preds = %261
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i64 %269
  store %struct.TYPE_18__* %270, %struct.TYPE_18__** %26, align 8
  %271 = load i32, i32* @FLAG_KEY, align 4
  %272 = load i32, i32* %4, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* %7, align 4
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 2
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %283, %284
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* %24, align 4
  %289 = load i32, i32* %20, align 4
  %290 = mul nsw i32 %288, %289
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %295 = load i32, i32* %23, align 4
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %295, %296
  %298 = load i32, i32* %4, align 4
  %299 = call i8* @find_header_idx(%struct.TYPE_20__* %293, %struct.TYPE_21__* %294, i32 %297, i32 %298)
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 5
  store i8* %299, i8** %301, align 8
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  br label %304

304:                                              ; preds = %264
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %261

307:                                              ; preds = %261
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %24, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %24, align 4
  br label %257

311:                                              ; preds = %257
  br label %334

312:                                              ; preds = %229
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %314, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i64 %317
  store %struct.TYPE_18__* %318, %struct.TYPE_18__** %27, align 8
  %319 = load i32, i32* @FLAG_KEY, align 4
  %320 = load i32, i32* @FLAG_SIZE_MSB, align 4
  %321 = or i32 %319, %320
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  store i32 1, i32* %328, align 4
  %329 = load i32, i32* %20, align 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %14, align 4
  br label %334

334:                                              ; preds = %312, %311
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %334
  store i32 5, i32* %19, align 4
  %340 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  store i32 -2, i32* %340, align 16
  %341 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %341, align 4
  %342 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 2
  store i32 1, i32* %342, align 8
  %343 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 3
  store i32 3, i32* %343, align 4
  %344 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 4
  store i32 4, i32* %344, align 16
  br label %358

345:                                              ; preds = %334
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  store i32 3, i32* %19, align 4
  %352 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  store i32 2, i32* %352, align 16
  %353 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 1
  store i32 9, i32* %353, align 4
  %354 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 2
  store i32 16, i32* %354, align 8
  br label %357

355:                                              ; preds = %345
  store i32 1, i32* %19, align 4
  %356 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %356, align 16
  br label %357

357:                                              ; preds = %355, %351
  br label %358

358:                                              ; preds = %357, %339
  store i32 0, i32* %6, align 4
  br label %359

359:                                              ; preds = %444, %358
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %19, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %447

363:                                              ; preds = %359
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load i32, i32* %14, align 4
  %367 = sub nsw i32 %365, %366
  %368 = load i32, i32* %6, align 4
  %369 = mul nsw i32 %367, %368
  %370 = load i32, i32* %19, align 4
  %371 = sdiv i32 %369, %370
  %372 = add nsw i32 %364, %371
  store i32 %372, i32* %28, align 4
  %373 = load i32, i32* %14, align 4
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %14, align 4
  %376 = sub nsw i32 %374, %375
  %377 = load i32, i32* %6, align 4
  %378 = add nsw i32 %377, 1
  %379 = mul nsw i32 %376, %378
  %380 = load i32, i32* %19, align 4
  %381 = sdiv i32 %379, %380
  %382 = add nsw i32 %373, %381
  store i32 %382, i32* %29, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %6, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 %387, %383
  store i32 %388, i32* %386, align 4
  %389 = load i32, i32* %28, align 4
  store i32 %389, i32* %5, align 4
  br label %390

390:                                              ; preds = %440, %363
  %391 = load i32, i32* %5, align 4
  %392 = load i32, i32* %29, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %394, label %443

394:                                              ; preds = %390
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i64 %399
  store %struct.TYPE_18__* %400, %struct.TYPE_18__** %30, align 8
  %401 = load i32, i32* @FLAG_KEY, align 4
  %402 = load i32, i32* %4, align 4
  %403 = mul nsw i32 %401, %402
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  %406 = load i32, i32* @FLAG_SIZE_MSB, align 4
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 8
  %411 = load i32, i32* %7, align 4
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 3
  store i32 %411, i32* %413, align 4
  %414 = load i32, i32* %29, align 4
  %415 = load i32, i32* %28, align 4
  %416 = sub nsw i32 %414, %415
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 4
  %419 = load i32, i32* %5, align 4
  %420 = load i32, i32* %28, align 4
  %421 = sub nsw i32 %419, %420
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 4
  store i32 %421, i32* %423, align 8
  %424 = load i32, i32* %6, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load i32, i32* %17, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %394
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %435 = load i32, i32* %4, align 4
  %436 = call i8* @find_header_idx(%struct.TYPE_20__* %433, %struct.TYPE_21__* %434, i32 -1, i32 %435)
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 5
  store i8* %436, i8** %438, align 8
  br label %439

439:                                              ; preds = %432, %394
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %5, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %5, align 4
  br label %390

443:                                              ; preds = %390
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %6, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %6, align 4
  br label %359

447:                                              ; preds = %359
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %7, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %7, align 4
  br label %75

451:                                              ; preds = %75
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i64 79
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i64 78
  %460 = call i32 @memmove(%struct.TYPE_18__* %455, %struct.TYPE_18__* %459, i32 5664)
  %461 = load i32, i32* @FLAG_INVALID, align 4
  %462 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_18__*, %struct.TYPE_18__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %464, i64 78
  %466 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %465, i32 0, i32 0
  store i32 %461, i32* %466, align 8
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i64 255
  %471 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %470, i32 0, i32 0
  store i32 %461, i32* %471, align 8
  %472 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i64 0
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i32 0, i32 0
  store i32 %461, i32* %476, align 8
  ret void
}

declare dso_local i32 @av_get_audio_frame_duration2(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @av_div_q(i32, i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i8* @find_header_idx(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
