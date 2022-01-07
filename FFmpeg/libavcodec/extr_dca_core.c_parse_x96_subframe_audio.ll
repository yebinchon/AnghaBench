; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_subframe_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_subframe_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32*, i32***, i32***, i32**, i32, i32*, i32*, %struct.TYPE_6__*, i32*, i32*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 (i32**, i32**, i32, i32, i32, i32, i32)* }

@DCA_SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Subband sample buffer overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_dca_high_freq_vq = common dso_local global i32** null, align 8
@ff_dca_lossless_quant = common dso_local global i32* null, align 8
@ff_dca_lossy_quant = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"X96-DSYNC check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32*)* @parse_x96_subframe_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_x96_subframe_audio(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(i32 %47, i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %5, align 4
  br label %498

51:                                               ; preds = %4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 15
  %54 = call i64 @get_bits_left(i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %5, align 4
  br label %498

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %208, %58
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %211

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %204, %66
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %71, %78
  br i1 %79, label %80, label %207

80:                                               ; preds = %70
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 5
  %83 = load i32***, i32**** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32**, i32*** %83, i64 %85
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32* %95, i32** %16, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i32***, i32**** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32**, i32*** %98, i64 %100
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %102, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %17, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 7
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %203 [
    i32 0, label %124
    i32 1, label %153
  ]

124:                                              ; preds = %80
  %125 = load i32, i32* %17, align 4
  %126 = icmp sle i32 %125, 1
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memset(i32* %128, i32 0, i32 %132)
  br label %152

134:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %148, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = call i32 @rand_x96(%struct.TYPE_7__* %140)
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @mul31(i32 %141, i32 %142)
  %144 = load i32*, i32** %16, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %135

151:                                              ; preds = %135
  br label %152

152:                                              ; preds = %151, %127
  br label %203

153:                                              ; preds = %80
  store i32 0, i32* %11, align 4
  br label %154

154:                                              ; preds = %199, %153
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = sdiv i32 %163, 2
  %165 = icmp slt i32 %155, %164
  br i1 %165, label %166, label %202

166:                                              ; preds = %154
  %167 = load i32**, i32*** @ff_dca_high_freq_vq, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 15
  %170 = call i32 @get_bits(i32* %169, i32 10)
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %167, i64 %171
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %18, align 8
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %195, %166
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %177, 16
  %179 = sub nsw i32 %176, %178
  %180 = call i32 @FFMIN(i32 %179, i32 16)
  %181 = icmp slt i32 %175, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %174
  %183 = load i32*, i32** %18, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %17, align 4
  %189 = mul nsw i32 %187, %188
  %190 = add nsw i32 %189, 8
  %191 = ashr i32 %190, 4
  %192 = call i32 @clip23(i32 %191)
  %193 = load i32*, i32** %16, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %16, align 8
  store i32 %192, i32* %193, align 4
  br label %195

195:                                              ; preds = %182
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %174

198:                                              ; preds = %174
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %154

202:                                              ; preds = %154
  br label %203

203:                                              ; preds = %80, %202, %152
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %70

207:                                              ; preds = %70
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %60

211:                                              ; preds = %60
  store i32 0, i32* %11, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %377, %211
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %215, %222
  br i1 %223, label %224, label %380

224:                                              ; preds = %214
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %342, %224
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %345

232:                                              ; preds = %226
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 15
  %235 = call i64 @get_bits_left(i32* %234)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %238, i32* %5, align 4
  br label %498

239:                                              ; preds = %232
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %13, align 4
  br label %243

243:                                              ; preds = %338, %239
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %244, %251
  br i1 %252, label %253, label %341

253:                                              ; preds = %243
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 7
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %20, align 4
  %266 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %267 = zext i32 %266 to i64
  %268 = call i8* @llvm.stacksave()
  store i8* %268, i8** %21, align 8
  %269 = alloca i32, i64 %267, align 16
  store i64 %267, i64* %22, align 8
  %270 = load i32, i32* %20, align 4
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %253
  store i32 26, i32* %25, align 4
  br label %334

273:                                              ; preds = %253
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %12, align 4
  %277 = call i32 @extract_audio(%struct.TYPE_7__* %274, i32* %269, i32 %275, i32 %276)
  store i32 %277, i32* %19, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = load i32, i32* %19, align 4
  store i32 %280, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %334

281:                                              ; preds = %273
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load i32*, i32** @ff_dca_lossless_quant, align 8
  %288 = load i32, i32* %20, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %23, align 4
  br label %298

292:                                              ; preds = %281
  %293 = load i32*, i32** @ff_dca_lossy_quant, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %23, align 4
  br label %298

298:                                              ; preds = %292, %286
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 6
  %301 = load i32***, i32**** %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32**, i32*** %301, i64 %303
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = ashr i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %305, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = and i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %24, align 4
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 5
  %318 = load i32***, i32**** %317, align 8
  %319 = load i32, i32* %12, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32**, i32*** %318, i64 %320
  %322 = load i32**, i32*** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %24, align 4
  %332 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %333 = call i32 @ff_dca_core_dequantize(i32* %329, i32* %269, i32 %330, i32 %331, i32 0, i32 %332)
  store i32 0, i32* %25, align 4
  br label %334

334:                                              ; preds = %298, %279, %272
  %335 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %335)
  %336 = load i32, i32* %25, align 4
  switch i32 %336, label %500 [
    i32 0, label %337
    i32 26, label %338
    i32 1, label %498
  ]

