; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_old_codec37.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_old_codec37.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Decoded size is too large.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid motion base value %d.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@c37_mv = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Subcodec 37 compression %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* @old_codec37 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_codec37(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = call i32 @bytestream2_get_byte(i32* %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = call i32 @bytestream2_get_byte(i32* %38)
  store i32 %39, i32* %21, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = call i32 @bytestream2_get_le16(i32* %41)
  store i32 %42, i32* %22, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  %45 = call i32 @bytestream2_get_le32(i32* %44)
  store i32 %45, i32* %23, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = call i32 @bytestream2_skip(i32* %47, i32 4)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  %51 = call i32 @bytestream2_get_byte(i32* %50)
  store i32 %51, i32* %24, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = call i32 @bytestream2_skip(i32* %53, i32 3)
  %55 = load i32, i32* %23, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %62, %65
  %67 = icmp sgt i32 %55, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %23, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AV_LOG_WARNING, align 4
  %84 = call i32 (i32, i32, i8*, ...) @av_log(i32 %82, i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %68, %5
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %22, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %24, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = call i32 @rotate_bufs(%struct.TYPE_5__* %102, i32 1)
  br label %104

104:                                              ; preds = %101, %98, %95, %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32* %116, i32** %17, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32* %127, i32** %18, align 8
  %128 = load i32, i32* %21, align 4
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %138

130:                                              ; preds = %104
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 (i32, i32, i8*, ...) @av_log(i32 %133, i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %6, align 4
  br label %574

138:                                              ; preds = %104
  %139 = load i32, i32* %20, align 4
  switch i32 %139, label %566 [
    i32 0, label %140
    i32 2, label %177
    i32 3, label %200
    i32 4, label %200
  ]

140:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @bytestream2_get_buffer(i32* %147, i32* %148, i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %17, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %17, align 8
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %141

158:                                              ; preds = %141
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %164, %165
  %167 = call i32 @memset(i32* %161, i32 0, i32 %166)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = mul nsw i32 %173, %174
  %176 = call i32 @memset(i32* %170, i32 0, i32 %175)
  br label %573

177:                                              ; preds = %138
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %23, align 4
  %181 = call i32 @rle_decode(%struct.TYPE_5__* %178, i32* %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %184, i32* %6, align 4
  br label %574

185:                                              ; preds = %177
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @memset(i32* %188, i32 0, i32 %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memset(i32* %195, i32 0, i32 %198)
  br label %573

200:                                              ; preds = %138, %138
  %201 = load i32, i32* %24, align 4
  %202 = and i32 %201, 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %417

204:                                              ; preds = %200
  store i32 0, i32* %14, align 4
  br label %205

205:                                              ; preds = %413, %204
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %416

209:                                              ; preds = %205
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %399, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %402

214:                                              ; preds = %210
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %214
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %19, align 4
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32*, i32** %18, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @copy_block4(i32* %223, i32* %227, i32 %228, i32 %229, i32 4)
  br label %399

231:                                              ; preds = %214
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 5
  %234 = call i32 @bytestream2_get_bytes_left(i32* %233)
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %6, align 4
  br label %574

238:                                              ; preds = %231
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  %241 = call i32 @bytestream2_get_byteu(i32* %240)
  store i32 %241, i32* %25, align 4
  %242 = load i32, i32* %25, align 4
  switch i32 %242, label %330 [
    i32 255, label %243
    i32 254, label %271
    i32 253, label %300
  ]

243:                                              ; preds = %238
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 5
  %246 = call i32 @bytestream2_get_bytes_left(i32* %245)
  %247 = icmp slt i32 %246, 16
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %249, i32* %6, align 4
  br label %574

250:                                              ; preds = %243
  store i32 0, i32* %15, align 4
  br label %251

251:                                              ; preds = %267, %250
  %252 = load i32, i32* %15, align 4
  %253 = icmp slt i32 %252, 4
  br i1 %253, label %254, label %270

254:                                              ; preds = %251
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 5
  %257 = load i32*, i32** %17, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %12, align 4
  %263 = mul nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  %266 = call i32 @bytestream2_get_bufferu(i32* %256, i32* %265, i32 4)
  br label %267

267:                                              ; preds = %254
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %251

270:                                              ; preds = %251
  br label %398

271:                                              ; preds = %238
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 5
  %274 = call i32 @bytestream2_get_bytes_left(i32* %273)
  %275 = icmp slt i32 %274, 4
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %277, i32* %6, align 4
  br label %574

278:                                              ; preds = %271
  store i32 0, i32* %15, align 4
  br label %279

279:                                              ; preds = %296, %278
  %280 = load i32, i32* %15, align 4
  %281 = icmp slt i32 %280, 4
  br i1 %281, label %282, label %299

282:                                              ; preds = %279
  %283 = load i32*, i32** %17, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %12, align 4
  %289 = mul nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 5
  %294 = call i32 @bytestream2_get_byteu(i32* %293)
  %295 = call i32 @memset(i32* %291, i32 %294, i32 4)
  br label %296

296:                                              ; preds = %282
  %297 = load i32, i32* %15, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %15, align 4
  br label %279

299:                                              ; preds = %279
  br label %398

300:                                              ; preds = %238
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 5
  %303 = call i32 @bytestream2_get_bytes_left(i32* %302)
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %306, i32* %6, align 4
  br label %574

307:                                              ; preds = %300
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 5
  %310 = call i32 @bytestream2_get_byteu(i32* %309)
  store i32 %310, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %311

311:                                              ; preds = %326, %307
  %312 = load i32, i32* %15, align 4
  %313 = icmp slt i32 %312, 4
  br i1 %313, label %314, label %329

314:                                              ; preds = %311
  %315 = load i32*, i32** %17, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %12, align 4
  %321 = mul nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %318, i64 %322
  %324 = load i32, i32* %16, align 4
  %325 = call i32 @memset(i32* %323, i32 %324, i32 4)
  br label %326

326:                                              ; preds = %314
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %311

329:                                              ; preds = %311
  br label %398

330:                                              ; preds = %238
  %331 = load i32, i32* %20, align 4
  %332 = icmp eq i32 %331, 4
  br i1 %332, label %333, label %350

333:                                              ; preds = %330
  %334 = load i32, i32* %25, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %350, label %336

336:                                              ; preds = %333
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 5
  %339 = call i32 @bytestream2_get_bytes_left(i32* %338)
  %340 = icmp slt i32 %339, 1
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %342, i32* %6, align 4
  br label %574

343:                                              ; preds = %336
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 5
  %346 = call i32 @bytestream2_get_byteu(i32* %345)
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %19, align 4
  %348 = load i32, i32* %13, align 4
  %349 = sub nsw i32 %348, 4
  store i32 %349, i32* %13, align 4
  br label %397

350:                                              ; preds = %333, %330
  %351 = load i32*, i32** @c37_mv, align 8
  %352 = load i32, i32* %21, align 4
  %353 = mul nsw i32 %352, 255
  %354 = load i32, i32* %25, align 4
  %355 = add nsw i32 %353, %354
  %356 = mul nsw i32 %355, 2
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %351, i64 %357
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %26, align 4
  %360 = load i32*, i32** @c37_mv, align 8
  %361 = load i32, i32* %21, align 4
  %362 = mul nsw i32 %361, 255
  %363 = load i32, i32* %25, align 4
  %364 = add nsw i32 %362, %363
  %365 = mul nsw i32 %364, 2
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %360, i64 %367
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %27, align 4
  %370 = load i32*, i32** %17, align 8
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32*, i32** %18, align 8
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %26, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %27, align 4
  %382 = load i32, i32* %12, align 4
  %383 = mul nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %12, align 4
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %26, align 4
  %392 = add nsw i32 %390, %391
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* %27, align 4
  %395 = add nsw i32 %393, %394
  %396 = call i32 @codec37_mv(i32* %373, i32* %385, i32 %388, i32 %389, i32 %392, i32 %395)
  br label %397

397:                                              ; preds = %350, %343
  br label %398

398:                                              ; preds = %397, %329, %299, %270
  br label %399

399:                                              ; preds = %398, %217
  %400 = load i32, i32* %13, align 4
  %401 = add nsw i32 %400, 4
  store i32 %401, i32* %13, align 4
  br label %210

402:                                              ; preds = %210
  %403 = load i32, i32* %12, align 4
  %404 = mul nsw i32 %403, 4
  %405 = load i32*, i32** %17, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  store i32* %407, i32** %17, align 8
  %408 = load i32, i32* %12, align 4
  %409 = mul nsw i32 %408, 4
  %410 = load i32*, i32** %18, align 8
  %411 = sext i32 %409 to i64
  %412 = getelementptr inbounds i32, i32* %410, i64 %411
  store i32* %412, i32** %18, align 8
  br label %413

413:                                              ; preds = %402
  %414 = load i32, i32* %14, align 4
  %415 = add nsw i32 %414, 4
  store i32 %415, i32* %14, align 4
  br label %205

416:                                              ; preds = %205
  br label %565

417:                                              ; preds = %200
  store i32 0, i32* %14, align 4
  br label %418

418:                                              ; preds = %561, %417
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %11, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %564

422:                                              ; preds = %418
  store i32 0, i32* %13, align 4
  br label %423

423:                                              ; preds = %547, %422
  %424 = load i32, i32* %13, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %550

427:                                              ; preds = %423
  %428 = load i32, i32* %19, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %444

430:                                              ; preds = %427
  %431 = load i32, i32* %19, align 4
  %432 = add nsw i32 %431, -1
  store i32 %432, i32* %19, align 4
  %433 = load i32*, i32** %17, align 8
  %434 = load i32, i32* %13, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32*, i32** %18, align 8
  %438 = load i32, i32* %13, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %12, align 4
  %442 = load i32, i32* %12, align 4
  %443 = call i32 @copy_block4(i32* %436, i32* %440, i32 %441, i32 %442, i32 4)
  br label %547

444:                                              ; preds = %427
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 5
  %447 = call i32 @bytestream2_get_byte(i32* %446)
  store i32 %447, i32* %28, align 4
  %448 = load i32, i32* %28, align 4
  %449 = icmp eq i32 %448, 255
  br i1 %449, label %450, label %478

450:                                              ; preds = %444
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 5
  %453 = call i32 @bytestream2_get_bytes_left(i32* %452)
  %454 = icmp slt i32 %453, 16
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %456, i32* %6, align 4
  br label %574

457:                                              ; preds = %450
  store i32 0, i32* %15, align 4
  br label %458

458:                                              ; preds = %474, %457
  %459 = load i32, i32* %15, align 4
  %460 = icmp slt i32 %459, 4
  br i1 %460, label %461, label %477

461:                                              ; preds = %458
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 5
  %464 = load i32*, i32** %17, align 8
  %465 = load i32, i32* %13, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  %468 = load i32, i32* %15, align 4
  %469 = load i32, i32* %12, align 4
  %470 = mul nsw i32 %468, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %467, i64 %471
  %473 = call i32 @bytestream2_get_bufferu(i32* %463, i32* %472, i32 4)
  br label %474

474:                                              ; preds = %461
  %475 = load i32, i32* %15, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %15, align 4
  br label %458

477:                                              ; preds = %458
  br label %546

478:                                              ; preds = %444
  %479 = load i32, i32* %20, align 4
  %480 = icmp eq i32 %479, 4
  br i1 %480, label %481, label %498

481:                                              ; preds = %478
  %482 = load i32, i32* %28, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %498, label %484

484:                                              ; preds = %481
  %485 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %485, i32 0, i32 5
  %487 = call i32 @bytestream2_get_bytes_left(i32* %486)
  %488 = icmp slt i32 %487, 1
  br i1 %488, label %489, label %491

489:                                              ; preds = %484
  %490 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %490, i32* %6, align 4
  br label %574

491:                                              ; preds = %484
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 5
  %494 = call i32 @bytestream2_get_byteu(i32* %493)
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %19, align 4
  %496 = load i32, i32* %13, align 4
  %497 = sub nsw i32 %496, 4
  store i32 %497, i32* %13, align 4
  br label %545

498:                                              ; preds = %481, %478
  %499 = load i32*, i32** @c37_mv, align 8
  %500 = load i32, i32* %21, align 4
  %501 = mul nsw i32 %500, 255
  %502 = load i32, i32* %28, align 4
  %503 = add nsw i32 %501, %502
  %504 = mul nsw i32 %503, 2
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %499, i64 %505
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %29, align 4
  %508 = load i32*, i32** @c37_mv, align 8
  %509 = load i32, i32* %21, align 4
  %510 = mul nsw i32 %509, 255
  %511 = load i32, i32* %28, align 4
  %512 = add nsw i32 %510, %511
  %513 = mul nsw i32 %512, 2
  %514 = add nsw i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %508, i64 %515
  %517 = load i32, i32* %516, align 4
  store i32 %517, i32* %30, align 4
  %518 = load i32*, i32** %17, align 8
  %519 = load i32, i32* %13, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32*, i32** %18, align 8
  %523 = load i32, i32* %13, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %29, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* %30, align 4
  %530 = load i32, i32* %12, align 4
  %531 = mul nsw i32 %529, %530
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %528, i64 %532
  %534 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %12, align 4
  %538 = load i32, i32* %13, align 4
  %539 = load i32, i32* %29, align 4
  %540 = add nsw i32 %538, %539
  %541 = load i32, i32* %14, align 4
  %542 = load i32, i32* %30, align 4
  %543 = add nsw i32 %541, %542
  %544 = call i32 @codec37_mv(i32* %521, i32* %533, i32 %536, i32 %537, i32 %540, i32 %543)
  br label %545

545:                                              ; preds = %498, %491
  br label %546

546:                                              ; preds = %545, %477
  br label %547

547:                                              ; preds = %546, %430
  %548 = load i32, i32* %13, align 4
  %549 = add nsw i32 %548, 4
  store i32 %549, i32* %13, align 4
  br label %423

550:                                              ; preds = %423
  %551 = load i32, i32* %12, align 4
  %552 = mul nsw i32 %551, 4
  %553 = load i32*, i32** %17, align 8
  %554 = sext i32 %552 to i64
  %555 = getelementptr inbounds i32, i32* %553, i64 %554
  store i32* %555, i32** %17, align 8
  %556 = load i32, i32* %12, align 4
  %557 = mul nsw i32 %556, 4
  %558 = load i32*, i32** %18, align 8
  %559 = sext i32 %557 to i64
  %560 = getelementptr inbounds i32, i32* %558, i64 %559
  store i32* %560, i32** %18, align 8
  br label %561

561:                                              ; preds = %550
  %562 = load i32, i32* %14, align 4
  %563 = add nsw i32 %562, 4
  store i32 %563, i32* %14, align 4
  br label %418

564:                                              ; preds = %418
  br label %565

565:                                              ; preds = %564, %416
  br label %573

566:                                              ; preds = %138
  %567 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 4
  %569 = load i32, i32* %568, align 8
  %570 = load i32, i32* %20, align 4
  %571 = call i32 @avpriv_report_missing_feature(i32 %569, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %570)
  %572 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %572, i32* %6, align 4
  br label %574

573:                                              ; preds = %565, %185, %158
  store i32 0, i32* %6, align 4
  br label %574

574:                                              ; preds = %573, %566, %489, %455, %341, %305, %276, %248, %236, %183, %130
  %575 = load i32, i32* %6, align 4
  ret i32 %575
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @rotate_bufs(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rle_decode(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @copy_block4(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i32*, i32) #1

declare dso_local i32 @codec37_mv(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
