; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideodec.c_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i64, %struct.TYPE_8__, i32**, i32**, i32**, i32**, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_9__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot build Huffman codes\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Plane has more than one symbol yet a slice has a length of zero.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@VLC_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Decoding error\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Slice decoding ran out of bits\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%d bits left after decoding slice\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32*, i32)* @decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_plane(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_9__, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @compute_cmask(i32 %43, i32 %46, i32 %51)
  store i32 %52, i32* %29, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %237

57:                                               ; preds = %8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %58

58:                                               ; preds = %233, %57
  %59 = load i32, i32* %20, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %236

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 7
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @init_get_bits8_le(i32* %30, i32 %75, i32 %86)
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* %26, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %64
  %91 = load i32, i32* %26, align 4
  store i32 %91, i32* %9, align 4
  br label %490

92:                                               ; preds = %64
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @init_get_bits8_le(i32* %31, i32 %103, i32 %114)
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %26, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %92
  %119 = load i32, i32* %26, align 4
  store i32 %119, i32* %9, align 4
  br label %490

120:                                              ; preds = %92
  %121 = load i32, i32* %23, align 4
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 %122, %124
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sdiv i32 %125, %128
  %130 = load i32, i32* %29, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %23, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32* %137, i32** %32, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %13, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32*, i32** %32, align 8
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = add nsw i64 %148, 7
  %150 = sdiv i64 %149, 8
  %151 = mul nsw i64 3, %150
  %152 = call i32 @get_bits_left(i32* %30)
  %153 = sext i32 %152 to i64
  %154 = icmp sgt i64 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %120
  %156 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %156, i32* %9, align 4
  br label %490

157:                                              ; preds = %120
  %158 = load i32*, i32** %32, align 8
  store i32* %158, i32** %33, align 8
  br label %159

159:                                              ; preds = %229, %157
  %160 = load i32*, i32** %33, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %13, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = icmp ult i32* %160, %166
  br i1 %167, label %168, label %232

168:                                              ; preds = %159
  %169 = call i32 @get_bits_le(i32* %30, i32 3)
  store i32 %169, i32* %34, align 4
  %170 = load i32, i32* %34, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32*, i32** %33, align 8
  %174 = bitcast i32* %173 to i64*
  store i64 0, i64* %174, align 8
  br label %228

175:                                              ; preds = %168
  %176 = load i32, i32* %34, align 4
  %177 = add nsw i32 %176, 1
  %178 = sub nsw i32 8, %177
  %179 = ashr i32 128, %178
  store i32 %179, i32* %35, align 4
  %180 = load i32, i32* %34, align 4
  %181 = add nsw i32 %180, 1
  %182 = mul nsw i32 %181, 8
  %183 = call i32 @get_bits_left(i32* %31)
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %9, align 4
  br label %490

187:                                              ; preds = %175
  store i32 0, i32* %37, align 4
  br label %188

188:                                              ; preds = %224, %187
  %189 = load i32, i32* %37, align 4
  %190 = icmp slt i32 %189, 8
  br i1 %190, label %191, label %227

191:                                              ; preds = %188
  %192 = load i32, i32* %34, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i32 @get_bits_le(i32* %31, i32 %193)
  %195 = load i32*, i32** %33, align 8
  %196 = load i32, i32* %37, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  %199 = load i32*, i32** %33, align 8
  %200 = load i32, i32* %37, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %35, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* %34, align 4
  %208 = sub nsw i32 8, %207
  %209 = shl i32 %206, %208
  store i32 %209, i32* %36, align 4
  %210 = load i32, i32* %35, align 4
  %211 = load i32*, i32** %33, align 8
  %212 = load i32, i32* %37, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, %210
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* %36, align 4
  %218 = load i32*, i32** %33, align 8
  %219 = load i32, i32* %37, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %217
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %191
  %225 = load i32, i32* %37, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %37, align 4
  br label %188

227:                                              ; preds = %188
  br label %228

228:                                              ; preds = %227, %172
  br label %229

229:                                              ; preds = %228
  %230 = load i32*, i32** %33, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 8
  store i32* %231, i32** %33, align 8
  br label %159

232:                                              ; preds = %159
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  br label %58

236:                                              ; preds = %58
  store i32 0, i32* %9, align 4
  br label %490

237:                                              ; preds = %8
  %238 = load i32*, i32** %16, align 8
  %239 = call i64 @build_huff(i32* %238, %struct.TYPE_9__* %24, i32* %28)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = load i32, i32* @AV_LOG_ERROR, align 4
  %246 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %244, i32 %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %247 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %247, i32* %9, align 4
  br label %490

248:                                              ; preds = %237
  %249 = load i32, i32* %28, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %317

251:                                              ; preds = %248
  store i32 0, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %252

252:                                              ; preds = %313, %251
  %253 = load i32, i32* %20, align 4
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %316

258:                                              ; preds = %252
  %259 = load i32, i32* %23, align 4
  store i32 %259, i32* %22, align 4
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %20, align 4
  %262 = add nsw i32 %261, 1
  %263 = mul nsw i32 %260, %262
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sdiv i32 %263, %266
  %268 = load i32, i32* %29, align 4
  %269 = and i32 %267, %268
  store i32 %269, i32* %23, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = load i32, i32* %22, align 4
  %272 = load i32, i32* %13, align 4
  %273 = mul nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  store i32* %275, i32** %38, align 8
  store i32 128, i32* %27, align 4
  %276 = load i32, i32* %22, align 4
  store i32 %276, i32* %19, align 4
  br label %277

277:                                              ; preds = %309, %258
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %23, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %312

281:                                              ; preds = %277
  store i32 0, i32* %18, align 4
  br label %282

282:                                              ; preds = %301, %281
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %304

286:                                              ; preds = %282
  %287 = load i32, i32* %28, align 4
  store i32 %287, i32* %21, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* %27, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %27, align 4
  %294 = load i32, i32* %27, align 4
  store i32 %294, i32* %21, align 4
  br label %295

295:                                              ; preds = %290, %286
  %296 = load i32, i32* %21, align 4
  %297 = load i32*, i32** %38, align 8
  %298 = load i32, i32* %18, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  br label %301

301:                                              ; preds = %295
  %302 = load i32, i32* %18, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %18, align 4
  br label %282

304:                                              ; preds = %282
  %305 = load i32, i32* %13, align 4
  %306 = load i32*, i32** %38, align 8
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32* %308, i32** %38, align 8
  br label %309

309:                                              ; preds = %304
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %19, align 4
  br label %277

312:                                              ; preds = %277
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %20, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %20, align 4
  br label %252

316:                                              ; preds = %252
  store i32 0, i32* %9, align 4
  br label %490

317:                                              ; preds = %248
  %318 = load i32*, i32** %16, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 256
  store i32* %319, i32** %16, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %320

320:                                              ; preds = %482, %317
  %321 = load i32, i32* %20, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %485

326:                                              ; preds = %320
  %327 = load i32, i32* %23, align 4
  store i32 %327, i32* %22, align 4
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %20, align 4
  %330 = add nsw i32 %329, 1
  %331 = mul nsw i32 %328, %330
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sdiv i32 %331, %334
  %336 = load i32, i32* %29, align 4
  %337 = and i32 %335, %336
  store i32 %337, i32* %23, align 4
  %338 = load i32*, i32** %12, align 8
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* %13, align 4
  %341 = mul nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %338, i64 %342
  store i32* %343, i32** %39, align 8
  %344 = load i32, i32* %20, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %326
  %347 = load i32*, i32** %16, align 8
  %348 = load i32, i32* %20, align 4
  %349 = mul nsw i32 %348, 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  %352 = getelementptr inbounds i32, i32* %351, i64 -4
  %353 = call i32 @AV_RL32(i32* %352)
  br label %355

354:                                              ; preds = %326
  br label %355

355:                                              ; preds = %354, %346
  %356 = phi i32 [ %353, %346 ], [ 0, %354 ]
  store i32 %356, i32* %40, align 4
  %357 = load i32*, i32** %16, align 8
  %358 = load i32, i32* %20, align 4
  %359 = mul nsw i32 %358, 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = call i32 @AV_RL32(i32* %361)
  store i32 %362, i32* %41, align 4
  %363 = load i32, i32* %41, align 4
  %364 = load i32, i32* %40, align 4
  %365 = sub nsw i32 %363, %364
  store i32 %365, i32* %42, align 4
  %366 = load i32, i32* %42, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %355
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %370, align 8
  %372 = load i32, i32* @AV_LOG_ERROR, align 4
  %373 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %371, i32 %372, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %487

374:                                              ; preds = %355
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = load i32, i32* %42, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %377, %379
  %381 = trunc i64 %380 to i32
  %382 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %383 = call i32 @memset(i32 %381, i32 0, i32 %382)
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %386, align 8
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = inttoptr i64 %390 to i32*
  %392 = load i32*, i32** %16, align 8
  %393 = load i32, i32* %40, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = mul nsw i32 %398, 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %395, i64 %400
  %402 = load i32, i32* %41, align 4
  %403 = load i32, i32* %40, align 4
  %404 = sub nsw i32 %402, %403
  %405 = add nsw i32 %404, 3
  %406 = ashr i32 %405, 2
  %407 = call i32 %387(i32* %391, i32* %401, i32 %406)
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = load i32, i32* %42, align 4
  %412 = mul nsw i32 %411, 8
  %413 = call i32 @init_get_bits(i32* %25, i64 %410, i32 %412)
  store i32 128, i32* %27, align 4
  %414 = load i32, i32* %22, align 4
  store i32 %414, i32* %19, align 4
  br label %415

415:                                              ; preds = %468, %374
  %416 = load i32, i32* %19, align 4
  %417 = load i32, i32* %23, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %471

419:                                              ; preds = %415
  store i32 0, i32* %18, align 4
  br label %420

420:                                              ; preds = %451, %419
  %421 = load i32, i32* %18, align 4
  %422 = load i32, i32* %14, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %454

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @VLC_BITS, align 4
  %428 = call i32 @get_vlc2(i32* %25, i32 %426, i32 %427, i32 3)
  store i32 %428, i32* %21, align 4
  %429 = load i32, i32* %21, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %424
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %433, align 8
  %435 = load i32, i32* @AV_LOG_ERROR, align 4
  %436 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %434, i32 %435, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %487

437:                                              ; preds = %424
  %438 = load i32, i32* %17, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %437
  %441 = load i32, i32* %21, align 4
  %442 = load i32, i32* %27, align 4
  %443 = add nsw i32 %442, %441
  store i32 %443, i32* %27, align 4
  %444 = load i32, i32* %27, align 4
  store i32 %444, i32* %21, align 4
  br label %445

445:                                              ; preds = %440, %437
  %446 = load i32, i32* %21, align 4
  %447 = load i32*, i32** %39, align 8
  %448 = load i32, i32* %18, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  store i32 %446, i32* %450, align 4
  br label %451

451:                                              ; preds = %445
  %452 = load i32, i32* %18, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %18, align 4
  br label %420

454:                                              ; preds = %420
  %455 = call i32 @get_bits_left(i32* %25)
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %454
  %458 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %459, align 8
  %461 = load i32, i32* @AV_LOG_ERROR, align 4
  %462 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %460, i32 %461, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %487

463:                                              ; preds = %454
  %464 = load i32, i32* %13, align 4
  %465 = load i32*, i32** %39, align 8
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds i32, i32* %465, i64 %466
  store i32* %467, i32** %39, align 8
  br label %468

468:                                              ; preds = %463
  %469 = load i32, i32* %19, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %19, align 4
  br label %415

471:                                              ; preds = %415
  %472 = call i32 @get_bits_left(i32* %25)
  %473 = icmp sgt i32 %472, 32
  br i1 %473, label %474, label %481

474:                                              ; preds = %471
  %475 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %476, align 8
  %478 = load i32, i32* @AV_LOG_WARNING, align 4
  %479 = call i32 @get_bits_left(i32* %25)
  %480 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %477, i32 %478, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %479)
  br label %481

481:                                              ; preds = %474, %471
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %20, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %20, align 4
  br label %320

485:                                              ; preds = %320
  %486 = call i32 @ff_free_vlc(%struct.TYPE_9__* %24)
  store i32 0, i32* %9, align 4
  br label %490

487:                                              ; preds = %457, %431, %368
  %488 = call i32 @ff_free_vlc(%struct.TYPE_9__* %24)
  %489 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %489, i32* %9, align 4
  br label %490

490:                                              ; preds = %487, %485, %316, %241, %236, %185, %155, %118, %90
  %491 = load i32, i32* %9, align 4
  ret i32 %491
}

declare dso_local i32 @compute_cmask(i32, i32, i32) #1

declare dso_local i32 @init_get_bits8_le(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_le(i32*, i32) #1

declare dso_local i64 @build_huff(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @ff_free_vlc(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
