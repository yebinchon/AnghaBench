; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cpia.c_cpia_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cpia.c_cpia_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64**, i32*, i8*, i32 }
%struct.TYPE_13__ = type { i64*, i64 }

@FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@MAGIC_0 = common dso_local global i64 0, align 8
@MAGIC_1 = common dso_local global i64 0, align 8
@SUBSAMPLE_420 = common dso_local global i64 0, align 8
@SUBSAMPLE_422 = common dso_local global i64 0, align 8
@YUVORDER_YUYV = common dso_local global i64 0, align 8
@YUVORDER_UYVY = common dso_local global i64 0, align 8
@NOT_COMPRESSED = common dso_local global i64 0, align 8
@COMPRESSED = common dso_local global i64 0, align 8
@NO_DECIMATION = common dso_local global i64 0, align 8
@DECIMATION_ENAB = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid header!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"4:2:2 subsampling\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"YUV byte order UYVY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Decimation\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@FF_DECODE_ERROR_INVALID_BITSTREAM = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Frame ended unexpectedly!\0A\00", align 1
@EOL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"Wrong line length %d or line not terminated properly (found 0x%02x)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Decoded data exceeded linesize!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @cpia_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %10, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %14, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %19, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %38, %43
  %45 = icmp slt i64 %37, %44
  br i1 %45, label %106, label %46

46:                                               ; preds = %4
  %47 = load i64*, i64** %14, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAGIC_0, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %106, label %52

52:                                               ; preds = %46
  %53 = load i64*, i64** %14, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAGIC_1, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %106, label %58

58:                                               ; preds = %52
  %59 = load i64*, i64** %14, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 17
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SUBSAMPLE_420, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64*, i64** %14, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 17
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SUBSAMPLE_422, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %106, label %70

70:                                               ; preds = %64, %58
  %71 = load i64*, i64** %14, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 18
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @YUVORDER_YUYV, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i64*, i64** %14, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 18
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @YUVORDER_UYVY, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %106, label %82

82:                                               ; preds = %76, %70
  %83 = load i64*, i64** %14, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 28
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NOT_COMPRESSED, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i64*, i64** %14, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 28
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @COMPRESSED, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %88, %82
  %95 = load i64*, i64** %14, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 29
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NO_DECIMATION, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i64*, i64** %14, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 29
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DECIMATION_ENAB, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %88, %76, %64, %52, %46, %4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %107, i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %5, align 4
  br label %484

