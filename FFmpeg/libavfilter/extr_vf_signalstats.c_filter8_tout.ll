; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_tout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_tout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @filter8_tout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter8_tout(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %17, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %459, %4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %462

66:                                               ; preds = %62
  %67 = load i32, i32* %20, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %14, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %66
  br label %459

76:                                               ; preds = %70
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %77, 2
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %325

80:                                               ; preds = %76
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 2
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %325

85:                                               ; preds = %80
  store i32 1, i32* %19, align 4
  br label %86

86:                                               ; preds = %321, %85
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %324

91:                                               ; preds = %86
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sub nsw i32 %93, 2
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, -1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 2
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %117, %118
  %120 = add nsw i32 %119, -1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %113, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %102, i32 %112, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %303

126:                                              ; preds = %91
  %127 = load i32*, i32** %17, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sub nsw i32 %128, 2
  %130 = load i32, i32* %18, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %131, %132
  %134 = add nsw i32 %133, 0
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %127, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %18, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %141, %142
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %138, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 2
  %151 = load i32, i32* %18, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 0
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %148, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %137, i32 %147, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %303

161:                                              ; preds = %126
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 %163, 2
  %165 = load i32, i32* %18, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %166, %167
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %162, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, 2
  %186 = load i32, i32* %18, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %187, %188
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %183, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %172, i32 %182, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %303

196:                                              ; preds = %161
  %197 = load i32*, i32** %17, align 8
  %198 = load i32, i32* %20, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %18, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %201, %202
  %204 = add nsw i32 %203, -1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %197, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %18, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %211, %212
  %214 = add nsw i32 %213, -1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %208, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %17, align 8
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* %18, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %222, %223
  %225 = add nsw i32 %224, -1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %218, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %207, i32 %217, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %301

231:                                              ; preds = %196
  %232 = load i32*, i32** %17, align 8
  %233 = load i32, i32* %20, align 4
  %234 = sub nsw i32 %233, 1
  %235 = load i32, i32* %18, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %236, %237
  %239 = add nsw i32 %238, 0
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %232, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %17, align 8
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %18, align 4
  %246 = mul nsw i32 %244, %245
  %247 = load i32, i32* %19, align 4
  %248 = add nsw i32 %246, %247
  %249 = add nsw i32 %248, 0
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %243, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %17, align 8
  %254 = load i32, i32* %20, align 4
  %255 = add nsw i32 %254, 1
  %256 = load i32, i32* %18, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %257, %258
  %260 = add nsw i32 %259, 0
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %253, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %242, i32 %252, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %301

266:                                              ; preds = %231
  %267 = load i32*, i32** %17, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sub nsw i32 %268, 1
  %270 = load i32, i32* %18, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %19, align 4
  %273 = add nsw i32 %271, %272
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %267, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %17, align 8
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %18, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32, i32* %19, align 4
  %283 = add nsw i32 %281, %282
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %278, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* %20, align 4
  %290 = add nsw i32 %289, 1
  %291 = load i32, i32* %18, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %292, %293
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %288, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %277, i32 %287, i32 %298)
  %300 = icmp ne i32 %299, 0
  br label %301

301:                                              ; preds = %266, %231, %196
  %302 = phi i1 [ false, %231 ], [ false, %196 ], [ %300, %266 ]
  br label %303

