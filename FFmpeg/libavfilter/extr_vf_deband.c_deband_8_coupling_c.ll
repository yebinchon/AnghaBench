; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_8_coupling_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_8_coupling_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @deband_8_coupling_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deband_8_coupling_c(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %21 = alloca [4 x i32], align 16
  %22 = alloca [4 x i32], align 16
  %23 = alloca [4 x i32], align 16
  %24 = alloca i32*, align 8
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
  %35 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %11, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %12, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %403, %4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %406

71:                                               ; preds = %67
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  store i32 %78, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %399, %71
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %402

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %19, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %20, align 4
  %106 = bitcast [4 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %106, i8 0, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %297, %87
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %300

113:                                              ; preds = %107
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %24, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %25, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %26, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %27, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %28, align 4
  %151 = load i32*, i32** %24, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %28, align 4
  %156 = call i32 @av_clip(i32 %154, i32 0, i32 %155)
  %157 = load i32, i32* %25, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %27, align 4
  %163 = call i32 @av_clip(i32 %161, i32 0, i32 %162)
  %164 = add nsw i32 %158, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %151, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %29, align 4
  %168 = load i32*, i32** %24, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %20, align 4
  %171 = sub nsw i32 0, %170
  %172 = add nsw i32 %169, %171
  %173 = load i32, i32* %28, align 4
  %174 = call i32 @av_clip(i32 %172, i32 0, i32 %173)
  %175 = load i32, i32* %25, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %27, align 4
  %181 = call i32 @av_clip(i32 %179, i32 0, i32 %180)
  %182 = add nsw i32 %176, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %168, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %30, align 4
  %186 = load i32*, i32** %24, align 8
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %20, align 4
  %189 = sub nsw i32 0, %188
  %190 = add nsw i32 %187, %189
  %191 = load i32, i32* %28, align 4
  %192 = call i32 @av_clip(i32 %190, i32 0, i32 %191)
  %193 = load i32, i32* %25, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 0, %196
  %198 = add nsw i32 %195, %197
  %199 = load i32, i32* %27, align 4
  %200 = call i32 @av_clip(i32 %198, i32 0, i32 %199)
  %201 = add nsw i32 %194, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %186, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %31, align 4
  %205 = load i32*, i32** %24, align 8
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %28, align 4
  %210 = call i32 @av_clip(i32 %208, i32 0, i32 %209)
  %211 = load i32, i32* %25, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %19, align 4
  %215 = sub nsw i32 0, %214
  %216 = add nsw i32 %213, %215
  %217 = load i32, i32* %27, align 4
  %218 = call i32 @av_clip(i32 %216, i32 0, i32 %217)
  %219 = add nsw i32 %212, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %205, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %32, align 4
  %223 = load i32*, i32** %24, align 8
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %25, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %223, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %33, align 4
  %232 = load i32, i32* %33, align 4
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %234
  store i32 %232, i32* %235, align 4
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* %32, align 4
  %240 = call i32 @get_avg(i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %242
  store i32 %240, i32* %243, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %113
  %249 = load i32, i32* %33, align 4
  %250 = load i32, i32* %17, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = sub nsw i32 %249, %253
  %255 = call i32 @FFABS(i32 %254)
  %256 = load i32, i32* %26, align 4
  %257 = icmp slt i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %260
  store i32 %258, i32* %261, align 4
  br label %296

262:                                              ; preds = %113
  %263 = load i32, i32* %33, align 4
  %264 = load i32, i32* %29, align 4
  %265 = sub nsw i32 %263, %264
  %266 = call i32 @FFABS(i32 %265)
  %267 = load i32, i32* %26, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %290

269:                                              ; preds = %262
  %270 = load i32, i32* %33, align 4
  %271 = load i32, i32* %30, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call i32 @FFABS(i32 %272)
  %274 = load i32, i32* %26, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %290

276:                                              ; preds = %269
  %277 = load i32, i32* %33, align 4
  %278 = load i32, i32* %31, align 4
  %279 = sub nsw i32 %277, %278
  %280 = call i32 @FFABS(i32 %279)
  %281 = load i32, i32* %26, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %276
  %284 = load i32, i32* %33, align 4
  %285 = load i32, i32* %32, align 4
  %286 = sub nsw i32 %284, %285
  %287 = call i32 @FFABS(i32 %286)
  %288 = load i32, i32* %26, align 4
  %289 = icmp slt i32 %287, %288
  br label %290

290:                                              ; preds = %283, %276, %269, %262
  %291 = phi i1 [ false, %276 ], [ false, %269 ], [ false, %262 ], [ %289, %283 ]
  %292 = zext i1 %291 to i32
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %294
  store i32 %292, i32* %295, align 4
  br label %296

296:                                              ; preds = %290, %248
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %17, align 4
  br label %107

300:                                              ; preds = %107
  store i32 0, i32* %17, align 4
  br label %301

301:                                              ; preds = %315, %300
  %302 = load i32, i32* %17, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %318

307:                                              ; preds = %301
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %307
  br label %318

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %17, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %17, align 4
  br label %301

318:                                              ; preds = %313, %301
  %319 = load i32, i32* %17, align 4
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %319, %322
  br i1 %323, label %324, label %361

324:                                              ; preds = %318
  store i32 0, i32* %17, align 4
  br label %325

325:                                              ; preds = %357, %324
  %326 = load i32, i32* %17, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %360

331:                                              ; preds = %325
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %34, align 4
  %339 = load i32, i32* %17, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %17, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %34, align 4
  %352 = mul nsw i32 %350, %351
  %353 = load i32, i32* %15, align 4
  %354 = add nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %349, i64 %355
  store i32 %342, i32* %356, align 4
  br label %357

357:                                              ; preds = %331
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %17, align 4
  br label %325

360:                                              ; preds = %325
  br label %398

361:                                              ; preds = %318
  store i32 0, i32* %17, align 4
  br label %362

362:                                              ; preds = %394, %361
  %363 = load i32, i32* %17, align 4
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = icmp slt i32 %363, %366
  br i1 %367, label %368, label %397

368:                                              ; preds = %362
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %17, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %35, align 4
  %376 = load i32, i32* %17, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = load i32**, i32*** %381, align 8
  %383 = load i32, i32* %17, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %35, align 4
  %389 = mul nsw i32 %387, %388
  %390 = load i32, i32* %15, align 4
  %391 = add nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %386, i64 %392
  store i32 %379, i32* %393, align 4
  br label %394

394:                                              ; preds = %368
  %395 = load i32, i32* %17, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %17, align 4
  br label %362

397:                                              ; preds = %362
  br label %398

398:                                              ; preds = %397, %360
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %15, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %15, align 4
  br label %79

402:                                              ; preds = %79
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %16, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %16, align 4
  br label %67

406:                                              ; preds = %67
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
