; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ralf.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32*, i32, i8**, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i64* }

@RALF_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Wrong packet's breath smells of wrong data!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Wrong packet tails are wrong!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"too short packets are too short!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"short packets are short!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"I'm pedaling backwards\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Sir, I got carsick in your office. Not decoding the rest of packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %103

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @AV_RB16(i32* %37)
  %39 = add nsw i32 %38, 7
  %40 = ashr i32 %39, 3
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, 3
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %32
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RALF_MAX_PKT_SIZE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %32
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(%struct.TYPE_14__* %54, i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %5, align 4
  br label %329

58:                                               ; preds = %47
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 2, %65
  %67 = call i64 @memcmp(i32* %61, i32* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 @av_log(%struct.TYPE_14__* %70, i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %5, align 4
  br label %329

74:                                               ; preds = %58
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %19, align 8
  %78 = load i32, i32* @RALF_MAX_PKT_SIZE, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %21, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @RALF_MAX_PKT_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 2
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @memcpy(i32* %88, i32* %95, i32 %101)
  br label %133

103:                                              ; preds = %4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RALF_MAX_PKT_SIZE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i32* %112, i32* %115, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i32*, i32** %8, align 8
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %5, align 4
  br label %329

126:                                              ; preds = %103
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %19, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %21, align 4
  br label %133

133:                                              ; preds = %126, %74
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = call i32 @ff_get_buffer(%struct.TYPE_14__* %139, %struct.TYPE_13__* %140, i32 0)
  store i32 %141, i32* %14, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %5, align 4
  br label %329

145:                                              ; preds = %133
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  store i32* %151, i32** %12, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %13, align 8
  %158 = load i32, i32* %21, align 4
  %159 = icmp slt i32 %158, 5
  br i1 %159, label %160, label %165

160:                                              ; preds = %145
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 @av_log(%struct.TYPE_14__* %161, i32 %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %164, i32* %5, align 4
  br label %329

165:                                              ; preds = %145
  %166 = load i32*, i32** %19, align 8
  %167 = call i32 @AV_RB16(i32* %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 7
  %170 = ashr i32 %169, 3
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 3
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = load i32, i32* @AV_LOG_ERROR, align 4
  %178 = call i32 @av_log(%struct.TYPE_14__* %176, i32 %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %179, i32* %5, align 4
  br label %329

180:                                              ; preds = %165
  %181 = load i32*, i32** %19, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @init_get_bits(i32* %15, i32* %182, i32 %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %223, %180
  %188 = call i64 @get_bits_left(i32* %15)
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %228

190:                                              ; preds = %187
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 13, %193
  %195 = call i8* @get_bits(i32* %15, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %196, i32* %203, align 4
  %204 = call i64 @get_bits1(i32* %15)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %190
  %207 = call i8* @get_bits(i32* %15, i32 9)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 5
  %210 = load i8**, i8*** %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i8*, i8** %210, i64 %213
  store i8* %207, i8** %214, align 8
  br label %223

215:                                              ; preds = %190
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 5
  %218 = load i8**, i8*** %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i8*, i8** %218, i64 %221
  store i8* null, i8** %222, align 8
  br label %223

223:                                              ; preds = %215, %206
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %225, align 8
  br label %187

228:                                              ; preds = %187
  %229 = load i32*, i32** %19, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  store i32* %233, i32** %20, align 8
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %17, align 4
  %236 = sub nsw i32 %234, %235
  %237 = sub nsw i32 %236, 2
  store i32 %237, i32* %22, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 4
  store i32 0, i32* %239, align 8
  store i32 0, i32* %18, align 4
  br label %240

240:                                              ; preds = %311, %228
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp ult i64 %242, %245
  br i1 %246, label %247, label %314

247:                                              ; preds = %240
  %248 = load i32, i32* %22, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %248, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %247
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %259 = load i32, i32* @AV_LOG_ERROR, align 4
  %260 = call i32 @av_log(%struct.TYPE_14__* %258, i32 %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %314

261:                                              ; preds = %247
  %262 = load i32*, i32** %20, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %18, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %269, 8
  %271 = call i32 @init_get_bits(i32* %15, i32* %262, i32 %270)
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = load i32*, i32** %12, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %273, i64 %277
  %279 = load i32*, i32** %13, align 8
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = call i64 @decode_block(%struct.TYPE_14__* %272, i32* %15, i32* %278, i32* %284)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %261
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %289 = load i32, i32* @AV_LOG_ERROR, align 4
  %290 = call i32 @av_log(%struct.TYPE_14__* %288, i32 %289, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  br label %314

291:                                              ; preds = %261
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %20, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %20, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %22, align 4
  %310 = sub nsw i32 %309, %308
  store i32 %310, i32* %22, align 4
  br label %311

311:                                              ; preds = %291
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %18, align 4
  br label %240

314:                                              ; preds = %287, %257, %240
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = icmp sgt i32 %322, 0
  %324 = zext i1 %323 to i32
  %325 = load i32*, i32** %8, align 8
  store i32 %324, i32* %325, align 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  store i32 %328, i32* %5, align 4
  br label %329

329:                                              ; preds = %314, %175, %160, %143, %109, %69, %53
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @decode_block(%struct.TYPE_14__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
