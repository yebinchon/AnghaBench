; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_subframe_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_subframe_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32*, i32*, i32***, i32, i32**, i32, i32***, i32**, i32*, i32*, i64**, %struct.TYPE_5__*, i32*, i32*, i32, i32, i64, i8** }
%struct.TYPE_5__ = type { i32 (i64*, i64*, i32, i32, i32, i32, i32)*, i32 (i64*, i32*, i32, i32**, i32, i32, i32, i32)* }

@DCA_SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Subband sample buffer overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_SUBBANDS = common dso_local global i32 0, align 4
@ff_dca_high_freq_vq = common dso_local global i32 0, align 4
@HEADER_CORE = common dso_local global i32 0, align 4
@ff_dca_scale_factor_quant7 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid LFE scale factor index\0A\00", align 1
@ff_dca_lossless_quant = common dso_local global i32* null, align 8
@ff_dca_lossy_quant = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"DSYNC check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32*, i32*)* @parse_subframe_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_subframe_audio(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %21, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %21, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %6
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 17
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(i32 %52, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %7, align 4
  br label %572

56:                                               ; preds = %6
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 18
  %59 = call i64 @get_bits_left(i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %7, align 4
  br label %572

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %160, %63
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %163

71:                                               ; preds = %65
  %72 = load i32, i32* @DCA_SUBBANDS, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %22, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %23, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %20, align 4
  br label %83

83:                                               ; preds = %100, %71
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %84, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 18
  %96 = call i32 @get_bits(i32* %95, i32 10)
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %75, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %20, align 4
  br label %83

103:                                              ; preds = %83
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %110, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %103
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 14
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32 (i64*, i32*, i32, i32**, i32, i32, i32, i32)*, i32 (i64*, i32*, i32, i32**, i32, i32, i32, i32)** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 13
  %127 = load i64**, i64*** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64*, i64** %127, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* @ff_dca_high_freq_vq, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = load i32***, i32**** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32**, i32*** %135, i64 %137
  %139 = load i32**, i32*** %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %21, align 4
  %157 = call i32 %124(i64* %131, i32* %75, i32 %132, i32** %139, i32 %146, i32 %153, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %119, %103
  %159 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %159)
  br label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %65

163:                                              ; preds = %65
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %247

168:                                              ; preds = %163
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @HEADER_CORE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %247

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 2, %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %176, %183
  store i32 %184, i32* %25, align 4
  %185 = load i32, i32* %25, align 4
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %187 = call i32 @FF_ARRAY_ELEMS(i32* %186)
  %188 = icmp ule i32 %185, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @av_assert1(i32 %189)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 18
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %194 = load i32, i32* %25, align 4
  %195 = call i32 @get_array(i32* %192, i32* %193, i32 %194, i32 8)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 18
  %198 = call i32 @get_bits(i32* %197, i32 8)
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %24, align 4
  %200 = load i32*, i32** @ff_dca_scale_factor_quant7, align 8
  %201 = call i32 @FF_ARRAY_ELEMS(i32* %200)
  %202 = icmp uge i32 %199, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %172
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 17
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @AV_LOG_ERROR, align 4
  %208 = call i32 @av_log(i32 %206, i32 %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %209, i32* %7, align 4
  br label %572

210:                                              ; preds = %172
  %211 = load i32*, i32** @ff_dca_scale_factor_quant7, align 8
  %212 = load i32, i32* %24, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @mul23(i32 4697620, i32 %216)
  store i32 %217, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %218 = load i32*, i32** %13, align 8
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %239, %210
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %25, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %220
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %15, align 4
  %230 = mul nsw i32 %228, %229
  %231 = ashr i32 %230, 4
  %232 = call i8* @clip23(i32 %231)
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 20
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  store i8* %232, i8** %238, align 8
  br label %239

239:                                              ; preds = %224
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %220

244:                                              ; preds = %220
  %245 = load i32, i32* %18, align 4
  %246 = load i32*, i32** %13, align 8
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %244, %168, %163
  store i32 0, i32* %17, align 4
  %248 = load i32*, i32** %12, align 8
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %454, %247
  %251 = load i32, i32* %17, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %251, %258
  br i1 %259, label %260, label %457

260:                                              ; preds = %250
  %261 = load i32, i32* %11, align 4
  store i32 %261, i32* %19, align 4
  br label %262

262:                                              ; preds = %419, %260
  %263 = load i32, i32* %19, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %422

268:                                              ; preds = %262
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 18
  %271 = call i64 @get_bits_left(i32* %270)
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %274, i32* %7, align 4
  br label %572

275:                                              ; preds = %268
  store i32 0, i32* %20, align 4
  br label %276

276:                                              ; preds = %415, %275
  %277 = load i32, i32* %20, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %19, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = icmp slt i32 %277, %284
  br i1 %285, label %286, label %418

286:                                              ; preds = %276
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 7
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %19, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %28, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %299 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %300 = load i32, i32* %28, align 4
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @extract_audio(%struct.TYPE_6__* %298, i32* %299, i32 %300, i32 %301)
  store i32 %302, i32* %26, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %286
  %305 = load i32, i32* %26, align 4
  store i32 %305, i32* %7, align 4
  br label %572

306:                                              ; preds = %286
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = icmp eq i32 %309, 3
  br i1 %310, label %311, label %317

311:                                              ; preds = %306
  %312 = load i32*, i32** @ff_dca_lossless_quant, align 8
  %313 = load i32, i32* %28, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %29, align 4
  br label %323

317:                                              ; preds = %306
  %318 = load i32*, i32** @ff_dca_lossy_quant, align 8
  %319 = load i32, i32* %28, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %29, align 4
  br label %323

323:                                              ; preds = %317, %311
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 9
  %326 = load i32***, i32**** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32**, i32*** %326, i64 %328
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %19, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %20, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %27, align 4
  %339 = load i32, i32* %27, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %323
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* %27, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %341, %323
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 5
  %348 = load i32***, i32**** %347, align 8
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32**, i32*** %348, i64 %350
  %352 = load i32**, i32*** %351, align 8
  %353 = load i32, i32* %20, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32*, i32** %352, i64 %354
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %15, align 4
  br label %373

359:                                              ; preds = %341
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 5
  %362 = load i32***, i32**** %361, align 8
  %363 = load i32, i32* %19, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32**, i32*** %362, i64 %364
  %366 = load i32**, i32*** %365, align 8
  %367 = load i32, i32* %20, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32*, i32** %366, i64 %368
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  %372 = load i32, i32* %371, align 4
  store i32 %372, i32* %15, align 4
  br label %373

373:                                              ; preds = %359, %345
  %374 = load i32, i32* %26, align 4
  %375 = icmp sgt i32 %374, 0
  br i1 %375, label %376, label %395

376:                                              ; preds = %373
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 10
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %28, align 4
  %385 = sub nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  store i32 %388, i32* %30, align 4
  %389 = load i32, i32* %30, align 4
  %390 = load i32, i32* %15, align 4
  %391 = mul nsw i32 %389, %390
  %392 = ashr i32 %391, 22
  %393 = call i8* @clip23(i32 %392)
  %394 = ptrtoint i8* %393 to i32
  store i32 %394, i32* %15, align 4
  br label %395

395:                                              ; preds = %376, %373
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 13
  %398 = load i64**, i64*** %397, align 8
  %399 = load i32, i32* %19, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64*, i64** %398, i64 %400
  %402 = load i64*, i64** %401, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i64, i64* %402, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = load i32, i32* %18, align 4
  %408 = sext i32 %407 to i64
  %409 = add nsw i64 %406, %408
  %410 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %411 = load i32, i32* %29, align 4
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %414 = call i32 @ff_dca_core_dequantize(i64 %409, i32* %410, i32 %411, i32 %412, i32 0, i32 %413)
  br label %415

415:                                              ; preds = %395
  %416 = load i32, i32* %20, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %20, align 4
  br label %276

418:                                              ; preds = %276
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %19, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %19, align 4
  br label %262

422:                                              ; preds = %262
  %423 = load i32, i32* %17, align 4
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 0
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = sub nsw i32 %430, 1
  %432 = icmp eq i32 %423, %431
  br i1 %432, label %438, label %433

433:                                              ; preds = %422
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 19
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %450

438:                                              ; preds = %433, %422
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 18
  %441 = call i32 @get_bits(i32* %440, i32 16)
  %442 = icmp ne i32 %441, 65535
  br i1 %442, label %443, label %450

443:                                              ; preds = %438
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 17
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @AV_LOG_ERROR, align 4
  %448 = call i32 @av_log(i32 %446, i32 %447, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %449 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %449, i32* %7, align 4
  br label %572

450:                                              ; preds = %438, %433
  %451 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %452 = load i32, i32* %18, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %18, align 4
  br label %454

454:                                              ; preds = %450
  %455 = load i32, i32* %17, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %17, align 4
  br label %250

457:                                              ; preds = %250
  %458 = load i32, i32* %11, align 4
  store i32 %458, i32* %19, align 4
  br label %459

459:                                              ; preds = %498, %457
  %460 = load i32, i32* %19, align 4
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %501

465:                                              ; preds = %459
  %466 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 13
  %468 = load i64**, i64*** %467, align 8
  %469 = load i32, i32* %19, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i64*, i64** %468, i64 %470
  %472 = load i64*, i64** %471, align 8
  %473 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 16
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %19, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 15
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %19, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i32 0, i32 4
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %19, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load i32*, i32** %12, align 8
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %21, align 4
  %497 = call i32 @inverse_adpcm(i64* %472, i32 %479, i32 %486, i32 0, i32 %493, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %465
  %499 = load i32, i32* %19, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %19, align 4
  br label %459

501:                                              ; preds = %459
  %502 = load i32, i32* %11, align 4
  store i32 %502, i32* %19, align 4
  br label %503

503:                                              ; preds = %566, %501
  %504 = load i32, i32* %19, align 4
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = icmp slt i32 %504, %507
  br i1 %508, label %509, label %569

509:                                              ; preds = %503
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 11
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %19, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = sub nsw i32 %516, 1
  store i32 %517, i32* %31, align 4
  %518 = load i32, i32* %31, align 4
  %519 = icmp sge i32 %518, 0
  br i1 %519, label %520, label %565

520:                                              ; preds = %509
  %521 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 14
  %523 = load %struct.TYPE_5__*, %struct.TYPE_5__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i32 0, i32 0
  %525 = load i32 (i64*, i64*, i32, i32, i32, i32, i32)*, i32 (i64*, i64*, i32, i32, i32, i32, i32)** %524, align 8
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 13
  %528 = load i64**, i64*** %527, align 8
  %529 = load i32, i32* %19, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i64*, i64** %528, i64 %530
  %532 = load i64*, i64** %531, align 8
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 13
  %535 = load i64**, i64*** %534, align 8
  %536 = load i32, i32* %31, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i64*, i64** %535, i64 %537
  %539 = load i64*, i64** %538, align 8
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 12
  %542 = load i32*, i32** %541, align 8
  %543 = load i32, i32* %19, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %542, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 4
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %19, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %555 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %554, i32 0, i32 4
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %31, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = load i32*, i32** %12, align 8
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %21, align 4
  %564 = call i32 %525(i64* %532, i64* %539, i32 %546, i32 %553, i32 %560, i32 %562, i32 %563)
  br label %565

565:                                              ; preds = %520, %509
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %19, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %19, align 4
  br label %503

569:                                              ; preds = %503
  %570 = load i32, i32* %18, align 4
  %571 = load i32*, i32** %12, align 8
  store i32 %570, i32* %571, align 4
  store i32 0, i32* %7, align 4
  br label %572

572:                                              ; preds = %569, %443, %304, %273, %203, %61, %49
  %573 = load i32, i32* %7, align 4
  ret i32 %573
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @get_bits_left(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_bits(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @get_array(i32*, i32*, i32, i32) #1

declare dso_local i32 @mul23(i32, i32) #1

declare dso_local i8* @clip23(i32) #1

declare dso_local i32 @extract_audio(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @ff_dca_core_dequantize(i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @inverse_adpcm(i64*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