303:                                              ; preds = %301, %161, %126, %91
  %304 = phi i1 [ false, %161 ], [ false, %126 ], [ false, %91 ], [ %302, %301 ]
  %305 = zext i1 %304 to i32
  store i32 %305, i32* %22, align 4
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %21, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %21, align 4
  %309 = load i32, i32* %22, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %303
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %313 = icmp ne %struct.TYPE_7__* %312, null
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load i32*, i32** %10, align 8
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @burn_frame8(i32* %315, %struct.TYPE_7__* %316, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %314, %311, %303
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %19, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %19, align 4
  br label %86

324:                                              ; preds = %86
  br label %458

325:                                              ; preds = %80, %76
  store i32 1, i32* %19, align 4
  br label %326

326:                                              ; preds = %454, %325
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %13, align 4
  %329 = sub nsw i32 %328, 1
  %330 = icmp slt i32 %327, %329
  br i1 %330, label %331, label %457

331:                                              ; preds = %326
  %332 = load i32*, i32** %17, align 8
  %333 = load i32, i32* %20, align 4
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* %18, align 4
  %336 = mul nsw i32 %334, %335
  %337 = load i32, i32* %19, align 4
  %338 = add nsw i32 %336, %337
  %339 = add nsw i32 %338, -1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %332, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %17, align 8
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %18, align 4
  %346 = mul nsw i32 %344, %345
  %347 = load i32, i32* %19, align 4
  %348 = add nsw i32 %346, %347
  %349 = add nsw i32 %348, -1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %343, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %17, align 8
  %354 = load i32, i32* %20, align 4
  %355 = add nsw i32 %354, 1
  %356 = load i32, i32* %18, align 4
  %357 = mul nsw i32 %355, %356
  %358 = load i32, i32* %19, align 4
  %359 = add nsw i32 %357, %358
  %360 = add nsw i32 %359, -1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %353, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %342, i32 %352, i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %436

366:                                              ; preds = %331
  %367 = load i32*, i32** %17, align 8
  %368 = load i32, i32* %20, align 4
  %369 = sub nsw i32 %368, 1
  %370 = load i32, i32* %18, align 4
  %371 = mul nsw i32 %369, %370
  %372 = load i32, i32* %19, align 4
  %373 = add nsw i32 %371, %372
  %374 = add nsw i32 %373, 0
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %367, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %17, align 8
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %18, align 4
  %381 = mul nsw i32 %379, %380
  %382 = load i32, i32* %19, align 4
  %383 = add nsw i32 %381, %382
  %384 = add nsw i32 %383, 0
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %378, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32*, i32** %17, align 8
  %389 = load i32, i32* %20, align 4
  %390 = add nsw i32 %389, 1
  %391 = load i32, i32* %18, align 4
  %392 = mul nsw i32 %390, %391
  %393 = load i32, i32* %19, align 4
  %394 = add nsw i32 %392, %393
  %395 = add nsw i32 %394, 0
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %388, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %377, i32 %387, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %436

401:                                              ; preds = %366
  %402 = load i32*, i32** %17, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sub nsw i32 %403, 1
  %405 = load i32, i32* %18, align 4
  %406 = mul nsw i32 %404, %405
  %407 = load i32, i32* %19, align 4
  %408 = add nsw i32 %406, %407
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %402, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load i32*, i32** %17, align 8
  %414 = load i32, i32* %20, align 4
  %415 = load i32, i32* %18, align 4
  %416 = mul nsw i32 %414, %415
  %417 = load i32, i32* %19, align 4
  %418 = add nsw i32 %416, %417
  %419 = add nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %413, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = load i32, i32* %20, align 4
  %425 = add nsw i32 %424, 1
  %426 = load i32, i32* %18, align 4
  %427 = mul nsw i32 %425, %426
  %428 = load i32, i32* %19, align 4
  %429 = add nsw i32 %427, %428
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %423, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @filter_tout_outlier to i32 (i32, i32, i32, ...)*)(i32 %412, i32 %422, i32 %433)
  %435 = icmp ne i32 %434, 0
  br label %436

436:                                              ; preds = %401, %366, %331
  %437 = phi i1 [ false, %366 ], [ false, %331 ], [ %435, %401 ]
  %438 = zext i1 %437 to i32
  store i32 %438, i32* %22, align 4
  %439 = load i32, i32* %22, align 4
  %440 = load i32, i32* %21, align 4
  %441 = add nsw i32 %440, %439
  store i32 %441, i32* %21, align 4
  %442 = load i32, i32* %22, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %436
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %446 = icmp ne %struct.TYPE_7__* %445, null
  br i1 %446, label %447, label %453

447:                                              ; preds = %444
  %448 = load i32*, i32** %10, align 8
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %450 = load i32, i32* %19, align 4
  %451 = load i32, i32* %20, align 4
  %452 = call i32 @burn_frame8(i32* %448, %struct.TYPE_7__* %449, i32 %450, i32 %451)
  br label %453

453:                                              ; preds = %447, %444, %436
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %19, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %19, align 4
  br label %326

457:                                              ; preds = %326
  br label %458

458:                                              ; preds = %457, %324
  br label %459

459:                                              ; preds = %458, %75
  %460 = load i32, i32* %20, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %20, align 4
  br label %62

462:                                              ; preds = %62
  %463 = load i32, i32* %21, align 4
  ret i32 %463
}

declare dso_local i32 @filter_tout_outlier(...) #1

declare dso_local i32 @burn_frame8(i32*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
