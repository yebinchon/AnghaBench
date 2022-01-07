; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_magy_decode_slice10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_magy_decode_slice10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__**, i64, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 (i32*, i32*, i32, i32, i32)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32*, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown prediction: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32)* @magy_decode_slice10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magy_decode_slice10(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
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
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %10, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 12
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %552, %4
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %555

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %65, %71
  %73 = call i32 @FFMIN(i32 %62, i64 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @AV_CEIL_RSHIFT(i32 %73, i32 %80)
  store i32 %81, i32* %23, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 11
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @AV_CEIL_RSHIFT(i32 %84, i32 %91)
  store i32 %92, i32* %24, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 10
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AV_CEIL_RSHIFT(i32 %95, i32 %102)
  store i32 %103, i32* %25, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %110, 2
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 1, %112
  %114 = mul nsw i32 %111, %113
  store i32 %114, i32* %26, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %27, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 8
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %128, i64 %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %125, %137
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %141, i64 %143
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @init_get_bits8(i32* %18, i64 %138, i32 %150)
  store i32 %151, i32* %30, align 4
  %152 = load i32, i32* %30, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %59
  %155 = load i32, i32* %30, align 4
  store i32 %155, i32* %5, align 4
  br label %718

156:                                              ; preds = %59
  %157 = call i32 @get_bits(i32* %18, i32 8)
  store i32 %157, i32* %28, align 4
  %158 = call i32 @get_bits(i32* %18, i32 8)
  store i32 %158, i32* %29, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %25, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %27, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  store i32* %173, i32** %19, align 8
  %174 = load i32, i32* %28, align 4
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %156
  %178 = call i32 @get_bits_left(i32* %18)
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %24, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %23, align 4
  %183 = mul nsw i32 %181, %182
  %184 = icmp slt i32 %178, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %5, align 4
  br label %718

187:                                              ; preds = %177
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %212, %187
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %23, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %188
  store i32 0, i32* %17, align 4
  br label %193

193:                                              ; preds = %204, %192
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %24, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @get_bits(i32* %18, i32 %198)
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %17, align 4
  br label %193

207:                                              ; preds = %193
  %208 = load i32, i32* %27, align 4
  %209 = load i32*, i32** %19, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %19, align 8
  br label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %188

215:                                              ; preds = %188
  br label %273

216:                                              ; preds = %156
  store i32 0, i32* %16, align 4
  br label %217

217:                                              ; preds = %269, %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %272

221:                                              ; preds = %217
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %261, %221
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %264

226:                                              ; preds = %222
  %227 = call i32 @get_bits_left(i32* %18)
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %230, i32* %5, align 4
  br label %718

231:                                              ; preds = %226
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 7
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 7
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @get_vlc2(i32* %18, i32 %239, i32 %247, i32 3)
  store i32 %248, i32* %31, align 4
  %249 = load i32, i32* %31, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %231
  %252 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %252, i32* %5, align 4
  br label %718

253:                                              ; preds = %231
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %31, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load i32*, i32** %19, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %256, i32* %260, align 4
  br label %261

261:                                              ; preds = %253
  %262 = load i32, i32* %17, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %17, align 4
  br label %222

264:                                              ; preds = %222
  %265 = load i32, i32* %27, align 4
  %266 = load i32*, i32** %19, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %19, align 8
  br label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  br label %217

272:                                              ; preds = %217
  br label %273

273:                                              ; preds = %272, %215
  %274 = load i32, i32* %29, align 4
  switch i32 %274, label %547 [
    i32 129, label %275
    i32 130, label %351
    i32 128, label %470
  ]

275:                                              ; preds = %273
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i64*, i64** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i32*
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %25, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32, i32* %27, align 4
  %288 = mul nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %283, i64 %289
  store i32* %290, i32** %19, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  %294 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %293, align 8
  %295 = load i32*, i32** %19, align 8
  %296 = load i32*, i32** %19, align 8
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %24, align 4
  %299 = call i32 %294(i32* %295, i32* %296, i32 %297, i32 %298, i32 0)
  %300 = load i32, i32* %27, align 4
  %301 = load i32*, i32** %19, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %19, align 8
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %275
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %309, align 8
  %311 = load i32*, i32** %19, align 8
  %312 = load i32*, i32** %19, align 8
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %24, align 4
  %315 = call i32 %310(i32* %311, i32* %312, i32 %313, i32 %314, i32 0)
  %316 = load i32, i32* %27, align 4
  %317 = load i32*, i32** %19, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %19, align 8
  br label %320

320:                                              ; preds = %306, %275
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 1, %321
  store i32 %322, i32* %16, align 4
  br label %323

323:                                              ; preds = %347, %320
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %23, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %350

327:                                              ; preds = %323
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 6
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  %331 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %330, align 8
  %332 = load i32*, i32** %19, align 8
  %333 = load i32*, i32** %19, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %24, align 4
  %336 = load i32*, i32** %19, align 8
  %337 = load i32, i32* %26, align 4
  %338 = sub nsw i32 0, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 %331(i32* %332, i32* %333, i32 %334, i32 %335, i32 %341)
  %343 = load i32, i32* %27, align 4
  %344 = load i32*, i32** %19, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32* %346, i32** %19, align 8
  br label %347

347:                                              ; preds = %327
  %348 = load i32, i32* %16, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %16, align 4
  br label %323

350:                                              ; preds = %323
  br label %551

351:                                              ; preds = %273
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 1
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = inttoptr i64 %358 to i32*
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* %25, align 4
  %362 = mul nsw i32 %360, %361
  %363 = load i32, i32* %27, align 4
  %364 = mul nsw i32 %362, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %359, i64 %365
  store i32* %366, i32** %19, align 8
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %369, align 8
  %371 = load i32*, i32** %19, align 8
  %372 = load i32*, i32** %19, align 8
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %24, align 4
  %375 = call i32 %370(i32* %371, i32* %372, i32 %373, i32 %374, i32 0)
  %376 = load i32, i32* %27, align 4
  %377 = load i32*, i32** %19, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %19, align 8
  %380 = load i32, i32* %11, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %396

382:                                              ; preds = %351
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 0
  %386 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %385, align 8
  %387 = load i32*, i32** %19, align 8
  %388 = load i32*, i32** %19, align 8
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %24, align 4
  %391 = call i32 %386(i32* %387, i32* %388, i32 %389, i32 %390, i32 0)
  %392 = load i32, i32* %27, align 4
  %393 = load i32*, i32** %19, align 8
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  store i32* %395, i32** %19, align 8
  br label %396

396:                                              ; preds = %382, %351
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 1, %397
  store i32 %398, i32* %16, align 4
  br label %399

399:                                              ; preds = %466, %396
  %400 = load i32, i32* %16, align 4
  %401 = load i32, i32* %23, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %469

403:                                              ; preds = %399
  %404 = load i32*, i32** %19, align 8
  %405 = load i32, i32* %26, align 4
  %406 = sub nsw i32 0, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %22, align 4
  %410 = load i32, i32* %22, align 4
  %411 = load i32*, i32** %19, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  %413 = load i32, i32* %412, align 4
  %414 = add nsw i32 %410, %413
  store i32 %414, i32* %20, align 4
  %415 = load i32, i32* %20, align 4
  %416 = load i32, i32* %13, align 4
  %417 = and i32 %415, %416
  %418 = load i32*, i32** %19, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 0
  store i32 %417, i32* %419, align 4
  store i32 1, i32* %17, align 4
  br label %420

420:                                              ; preds = %458, %403
  %421 = load i32, i32* %17, align 4
  %422 = load i32, i32* %24, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %461

424:                                              ; preds = %420
  %425 = load i32*, i32** %19, align 8
  %426 = load i32, i32* %17, align 4
  %427 = load i32, i32* %26, align 4
  %428 = sub nsw i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %425, i64 %429
  %431 = load i32, i32* %430, align 4
  store i32 %431, i32* %22, align 4
  %432 = load i32*, i32** %19, align 8
  %433 = load i32, i32* %17, align 4
  %434 = load i32, i32* %26, align 4
  %435 = add nsw i32 %434, 1
  %436 = sub nsw i32 %433, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %432, i64 %437
  %439 = load i32, i32* %438, align 4
  store i32 %439, i32* %21, align 4
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %21, align 4
  %442 = sub nsw i32 %440, %441
  %443 = load i32*, i32** %19, align 8
  %444 = load i32, i32* %17, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %442, %447
  %449 = load i32, i32* %20, align 4
  %450 = add nsw i32 %449, %448
  store i32 %450, i32* %20, align 4
  %451 = load i32, i32* %20, align 4
  %452 = load i32, i32* %13, align 4
  %453 = and i32 %451, %452
  %454 = load i32*, i32** %19, align 8
  %455 = load i32, i32* %17, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  store i32 %453, i32* %457, align 4
  br label %458

458:                                              ; preds = %424
  %459 = load i32, i32* %17, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %17, align 4
  br label %420

461:                                              ; preds = %420
  %462 = load i32, i32* %27, align 4
  %463 = load i32*, i32** %19, align 8
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32* %463, i64 %464
  store i32* %465, i32** %19, align 8
  br label %466

466:                                              ; preds = %461
  %467 = load i32, i32* %16, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %16, align 4
  br label %399

469:                                              ; preds = %399
  br label %551

470:                                              ; preds = %273
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 1
  %473 = load i64*, i64** %472, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i64, i64* %473, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = inttoptr i64 %477 to i32*
  %479 = load i32, i32* %8, align 4
  %480 = load i32, i32* %25, align 4
  %481 = mul nsw i32 %479, %480
  %482 = load i32, i32* %27, align 4
  %483 = mul nsw i32 %481, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %478, i64 %484
  store i32* %485, i32** %19, align 8
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 6
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 0
  %489 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %488, align 8
  %490 = load i32*, i32** %19, align 8
  %491 = load i32*, i32** %19, align 8
  %492 = load i32, i32* %13, align 4
  %493 = load i32, i32* %24, align 4
  %494 = call i32 %489(i32* %490, i32* %491, i32 %492, i32 %493, i32 0)
  %495 = load i32, i32* %27, align 4
  %496 = load i32*, i32** %19, align 8
  %497 = sext i32 %495 to i64
  %498 = getelementptr inbounds i32, i32* %496, i64 %497
  store i32* %498, i32** %19, align 8
  %499 = load i32, i32* %11, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %515

501:                                              ; preds = %470
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 6
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %503, i32 0, i32 0
  %505 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %504, align 8
  %506 = load i32*, i32** %19, align 8
  %507 = load i32*, i32** %19, align 8
  %508 = load i32, i32* %13, align 4
  %509 = load i32, i32* %24, align 4
  %510 = call i32 %505(i32* %506, i32* %507, i32 %508, i32 %509, i32 0)
  %511 = load i32, i32* %27, align 4
  %512 = load i32*, i32** %19, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i32, i32* %512, i64 %513
  store i32* %514, i32** %19, align 8
  br label %515

515:                                              ; preds = %501, %470
  %516 = load i32*, i32** %19, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 0
  %518 = load i32, i32* %517, align 4
  store i32 %518, i32* %20, align 4
  store i32 %518, i32* %21, align 4
  %519 = load i32, i32* %11, align 4
  %520 = add nsw i32 1, %519
  store i32 %520, i32* %16, align 4
  br label %521

521:                                              ; preds = %543, %515
  %522 = load i32, i32* %16, align 4
  %523 = load i32, i32* %23, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %546

525:                                              ; preds = %521
  %526 = load i32*, i32** %19, align 8
  %527 = load i32*, i32** %19, align 8
  %528 = load i32, i32* %26, align 4
  %529 = sext i32 %528 to i64
  %530 = sub i64 0, %529
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  %532 = load i32*, i32** %19, align 8
  %533 = load i32, i32* %24, align 4
  %534 = load i32, i32* %13, align 4
  %535 = call i32 @magicyuv_median_pred16(i32* %526, i32* %531, i32* %532, i32 %533, i32* %20, i32* %21, i32 %534)
  %536 = load i32*, i32** %19, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  store i32 %538, i32* %20, align 4
  store i32 %538, i32* %21, align 4
  %539 = load i32, i32* %27, align 4
  %540 = load i32*, i32** %19, align 8
  %541 = sext i32 %539 to i64
  %542 = getelementptr inbounds i32, i32* %540, i64 %541
  store i32* %542, i32** %19, align 8
  br label %543

543:                                              ; preds = %525
  %544 = load i32, i32* %16, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %16, align 4
  br label %521

546:                                              ; preds = %521
  br label %551

547:                                              ; preds = %273
  %548 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %549 = load i32, i32* %29, align 4
  %550 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %548, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %549)
  br label %551

551:                                              ; preds = %547, %546, %469, %350
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %15, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %15, align 4
  br label %53

555:                                              ; preds = %53
  %556 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 5
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %717

560:                                              ; preds = %555
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 4
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = load i32, i32* %8, align 4
  %568 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 8
  %571 = mul nsw i32 %567, %570
  %572 = sext i32 %571 to i64
  %573 = sub nsw i64 %566, %572
  %574 = call i32 @FFMIN(i32 %563, i64 %573)
  store i32 %574, i32* %32, align 4
  %575 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  store i32 %577, i32* %33, align 4
  %578 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 1
  %580 = load i64*, i64** %579, align 8
  %581 = getelementptr inbounds i64, i64* %580, i64 0
  %582 = load i64, i64* %581, align 8
  %583 = inttoptr i64 %582 to i32*
  %584 = load i32, i32* %8, align 4
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 4
  %587 = load i32, i32* %586, align 8
  %588 = mul nsw i32 %584, %587
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 0
  %591 = load i32*, i32** %590, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 0
  %593 = load i32, i32* %592, align 4
  %594 = mul nsw i32 %588, %593
  %595 = sdiv i32 %594, 2
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %583, i64 %596
  store i32* %597, i32** %34, align 8
  %598 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %599 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %598, i32 0, i32 1
  %600 = load i64*, i64** %599, align 8
  %601 = getelementptr inbounds i64, i64* %600, i64 1
  %602 = load i64, i64* %601, align 8
  %603 = inttoptr i64 %602 to i32*
  %604 = load i32, i32* %8, align 4
  %605 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 4
  %607 = load i32, i32* %606, align 8
  %608 = mul nsw i32 %604, %607
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 0
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 1
  %613 = load i32, i32* %612, align 4
  %614 = mul nsw i32 %608, %613
  %615 = sdiv i32 %614, 2
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32, i32* %603, i64 %616
  store i32* %617, i32** %35, align 8
  %618 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %619 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %618, i32 0, i32 1
  %620 = load i64*, i64** %619, align 8
  %621 = getelementptr inbounds i64, i64* %620, i64 2
  %622 = load i64, i64* %621, align 8
  %623 = inttoptr i64 %622 to i32*
  %624 = load i32, i32* %8, align 4
  %625 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %626 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %625, i32 0, i32 4
  %627 = load i32, i32* %626, align 8
  %628 = mul nsw i32 %624, %627
  %629 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %630 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %629, i32 0, i32 0
  %631 = load i32*, i32** %630, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 2
  %633 = load i32, i32* %632, align 4
  %634 = mul nsw i32 %628, %633
  %635 = sdiv i32 %634, 2
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i32, i32* %623, i64 %636
  store i32* %637, i32** %36, align 8
  store i32 0, i32* %15, align 4
  br label %638

638:                                              ; preds = %713, %560
  %639 = load i32, i32* %15, align 4
  %640 = load i32, i32* %32, align 4
  %641 = icmp slt i32 %639, %640
  br i1 %641, label %642, label %716

642:                                              ; preds = %638
  store i32 0, i32* %16, align 4
  br label %643

643:                                              ; preds = %682, %642
  %644 = load i32, i32* %16, align 4
  %645 = load i32, i32* %33, align 4
  %646 = icmp slt i32 %644, %645
  br i1 %646, label %647, label %685

647:                                              ; preds = %643
  %648 = load i32*, i32** %36, align 8
  %649 = load i32, i32* %16, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = load i32*, i32** %35, align 8
  %654 = load i32, i32* %16, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = add nsw i32 %652, %657
  %659 = load i32, i32* %13, align 4
  %660 = and i32 %658, %659
  %661 = load i32*, i32** %36, align 8
  %662 = load i32, i32* %16, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  store i32 %660, i32* %664, align 4
  %665 = load i32*, i32** %34, align 8
  %666 = load i32, i32* %16, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %665, i64 %667
  %669 = load i32, i32* %668, align 4
  %670 = load i32*, i32** %35, align 8
  %671 = load i32, i32* %16, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %670, i64 %672
  %674 = load i32, i32* %673, align 4
  %675 = add nsw i32 %669, %674
  %676 = load i32, i32* %13, align 4
  %677 = and i32 %675, %676
  %678 = load i32*, i32** %34, align 8
  %679 = load i32, i32* %16, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i32, i32* %678, i64 %680
  store i32 %677, i32* %681, align 4
  br label %682

682:                                              ; preds = %647
  %683 = load i32, i32* %16, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %16, align 4
  br label %643

685:                                              ; preds = %643
  %686 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %687 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %686, i32 0, i32 0
  %688 = load i32*, i32** %687, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 0
  %690 = load i32, i32* %689, align 4
  %691 = sdiv i32 %690, 2
  %692 = load i32*, i32** %36, align 8
  %693 = sext i32 %691 to i64
  %694 = getelementptr inbounds i32, i32* %692, i64 %693
  store i32* %694, i32** %36, align 8
  %695 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %696 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %695, i32 0, i32 0
  %697 = load i32*, i32** %696, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 1
  %699 = load i32, i32* %698, align 4
  %700 = sdiv i32 %699, 2
  %701 = load i32*, i32** %35, align 8
  %702 = sext i32 %700 to i64
  %703 = getelementptr inbounds i32, i32* %701, i64 %702
  store i32* %703, i32** %35, align 8
  %704 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %705 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %704, i32 0, i32 0
  %706 = load i32*, i32** %705, align 8
  %707 = getelementptr inbounds i32, i32* %706, i64 2
  %708 = load i32, i32* %707, align 4
  %709 = sdiv i32 %708, 2
  %710 = load i32*, i32** %34, align 8
  %711 = sext i32 %709 to i64
  %712 = getelementptr inbounds i32, i32* %710, i64 %711
  store i32* %712, i32** %34, align 8
  br label %713

713:                                              ; preds = %685
  %714 = load i32, i32* %15, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %15, align 4
  br label %638

716:                                              ; preds = %638
  br label %717

717:                                              ; preds = %716, %555
  store i32 0, i32* %5, align 4
  br label %718

718:                                              ; preds = %717, %251, %229, %185, %154
  %719 = load i32, i32* %5, align 4
  ret i32 %719
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @magicyuv_median_pred16(i32*, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
