; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fsb.c_fsb_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fsb.c_fsb_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }

@.str = private unnamed_addr constant [11 x i8] c"version %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_PSX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"format 0x%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @fsb_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsb_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %14, i32* null)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @avio_skip(i32* %16, i32 3)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @avio_r8(i32* %18)
  %20 = sub i32 %19, 48
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %30, i32* %2, align 4
  br label %352

31:                                               ; preds = %23, %1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @avio_skip(i32* %32, i32 4)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %352

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %9, align 8
  %43 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %202

50:                                               ; preds = %39
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @avio_rl32(i32* %51)
  %53 = add nsw i32 %52, 24
  store i32 %53, i32* %8, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @avio_skip(i32* %54, i32 44)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @avio_rl32(i32* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @avio_skip(i32* %60, i32 12)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @avio_rl32(i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @avio_rl32(i32* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %2, align 4
  br label %352

74:                                               ; preds = %50
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @avio_skip(i32* %75, i32 6)
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @avio_rl16(i32* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %2, align 4
  br label %352

88:                                               ; preds = %74
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, 256
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 4096, %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %201

102:                                              ; preds = %88
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, 4194304
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  store i32 4, i32* %108, align 8
  %109 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_WAV, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 36, %114
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %200

118:                                              ; preds = %102
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 8388608
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* @AV_CODEC_ID_ADPCM_PSX, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 16, %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %199

132:                                              ; preds = %118
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 33554432
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %193

136:                                              ; preds = %132
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  store i32 129, i32* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 8, %141
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @INT_MAX, align 4
  %149 = sdiv i32 %148, 32
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %136
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %2, align 4
  br label %352

153:                                              ; preds = %136
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 32, %157
  %159 = call i32 @ff_alloc_extradata(%struct.TYPE_14__* %154, i32 %158)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %153
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %2, align 4
  br label %352

167:                                              ; preds = %153
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* @SEEK_SET, align 4
  %170 = call i32 @avio_seek(i32* %168, i32 104, i32 %169)
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %189, %167
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ult i32 %172, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %171
  %178 = load i32*, i32** %4, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = mul i32 32, %182
  %184 = zext i32 %183 to i64
  %185 = add nsw i64 %181, %184
  %186 = call i32 @avio_read(i32* %178, i64 %185, i32 32)
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @avio_skip(i32* %187, i32 14)
  br label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %7, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %171

192:                                              ; preds = %171
  br label %198

193:                                              ; preds = %132
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %197, i32* %2, align 4
  br label %352

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198, %122
  br label %200

200:                                              ; preds = %199, %106
  br label %201

201:                                              ; preds = %200, %92
  br label %334

202:                                              ; preds = %39
  %203 = load i32, i32* %6, align 4
  %204 = icmp eq i32 %203, 4
  br i1 %204, label %205, label %331

205:                                              ; preds = %202
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @avio_rl32(i32* %206)
  %208 = add nsw i32 %207, 48
  store i32 %208, i32* %8, align 4
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @avio_skip(i32* %209, i32 80)
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @avio_rl32(i32* %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @avio_rb32(i32* %215)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  switch i32 %217, label %224 [
    i32 1073745921, label %218
    i32 4101, label %218
    i32 1073746049, label %218
    i32 1075838977, label %218
    i32 1073743874, label %221
  ]

218:                                              ; preds = %205, %205, %205, %205
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  store i32 128, i32* %220, align 8
  br label %229

221:                                              ; preds = %205
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  store i32 129, i32* %223, align 8
  br label %229

224:                                              ; preds = %205
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %228, i32* %2, align 4
  br label %352

229:                                              ; preds = %221, %218
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @avio_rl32(i32* %230)
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %239, i32* %2, align 4
  br label %352

240:                                              ; preds = %229
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @avio_skip(i32* %241, i32 6)
  %243 = load i32*, i32** %4, align 8
  %244 = call i8* @avio_rl16(i32* %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %240
  %253 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %253, i32* %2, align 4
  br label %352

254:                                              ; preds = %240
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  switch i32 %257, label %330 [
    i32 128, label %258
    i32 129, label %275
  ]

258:                                              ; preds = %254
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %260 = call i32 @ff_alloc_extradata(%struct.TYPE_14__* %259, i32 34)
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %258
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = call i32 @AVERROR(i32 %266)
  store i32 %267, i32* %2, align 4
  br label %352

268:                                              ; preds = %258
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @memset(i64 %271, i32 0, i32 34)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  store i32 2048, i32* %274, align 4
  br label %330

275:                                              ; preds = %254
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @INT_MAX, align 4
  %280 = sdiv i32 %279, 32
  %281 = icmp sgt i32 %278, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %283, i32* %2, align 4
  br label %352

284:                                              ; preds = %275
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 32, %288
  %290 = call i32 @ff_alloc_extradata(%struct.TYPE_14__* %285, i32 %289)
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %284
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = call i32 @AVERROR(i32 %296)
  store i32 %297, i32* %2, align 4
  br label %352

298:                                              ; preds = %284
  %299 = load i32*, i32** %4, align 8
  %300 = load i32, i32* @SEEK_SET, align 4
  %301 = call i32 @avio_seek(i32* %299, i32 128, i32 %300)
  store i32 0, i32* %7, align 4
  br label %302

302:                                              ; preds = %320, %298
  %303 = load i32, i32* %7, align 4
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ult i32 %303, %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %302
  %309 = load i32*, i32** %4, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* %7, align 4
  %314 = mul i32 32, %313
  %315 = zext i32 %314 to i64
  %316 = add nsw i64 %312, %315
  %317 = call i32 @avio_read(i32* %309, i64 %316, i32 32)
  %318 = load i32*, i32** %4, align 8
  %319 = call i32 @avio_skip(i32* %318, i32 14)
  br label %320

320:                                              ; preds = %308
  %321 = load i32, i32* %7, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %302

323:                                              ; preds = %302
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 8, %326
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  br label %330

330:                                              ; preds = %254, %323, %268
  br label %333

331:                                              ; preds = %202
  %332 = call i32 @av_assert0(i32 0)
  br label %333

333:                                              ; preds = %331, %330
  br label %334

334:                                              ; preds = %333, %201
  %335 = load i32*, i32** %4, align 8
  %336 = load i32, i32* %8, align 4
  %337 = load i32*, i32** %4, align 8
  %338 = call i32 @avio_tell(i32* %337)
  %339 = sub nsw i32 %336, %338
  %340 = call i32 @avio_skip(i32* %335, i32 %339)
  %341 = load i32*, i32** %4, align 8
  %342 = call i32 @avio_tell(i32* %341)
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 0
  store i32 %342, i32* %346, align 4
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %347, i32 64, i32 1, i32 %350)
  store i32 0, i32* %2, align 4
  br label %352

352:                                              ; preds = %334, %295, %282, %265, %252, %238, %224, %193, %164, %151, %86, %72, %36, %26
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
