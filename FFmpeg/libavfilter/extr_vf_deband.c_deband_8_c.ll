; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @deband_8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deband_8_c(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %338, %4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %341

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %16, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %17, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %20, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %21, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = mul nsw i32 %107, %109
  %111 = load i32, i32* %8, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %22, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %23, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %21, align 4
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %334, %52
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %337

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %135, %140
  store i32 %141, i32* %25, align 4
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %330, %134
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %143, %150
  br i1 %151, label %152, label %333

152:                                              ; preds = %142
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %26, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %27, align 4
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %27, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %24, align 4
  %176 = call i32 @av_clip(i32 %174, i32 0, i32 %175)
  %177 = load i32, i32* %19, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %23, align 4
  %183 = call i32 @av_clip(i32 %181, i32 0, i32 %182)
  %184 = add nsw i32 %178, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %171, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %28, align 4
  %188 = load i32*, i32** %16, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %27, align 4
  %191 = sub nsw i32 0, %190
  %192 = add nsw i32 %189, %191
  %193 = load i32, i32* %24, align 4
  %194 = call i32 @av_clip(i32 %192, i32 0, i32 %193)
  %195 = load i32, i32* %19, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %26, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @av_clip(i32 %199, i32 0, i32 %200)
  %202 = add nsw i32 %196, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %188, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %29, align 4
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %27, align 4
  %209 = sub nsw i32 0, %208
  %210 = add nsw i32 %207, %209
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @av_clip(i32 %210, i32 0, i32 %211)
  %213 = load i32, i32* %19, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %26, align 4
  %217 = sub nsw i32 0, %216
  %218 = add nsw i32 %215, %217
  %219 = load i32, i32* %23, align 4
  %220 = call i32 @av_clip(i32 %218, i32 0, i32 %219)
  %221 = add nsw i32 %214, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %206, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %30, align 4
  %225 = load i32*, i32** %16, align 8
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %27, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %24, align 4
  %230 = call i32 @av_clip(i32 %228, i32 0, i32 %229)
  %231 = load i32, i32* %19, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %26, align 4
  %235 = sub nsw i32 0, %234
  %236 = add nsw i32 %233, %235
  %237 = load i32, i32* %23, align 4
  %238 = call i32 @av_clip(i32 %236, i32 0, i32 %237)
  %239 = add nsw i32 %232, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %225, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %31, align 4
  %243 = load i32*, i32** %16, align 8
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %19, align 4
  %246 = mul nsw i32 %244, %245
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %243, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %32, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %152
  %257 = load i32, i32* %28, align 4
  %258 = load i32, i32* %29, align 4
  %259 = load i32, i32* %30, align 4
  %260 = load i32, i32* %31, align 4
  %261 = call i32 @get_avg(i32 %257, i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %33, align 4
  %262 = load i32, i32* %32, align 4
  %263 = load i32, i32* %33, align 4
  %264 = sub nsw i32 %262, %263
  %265 = call i32 @FFABS(i32 %264)
  store i32 %265, i32* %34, align 4
  %266 = load i32, i32* %34, align 4
  %267 = load i32, i32* %20, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %256
  %270 = load i32, i32* %33, align 4
  br label %273

271:                                              ; preds = %256
  %272 = load i32, i32* %32, align 4
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %275 = load i32*, i32** %17, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %18, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  store i32 %274, i32* %282, align 4
  br label %329

283:                                              ; preds = %152
  %284 = load i32, i32* %32, align 4
  %285 = load i32, i32* %28, align 4
  %286 = sub nsw i32 %284, %285
  %287 = call i32 @FFABS(i32 %286)
  %288 = load i32, i32* %20, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %317

290:                                              ; preds = %283
  %291 = load i32, i32* %32, align 4
  %292 = load i32, i32* %29, align 4
  %293 = sub nsw i32 %291, %292
  %294 = call i32 @FFABS(i32 %293)
  %295 = load i32, i32* %20, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %317

297:                                              ; preds = %290
  %298 = load i32, i32* %32, align 4
  %299 = load i32, i32* %30, align 4
  %300 = sub nsw i32 %298, %299
  %301 = call i32 @FFABS(i32 %300)
  %302 = load i32, i32* %20, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %297
  %305 = load i32, i32* %32, align 4
  %306 = load i32, i32* %31, align 4
  %307 = sub nsw i32 %305, %306
  %308 = call i32 @FFABS(i32 %307)
  %309 = load i32, i32* %20, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %304
  %312 = load i32, i32* %28, align 4
  %313 = load i32, i32* %29, align 4
  %314 = load i32, i32* %30, align 4
  %315 = load i32, i32* %31, align 4
  %316 = call i32 @get_avg(i32 %312, i32 %313, i32 %314, i32 %315)
  br label %319

317:                                              ; preds = %304, %297, %290, %283
  %318 = load i32, i32* %32, align 4
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi i32 [ %316, %311 ], [ %318, %317 ]
  %321 = load i32*, i32** %17, align 8
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* %18, align 4
  %324 = mul nsw i32 %322, %323
  %325 = load i32, i32* %13, align 4
  %326 = add nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %321, i64 %327
  store i32 %320, i32* %328, align 4
  br label %329

329:                                              ; preds = %319, %273
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %13, align 4
  br label %142

333:                                              ; preds = %142
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %14, align 4
  br label %130

337:                                              ; preds = %130
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %15, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %15, align 4
  br label %46

341:                                              ; preds = %46
  ret i32 0
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @get_avg(i32, i32, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
