; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xbr_subframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xbr_subframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32***, i32, i32, i64, i64** }

@DCA_CHANNELS = common dso_local global i32 0, align 4
@DCA_SUBBANDS = common dso_local global i32 0, align 4
@DCA_SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Subband sample buffer overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_ABITS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid XBR bit allocation index\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid number of bits for XBR scale factor index\0A\00", align 1
@ff_dca_scale_factor_quant7 = common dso_local global i32* null, align 8
@ff_dca_scale_factor_quant6 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid XBR scale factor index\0A\00", align 1
@ff_dca_lossless_quant = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"XBR-DSYNC check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*, i32, i32, i32*)* @parse_xbr_subframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_xbr_subframe(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %38 = load i32, i32* @DCA_CHANNELS, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %16, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %17, align 8
  %42 = load i32, i32* @DCA_CHANNELS, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* @DCA_SUBBANDS, align 4
  %45 = zext i32 %44 to i64
  %46 = mul nuw i64 %43, %45
  %47 = alloca i32, i64 %46, align 16
  store i64 %43, i64* %18, align 8
  store i64 %45, i64* %19, align 8
  %48 = load i32, i32* @DCA_CHANNELS, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %20, align 8
  %51 = load i32, i32* @DCA_CHANNELS, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, i32* @DCA_SUBBANDS, align 4
  %54 = zext i32 %53 to i64
  %55 = mul nuw i64 %52, %54
  %56 = alloca [2 x i32], i64 %55, align 16
  store i64 %52, i64* %21, align 8
  store i64 %54, i64* %22, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %58, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %7
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 @av_log(i32 %76, i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

80:                                               ; preds = %7
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = call i64 @get_bits_left(i32* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %24, align 4
  br label %89

89:                                               ; preds = %101, %87
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = call i32 @get_bits(i32* %95, i32 2)
  %97 = add nsw i32 %96, 2
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %41, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %24, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %24, align 4
  br label %106

106:                                              ; preds = %156, %104
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %106
  store i32 0, i32* %25, align 4
  br label %111

111:                                              ; preds = %152, %110
  %112 = load i32, i32* %25, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %155

119:                                              ; preds = %111
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %41, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @get_bits(i32* %121, i32 %125)
  %127 = load i32, i32* %24, align 4
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, %45
  %130 = getelementptr inbounds i32, i32* %47, i64 %129
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %126, i32* %133, align 4
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %45
  %137 = getelementptr inbounds i32, i32* %47, i64 %136
  %138 = load i32, i32* %25, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DCA_ABITS_MAX, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %119
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @AV_LOG_ERROR, align 4
  %149 = call i32 @av_log(i32 %147, i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %150, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

151:                                              ; preds = %119
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %25, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %25, align 4
  br label %111

155:                                              ; preds = %111
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %24, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %24, align 4
  br label %106

159:                                              ; preds = %106
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %24, align 4
  br label %161

161:                                              ; preds = %185, %159
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %161
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = call i32 @get_bits(i32* %167, i32 3)
  %169 = load i32, i32* %24, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %50, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %50, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %165
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @AV_LOG_ERROR, align 4
  %182 = call i32 @av_log(i32 %180, i32 %181, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %183 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %183, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  br label %161

188:                                              ; preds = %161
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %24, align 4
  br label %190

190:                                              ; preds = %319, %188
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %11, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %322

194:                                              ; preds = %190
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %24, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 5
  br i1 %202, label %203, label %207

203:                                              ; preds = %194
  %204 = load i32*, i32** @ff_dca_scale_factor_quant7, align 8
  store i32* %204, i32** %28, align 8
  %205 = load i32*, i32** @ff_dca_scale_factor_quant7, align 8
  %206 = call i32 @FF_ARRAY_ELEMS(i32* %205)
  store i32 %206, i32* %29, align 4
  br label %211

207:                                              ; preds = %194
  %208 = load i32*, i32** @ff_dca_scale_factor_quant6, align 8
  store i32* %208, i32** %28, align 8
  %209 = load i32*, i32** @ff_dca_scale_factor_quant6, align 8
  %210 = call i32 @FF_ARRAY_ELEMS(i32* %209)
  store i32 %210, i32* %29, align 4
  br label %211

211:                                              ; preds = %207, %203
  store i32 0, i32* %25, align 4
  br label %212

212:                                              ; preds = %315, %211
  %213 = load i32, i32* %25, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* %24, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %213, %218
  br i1 %219, label %220, label %318

220:                                              ; preds = %212
  %221 = load i32, i32* %24, align 4
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %222, %45
  %224 = getelementptr inbounds i32, i32* %47, i64 %223
  %225 = load i32, i32* %25, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %314

230:                                              ; preds = %220
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 5
  %233 = load i32, i32* %24, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %50, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @get_bits(i32* %232, i32 %236)
  store i32 %237, i32* %30, align 4
  %238 = load i32, i32* %30, align 4
  %239 = load i32, i32* %29, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @AV_LOG_ERROR, align 4
  %246 = call i32 @av_log(i32 %244, i32 %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %247 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %247, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

248:                                              ; preds = %230
  %249 = load i32*, i32** %28, align 8
  %250 = load i32, i32* %30, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, %54
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 %256
  %258 = load i32, i32* %25, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %257, i64 %259
  %261 = getelementptr inbounds [2 x i32], [2 x i32]* %260, i64 0, i64 0
  store i32 %253, i32* %261, align 8
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %313

264:                                              ; preds = %248
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load i32***, i32**** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32**, i32*** %267, i64 %269
  %271 = load i32**, i32*** %270, align 8
  %272 = load i32, i32* %24, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %25, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %313

281:                                              ; preds = %264
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 5
  %284 = load i32, i32* %24, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %50, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @get_bits(i32* %283, i32 %287)
  store i32 %288, i32* %30, align 4
  %289 = load i32, i32* %30, align 4
  %290 = load i32, i32* %29, align 4
  %291 = icmp sge i32 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %281
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @AV_LOG_ERROR, align 4
  %297 = call i32 @av_log(i32 %295, i32 %296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %298 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %298, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

299:                                              ; preds = %281
  %300 = load i32*, i32** %28, align 8
  %301 = load i32, i32* %30, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %24, align 4
  %306 = sext i32 %305 to i64
  %307 = mul nsw i64 %306, %54
  %308 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 %307
  %309 = load i32, i32* %25, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %308, i64 %310
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %311, i64 0, i64 1
  store i32 %304, i32* %312, align 4
  br label %313

313:                                              ; preds = %299, %264, %248
  br label %314

314:                                              ; preds = %313, %220
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %25, align 4
  br label %212

318:                                              ; preds = %212
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %24, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %24, align 4
  br label %190

322:                                              ; preds = %190
  store i32 0, i32* %23, align 4
  %323 = load i32*, i32** %15, align 8
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %26, align 4
  br label %325

325:                                              ; preds = %506, %322
  %326 = load i32, i32* %23, align 4
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp slt i32 %326, %333
  br i1 %334, label %335, label %509

335:                                              ; preds = %325
  %336 = load i32, i32* %10, align 4
  store i32 %336, i32* %24, align 4
  br label %337

337:                                              ; preds = %471, %335
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* %11, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %474

341:                                              ; preds = %337
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 5
  %344 = call i64 @get_bits_left(i32* %343)
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %347, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

348:                                              ; preds = %341
  store i32 0, i32* %25, align 4
  br label %349

349:                                              ; preds = %467, %348
  %350 = load i32, i32* %25, align 4
  %351 = load i32*, i32** %12, align 8
  %352 = load i32, i32* %24, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp slt i32 %350, %355
  br i1 %356, label %357, label %470

357:                                              ; preds = %349
  %358 = load i32, i32* %24, align 4
  %359 = sext i32 %358 to i64
  %360 = mul nsw i64 %359, %45
  %361 = getelementptr inbounds i32, i32* %47, i64 %360
  %362 = load i32, i32* %25, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %33, align 4
  %366 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %367 = zext i32 %366 to i64
  %368 = call i8* @llvm.stacksave()
  store i8* %368, i8** %34, align 8
  %369 = alloca i32, i64 %367, align 16
  store i64 %367, i64* %35, align 8
  %370 = load i32, i32* %33, align 4
  %371 = icmp sgt i32 %370, 7
  br i1 %371, label %372, label %379

372:                                              ; preds = %357
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 5
  %375 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %376 = load i32, i32* %33, align 4
  %377 = sub nsw i32 %376, 3
  %378 = call i32 @get_array(i32* %374, i32* %369, i32 %375, i32 %377)
  br label %392

379:                                              ; preds = %357
  %380 = load i32, i32* %33, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %379
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %384 = load i32, i32* %33, align 4
  %385 = call i32 @parse_block_codes(%struct.TYPE_4__* %383, i32* %369, i32 %384)
  store i32 %385, i32* %31, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = load i32, i32* %31, align 4
  store i32 %388, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %463

389:                                              ; preds = %382
  br label %391

390:                                              ; preds = %379
  store i32 28, i32* %27, align 4
  br label %463

391:                                              ; preds = %389
  br label %392

392:                                              ; preds = %391, %372
  %393 = load i32*, i32** @ff_dca_lossless_quant, align 8
  %394 = load i32, i32* %33, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %36, align 4
  %398 = load i32, i32* %13, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %416

400:                                              ; preds = %392
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  %403 = load i32***, i32**** %402, align 8
  %404 = load i32, i32* %14, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32**, i32*** %403, i64 %405
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %24, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %25, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %32, align 4
  br label %417

416:                                              ; preds = %392
  store i32 0, i32* %32, align 4
  br label %417

417:                                              ; preds = %416, %400
  %418 = load i32, i32* %32, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %417
  %421 = load i32, i32* %23, align 4
  %422 = load i32, i32* %32, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %434

424:                                              ; preds = %420, %417
  %425 = load i32, i32* %24, align 4
  %426 = sext i32 %425 to i64
  %427 = mul nsw i64 %426, %54
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 %427
  %429 = load i32, i32* %25, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [2 x i32], [2 x i32]* %428, i64 %430
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %431, i64 0, i64 0
  %433 = load i32, i32* %432, align 8
  store i32 %433, i32* %37, align 4
  br label %444

434:                                              ; preds = %420
  %435 = load i32, i32* %24, align 4
  %436 = sext i32 %435 to i64
  %437 = mul nsw i64 %436, %54
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 %437
  %439 = load i32, i32* %25, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [2 x i32], [2 x i32]* %438, i64 %440
  %442 = getelementptr inbounds [2 x i32], [2 x i32]* %441, i64 0, i64 1
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %37, align 4
  br label %444

444:                                              ; preds = %434, %424
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 7
  %447 = load i64**, i64*** %446, align 8
  %448 = load i32, i32* %24, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i64*, i64** %447, i64 %449
  %451 = load i64*, i64** %450, align 8
  %452 = load i32, i32* %25, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %451, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = load i32, i32* %26, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %455, %457
  %459 = load i32, i32* %36, align 4
  %460 = load i32, i32* %37, align 4
  %461 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %462 = call i32 @ff_dca_core_dequantize(i64 %458, i32* %369, i32 %459, i32 %460, i32 1, i32 %461)
  store i32 0, i32* %27, align 4
  br label %463

463:                                              ; preds = %444, %390, %387
  %464 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %464)
  %465 = load i32, i32* %27, align 4
  switch i32 %465, label %512 [
    i32 0, label %466
    i32 28, label %467
  ]

466:                                              ; preds = %463
  br label %467

467:                                              ; preds = %466, %463
  %468 = load i32, i32* %25, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %25, align 4
  br label %349

470:                                              ; preds = %349
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %24, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %24, align 4
  br label %337

474:                                              ; preds = %337
  %475 = load i32, i32* %23, align 4
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 0
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %14, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = sub nsw i32 %482, 1
  %484 = icmp eq i32 %475, %483
  br i1 %484, label %490, label %485

485:                                              ; preds = %474
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 6
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %502

490:                                              ; preds = %485, %474
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 5
  %493 = call i32 @get_bits(i32* %492, i32 16)
  %494 = icmp ne i32 %493, 65535
  br i1 %494, label %495, label %502

495:                                              ; preds = %490
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* @AV_LOG_ERROR, align 4
  %500 = call i32 @av_log(i32 %498, i32 %499, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %501 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %501, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

502:                                              ; preds = %490, %485
  %503 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %504 = load i32, i32* %26, align 4
  %505 = add nsw i32 %504, %503
  store i32 %505, i32* %26, align 4
  br label %506

506:                                              ; preds = %502
  %507 = load i32, i32* %23, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %23, align 4
  br label %325

509:                                              ; preds = %325
  %510 = load i32, i32* %26, align 4
  %511 = load i32*, i32** %15, align 8
  store i32 %510, i32* %511, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %512

512:                                              ; preds = %509, %495, %463, %346, %292, %241, %177, %144, %85, %73
  %513 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %513)
  %514 = load i32, i32* %8, align 4
  ret i32 %514
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log(i32, i32, i8*) #2

declare dso_local i64 @get_bits_left(i32*) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #2

declare dso_local i32 @get_array(i32*, i32*, i32, i32) #2

declare dso_local i32 @parse_block_codes(%struct.TYPE_4__*, i32*, i32) #2

declare dso_local i32 @ff_dca_core_dequantize(i64, i32*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
