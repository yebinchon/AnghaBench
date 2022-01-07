; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_codec2subblock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_codec2subblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@motion_vectors = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @codec2subblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec2subblock(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = call i32 @bytestream2_get_bytes_left(i32* %15)
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %5, align 4
  br label %335

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = call i64 @bytestream2_get_byteu(i32* %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %26 [
    i32 245, label %82
    i32 246, label %144
    i32 247, label %172
    i32 248, label %181
    i32 249, label %190
    i32 250, label %190
    i32 251, label %190
    i32 252, label %190
    i32 253, label %215
    i32 254, label %247
    i32 255, label %274
  ]

26:                                               ; preds = %20
  %27 = load i32**, i32*** @motion_vectors, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32**, i32*** @motion_vectors, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @good_mvec(%struct.TYPE_6__* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %26
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %54, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = mul nsw i32 %70, %73
  %75 = add nsw i32 %67, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @copy_block(i32 %60, i32 %75, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %49, %26
  br label %334

82:                                               ; preds = %20
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = call i32 @bytestream2_get_bytes_left(i32* %84)
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %5, align 4
  br label %335

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = call i32 @bytestream2_get_le16u(i32* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = srem i32 %93, %96
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %98, %101
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @good_mvec(%struct.TYPE_6__* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %89
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %116, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %133, %134
  %136 = mul nsw i32 %132, %135
  %137 = add nsw i32 %129, %136
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @copy_block(i32 %122, i32 %137, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %111, %89
  br label %334

144:                                              ; preds = %20
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = mul nsw i32 %152, %153
  %155 = add nsw i32 %149, %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %160, %165
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @copy_block(i32 %155, i32 %166, i32 %167, i32 %170)
  br label %334

172:                                              ; preds = %20
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @opcode_0xf7(%struct.TYPE_6__* %173, i32 %174, i32 %175, i32 %176, i32 %179)
  br label %334

181:                                              ; preds = %20
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @opcode_0xf8(%struct.TYPE_6__* %182, i32 %183, i32 %184, i32 %185, i32 %188)
  br label %334

190:                                              ; preds = %20, %20, %20, %20
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %196, %199
  %201 = add nsw i32 %195, %200
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sub nsw i32 %205, 249
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @fill_block(i32 %201, i32 %209, i32 %210, i32 %213)
  br label %334

215:                                              ; preds = %20
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 4
  %218 = call i32 @bytestream2_get_bytes_left(i32* %217)
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %221, i32* %5, align 4
  br label %335

222:                                              ; preds = %215
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = mul nsw i32 %228, %231
  %233 = add nsw i32 %227, %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = call i64 @bytestream2_get_byteu(i32* %238)
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @fill_block(i32 %233, i32 %241, i32 %242, i32 %245)
  br label %334

247:                                              ; preds = %20
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 4
  %250 = call i32 @bytestream2_get_bytes_left(i32* %249)
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %253, i32* %5, align 4
  br label %335

254:                                              ; preds = %247
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %8, align 4
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %260, %263
  %265 = add nsw i32 %259, %264
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 4
  %268 = call i32 @bytestream2_get_le16u(i32* %267)
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @fill_block(i32 %265, i32 %268, i32 %269, i32 %272)
  br label %334

274:                                              ; preds = %20
  %275 = load i32, i32* %9, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @opcode_0xf8(%struct.TYPE_6__* %278, i32 %279, i32 %280, i32 %281, i32 %284)
  br label %333

286:                                              ; preds = %274
  %287 = load i32, i32* %9, align 4
  %288 = ashr i32 %287, 1
  store i32 %288, i32* %9, align 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @codec2subblock(%struct.TYPE_6__* %289, i32 %290, i32 %291, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %286
  %296 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %296, i32* %5, align 4
  br label %335

297:                                              ; preds = %286
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @codec2subblock(%struct.TYPE_6__* %298, i32 %301, i32 %302, i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %307, i32* %5, align 4
  br label %335

308:                                              ; preds = %297
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @codec2subblock(%struct.TYPE_6__* %309, i32 %310, i32 %313, i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %308
  %318 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %318, i32* %5, align 4
  br label %335

319:                                              ; preds = %308
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %9, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @codec2subblock(%struct.TYPE_6__* %320, i32 %323, i32 %326, i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %319
  %331 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %331, i32* %5, align 4
  br label %335

332:                                              ; preds = %319
  br label %333

333:                                              ; preds = %332, %277
  br label %334

334:                                              ; preds = %333, %254, %222, %190, %181, %172, %144, %143, %81
  store i32 0, i32* %5, align 4
  br label %335

335:                                              ; preds = %334, %330, %317, %306, %295, %252, %220, %87, %18
  %336 = load i32, i32* %5, align 4
  ret i32 %336
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i64 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @good_mvec(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @copy_block(i32, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @opcode_0xf7(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @opcode_0xf8(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @fill_block(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
