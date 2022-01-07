; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus.c_ff_celt_quant_bands.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus.c_ff_celt_quant_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64*, i32, %struct.TYPE_10__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_10__ = type { float*, i32* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)* }

@ff_celt_freq_bands = common dso_local global i32* null, align 8
@ff_celt_freq_range = common dso_local global i32* null, align 8
@CELT_SPREAD_AGGRESSIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_celt_quant_bands(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [176 x float], align 16
  %6 = alloca [1600 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 0
  %28 = getelementptr inbounds float, float* %27, i64 800
  store float* %28, float** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %606, %2
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %609

46:                                               ; preds = %40
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %47, align 4
  %53 = getelementptr inbounds i32, i32* %47, i64 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %53, align 4
  %59 = load i32*, i32** @ff_celt_freq_bands, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32*, i32** @ff_celt_freq_range, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 14
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float* %85, float** %16, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %100

90:                                               ; preds = %46
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 14
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  br label %101

100:                                              ; preds = %46
  br label %101

101:                                              ; preds = %100, %90
  %102 = phi float* [ %99, %90 ], [ null, %100 ]
  store float* %102, float** %17, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @opus_rc_tell_frac(i32* %103)
  store i32 %104, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i32, i32* %20, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %101
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %20, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp sle i32 %123, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %116
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @FFMIN(i32 3, i32 %137)
  %139 = sdiv i32 %132, %138
  store i32 %139, i32* %23, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 10
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %150, %151
  %153 = call i32 @FFMIN(i32 %143, i32 %152)
  %154 = call i32 @av_clip_uintp2(i32 %153, i32 14)
  store i32 %154, i32* %22, align 4
  br label %155

155:                                              ; preds = %129, %116
  %156 = load i32*, i32** @ff_celt_freq_bands, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @ff_celt_freq_range, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %160, %165
  %167 = load i32*, i32** @ff_celt_freq_bands, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %166, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %155
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  %181 = icmp eq i32 %176, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %175, %155
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %188, %185, %175
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  %196 = icmp eq i32 %191, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %190
  %198 = load i32*, i32** @ff_celt_freq_range, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @ff_celt_freq_range, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %202, %208
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %209, %212
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 %215
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %24, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 %220
  %222 = load i32, i32* %24, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = call i32 @memcpy(float* %216, float* %221, i32 %225)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %247

231:                                              ; preds = %197
  %232 = load float*, float** %7, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load float*, float** %7, align 8
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %24, align 4
  %239 = sub nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %236, i64 %240
  %242 = load i32, i32* %24, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = trunc i64 %244 to i32
  %246 = call i32 @memcpy(float* %235, float* %241, i32 %245)
  br label %247

247:                                              ; preds = %231, %197
  br label %248

248:                                              ; preds = %247, %190
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %371

251:                                              ; preds = %248
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 11
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @CELT_SPREAD_AGGRESSIVE, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %271, label %257

257:                                              ; preds = %251
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %271, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 12
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %271, label %371

271:                                              ; preds = %262, %257, %251
  %272 = load i32*, i32** @ff_celt_freq_bands, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** @ff_celt_freq_bands, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** @ff_celt_freq_range, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %283, %288
  %290 = call i32 @FFMAX(i32 %278, i32 %289)
  store i32 %290, i32* %21, align 4
  %291 = load i32, i32* %10, align 4
  store i32 %291, i32* %25, align 4
  br label %292

292:                                              ; preds = %301, %271
  %293 = load i32*, i32** @ff_celt_freq_bands, align 8
  %294 = load i32, i32* %25, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %25, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %21, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  br label %292

302:                                              ; preds = %292
  %303 = load i32, i32* %10, align 4
  %304 = sub nsw i32 %303, 1
  store i32 %304, i32* %26, align 4
  br label %305

305:                                              ; preds = %326, %302
  %306 = load i32, i32* %26, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %26, align 4
  %308 = load i32, i32* %11, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %305
  %311 = load i32*, i32** @ff_celt_freq_bands, align 8
  %312 = load i32, i32* %26, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %21, align 4
  %317 = load i32*, i32** @ff_celt_freq_range, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %316, %321
  %323 = icmp slt i32 %315, %322
  br label %324

324:                                              ; preds = %310, %305
  %325 = phi i1 [ false, %305 ], [ %323, %310 ]
  br i1 %325, label %326, label %327

326:                                              ; preds = %324
  br label %305

327:                                              ; preds = %324
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %328, align 4
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %329, align 4
  %330 = load i32, i32* %25, align 4
  store i32 %330, i32* %12, align 4
  br label %331

331:                                              ; preds = %367, %327
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %26, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %370

335:                                              ; preds = %331
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 14
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %12, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %345
  store i32 %348, i32* %346, align 4
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 14
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %12, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %363
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %335
  %368 = load i32, i32* %12, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %12, align 4
  br label %331

370:                                              ; preds = %331
  br label %371

371:                                              ; preds = %370, %262, %248
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 16
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %419

376:                                              ; preds = %371
  %377 = load i32, i32* %11, align 4
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 13
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %377, %380
  br i1 %381, label %382, label %419

382:                                              ; preds = %376
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 16
  store i64 0, i64* %384, align 8
  %385 = load i32*, i32** @ff_celt_freq_bands, align 8
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 %391, %394
  store i32 %395, i32* %12, align 4
  br label %396

396:                                              ; preds = %415, %382
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %14, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %418

400:                                              ; preds = %396
  %401 = load i32, i32* %12, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 %402
  %404 = load float, float* %403, align 4
  %405 = load float*, float** %7, align 8
  %406 = load i32, i32* %12, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %405, i64 %407
  %409 = load float, float* %408, align 4
  %410 = fadd float %404, %409
  %411 = fdiv float %410, 2.000000e+00
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 %413
  store float %411, float* %414, align 4
  br label %415

415:                                              ; preds = %400
  %416 = load i32, i32* %12, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %12, align 4
  br label %396

418:                                              ; preds = %396
  br label %419

419:                                              ; preds = %418, %376, %371
  %420 = load i32, i32* %21, align 4
  %421 = icmp ne i32 %420, -1
  br i1 %421, label %422, label %431

422:                                              ; preds = %419
  %423 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 0
  %424 = load i32, i32* %21, align 4
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = shl i32 %424, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds float, float* %423, i64 %429
  br label %432

431:                                              ; preds = %419
  br label %432

432:                                              ; preds = %431, %422
  %433 = phi float* [ %430, %422 ], [ null, %431 ]
  store float* %433, float** %18, align 8
  %434 = load i32, i32* %21, align 4
  %435 = icmp ne i32 %434, -1
  br i1 %435, label %436, label %445

436:                                              ; preds = %432
  %437 = load float*, float** %7, align 8
  %438 = load i32, i32* %21, align 4
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 4
  %442 = shl i32 %438, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds float, float* %437, i64 %443
  br label %446

445:                                              ; preds = %432
  br label %446

446:                                              ; preds = %445, %436
  %447 = phi float* [ %444, %436 ], [ null, %445 ]
  store float* %447, float** %19, align 8
  %448 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 16
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %515

452:                                              ; preds = %446
  %453 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 15
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 0
  %457 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)** %456, align 8
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 15
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %459, align 8
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %462 = load i32*, i32** %4, align 8
  %463 = load i32, i32* %11, align 4
  %464 = load float*, float** %16, align 8
  %465 = load i32, i32* %15, align 4
  %466 = load i32, i32* %22, align 4
  %467 = ashr i32 %466, 1
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = load float*, float** %18, align 8
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 4
  %475 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 0
  %476 = load i32, i32* %14, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %475, i64 %477
  %479 = getelementptr inbounds [176 x float], [176 x float]* %5, i64 0, i64 0
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 %457(%struct.TYPE_12__* %460, %struct.TYPE_11__* %461, i32* %462, i32 %463, float* %464, float* null, i32 %465, i32 %467, i32 %470, float* %471, i32 %474, float* %478, i32 0, float 1.000000e+00, float* %479, i32 %481)
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %482, i32* %483, align 4
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 15
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  %488 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)** %487, align 8
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 15
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %490, align 8
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %493 = load i32*, i32** %4, align 8
  %494 = load i32, i32* %11, align 4
  %495 = load float*, float** %17, align 8
  %496 = load i32, i32* %15, align 4
  %497 = load i32, i32* %22, align 4
  %498 = ashr i32 %497, 1
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 8
  %502 = load float*, float** %19, align 8
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 4
  %506 = load float*, float** %7, align 8
  %507 = load i32, i32* %14, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %506, i64 %508
  %510 = getelementptr inbounds [176 x float], [176 x float]* %5, i64 0, i64 0
  %511 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %512 = load i32, i32* %511, align 4
  %513 = call i32 %488(%struct.TYPE_12__* %491, %struct.TYPE_11__* %492, i32* %493, i32 %494, float* %495, float* null, i32 %496, i32 %498, i32 %501, float* %502, i32 %505, float* %509, i32 0, float 1.000000e+00, float* %510, i32 %512)
  %514 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %513, i32* %514, align 4
  br label %554