111:                                              ; preds = %100, %94
  %112 = load i64*, i64** %14, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 17
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SUBSAMPLE_422, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = call i32 @avpriv_report_missing_feature(%struct.TYPE_15__* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %120, i32* %5, align 4
  br label %484

121:                                              ; preds = %111
  %122 = load i64*, i64** %14, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 18
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @YUVORDER_UYVY, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = call i32 @avpriv_report_missing_feature(%struct.TYPE_15__* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %130, i32* %5, align 4
  br label %484

131:                                              ; preds = %121
  %132 = load i64*, i64** %14, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 29
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DECIMATION_ENAB, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = call i32 @avpriv_report_missing_feature(%struct.TYPE_15__* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %140, i32* %5, align 4
  br label %484

141:                                              ; preds = %131
  %142 = load i64*, i64** %14, align 8
  %143 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64* %144, i64** %15, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %149 = sub nsw i64 %147, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %16, align 4
  %151 = load i64*, i64** %14, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 28
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @NOT_COMPRESSED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %141
  %157 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  br label %168

162:                                              ; preds = %141
  %163 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %162, %156
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %171 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %169, %struct.TYPE_14__* %170, i32 0)
  store i32 %171, i32* %13, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %5, align 4
  br label %484

175:                                              ; preds = %168
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %459, %175
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %469

182:                                              ; preds = %176
  %183 = load i64*, i64** %15, align 8
  %184 = call i32 @AV_RL16(i64* %183)
  store i32 %184, i32* %17, align 4
  %185 = load i64*, i64** %15, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  store i64* %186, i64** %15, align 8
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load i8*, i8** @FF_DECODE_ERROR_INVALID_BITSTREAM, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load i32, i32* @AV_LOG_WARNING, align 4
  %196 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %194, i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %469

197:                                              ; preds = %182
  %198 = load i64*, i64** %15, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @EOL, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %197
  %207 = load i8*, i8** @FF_DECODE_ERROR_INVALID_BITSTREAM, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %211 = load i32, i32* @AV_LOG_WARNING, align 4
  %212 = load i32, i32* %17, align 4
  %213 = load i64*, i64** %15, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %213, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %210, i32 %211, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %212, i64 %218)
  br label %469

220:                                              ; preds = %197
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load i64**, i64*** %222, align 8
  %224 = getelementptr inbounds i64*, i64** %223, i64 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %226, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %225, i64 %233
  store i64* %234, i64** %20, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 2
  %237 = load i64**, i64*** %236, align 8
  %238 = getelementptr inbounds i64*, i64** %237, i64 1
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = ashr i32 %240, 1
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %241, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %239, i64 %248
  store i64* %249, i64** %21, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i64**, i64*** %251, align 8
  %253 = getelementptr inbounds i64*, i64** %252, i64 2
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = ashr i32 %255, 1
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %256, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %254, i64 %263
  store i64* %264, i64** %22, align 8
  %265 = load i64*, i64** %20, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %265, i64 %271
  %273 = getelementptr inbounds i64, i64* %272, i64 -1
  store i64* %273, i64** %23, align 8
  %274 = load i64*, i64** %21, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %274, i64 %280
  %282 = getelementptr inbounds i64, i64* %281, i64 -1
  store i64* %282, i64** %24, align 8
  %283 = load i64*, i64** %22, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %283, i64 %289
  %291 = getelementptr inbounds i64, i64* %290, i64 -1
  store i64* %291, i64** %25, align 8
  %292 = load i32, i32* %11, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %355

295:                                              ; preds = %220
  %296 = load i64*, i64** %14, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 17
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @SUBSAMPLE_420, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %355

301:                                              ; preds = %295
  store i32 0, i32* %12, align 4
  br label %302

302:                                              ; preds = %351, %301
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %17, align 4
  %305 = sub nsw i32 %304, 1
  %306 = icmp slt i32 %303, %305
  br i1 %306, label %307, label %354

307:                                              ; preds = %302
  %308 = load i64*, i64** %20, align 8
  %309 = load i64*, i64** %23, align 8
  %310 = icmp ugt i64* %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %307
  %312 = load i8*, i8** @FF_DECODE_ERROR_INVALID_BITSTREAM, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  store i8* %312, i8** %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %316 = load i32, i32* @AV_LOG_WARNING, align 4
  %317 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %315, i32 %316, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %354

318:                                              ; preds = %307
  %319 = load i64*, i64** %15, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = and i64 %323, 1
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %318
  %327 = load i64*, i64** %14, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 28
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @COMPRESSED, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %342

332:                                              ; preds = %326
  %333 = load i64*, i64** %15, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = ashr i64 %337, 1
  store i64 %338, i64* %18, align 8
  %339 = load i64, i64* %18, align 8
  %340 = load i64*, i64** %20, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 %339
  store i64* %341, i64** %20, align 8
  br label %350

342:                                              ; preds = %326, %318
  %343 = load i64*, i64** %15, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %343, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = load i64*, i64** %20, align 8
  %349 = getelementptr inbounds i64, i64* %348, i32 1
  store i64* %349, i64** %20, align 8
  store i64 %347, i64* %348, align 8
  br label %350

350:                                              ; preds = %342, %332
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %302

354:                                              ; preds = %311, %302
  br label %458

355:                                              ; preds = %295, %220
  %356 = load i64*, i64** %14, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 17
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @SUBSAMPLE_420, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %457

361:                                              ; preds = %355
  store i32 0, i32* %12, align 4
  br label %362

362:                                              ; preds = %455, %361
  %363 = load i32, i32* %12, align 4
  %364 = load i32, i32* %17, align 4
  %365 = sub nsw i32 %364, 4
  %366 = icmp slt i32 %363, %365
  br i1 %366, label %367, label %456

367:                                              ; preds = %362
  %368 = load i64*, i64** %20, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  %370 = load i64*, i64** %23, align 8
  %371 = icmp ugt i64* %369, %370
  br i1 %371, label %380, label %372

372:                                              ; preds = %367
  %373 = load i64*, i64** %21, align 8
  %374 = load i64*, i64** %24, align 8
  %375 = icmp ugt i64* %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %372
  %377 = load i64*, i64** %22, align 8
  %378 = load i64*, i64** %25, align 8
  %379 = icmp ugt i64* %377, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %376, %372, %367
  %381 = load i8*, i8** @FF_DECODE_ERROR_INVALID_BITSTREAM, align 8
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 4
  store i8* %381, i8** %383, align 8
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %385 = load i32, i32* @AV_LOG_WARNING, align 4
  %386 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %384, i32 %385, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %456

387:                                              ; preds = %376
  %388 = load i64*, i64** %15, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = and i64 %392, 1
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %421

395:                                              ; preds = %387
  %396 = load i64*, i64** %14, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 28
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @COMPRESSED, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %421

401:                                              ; preds = %395
  %402 = load i64*, i64** %15, align 8
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i64, i64* %402, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = ashr i64 %406, 1
  store i64 %407, i64* %18, align 8
  %408 = load i64, i64* %18, align 8
  %409 = load i64*, i64** %20, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 %408
  store i64* %410, i64** %20, align 8
  %411 = load i64, i64* %18, align 8
  %412 = ashr i64 %411, 1
  %413 = load i64*, i64** %21, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 %412
  store i64* %414, i64** %21, align 8
  %415 = load i64, i64* %18, align 8
  %416 = ashr i64 %415, 1
  %417 = load i64*, i64** %22, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 %416
  store i64* %418, i64** %22, align 8
  %419 = load i32, i32* %12, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %12, align 4
  br label %455

421:                                              ; preds = %395, %387
  %422 = load i64*, i64** %15, align 8
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = load i64*, i64** %20, align 8
  %428 = getelementptr inbounds i64, i64* %427, i32 1
  store i64* %428, i64** %20, align 8
  store i64 %426, i64* %427, align 8
  %429 = load i64*, i64** %15, align 8
  %430 = load i32, i32* %12, align 4
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %429, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = load i64*, i64** %21, align 8
  %436 = getelementptr inbounds i64, i64* %435, i32 1
  store i64* %436, i64** %21, align 8
  store i64 %434, i64* %435, align 8
  %437 = load i64*, i64** %15, align 8
  %438 = load i32, i32* %12, align 4
  %439 = add nsw i32 %438, 2
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %437, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64*, i64** %20, align 8
  %444 = getelementptr inbounds i64, i64* %443, i32 1
  store i64* %444, i64** %20, align 8
  store i64 %442, i64* %443, align 8
  %445 = load i64*, i64** %15, align 8
  %446 = load i32, i32* %12, align 4
  %447 = add nsw i32 %446, 3
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i64, i64* %445, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = load i64*, i64** %22, align 8
  %452 = getelementptr inbounds i64, i64* %451, i32 1
  store i64* %452, i64** %22, align 8
  store i64 %450, i64* %451, align 8
  %453 = load i32, i32* %12, align 4
  %454 = add nsw i32 %453, 4
  store i32 %454, i32* %12, align 4
  br label %455

455:                                              ; preds = %421, %401
  br label %362

456:                                              ; preds = %380, %362
  br label %457

457:                                              ; preds = %456, %355
  br label %458

458:                                              ; preds = %457, %354
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %11, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %11, align 4
  %462 = load i32, i32* %17, align 4
  %463 = load i64*, i64** %15, align 8
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i64, i64* %463, i64 %464
  store i64* %465, i64** %15, align 8
  %466 = load i32, i32* %17, align 4
  %467 = load i32, i32* %16, align 4
  %468 = sub nsw i32 %467, %466
  store i32 %468, i32* %16, align 4
  br label %176

469:                                              ; preds = %206, %190, %176
  %470 = load i32*, i32** %8, align 8
  store i32 1, i32* %470, align 4
  %471 = load i8*, i8** %7, align 8
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 0
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %473, align 8
  %475 = call i32 @av_frame_ref(i8* %471, %struct.TYPE_14__* %474)
  store i32 %475, i32* %13, align 4
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %469
  %478 = load i32, i32* %13, align 4
  store i32 %478, i32* %5, align 4
  br label %484

479:                                              ; preds = %469
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = trunc i64 %482 to i32
  store i32 %483, i32* %5, align 4
  br label %484

484:                                              ; preds = %479, %477, %173, %137, %127, %117, %106
  %485 = load i32, i32* %5, align 4
  ret i32 %485
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @AV_RL16(i64*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
