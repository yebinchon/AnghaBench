; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mimic.c_mimic_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mimic.c_mimic_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, i64, i64, i64, i32, %struct.TYPE_23__*, i32, i32, %struct.TYPE_19__, i32, %struct.TYPE_22__*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_21__ = type { i32, i32* }

@MIMIC_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"insufficient data\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid width/height!\0A\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Resolution changing\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"decoding must start with keyframe\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*)* @mimic_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mimic_decode_frame(%struct.TYPE_22__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MIMIC_HEADER_SIZE, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MIMIC_HEADER_SIZE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(%struct.TYPE_22__* %38, i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %5, align 4
  br label %333

42:                                               ; preds = %4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @MIMIC_HEADER_SIZE, align 4
  %45 = call i32 @bytestream2_init(i32* %14, i32* %43, i32 %44)
  %46 = call i32 @bytestream2_skip(i32* %14, i32 2)
  %47 = call i32 @bytestream2_get_le16u(i32* %14)
  store i32 %47, i32* %18, align 4
  %48 = call i32 @bytestream2_get_le16u(i32* %14)
  store i32 %48, i32* %16, align 4
  %49 = call i32 @bytestream2_get_le16u(i32* %14)
  store i32 %49, i32* %17, align 4
  %50 = call i32 @bytestream2_skip(i32* %14, i32 4)
  %51 = call i32 @bytestream2_get_le32u(i32* %14)
  store i32 %51, i32* %15, align 4
  %52 = call i32 @bytestream2_get_byteu(i32* %14)
  store i32 %52, i32* %19, align 4
  %53 = call i32 @bytestream2_skip(i32* %14, i32 3)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 10
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = icmp ne %struct.TYPE_22__* %56, null
  br i1 %57, label %127, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 160
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 120
  br i1 %63, label %75, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 320
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %68, 240
  br i1 %69, label %75, label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 @av_log(%struct.TYPE_22__* %71, i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %5, align 4
  br label %333

75:                                               ; preds = %67, %61
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @ff_set_dimensions(%struct.TYPE_22__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %5, align 4
  br label %333

84:                                               ; preds = %75
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 10
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %87, align 8
  %88 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %123, %84
  %92 = load i32, i32* %21, align 4
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %126

94:                                               ; preds = %91
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = add nsw i32 3, %100
  %102 = call i32 @AV_CEIL_RSHIFT(i32 %95, i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 11
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 3, %114
  %116 = ashr i32 %109, %115
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %94
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %91

126:                                              ; preds = %91
  br label %148

127:                                              ; preds = %42
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 10
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %128, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 10
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %136, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135, %127
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = call i32 @avpriv_request_sample(%struct.TYPE_22__* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %146, i32* %5, align 4
  br label %333

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %126
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %151
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = call i32 @av_log(%struct.TYPE_22__* %167, i32 %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %5, align 4
  br label %333

171:                                              ; preds = %151, %148
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i64 %178
  %180 = call i32 @ff_thread_release_buffer(%struct.TYPE_22__* %172, %struct.TYPE_23__* %179)
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %171
  %184 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %187

185:                                              ; preds = %171
  %186 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  store i32 %188, i32* %198, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i64 %205
  %207 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %208 = call i32 @ff_thread_get_buffer(%struct.TYPE_22__* %199, %struct.TYPE_23__* %206, i32 %207)
  store i32 %208, i32* %20, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %187
  %211 = load i32, i32* %20, align 4
  store i32 %211, i32* %5, align 4
  br label %333

212:                                              ; preds = %187
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = sub i64 %220, 1
  %222 = and i64 %221, 15
  %223 = trunc i64 %222 to i32
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %227 = call i32 @ff_thread_finish_setup(%struct.TYPE_22__* %226)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 9
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @av_fast_padded_malloc(i32* %229, i32* %231, i32 %232)
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %212
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = call i32 @AVERROR(i32 %239)
  store i32 %240, i32* %5, align 4
  br label %333

241:                                              ; preds = %212
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %244, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load i32*, i32** %10, align 8
  %250 = load i32, i32* @MIMIC_HEADER_SIZE, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %12, align 4
  %254 = ashr i32 %253, 2
  %255 = call i32 %245(i32 %248, i32* %252, i32 %254)
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 7
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = shl i32 %261, 3
  %263 = call i32 @init_get_bits(i32* %257, i32 %260, i32 %262)
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = call i32 @decode(%struct.TYPE_20__* %264, i32 %265, i32 %266, i32 %270)
  store i32 %271, i32* %20, align 4
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 5
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %273, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i64 %277
  %279 = load i32, i32* @INT_MAX, align 4
  %280 = call i32 @ff_thread_report_progress(%struct.TYPE_23__* %278, i32 %279, i32 0)
  %281 = load i32, i32* %20, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %241
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @FF_THREAD_FRAME, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %283
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %293, align 8
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i64 %297
  %299 = call i32 @ff_thread_release_buffer(%struct.TYPE_22__* %291, %struct.TYPE_23__* %298)
  br label %300

300:                                              ; preds = %290, %283
  %301 = load i32, i32* %20, align 4
  store i32 %301, i32* %5, align 4
  br label %333

302:                                              ; preds = %241
  %303 = load i8*, i8** %7, align 8
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %305, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = call i32 @av_frame_ref(i8* %303, %struct.TYPE_18__* %312)
  store i32 %313, i32* %20, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %302
  %316 = load i32, i32* %20, align 4
  store i32 %316, i32* %5, align 4
  br label %333

317:                                              ; preds = %302
  %318 = load i32*, i32** %8, align 8
  store i32 1, i32* %318, align 4
  %319 = load i8*, i8** %7, align 8
  %320 = call i32 @flip_swap_frame(i8* %319)
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 1
  store i64 %323, i64* %325, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 2
  store i64 %329, i64* %331, align 8
  %332 = load i32, i32* %11, align 4
  store i32 %332, i32* %5, align 4
  br label %333

333:                                              ; preds = %317, %315, %300, %238, %210, %166, %143, %82, %70, %37
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @bytestream2_get_le32u(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @ff_thread_release_buffer(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_22__*) #1

declare dso_local i32 @av_fast_padded_malloc(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @decode(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @ff_thread_report_progress(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @flip_swap_frame(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
