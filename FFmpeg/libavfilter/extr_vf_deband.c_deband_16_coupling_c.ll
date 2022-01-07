; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_16_coupling_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_16_coupling_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @deband_16_coupling_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deband_16_coupling_c(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32], align 16
  %23 = alloca [4 x i32], align 16
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %11, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = load i32, i32* %8, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %418, %4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %421

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  store i32 %81, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %414, %74
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %417

90:                                               ; preds = %82
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %21, align 4
  %109 = bitcast [4 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %109, i8 0, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %302, %90
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %305

116:                                              ; preds = %110
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %25, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  store i32 %132, i32* %26, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %27, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %28, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %29, align 4
  %156 = load i32*, i32** %25, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %21, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %29, align 4
  %161 = call i32 @av_clip(i32 %159, i32 0, i32 %160)
  %162 = load i32, i32* %26, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %28, align 4
  %168 = call i32 @av_clip(i32 %166, i32 0, i32 %167)
  %169 = add nsw i32 %163, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %156, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %30, align 4
  %173 = load i32*, i32** %25, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %21, align 4
  %176 = sub nsw i32 0, %175
  %177 = add nsw i32 %174, %176
  %178 = load i32, i32* %29, align 4
  %179 = call i32 @av_clip(i32 %177, i32 0, i32 %178)
  %180 = load i32, i32* %26, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %28, align 4
  %186 = call i32 @av_clip(i32 %184, i32 0, i32 %185)
  %187 = add nsw i32 %181, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %173, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %31, align 4
  %191 = load i32*, i32** %25, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %21, align 4
  %194 = sub nsw i32 0, %193
  %195 = add nsw i32 %192, %194
  %196 = load i32, i32* %29, align 4
  %197 = call i32 @av_clip(i32 %195, i32 0, i32 %196)
  %198 = load i32, i32* %26, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %20, align 4
  %202 = sub nsw i32 0, %201
  %203 = add nsw i32 %200, %202
  %204 = load i32, i32* %28, align 4
  %205 = call i32 @av_clip(i32 %203, i32 0, i32 %204)
  %206 = add nsw i32 %199, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %191, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %32, align 4
  %210 = load i32*, i32** %25, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %29, align 4
  %215 = call i32 @av_clip(i32 %213, i32 0, i32 %214)
  %216 = load i32, i32* %26, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %20, align 4
  %220 = sub nsw i32 0, %219
  %221 = add nsw i32 %218, %220
  %222 = load i32, i32* %28, align 4
  %223 = call i32 @av_clip(i32 %221, i32 0, i32 %222)
  %224 = add nsw i32 %217, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %210, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %33, align 4
  %228 = load i32*, i32** %25, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %26, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %34, align 4
  %237 = load i32, i32* %34, align 4
  %238 = load i32, i32* %17, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %239
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* %30, align 4
  %242 = load i32, i32* %31, align 4
  %243 = load i32, i32* %32, align 4
  %244 = load i32, i32* %33, align 4
  %245 = call i32 @get_avg(i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %247
  store i32 %245, i32* %248, align 4
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %116
  %254 = load i32, i32* %34, align 4
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %254, %258
  %260 = call i32 @FFABS(i32 %259)
  %261 = load i32, i32* %27, align 4
  %262 = icmp slt i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %265
  store i32 %263, i32* %266, align 4
  br label %301

267:                                              ; preds = %116
  %268 = load i32, i32* %34, align 4
  %269 = load i32, i32* %30, align 4
  %270 = sub nsw i32 %268, %269
  %271 = call i32 @FFABS(i32 %270)
  %272 = load i32, i32* %27, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load i32, i32* %34, align 4
  %276 = load i32, i32* %31, align 4
  %277 = sub nsw i32 %275, %276
  %278 = call i32 @FFABS(i32 %277)
  %279 = load i32, i32* %27, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %274
  %282 = load i32, i32* %34, align 4
  %283 = load i32, i32* %32, align 4
  %284 = sub nsw i32 %282, %283
  %285 = call i32 @FFABS(i32 %284)
  %286 = load i32, i32* %27, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %281
  %289 = load i32, i32* %34, align 4
  %290 = load i32, i32* %33, align 4
  %291 = sub nsw i32 %289, %290
  %292 = call i32 @FFABS(i32 %291)
  %293 = load i32, i32* %27, align 4
  %294 = icmp slt i32 %292, %293
  br label %295

295:                                              ; preds = %288, %281, %274, %267
  %296 = phi i1 [ false, %281 ], [ false, %274 ], [ false, %267 ], [ %294, %288 ]
  %297 = zext i1 %296 to i32
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %299
  store i32 %297, i32* %300, align 4
  br label %301

301:                                              ; preds = %295, %253
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %17, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %17, align 4
  br label %110

305:                                              ; preds = %110
  store i32 0, i32* %18, align 4
  br label %306

306:                                              ; preds = %320, %305
  %307 = load i32, i32* %18, align 4
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %306
  %313 = load i32, i32* %18, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %312
  br label %323

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %18, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %18, align 4
  br label %306

323:                                              ; preds = %318, %306
  %324 = load i32, i32* %18, align 4
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %324, %327
  br i1 %328, label %329, label %371

329:                                              ; preds = %323
  store i32 0, i32* %17, align 4
  br label %330

330:                                              ; preds = %367, %329
  %331 = load i32, i32* %17, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %370

336:                                              ; preds = %330
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %17, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sdiv i32 %343, 2
  store i32 %344, i32* %35, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %17, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = inttoptr i64 %351 to i32*
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %35, align 4
  %355 = mul nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  %358 = load i32, i32* %15, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32* %360, i32** %36, align 8
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** %36, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  store i32 %364, i32* %366, align 4
  br label %367

367:                                              ; preds = %336
  %368 = load i32, i32* %17, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %17, align 4
  br label %330

370:                                              ; preds = %330
  br label %413

371:                                              ; preds = %323
  store i32 0, i32* %17, align 4
  br label %372

372:                                              ; preds = %409, %371
  %373 = load i32, i32* %17, align 4
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %412

378:                                              ; preds = %372
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %17, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = sdiv i32 %385, 2
  store i32 %386, i32* %37, align 4
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load i64*, i64** %388, align 8
  %390 = load i32, i32* %17, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %389, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = inttoptr i64 %393 to i32*
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %37, align 4
  %397 = mul nsw i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %394, i64 %398
  %400 = load i32, i32* %15, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32* %402, i32** %38, align 8
  %403 = load i32, i32* %17, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %38, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  store i32 %406, i32* %408, align 4
  br label %409

409:                                              ; preds = %378
  %410 = load i32, i32* %17, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %17, align 4
  br label %372

412:                                              ; preds = %372
  br label %413

413:                                              ; preds = %412, %370
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %15, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %15, align 4
  br label %82

417:                                              ; preds = %82
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %16, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %16, align 4
  br label %70

421:                                              ; preds = %70
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_clip(i32, i32, i32) #2

declare dso_local i32 @get_avg(i32, i32, i32, i32) #2

declare dso_local i32 @FFABS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
