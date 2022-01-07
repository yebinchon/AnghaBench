; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3.c_ff_ac3_bit_alloc_calc_mask.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3.c_ff_ac3_bit_alloc_calc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@AC3_CRITICAL_BANDS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_ac3_bin_to_band_tab = common dso_local global i32* null, align 8
@ff_ac3_hearing_threshold_tab = common dso_local global i32** null, align 8
@DBA_REUSE = common dso_local global i32 0, align 4
@DBA_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ac3_bit_alloc_calc_mask(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %41 = load i32, i32* @AC3_CRITICAL_BANDS, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %26, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %27, align 8
  %45 = load i32, i32* %17, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %12
  %48 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %48, i32* %13, align 4
  store i32 1, i32* %36, align 4
  br label %438

49:                                               ; preds = %12
  %50 = load i32*, i32** @ff_ac3_bin_to_band_tab, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %29, align 4
  %55 = load i32*, i32** @ff_ac3_bin_to_band_tab, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %30, align 4
  %62 = load i32, i32* %29, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %239

64:                                               ; preds = %49
  store i32 0, i32* %33, align 4
  %65 = load i32, i32* %33, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @calc_lowcomp1(i32 %65, i32 %68, i32 %71, i32 384)
  store i32 %72, i32* %33, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %33, align 4
  %79 = sub nsw i32 %77, %78
  %80 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %79, i32* %80, align 16
  %81 = load i32, i32* %33, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @calc_lowcomp1(i32 %81, i32 %84, i32 %87, i32 384)
  store i32 %88, i32* %33, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %18, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %33, align 4
  %95 = sub nsw i32 %93, %94
  %96 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %95, i32* %96, align 4
  store i32 7, i32* %31, align 4
  store i32 2, i32* %28, align 4
  br label %97

97:                                               ; preds = %166, %64
  %98 = load i32, i32* %28, align 4
  %99 = icmp slt i32 %98, 7
  br i1 %99, label %100, label %169

100:                                              ; preds = %97
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %28, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %120, label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %33, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %28, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @calc_lowcomp1(i32 %107, i32 %112, i32 %118, i32 384)
  store i32 %119, i32* %33, align 4
  br label %120

120:                                              ; preds = %106, %103
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %28, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %34, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %28, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* %35, align 4
  %137 = load i32, i32* %34, align 4
  %138 = load i32, i32* %33, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %28, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %44, i64 %141
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %120
  %146 = load i32, i32* %28, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %165, label %148

148:                                              ; preds = %145, %120
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %28, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %28, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %153, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %148
  %162 = load i32, i32* %28, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %31, align 4
  br label %169

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %145
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %28, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %28, align 4
  br label %97

169:                                              ; preds = %161, %97
  %170 = load i32, i32* %30, align 4
  %171 = call i32 @FFMIN(i32 %170, i32 22)
  store i32 %171, i32* %32, align 4
  %172 = load i32, i32* %31, align 4
  store i32 %172, i32* %28, align 4
  br label %173

173:                                              ; preds = %235, %169
  %174 = load i32, i32* %28, align 4
  %175 = load i32, i32* %32, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %238

177:                                              ; preds = %173
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %28, align 4
  %182 = icmp eq i32 %181, 6
  br i1 %182, label %198, label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %33, align 4
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %28, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %15, align 8
  %191 = load i32, i32* %28, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %28, align 4
  %197 = call i32 @calc_lowcomp(i32 %184, i32 %189, i32 %195, i32 %196)
  store i32 %197, i32* %33, align 4
  br label %198

198:                                              ; preds = %183, %180
  %199 = load i32, i32* %34, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %199, %202
  %204 = load i32*, i32** %15, align 8
  %205 = load i32, i32* %28, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 %208, %209
  %211 = call i32 @FFMAX(i32 %203, i32 %210)
  store i32 %211, i32* %34, align 4
  %212 = load i32, i32* %35, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %212, %215
  %217 = load i32*, i32** %15, align 8
  %218 = load i32, i32* %28, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %221, %224
  %226 = call i32 @FFMAX(i32 %216, i32 %225)
  store i32 %226, i32* %35, align 4
  %227 = load i32, i32* %34, align 4
  %228 = load i32, i32* %33, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %35, align 4
  %231 = call i32 @FFMAX(i32 %229, i32 %230)
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %44, i64 %233
  store i32 %231, i32* %234, align 4
  br label %235

235:                                              ; preds = %198
  %236 = load i32, i32* %28, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %28, align 4
  br label %173

238:                                              ; preds = %173
  store i32 22, i32* %31, align 4
  br label %251

239:                                              ; preds = %49
  %240 = load i32, i32* %29, align 4
  store i32 %240, i32* %31, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 8
  %245 = add nsw i32 %244, 768
  store i32 %245, i32* %34, align 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = shl i32 %248, 8
  %250 = add nsw i32 %249, 768
  store i32 %250, i32* %35, align 4
  br label %251

251:                                              ; preds = %239, %238
  %252 = load i32, i32* %31, align 4
  store i32 %252, i32* %28, align 4
  br label %253

253:                                              ; preds = %292, %251
  %254 = load i32, i32* %28, align 4
  %255 = load i32, i32* %30, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %295

257:                                              ; preds = %253
  %258 = load i32, i32* %34, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %258, %261
  %263 = load i32*, i32** %15, align 8
  %264 = load i32, i32* %28, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 %267, %268
  %270 = call i32 @FFMAX(i32 %262, i32 %269)
  store i32 %270, i32* %34, align 4
  %271 = load i32, i32* %35, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %271, %274
  %276 = load i32*, i32** %15, align 8
  %277 = load i32, i32* %28, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sub nsw i32 %280, %283
  %285 = call i32 @FFMAX(i32 %275, i32 %284)
  store i32 %285, i32* %35, align 4
  %286 = load i32, i32* %34, align 4
  %287 = load i32, i32* %35, align 4
  %288 = call i32 @FFMAX(i32 %286, i32 %287)
  %289 = load i32, i32* %28, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %44, i64 %290
  store i32 %288, i32* %291, align 4
  br label %292

292:                                              ; preds = %257
  %293 = load i32, i32* %28, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %28, align 4
  br label %253

295:                                              ; preds = %253
  %296 = load i32, i32* %29, align 4
  store i32 %296, i32* %28, align 4
  br label %297

297:                                              ; preds = %345, %295
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* %30, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %348

301:                                              ; preds = %297
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %15, align 8
  %306 = load i32, i32* %28, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %304, %309
  store i32 %310, i32* %37, align 4
  %311 = load i32, i32* %37, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %301
  %314 = load i32, i32* %37, align 4
  %315 = ashr i32 %314, 2
  %316 = load i32, i32* %28, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %44, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, %315
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %313, %301
  %322 = load i32**, i32*** @ff_ac3_hearing_threshold_tab, align 8
  %323 = load i32, i32* %28, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = ashr i32 %323, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %322, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 7
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %28, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %44, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @FFMAX(i32 %335, i32 %339)
  %341 = load i32*, i32** %25, align 8
  %342 = load i32, i32* %28, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 %340, i32* %344, align 4
  br label %345

345:                                              ; preds = %321
  %346 = load i32, i32* %28, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %28, align 4
  br label %297

348:                                              ; preds = %297
  %349 = load i32, i32* %20, align 4
  %350 = load i32, i32* @DBA_REUSE, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = load i32, i32* %20, align 4
  %354 = load i32, i32* @DBA_NEW, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %437

356:                                              ; preds = %352, %348
  %357 = load i32, i32* %21, align 4
  %358 = icmp sgt i32 %357, 8
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %36, align 4
  br label %438

360:                                              ; preds = %356
  %361 = load i32, i32* %29, align 4
  store i32 %361, i32* %28, align 4
  store i32 0, i32* %39, align 4
  br label %362

362:                                              ; preds = %433, %360
  %363 = load i32, i32* %39, align 4
  %364 = load i32, i32* %21, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %436

366:                                              ; preds = %362
  %367 = load i32*, i32** %22, align 8
  %368 = load i32, i32* %39, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %28, align 4
  %373 = add nsw i32 %372, %371
  store i32 %373, i32* %28, align 4
  %374 = load i32, i32* %28, align 4
  %375 = load i32, i32* @AC3_CRITICAL_BANDS, align 4
  %376 = icmp sge i32 %374, %375
  br i1 %376, label %387, label %377

377:                                              ; preds = %366
  %378 = load i32*, i32** %23, align 8
  %379 = load i32, i32* %39, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @AC3_CRITICAL_BANDS, align 4
  %384 = load i32, i32* %28, align 4
  %385 = sub nsw i32 %383, %384
  %386 = icmp sgt i32 %382, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %377, %366
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %36, align 4
  br label %438

388:                                              ; preds = %377
  %389 = load i32*, i32** %24, align 8
  %390 = load i32, i32* %39, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp sge i32 %393, 4
  br i1 %394, label %395, label %403

395:                                              ; preds = %388
  %396 = load i32*, i32** %24, align 8
  %397 = load i32, i32* %39, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = sub nsw i32 %400, 3
  %402 = mul nsw i32 %401, 128
  store i32 %402, i32* %40, align 4
  br label %411

403:                                              ; preds = %388
  %404 = load i32*, i32** %24, align 8
  %405 = load i32, i32* %39, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %408, 4
  %410 = mul nsw i32 %409, 128
  store i32 %410, i32* %40, align 4
  br label %411

411:                                              ; preds = %403, %395
  store i32 0, i32* %38, align 4
  br label %412

412:                                              ; preds = %429, %411
  %413 = load i32, i32* %38, align 4
  %414 = load i32*, i32** %23, align 8
  %415 = load i32, i32* %39, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = icmp slt i32 %413, %418
  br i1 %419, label %420, label %432

420:                                              ; preds = %412
  %421 = load i32, i32* %40, align 4
  %422 = load i32*, i32** %25, align 8
  %423 = load i32, i32* %28, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %28, align 4
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, %421
  store i32 %428, i32* %426, align 4
  br label %429

429:                                              ; preds = %420
  %430 = load i32, i32* %38, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %38, align 4
  br label %412

432:                                              ; preds = %412
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %39, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %39, align 4
  br label %362

436:                                              ; preds = %362
  br label %437

437:                                              ; preds = %436, %352
  store i32 0, i32* %13, align 4
  store i32 1, i32* %36, align 4
  br label %438

438:                                              ; preds = %437, %387, %359, %47
  %439 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %439)
  %440 = load i32, i32* %13, align 4
  ret i32 %440
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @calc_lowcomp1(i32, i32, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @calc_lowcomp(i32, i32, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
