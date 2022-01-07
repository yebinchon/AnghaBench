; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_vqa.c_wsvqa_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_vqa.c_wsvqa_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32 }

@VQA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_WESTWOOD_SND1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_WS = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Skipping unknown chunk %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @wsvqa_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsvqa_read_packet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %22 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  br label %26

26:                                               ; preds = %254, %2
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %29 = call i32 @avio_read(i32* %27, i32* %25, i32 %28)
  %30 = load i32, i32* @VQA_PREAMBLE_SIZE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %255

32:                                               ; preds = %26
  %33 = getelementptr inbounds i32, i32* %25, i64 0
  %34 = call i32 @AV_RB32(i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = getelementptr inbounds i32, i32* %25, i64 4
  %36 = call i32 @AV_RB32(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %238

50:                                               ; preds = %47, %44, %41, %32
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @av_get_packet(i32* %51, %struct.TYPE_15__* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EIO, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %257

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %230 [
    i32 131, label %62
    i32 130, label %62
    i32 129, label %62
    i32 128, label %222
  ]

62:                                               ; preds = %60, %60, %60
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %188

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__* %68, i32* null)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %15, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %71 = icmp ne %struct.TYPE_14__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %257

75:                                               ; preds = %67
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i32 22050, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %75
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  store i32 8, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 5
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %131, i32 64, i32 1, i32 %136)
  %138 = load i32, i32* %11, align 4
  switch i32 %138, label %187 [
    i32 131, label %139
    i32 130, label %157
    i32 129, label %163
  ]

139:                                              ; preds = %104
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 4
  store i32 %145, i32* %149, align 4
  br label %156

150:                                              ; preds = %139
  %151 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 4
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %144
  br label %187

157:                                              ; preds = %104
  %158 = load i32, i32* @AV_CODEC_ID_WESTWOOD_SND1, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  store i32 %158, i32* %162, align 4
  br label %187

163:                                              ; preds = %104
  %164 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_WS, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 4
  store i32 %164, i32* %168, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = call i32 @ff_alloc_extradata(%struct.TYPE_17__* %171, i32 2)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %257

177:                                              ; preds = %163
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @AV_WL16(i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %104, %177, %157, %156
  br label %188

188:                                              ; preds = %187, %62
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %11, align 4
  switch i32 %194, label %221 [
    i32 130, label %195
    i32 129, label %212
  ]

195:                                              ; preds = %188
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @AV_RL16(i32 %203)
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = sdiv i32 %204, %207
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %200, %195
  br label %221

212:                                              ; preds = %188
  %213 = load i32, i32* %12, align 4
  %214 = mul nsw i32 %213, 2
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %214, %217
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %188, %212, %211
  br label %230

222:                                              ; preds = %60
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  store i32 1, i32* %229, align 4
  br label %230

230:                                              ; preds = %60, %222, %221
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @avio_skip(i32* %234, i32 1)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %257

238:                                              ; preds = %47
  %239 = load i32, i32* %11, align 4
  switch i32 %239, label %241 [
    i32 132, label %240
  ]

240:                                              ; preds = %238
  br label %248

241:                                              ; preds = %238
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = load i32, i32* @AV_LOG_INFO, align 4
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @av_bswap32(i32 %244)
  %246 = call i32 @av_fourcc2str(i32 %245)
  %247 = call i32 @av_log(%struct.TYPE_16__* %242, i32 %243, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %241, %240
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %250, %251
  %253 = call i32 @avio_skip(i32* %249, i32 %252)
  br label %254

254:                                              ; preds = %248
  br label %26

255:                                              ; preds = %26
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %257

257:                                              ; preds = %255, %236, %174, %72, %57
  %258 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %258)
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @AV_RB32(i32*) #2

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @AV_WL16(i32, i32) #2

declare dso_local i32 @AV_RL16(i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #2

declare dso_local i32 @av_fourcc2str(i32) #2

declare dso_local i32 @av_bswap32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