337:                                              ; preds = %334
  br label %338

338:                                              ; preds = %337, %334
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %13, align 4
  br label %243

341:                                              ; preds = %243
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %12, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %12, align 4
  br label %226

345:                                              ; preds = %226
  %346 = load i32, i32* %11, align 4
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %7, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %353, 1
  %355 = icmp eq i32 %346, %354
  br i1 %355, label %361, label %356

356:                                              ; preds = %345
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 16
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %373

361:                                              ; preds = %356, %345
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 15
  %364 = call i32 @get_bits(i32* %363, i32 16)
  %365 = icmp ne i32 %364, 65535
  br i1 %365, label %366, label %373

366:                                              ; preds = %361
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 14
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @AV_LOG_ERROR, align 4
  %371 = call i32 @av_log(i32 %369, i32 %370, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %372 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %372, i32* %5, align 4
  br label %498

373:                                              ; preds = %361, %356
  %374 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %375 = load i32, i32* %14, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %14, align 4
  br label %377

377:                                              ; preds = %373
  %378 = load i32, i32* %11, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %11, align 4
  br label %214

380:                                              ; preds = %214
  %381 = load i32, i32* %8, align 4
  store i32 %381, i32* %12, align 4
  br label %382

382:                                              ; preds = %424, %380
  %383 = load i32, i32* %12, align 4
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %427

388:                                              ; preds = %382
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 5
  %391 = load i32***, i32**** %390, align 8
  %392 = load i32, i32* %12, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32**, i32*** %391, i64 %393
  %395 = load i32**, i32*** %394, align 8
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 13
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %12, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 12
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 4
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %12, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32*, i32** %9, align 8
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %15, align 4
  %423 = call i32 @inverse_adpcm(i32** %395, i32 %402, i32 %409, i32 %412, i32 %419, i32 %421, i32 %422)
  br label %424

424:                                              ; preds = %388
  %425 = load i32, i32* %12, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %12, align 4
  br label %382

427:                                              ; preds = %382
  %428 = load i32, i32* %8, align 4
  store i32 %428, i32* %12, align 4
  br label %429

429:                                              ; preds = %492, %427
  %430 = load i32, i32* %12, align 4
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = icmp slt i32 %430, %433
  br i1 %434, label %435, label %495

435:                                              ; preds = %429
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 9
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %12, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  store i32 %443, i32* %26, align 4
  %444 = load i32, i32* %26, align 4
  %445 = icmp sge i32 %444, 0
  br i1 %445, label %446, label %491

446:                                              ; preds = %435
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 11
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32 (i32**, i32**, i32, i32, i32, i32, i32)*, i32 (i32**, i32**, i32, i32, i32, i32, i32)** %450, align 8
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 5
  %454 = load i32***, i32**** %453, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32**, i32*** %454, i64 %456
  %458 = load i32**, i32*** %457, align 8
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 5
  %461 = load i32***, i32**** %460, align 8
  %462 = load i32, i32* %26, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32**, i32*** %461, i64 %463
  %465 = load i32**, i32*** %464, align 8
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 10
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %12, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 4
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %12, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 4
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %26, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load i32*, i32** %9, align 8
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %15, align 4
  %490 = call i32 %451(i32** %458, i32** %465, i32 %472, i32 %479, i32 %486, i32 %488, i32 %489)
  br label %491

491:                                              ; preds = %446, %435
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %12, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %12, align 4
  br label %429

495:                                              ; preds = %429
  %496 = load i32, i32* %14, align 4
  %497 = load i32*, i32** %9, align 8
  store i32 %496, i32* %497, align 4
  store i32 0, i32* %5, align 4
  br label %498

498:                                              ; preds = %495, %366, %334, %237, %56, %44
  %499 = load i32, i32* %5, align 4
  ret i32 %499

500:                                              ; preds = %334
  unreachable
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mul31(i32, i32) #1

declare dso_local i32 @rand_x96(%struct.TYPE_7__*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @clip23(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @extract_audio(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @ff_dca_core_dequantize(i32*, i32*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @inverse_adpcm(i32**, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