515:                                              ; preds = %446
  %516 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %516, i32 0, i32 15
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 0
  %520 = load i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32, float*, float*, i32, i32, i32, float*, i32, float*, i32, float, float*, i32)** %519, align 8
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 15
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %522, align 8
  %524 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %525 = load i32*, i32** %4, align 8
  %526 = load i32, i32* %11, align 4
  %527 = load float*, float** %16, align 8
  %528 = load float*, float** %17, align 8
  %529 = load i32, i32* %15, align 4
  %530 = load i32, i32* %22, align 4
  %531 = ashr i32 %530, 0
  %532 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = load float*, float** %18, align 8
  %536 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %536, i32 0, i32 5
  %538 = load i32, i32* %537, align 4
  %539 = getelementptr inbounds [1600 x float], [1600 x float]* %6, i64 0, i64 0
  %540 = load i32, i32* %14, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds float, float* %539, i64 %541
  %543 = getelementptr inbounds [176 x float], [176 x float]* %5, i64 0, i64 0
  %544 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %545 = load i32, i32* %544, align 4
  %546 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %547 = load i32, i32* %546, align 4
  %548 = or i32 %545, %547
  %549 = call i32 %520(%struct.TYPE_12__* %523, %struct.TYPE_11__* %524, i32* %525, i32 %526, float* %527, float* %528, i32 %529, i32 %531, i32 %534, float* %535, i32 %538, float* %542, i32 0, float 1.000000e+00, float* %543, i32 %548)
  %550 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %549, i32* %550, align 4
  %551 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %552, i32* %553, align 4
  br label %554

