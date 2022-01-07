; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafdec.c_read_kuki_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafdec.c_read_kuki_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__**, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i8*, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid AAC magic cookie\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_ALAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid ALAC magic cookie\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to read preamble\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"frmaalac\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to read kuki header\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"alac\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to read new kuki header\0A\00", align 1
@AV_CODEC_ID_OPUS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"multichannel Opus in CAF\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ALAC_HEADER = common dso_local global i32 0, align 4
@ALAC_NEW_KUKI = common dso_local global i32 0, align 4
@ALAC_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @read_kuki_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_kuki_chunk(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [12 x i8], align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  store i32 -1, i32* %3, align 4
  br label %257

28:                                               ; preds = %21
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %28
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @avio_tell(i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ff_mov_read_esds(%struct.TYPE_11__* %39, i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @avio_tell(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %36
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %50, %36
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = call i32 @av_log(%struct.TYPE_11__* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %3, align 4
  br label %257

70:                                               ; preds = %57
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @avio_skip(i32* %71, i32 %72)
  br label %256

74:                                               ; preds = %28
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %213

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 24
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = call i32 @av_log(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @avio_skip(i32* %89, i32 %90)
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %3, align 4
  br label %257

93:                                               ; preds = %82
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 0
  %96 = call i32 @avio_read(i32* %94, i8* %95, i32 12)
  %97 = icmp ne i32 %96, 12
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(%struct.TYPE_11__* %99, i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %3, align 4
  br label %257

103:                                              ; preds = %93
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = call i32 @av_freep(i8** %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call i64 @ff_alloc_extradata(%struct.TYPE_12__* %111, i32 36)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %257

117:                                              ; preds = %103
  %118 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 4
  %119 = call i32 @memcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %159, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 48
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = call i32 @av_log(%struct.TYPE_11__* %125, i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = call i32 @av_freep(i8** %131)
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %3, align 4
  br label %257

134:                                              ; preds = %121
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @avio_read(i32* %135, i8* %140, i32 36)
  %142 = icmp ne i32 %141, 36
  br i1 %142, label %143, label %153

143:                                              ; preds = %134
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 @av_log(%struct.TYPE_11__* %144, i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = call i32 @av_freep(i8** %150)
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %3, align 4
  br label %257

153:                                              ; preds = %134
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sub nsw i32 %155, 12
  %157 = sub nsw i32 %156, 36
  %158 = call i32 @avio_skip(i32* %154, i32 %157)
  br label %212

159:                                              ; preds = %117
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @AV_WB32(i8* %164, i32 36)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  %172 = call i32 @memcpy(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  %179 = call i32 @AV_WB32(i8* %178, i32 0)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 12
  %186 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 0
  %187 = call i32 @memcpy(i8* %185, i8* %186, i32 12)
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 24
  %195 = call i32 @avio_read(i32* %188, i8* %194, i32 12)
  %196 = icmp ne i32 %195, 12
  br i1 %196, label %197, label %207

197:                                              ; preds = %159
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = load i32, i32* @AV_LOG_ERROR, align 4
  %200 = call i32 @av_log(%struct.TYPE_11__* %198, i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = call i32 @av_freep(i8** %204)
  %206 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %206, i32* %3, align 4
  br label %257

207:                                              ; preds = %159
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sub nsw i32 %209, 24
  %211 = call i32 @avio_skip(i32* %208, i32 %210)
  br label %212

212:                                              ; preds = %207, %153
  br label %255

213:                                              ; preds = %74
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %236

221:                                              ; preds = %213
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 2
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %230 = call i32 @avpriv_request_sample(%struct.TYPE_11__* %229, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %231 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %231, i32* %3, align 4
  br label %257

232:                                              ; preds = %221
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @avio_skip(i32* %233, i32 %234)
  br label %254

236:                                              ; preds = %213
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = call i32 @av_freep(i8** %240)
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i64 @ff_get_extradata(%struct.TYPE_11__* %242, %struct.TYPE_12__* %245, i32* %246, i32 %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %236
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = call i32 @AVERROR(i32 %251)
  store i32 %252, i32* %3, align 4
  br label %257

253:                                              ; preds = %236
  br label %254

254:                                              ; preds = %253, %232
  br label %255

255:                                              ; preds = %254, %212
  br label %256

256:                                              ; preds = %255, %70
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %250, %228, %197, %143, %124, %114, %98, %85, %65, %27
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @ff_mov_read_esds(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @AV_WB32(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @ff_get_extradata(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
