; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wvdec.c_wv_read_block_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wvdec.c_wv_read_block_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@WV_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid block header.\0A\00", align 1
@WV_DSD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"WV DSD\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"WV version 0x%03X\00", align 1
@WV_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@wv_rates = common dso_local global i32* null, align 8
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot determine additional parameters\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Insufficient channel information\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid channel info size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Cannot determine custom sampling rate\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"Bits per sample differ, this block: %i, header block: %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Channels differ, this block: %i, header block: %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Sampling rate differ, this block: %i, header block: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @wv_read_block_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wv_read_block_header(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = call i64 @avio_tell(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %36, i32* %3, align 4
  br label %428

37:                                               ; preds = %27, %2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WV_HEADER_SIZE, align 4
  %43 = call i32 @avio_read(%struct.TYPE_19__* %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @WV_HEADER_SIZE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AVERROR_EOF, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %428

56:                                               ; preds = %37
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ff_wv_parse_header(%struct.TYPE_21__* %58, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %66, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %428

70:                                               ; preds = %56
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WV_DSD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = call i32 (%struct.TYPE_20__*, i8*, ...) @avpriv_report_missing_feature(%struct.TYPE_20__* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %81, i32* %3, align 4
  br label %428

82:                                               ; preds = %70
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 1026
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1040
  br i1 %93, label %94, label %102

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.TYPE_20__*, i8*, ...) @avpriv_report_missing_feature(%struct.TYPE_20__* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %101, i32* %3, align 4
  br label %428

102:                                              ; preds = %88
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %428

109:                                              ; preds = %102
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 3
  %116 = add nsw i32 %115, 1
  %117 = shl i32 %116, 3
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @WV_MONO, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = add nsw i32 1, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @WV_MONO, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %109
  %130 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %133

131:                                              ; preds = %109
  %132 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %11, align 4
  %135 = load i32*, i32** @wv_rates, align 8
  %136 = load i32, i32* %12, align 4
  %137 = ashr i32 %136, 23
  %138 = and i32 %137, 15
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %133
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %147, %133
  %154 = phi i1 [ false, %133 ], [ %152, %147 ]
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %10, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %163, %153
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %329, label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %329, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = call i64 @avio_tell(%struct.TYPE_19__* %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %183, %187
  store i64 %188, i64* %13, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %181
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = load i32, i32* @AV_LOG_ERROR, align 4
  %198 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %196, i32 %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %199, i32* %3, align 4
  br label %428

200:                                              ; preds = %181
  br label %201

201:                                              ; preds = %310, %200
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %203 = call i64 @avio_tell(%struct.TYPE_19__* %202)
  %204 = load i64, i64* %13, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %208 = call i32 @avio_feof(%struct.TYPE_19__* %207)
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  br label %211

211:                                              ; preds = %206, %201
  %212 = phi i1 [ false, %201 ], [ %210, %206 ]
  br i1 %212, label %213, label %311

213:                                              ; preds = %211
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = call i32 @avio_r8(%struct.TYPE_19__* %214)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = and i32 %216, 128
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = call i32 @avio_rl24(%struct.TYPE_19__* %220)
  br label %225

222:                                              ; preds = %213
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %224 = call i32 @avio_r8(%struct.TYPE_19__* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi i32 [ %221, %219 ], [ %224, %222 ]
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %15, align 4
  %228 = shl i32 %227, 1
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %14, align 4
  %230 = and i32 %229, 64
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %232, %225
  %236 = load i32, i32* %14, align 4
  %237 = and i32 %236, 63
  switch i32 %237, label %299 [
    i32 13, label %238
    i32 39, label %296
  ]

238:                                              ; preds = %235
  %239 = load i32, i32* %15, align 4
  %240 = icmp sle i32 %239, 1
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %243 = load i32, i32* @AV_LOG_ERROR, align 4
  %244 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %242, i32 %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %245, i32* %3, align 4
  br label %428

246:                                              ; preds = %238
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = call i32 @avio_r8(%struct.TYPE_19__* %247)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %15, align 4
  %250 = sub nsw i32 %249, 2
  switch i32 %250, label %289 [
    i32 0, label %251
    i32 1, label %254
    i32 2, label %257
    i32 3, label %260
    i32 4, label %263
    i32 5, label %276
  ]

251:                                              ; preds = %246
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = call i32 @avio_r8(%struct.TYPE_19__* %252)
  store i32 %253, i32* %11, align 4
  br label %295

254:                                              ; preds = %246
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %256 = call i32 @avio_rl16(%struct.TYPE_19__* %255)
  store i32 %256, i32* %11, align 4
  br label %295

257:                                              ; preds = %246
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %259 = call i32 @avio_rl24(%struct.TYPE_19__* %258)
  store i32 %259, i32* %11, align 4
  br label %295

260:                                              ; preds = %246
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = call i32 @avio_rl32(%struct.TYPE_19__* %261)
  store i32 %262, i32* %11, align 4
  br label %295

263:                                              ; preds = %246
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %265 = call i32 @avio_skip(%struct.TYPE_19__* %264, i32 1)
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %267 = call i32 @avio_r8(%struct.TYPE_19__* %266)
  %268 = and i32 %267, 15
  %269 = shl i32 %268, 8
  %270 = load i32, i32* %10, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = call i32 @avio_rl24(%struct.TYPE_19__* %274)
  store i32 %275, i32* %11, align 4
  br label %295

276:                                              ; preds = %246
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = call i32 @avio_skip(%struct.TYPE_19__* %277, i32 1)
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %280 = call i32 @avio_r8(%struct.TYPE_19__* %279)
  %281 = and i32 %280, 15
  %282 = shl i32 %281, 8
  %283 = load i32, i32* %10, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %10, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %288 = call i32 @avio_rl32(%struct.TYPE_19__* %287)
  store i32 %288, i32* %11, align 4
  br label %295

289:                                              ; preds = %246
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %291 = load i32, i32* @AV_LOG_ERROR, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %290, i32 %291, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %294, i32* %3, align 4
  br label %428

295:                                              ; preds = %276, %263, %260, %257, %254, %251
  br label %303

296:                                              ; preds = %235
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %298 = call i32 @avio_rl24(%struct.TYPE_19__* %297)
  store i32 %298, i32* %8, align 4
  br label %303

299:                                              ; preds = %235
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %301 = load i32, i32* %15, align 4
  %302 = call i32 @avio_skip(%struct.TYPE_19__* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %296, %295
  %304 = load i32, i32* %14, align 4
  %305 = and i32 %304, 64
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %309 = call i32 @avio_skip(%struct.TYPE_19__* %308, i32 1)
  br label %310

310:                                              ; preds = %307, %303
  br label %201

311:                                              ; preds = %211
  %312 = load i32, i32* %8, align 4
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %316 = load i32, i32* @AV_LOG_ERROR, align 4
  %317 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %315, i32 %316, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %318 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %318, i32* %3, align 4
  br label %428

319:                                              ; preds = %311
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %321 = load i64, i64* %13, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %321, %325
  %327 = load i32, i32* @SEEK_SET, align 4
  %328 = call i32 @avio_seek(%struct.TYPE_19__* %320, i64 %326, i32 %327)
  br label %329

329:                                              ; preds = %319, %176, %173
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %329
  %335 = load i32, i32* %9, align 4
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 5
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %334, %329
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %338
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 3
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %343, %338
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %347
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 4
  store i32 %353, i32* %355, align 8
  br label %356

356:                                              ; preds = %352, %347
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %356
  %362 = load i32, i32* %8, align 4
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 6
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %361, %356
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %383

368:                                              ; preds = %365
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %369, %372
  br i1 %373, label %374, label %383

374:                                              ; preds = %368
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %376 = load i32, i32* @AV_LOG_ERROR, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %375, i32 %376, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %377, i32 %380)
  %382 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %382, i32* %3, align 4
  br label %428

383:                                              ; preds = %368, %365
  %384 = load i32, i32* %12, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %406

386:                                              ; preds = %383
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %406, label %391

391:                                              ; preds = %386
  %392 = load i32, i32* %10, align 4
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %392, %395
  br i1 %396, label %397, label %406

397:                                              ; preds = %391
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %399 = load i32, i32* @AV_LOG_ERROR, align 4
  %400 = load i32, i32* %10, align 4
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %398, i32 %399, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %400, i32 %403)
  %405 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %405, i32* %3, align 4
  br label %428

406:                                              ; preds = %391, %386, %383
  %407 = load i32, i32* %12, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %427

409:                                              ; preds = %406
  %410 = load i32, i32* %8, align 4
  %411 = icmp ne i32 %410, -1
  br i1 %411, label %412, label %427

412:                                              ; preds = %409
  %413 = load i32, i32* %8, align 4
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 6
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %413, %416
  br i1 %417, label %418, label %427

418:                                              ; preds = %412
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %420 = load i32, i32* @AV_LOG_ERROR, align 4
  %421 = load i32, i32* %8, align 4
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %419, i32 %420, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %421, i32 %424)
  %426 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %426, i32* %3, align 4
  br label %428

427:                                              ; preds = %412, %409, %406
  store i32 0, i32* %3, align 4
  br label %428

428:                                              ; preds = %427, %418, %397, %374, %314, %289, %241, %195, %108, %94, %78, %65, %54, %35
  %429 = load i32, i32* %3, align 4
  ret i32 %429
}

declare dso_local i64 @avio_tell(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_read(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ff_wv_parse_header(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local i32 @avio_feof(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_r8(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rl24(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rl16(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rl32(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_19__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