554:                                              ; preds = %515, %452
  %555 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = inttoptr i64 %557 to i8*
  %559 = ptrtoint i8* %558 to i32
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 14
  %562 = load %struct.TYPE_10__*, %struct.TYPE_10__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %562, i64 0
  %564 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %563, i32 0, i32 1
  %565 = load i32*, i32** %564, align 8
  %566 = load i32, i32* %11, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  store i32 %559, i32* %568, align 4
  %569 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %570 = load i32, i32* %569, align 4
  %571 = sext i32 %570 to i64
  %572 = inttoptr i64 %571 to i8*
  %573 = ptrtoint i8* %572 to i32
  %574 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 14
  %576 = load %struct.TYPE_10__*, %struct.TYPE_10__** %575, align 8
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 6
  %579 = load i32, i32* %578, align 8
  %580 = sub nsw i32 %579, 1
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 1
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %11, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  store i32 %573, i32* %587, align 4
  %588 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %589 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %588, i32 0, i32 10
  %590 = load i32*, i32** %589, align 8
  %591 = load i32, i32* %11, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* %20, align 4
  %596 = add nsw i32 %594, %595
  %597 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %599, %596
  store i32 %600, i32* %598, align 4
  %601 = load i32, i32* %22, align 4
  %602 = load i32, i32* %15, align 4
  %603 = shl i32 %602, 3
  %604 = icmp sgt i32 %601, %603
  %605 = zext i1 %604 to i32
  store i32 %605, i32* %9, align 4
  br label %606

606:                                              ; preds = %554
  %607 = load i32, i32* %11, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %11, align 4
  br label %40

609:                                              ; preds = %40
  ret void
}

declare dso_local i32 @opus_rc_tell_frac(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
