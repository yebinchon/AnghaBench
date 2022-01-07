; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @msvideo1_decode_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msvideo1_decode_16bit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca [8 x i16], align 16
  %20 = alloca i16*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i16*
  store i16* %29, i16** %20, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %21, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %5, align 4
  store i32 4, i32* %12, align 4
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %350, %1
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %353

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %21, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %346, %59
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %349

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %346

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  store i32 %81, i32* %4, align 4
  %82 = call i32 @CHECK_STREAM_PTR(i32 2)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %15, align 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %16, align 1
  %99 = load i8, i8* %15, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %80
  %103 = load i8, i8* %16, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %353

110:                                              ; preds = %106, %102, %80
  %111 = load i8, i8* %16, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 252
  %114 = icmp eq i32 %113, 132
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i8, i8* %16, align 1
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %117, 132
  %119 = shl i32 %118, 8
  %120 = load i8, i8* %15, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %119, %121
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %339

124:                                              ; preds = %110
  %125 = load i8, i8* %16, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp slt i32 %126, 128
  br i1 %127, label %128, label %303

128:                                              ; preds = %124
  %129 = load i8, i8* %16, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 %130, 8
  %132 = load i8, i8* %15, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %131, %133
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %17, align 2
  %136 = call i32 @CHECK_STREAM_PTR(i32 4)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = call zeroext i16 @AV_RL16(i8* %142)
  %144 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 0
  store i16 %143, i16* %144, align 16
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %14, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = call zeroext i16 @AV_RL16(i8* %152)
  %154 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 1
  store i16 %153, i16* %154, align 2
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %14, align 4
  %157 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 0
  %158 = load i16, i16* %157, align 16
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 32768
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %266

162:                                              ; preds = %128
  %163 = call i32 @CHECK_STREAM_PTR(i32 12)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = call zeroext i16 @AV_RL16(i8* %169)
  %171 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 2
  store i16 %170, i16* %171, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %14, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = call zeroext i16 @AV_RL16(i8* %179)
  %181 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 3
  store i16 %180, i16* %181, align 2
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %14, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = call zeroext i16 @AV_RL16(i8* %189)
  %191 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 4
  store i16 %190, i16* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %14, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = call zeroext i16 @AV_RL16(i8* %199)
  %201 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 5
  store i16 %200, i16* %201, align 2
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 2
  store i32 %203, i32* %14, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = call zeroext i16 @AV_RL16(i8* %209)
  %211 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 6
  store i16 %210, i16* %211, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 2
  store i32 %213, i32* %14, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = call zeroext i16 @AV_RL16(i8* %219)
  %221 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 7
  store i16 %220, i16* %221, align 2
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %224

224:                                              ; preds = %262, %162
  %225 = load i32, i32* %7, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %265

227:                                              ; preds = %224
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %251, %227
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 4
  br i1 %230, label %231, label %258

231:                                              ; preds = %228
  %232 = load i32, i32* %7, align 4
  %233 = and i32 %232, 2
  %234 = shl i32 %233, 1
  %235 = load i32, i32* %6, align 4
  %236 = and i32 %235, 2
  %237 = add nsw i32 %234, %236
  %238 = load i16, i16* %17, align 2
  %239 = zext i16 %238 to i32
  %240 = and i32 %239, 1
  %241 = xor i32 %240, 1
  %242 = add nsw i32 %237, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 %243
  %245 = load i16, i16* %244, align 2
  %246 = load i16*, i16** %20, align 8
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i16, i16* %246, i64 %249
  store i16 %245, i16* %250, align 2
  br label %251

251:                                              ; preds = %231
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  %254 = load i16, i16* %17, align 2
  %255 = zext i16 %254 to i32
  %256 = ashr i32 %255, 1
  %257 = trunc i32 %256 to i16
  store i16 %257, i16* %17, align 2
  br label %228

258:                                              ; preds = %228
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %4, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %224

265:                                              ; preds = %224
  br label %302

266:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %298, %266
  %268 = load i32, i32* %7, align 4
  %269 = icmp slt i32 %268, 4
  br i1 %269, label %270, label %301

270:                                              ; preds = %267
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %287, %270
  %272 = load i32, i32* %6, align 4
  %273 = icmp slt i32 %272, 4
  br i1 %273, label %274, label %294

274:                                              ; preds = %271
  %275 = load i16, i16* %17, align 2
  %276 = zext i16 %275 to i32
  %277 = and i32 %276, 1
  %278 = xor i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = load i16*, i16** %20, align 8
  %283 = load i32, i32* %4, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %4, align 4
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i16, i16* %282, i64 %285
  store i16 %281, i16* %286, align 2
  br label %287

287:                                              ; preds = %274
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  %290 = load i16, i16* %17, align 2
  %291 = zext i16 %290 to i32
  %292 = ashr i32 %291, 1
  %293 = trunc i32 %292 to i16
  store i16 %293, i16* %17, align 2
  br label %271

294:                                              ; preds = %271
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* %4, align 4
  %297 = sub nsw i32 %296, %295
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %267

301:                                              ; preds = %267
  br label %302

302:                                              ; preds = %301, %265
  br label %338

303:                                              ; preds = %124
  %304 = load i8, i8* %16, align 1
  %305 = zext i8 %304 to i32
  %306 = shl i32 %305, 8
  %307 = load i8, i8* %15, align 1
  %308 = zext i8 %307 to i32
  %309 = or i32 %306, %308
  %310 = trunc i32 %309 to i16
  %311 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 0
  store i16 %310, i16* %311, align 16
  store i32 0, i32* %7, align 4
  br label %312

312:                                              ; preds = %334, %303
  %313 = load i32, i32* %7, align 4
  %314 = icmp slt i32 %313, 4
  br i1 %314, label %315, label %337

315:                                              ; preds = %312
  store i32 0, i32* %6, align 4
  br label %316

316:                                              ; preds = %327, %315
  %317 = load i32, i32* %6, align 4
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %319, label %330

319:                                              ; preds = %316
  %320 = getelementptr inbounds [8 x i16], [8 x i16]* %19, i64 0, i64 0
  %321 = load i16, i16* %320, align 16
  %322 = load i16*, i16** %20, align 8
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %4, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i16, i16* %322, i64 %325
  store i16 %321, i16* %326, align 2
  br label %327

327:                                              ; preds = %319
  %328 = load i32, i32* %6, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %6, align 4
  br label %316

330:                                              ; preds = %316
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %4, align 4
  %333 = sub nsw i32 %332, %331
  store i32 %333, i32* %4, align 4
  br label %334

334:                                              ; preds = %330
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %312

337:                                              ; preds = %312
  br label %338

338:                                              ; preds = %337, %302
  br label %339

339:                                              ; preds = %338, %115
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %12, align 4
  %342 = load i32, i32* %3, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %3, align 4
  %344 = load i32, i32* %5, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %5, align 4
  br label %346

346:                                              ; preds = %340, %72
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %8, align 4
  br label %66

349:                                              ; preds = %66
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %9, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %9, align 4
  br label %56

353:                                              ; preds = %109, %56
  ret void
}

declare dso_local i32 @CHECK_STREAM_PTR(i32) #1

declare dso_local zeroext i16 @AV_RL16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
