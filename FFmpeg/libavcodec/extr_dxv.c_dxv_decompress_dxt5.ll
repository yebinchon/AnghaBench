; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_dxt5.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_dxt5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @dxv_decompress_dxt5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxv_decompress_dxt5(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32* %19, i32** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 0
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @bytestream2_get_le32(i32* %24)
  %26 = call i32 @AV_WL32(i64 %23, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @bytestream2_get_le32(i32* %31)
  %33 = call i32 @AV_WL32(i64 %30, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @bytestream2_get_le32(i32* %38)
  %40 = call i32 @AV_WL32(i64 %37, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 12
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @bytestream2_get_le32(i32* %45)
  %47 = call i32 @AV_WL32(i64 %44, i32 %46)
  br label %48

48:                                               ; preds = %535, %236, %1
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 4
  %55 = icmp sle i32 %50, %54
  br i1 %55, label %56, label %536

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 4
  %67 = mul nsw i32 4, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = call i32 @AV_RL32(i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 4, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @AV_WL32(i64 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 4
  %87 = mul nsw i32 4, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %84, %88
  %90 = call i32 @AV_RL32(i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 4, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @AV_WL32(i64 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %384

102:                                              ; preds = %56
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @bytestream2_get_bytes_left(i32* %103)
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %107, i32* %2, align 4
  br label %537

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @bytestream2_get_le32(i32* %112)
  store i32 %113, i32* %6, align 4
  store i32 16, i32* %10, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 3
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = ashr i32 %117, 2
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %7, align 4
  switch i32 %121, label %383 [
    i32 0, label %122
    i32 1, label %237
    i32 2, label %294
    i32 3, label %356
  ]

122:                                              ; preds = %114
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @bytestream2_get_byte(i32* %123)
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, 256
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %135, %128
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @bytestream2_get_le16(i32* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, 65535
  br i1 %137, label %129, label %138

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %122
  br label %140

140:                                              ; preds = %153, %139
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %148, 4
  %150 = icmp sle i32 %145, %149
  br label %151

151:                                              ; preds = %143, %140
  %152 = phi i1 [ false, %140 ], [ %150, %143 ]
  br i1 %152, label %153, label %236

153:                                              ; preds = %151
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sub nsw i32 %157, 4
  %159 = mul nsw i32 4, %158
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %156, %160
  %162 = call i32 @AV_RL32(i64 %161)
  store i32 %162, i32* %9, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 4, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @AV_WL32(i64 %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %177, 4
  %179 = mul nsw i32 4, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = call i32 @AV_RL32(i64 %181)
  store i32 %182, i32* %9, align 4
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = mul nsw i32 4, %186
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %185, %188
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @AV_WL32(i64 %189, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sub nsw i32 %197, 4
  %199 = mul nsw i32 4, %198
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %196, %200
  %202 = call i32 @AV_RL32(i64 %201)
  store i32 %202, i32* %9, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = mul nsw i32 4, %206
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %205, %208
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @AV_WL32(i64 %209, i32 %210)
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 %217, 4
  %219 = mul nsw i32 4, %218
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %216, %220
  %222 = call i32 @AV_RL32(i64 %221)
  store i32 %222, i32* %9, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = mul nsw i32 4, %226
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %225, %228
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @AV_WL32(i64 %229, i32 %230)
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %14, align 4
  br label %140

236:                                              ; preds = %151
  br label %48

237:                                              ; preds = %114
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 @bytestream2_get_byte(i32* %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp eq i32 %240, 255
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %249, %242
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 @bytestream2_get_le16(i32* %244)
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %243
  %250 = load i32, i32* %13, align 4
  %251 = icmp eq i32 %250, 65535
  br i1 %251, label %243, label %252

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %252, %237
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sub nsw i32 %257, 4
  %259 = mul nsw i32 4, %258
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %256, %260
  %262 = call i32 @AV_RL32(i64 %261)
  store i32 %262, i32* %9, align 4
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = mul nsw i32 4, %266
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %265, %268
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @AV_WL32(i64 %269, i32 %270)
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sub nsw i32 %277, 4
  %279 = mul nsw i32 4, %278
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %276, %280
  %282 = call i32 @AV_RL32(i64 %281)
  store i32 %282, i32* %9, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = mul nsw i32 4, %286
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %285, %288
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @AV_WL32(i64 %289, i32 %290)
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %383

294:                                              ; preds = %114
  %295 = load i32*, i32** %5, align 8
  %296 = call i32 @bytestream2_get_le16(i32* %295)
  %297 = add nsw i32 8, %296
  store i32 %297, i32* %8, align 4
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %311, label %301

301:                                              ; preds = %294
  %302 = load i32, i32* %11, align 4
  %303 = load i32, i32* %8, align 4
  %304 = sub nsw i32 %302, %303
  %305 = add i32 %304, 2
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sdiv i32 %308, 4
  %310 = icmp ugt i32 %305, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %301, %294
  %312 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %312, i32* %2, align 4
  br label %537

313:                                              ; preds = %301
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* %8, align 4
  %319 = sub nsw i32 %317, %318
  %320 = mul nsw i32 4, %319
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %316, %321
  %323 = call i32 @AV_RL32(i64 %322)
  store i32 %323, i32* %9, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %11, align 4
  %328 = mul nsw i32 4, %327
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %326, %329
  %331 = load i32, i32* %9, align 4
  %332 = call i32 @AV_WL32(i64 %330, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %8, align 4
  %340 = sub nsw i32 %338, %339
  %341 = mul nsw i32 4, %340
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %337, %342
  %344 = call i32 @AV_RL32(i64 %343)
  store i32 %344, i32* %9, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = mul nsw i32 4, %348
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %347, %350
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @AV_WL32(i64 %351, i32 %352)
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %11, align 4
  br label %383

356:                                              ; preds = %114
  %357 = load i32*, i32** %5, align 8
  %358 = call i32 @bytestream2_get_le32(i32* %357)
  store i32 %358, i32* %9, align 4
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* %11, align 4
  %363 = mul nsw i32 4, %362
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %361, %364
  %366 = load i32, i32* %9, align 4
  %367 = call i32 @AV_WL32(i64 %365, i32 %366)
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %11, align 4
  %370 = load i32*, i32** %5, align 8
  %371 = call i32 @bytestream2_get_le32(i32* %370)
  store i32 %371, i32* %9, align 4
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = mul nsw i32 4, %375
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %374, %377
  %379 = load i32, i32* %9, align 4
  %380 = call i32 @AV_WL32(i64 %378, i32 %379)
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  br label %383

383:                                              ; preds = %114, %356, %313, %253
  br label %384

384:                                              ; preds = %383, %59
  %385 = call i32 @CHECKPOINT(i32 4)
  %386 = load i32, i32* %11, align 4
  %387 = add nsw i32 %386, 2
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = sdiv i32 %390, 4
  %392 = icmp sgt i32 %387, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %384
  %394 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %394, i32* %2, align 4
  br label %537

395:                                              ; preds = %384
  %396 = load i32, i32* %7, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %457

398:                                              ; preds = %395
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* %11, align 4
  %401 = icmp sgt i32 %399, %400
  br i1 %401, label %412, label %402

402:                                              ; preds = %398
  %403 = load i32, i32* %11, align 4
  %404 = load i32, i32* %8, align 4
  %405 = sub nsw i32 %403, %404
  %406 = add i32 %405, 2
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = sdiv i32 %409, 4
  %411 = icmp ugt i32 %406, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %402, %398
  %413 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %413, i32* %2, align 4
  br label %537

414:                                              ; preds = %402
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = load i32, i32* %11, align 4
  %419 = load i32, i32* %8, align 4
  %420 = sub nsw i32 %418, %419
  %421 = mul nsw i32 4, %420
  %422 = sext i32 %421 to i64
  %423 = add nsw i64 %417, %422
  %424 = call i32 @AV_RL32(i64 %423)
  store i32 %424, i32* %9, align 4
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i32, i32* %11, align 4
  %429 = mul nsw i32 4, %428
  %430 = sext i32 %429 to i64
  %431 = add nsw i64 %427, %430
  %432 = load i32, i32* %9, align 4
  %433 = call i32 @AV_WL32(i64 %431, i32 %432)
  %434 = load i32, i32* %11, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %11, align 4
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load i32, i32* %11, align 4
  %440 = load i32, i32* %8, align 4
  %441 = sub nsw i32 %439, %440
  %442 = mul nsw i32 4, %441
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %438, %443
  %445 = call i32 @AV_RL32(i64 %444)
  store i32 %445, i32* %9, align 4
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = load i32, i32* %11, align 4
  %450 = mul nsw i32 4, %449
  %451 = sext i32 %450 to i64
  %452 = add nsw i64 %448, %451
  %453 = load i32, i32* %9, align 4
  %454 = call i32 @AV_WL32(i64 %452, i32 %453)
  %455 = load i32, i32* %11, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %11, align 4
  br label %535

457:                                              ; preds = %395
  %458 = call i32 @CHECKPOINT(i32 4)
  %459 = load i32, i32* %7, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %477

461:                                              ; preds = %457
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* %11, align 4
  %464 = icmp sgt i32 %462, %463
  br i1 %464, label %475, label %465

465:                                              ; preds = %461
  %466 = load i32, i32* %11, align 4
  %467 = load i32, i32* %8, align 4
  %468 = sub nsw i32 %466, %467
  %469 = add i32 %468, 2
  %470 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = sdiv i32 %472, 4
  %474 = icmp ugt i32 %469, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %465, %461
  %476 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %476, i32* %2, align 4
  br label %537

477:                                              ; preds = %465, %457
  %478 = load i32, i32* %7, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %477
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load i32, i32* %11, align 4
  %485 = load i32, i32* %8, align 4
  %486 = sub nsw i32 %484, %485
  %487 = mul nsw i32 4, %486
  %488 = sext i32 %487 to i64
  %489 = add nsw i64 %483, %488
  %490 = call i32 @AV_RL32(i64 %489)
  store i32 %490, i32* %9, align 4
  br label %494

491:                                              ; preds = %477
  %492 = load i32*, i32** %5, align 8
  %493 = call i32 @bytestream2_get_le32(i32* %492)
  store i32 %493, i32* %9, align 4
  br label %494

494:                                              ; preds = %491, %480
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = load i32, i32* %11, align 4
  %499 = mul nsw i32 4, %498
  %500 = sext i32 %499 to i64
  %501 = add nsw i64 %497, %500
  %502 = load i32, i32* %9, align 4
  %503 = call i32 @AV_WL32(i64 %501, i32 %502)
  %504 = load i32, i32* %11, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %11, align 4
  %506 = call i32 @CHECKPOINT(i32 4)
  %507 = load i32, i32* %7, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %520

509:                                              ; preds = %494
  %510 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = load i32, i32* %11, align 4
  %514 = load i32, i32* %8, align 4
  %515 = sub nsw i32 %513, %514
  %516 = mul nsw i32 4, %515
  %517 = sext i32 %516 to i64
  %518 = add nsw i64 %512, %517
  %519 = call i32 @AV_RL32(i64 %518)
  store i32 %519, i32* %9, align 4
  br label %523

520:                                              ; preds = %494
  %521 = load i32*, i32** %5, align 8
  %522 = call i32 @bytestream2_get_le32(i32* %521)
  store i32 %522, i32* %9, align 4
  br label %523

523:                                              ; preds = %520, %509
  %524 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = load i32, i32* %11, align 4
  %528 = mul nsw i32 4, %527
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %526, %529
  %531 = load i32, i32* %9, align 4
  %532 = call i32 @AV_WL32(i64 %530, i32 %531)
  %533 = load i32, i32* %11, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %11, align 4
  br label %535

535:                                              ; preds = %523, %414
  br label %48

536:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %537

537:                                              ; preds = %536, %475, %412, %393, %311, %106
  %538 = load i32, i32* %2, align 4
  ret i32 %538
}

declare dso_local i32 @AV_WL32(i64, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @AV_RL32(i64) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @CHECKPOINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
