; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_magy_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_magicyuv.c_magy_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, i64, %struct.TYPE_9__*, %struct.TYPE_11__**, i64, i32*, i32*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32, i32)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32*, i32** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown prediction: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32)* @magy_decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magy_decode_slice(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %10, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %542, %4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %545

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sub nsw i32 %57, %62
  %64 = call i32 @FFMIN(i32 %54, i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @AV_CEIL_RSHIFT(i32 %64, i32 %71)
  store i32 %72, i32* %22, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AV_CEIL_RSHIFT(i32 %75, i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @AV_CEIL_RSHIFT(i32 %86, i32 %93)
  store i32 %94, i32* %24, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 1, %102
  %104 = mul nsw i32 %101, %103
  store i32 %104, i32* %25, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %26, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %117, i64 %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %114, %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @init_get_bits8(i32* %17, i64 %127, i32 %139)
  store i32 %140, i32* %29, align 4
  %141 = load i32, i32* %29, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %51
  %144 = load i32, i32* %29, align 4
  store i32 %144, i32* %5, align 4
  br label %671

145:                                              ; preds = %51
  %146 = call i32 @get_bits(i32* %17, i32 8)
  store i32 %146, i32* %27, align 4
  %147 = call i32 @get_bits(i32* %17, i32 8)
  store i32 %147, i32* %28, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %24, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %26, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  store i32* %161, i32** %18, align 8
  %162 = load i32, i32* %27, align 4
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %145
  %166 = call i32 @get_bits_left(i32* %17)
  %167 = load i32, i32* %23, align 4
  %168 = mul nsw i32 8, %167
  %169 = load i32, i32* %22, align 4
  %170 = mul nsw i32 %168, %169
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %5, align 4
  br label %671

174:                                              ; preds = %165
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %198, %174
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %22, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  store i32 0, i32* %15, align 4
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %23, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = call i32 @get_bits(i32* %17, i32 8)
  %186 = load i32*, i32** %18, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %184
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %180

193:                                              ; preds = %180
  %194 = load i32, i32* %26, align 4
  %195 = load i32*, i32** %18, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %18, align 8
  br label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %175

201:                                              ; preds = %175
  br label %258

202:                                              ; preds = %145
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %254, %202
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %22, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %257

207:                                              ; preds = %203
  store i32 0, i32* %15, align 4
  br label %208

208:                                              ; preds = %246, %207
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %249

212:                                              ; preds = %208
  %213 = call i32 @get_bits_left(i32* %17)
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %216, i32* %5, align 4
  br label %671

217:                                              ; preds = %212
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @get_vlc2(i32* %17, i32 %225, i32 %233, i32 3)
  store i32 %234, i32* %30, align 4
  %235 = load i32, i32* %30, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %217
  %238 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %238, i32* %5, align 4
  br label %671

239:                                              ; preds = %217
  %240 = load i32, i32* %30, align 4
  %241 = sub nsw i32 255, %240
  %242 = load i32*, i32** %18, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %241, i32* %245, align 4
  br label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %208

249:                                              ; preds = %208
  %250 = load i32, i32* %26, align 4
  %251 = load i32*, i32** %18, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32* %253, i32** %18, align 8
  br label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %14, align 4
  br label %203

257:                                              ; preds = %203
  br label %258

258:                                              ; preds = %257, %201
  %259 = load i32, i32* %28, align 4
  switch i32 %259, label %537 [
    i32 129, label %260
    i32 130, label %332
    i32 128, label %460
  ]

260:                                              ; preds = %258
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i32**, i32*** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %24, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32, i32* %26, align 4
  %272 = mul nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %267, i64 %273
  store i32* %274, i32** %18, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %277, align 8
  %279 = load i32*, i32** %18, align 8
  %280 = load i32*, i32** %18, align 8
  %281 = load i32, i32* %23, align 4
  %282 = call i32 %278(i32* %279, i32* %280, i32 %281, i32 0)
  %283 = load i32, i32* %26, align 4
  %284 = load i32*, i32** %18, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %18, align 8
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %260
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  %293 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %292, align 8
  %294 = load i32*, i32** %18, align 8
  %295 = load i32*, i32** %18, align 8
  %296 = load i32, i32* %23, align 4
  %297 = call i32 %293(i32* %294, i32* %295, i32 %296, i32 0)
  %298 = load i32, i32* %26, align 4
  %299 = load i32*, i32** %18, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %18, align 8
  br label %302

302:                                              ; preds = %289, %260
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 1, %303
  store i32 %304, i32* %14, align 4
  br label %305

305:                                              ; preds = %328, %302
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %22, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %331

309:                                              ; preds = %305
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  %313 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %312, align 8
  %314 = load i32*, i32** %18, align 8
  %315 = load i32*, i32** %18, align 8
  %316 = load i32, i32* %23, align 4
  %317 = load i32*, i32** %18, align 8
  %318 = load i32, i32* %25, align 4
  %319 = sub nsw i32 0, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = call i32 %313(i32* %314, i32* %315, i32 %316, i32 %322)
  %324 = load i32, i32* %26, align 4
  %325 = load i32*, i32** %18, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %18, align 8
  br label %328

328:                                              ; preds = %309
  %329 = load i32, i32* %14, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %14, align 4
  br label %305

331:                                              ; preds = %305
  br label %541

332:                                              ; preds = %258
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 1
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %335, i64 %337
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %24, align 4
  %342 = mul nsw i32 %340, %341
  %343 = load i32, i32* %26, align 4
  %344 = mul nsw i32 %342, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %339, i64 %345
  store i32* %346, i32** %18, align 8
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 2
  %350 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %349, align 8
  %351 = load i32*, i32** %18, align 8
  %352 = load i32*, i32** %18, align 8
  %353 = load i32, i32* %23, align 4
  %354 = call i32 %350(i32* %351, i32* %352, i32 %353, i32 0)
  %355 = load i32, i32* %26, align 4
  %356 = load i32*, i32** %18, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %18, align 8
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %374

361:                                              ; preds = %332
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 2
  %365 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %364, align 8
  %366 = load i32*, i32** %18, align 8
  %367 = load i32*, i32** %18, align 8
  %368 = load i32, i32* %23, align 4
  %369 = call i32 %365(i32* %366, i32* %367, i32 %368, i32 0)
  %370 = load i32, i32* %26, align 4
  %371 = load i32*, i32** %18, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %18, align 8
  br label %374

374:                                              ; preds = %361, %332
  %375 = load i32, i32* %23, align 4
  %376 = call i32 @FFMIN(i32 %375, i32 32)
  store i32 %376, i32* %16, align 4
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 1, %377
  store i32 %378, i32* %14, align 4
  br label %379

379:                                              ; preds = %456, %374
  %380 = load i32, i32* %14, align 4
  %381 = load i32, i32* %22, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %459

383:                                              ; preds = %379
  %384 = load i32*, i32** %18, align 8
  %385 = load i32, i32* %25, align 4
  %386 = sub nsw i32 0, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %21, align 4
  %390 = load i32, i32* %21, align 4
  %391 = load i32*, i32** %18, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %390, %393
  store i32 %394, i32* %19, align 4
  %395 = load i32, i32* %19, align 4
  %396 = load i32*, i32** %18, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  store i32 %395, i32* %397, align 4
  store i32 1, i32* %15, align 4
  br label %398

398:                                              ; preds = %434, %383
  %399 = load i32, i32* %15, align 4
  %400 = load i32, i32* %16, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %437

402:                                              ; preds = %398
  %403 = load i32*, i32** %18, align 8
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* %25, align 4
  %406 = sub nsw i32 %404, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %403, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %21, align 4
  %410 = load i32*, i32** %18, align 8
  %411 = load i32, i32* %15, align 4
  %412 = load i32, i32* %25, align 4
  %413 = add nsw i32 %412, 1
  %414 = sub nsw i32 %411, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %410, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %20, align 4
  %418 = load i32, i32* %21, align 4
  %419 = load i32, i32* %20, align 4
  %420 = sub nsw i32 %418, %419
  %421 = load i32*, i32** %18, align 8
  %422 = load i32, i32* %15, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %420, %425
  %427 = load i32, i32* %19, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %19, align 4
  %429 = load i32, i32* %19, align 4
  %430 = load i32*, i32** %18, align 8
  %431 = load i32, i32* %15, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 %429, i32* %433, align 4
  br label %434

434:                                              ; preds = %402
  %435 = load i32, i32* %15, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %15, align 4
  br label %398

437:                                              ; preds = %398
  %438 = load i32, i32* %23, align 4
  %439 = icmp sgt i32 %438, 32
  br i1 %439, label %440, label %451

440:                                              ; preds = %437
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 3
  %444 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %443, align 8
  %445 = load i32*, i32** %18, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 32
  %447 = load i32, i32* %25, align 4
  %448 = load i32, i32* %23, align 4
  %449 = sub nsw i32 %448, 32
  %450 = call i32 %444(i32* %446, i32 %447, i32 %449)
  br label %451

451:                                              ; preds = %440, %437
  %452 = load i32, i32* %26, align 4
  %453 = load i32*, i32** %18, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  store i32* %455, i32** %18, align 8
  br label %456

456:                                              ; preds = %451
  %457 = load i32, i32* %14, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %14, align 4
  br label %379

459:                                              ; preds = %379
  br label %541

460:                                              ; preds = %258
  %461 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 1
  %463 = load i32**, i32*** %462, align 8
  %464 = load i32, i32* %13, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32*, i32** %463, i64 %465
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %8, align 4
  %469 = load i32, i32* %24, align 4
  %470 = mul nsw i32 %468, %469
  %471 = load i32, i32* %26, align 4
  %472 = mul nsw i32 %470, %471
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %467, i64 %473
  store i32* %474, i32** %18, align 8
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 3
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 2
  %478 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %477, align 8
  %479 = load i32*, i32** %18, align 8
  %480 = load i32*, i32** %18, align 8
  %481 = load i32, i32* %23, align 4
  %482 = call i32 %478(i32* %479, i32* %480, i32 %481, i32 0)
  %483 = load i32, i32* %26, align 4
  %484 = load i32*, i32** %18, align 8
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i32, i32* %484, i64 %485
  store i32* %486, i32** %18, align 8
  %487 = load i32, i32* %11, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %502

489:                                              ; preds = %460
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i32 0, i32 3
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 2
  %493 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %492, align 8
  %494 = load i32*, i32** %18, align 8
  %495 = load i32*, i32** %18, align 8
  %496 = load i32, i32* %23, align 4
  %497 = call i32 %493(i32* %494, i32* %495, i32 %496, i32 0)
  %498 = load i32, i32* %26, align 4
  %499 = load i32*, i32** %18, align 8
  %500 = sext i32 %498 to i64
  %501 = getelementptr inbounds i32, i32* %499, i64 %500
  store i32* %501, i32** %18, align 8
  br label %502

502:                                              ; preds = %489, %460
  %503 = load i32*, i32** %18, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 0
  %505 = load i32, i32* %504, align 4
  store i32 %505, i32* %19, align 4
  store i32 %505, i32* %20, align 4
  %506 = load i32, i32* %11, align 4
  %507 = add nsw i32 1, %506
  store i32 %507, i32* %14, align 4
  br label %508

508:                                              ; preds = %533, %502
  %509 = load i32, i32* %14, align 4
  %510 = load i32, i32* %22, align 4
  %511 = icmp slt i32 %509, %510
  br i1 %511, label %512, label %536

512:                                              ; preds = %508
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 3
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 1
  %516 = load i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32*, i32, i32*, i32*)** %515, align 8
  %517 = load i32*, i32** %18, align 8
  %518 = load i32*, i32** %18, align 8
  %519 = load i32, i32* %25, align 4
  %520 = sext i32 %519 to i64
  %521 = sub i64 0, %520
  %522 = getelementptr inbounds i32, i32* %518, i64 %521
  %523 = load i32*, i32** %18, align 8
  %524 = load i32, i32* %23, align 4
  %525 = call i32 %516(i32* %517, i32* %522, i32* %523, i32 %524, i32* %19, i32* %20)
  %526 = load i32*, i32** %18, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 0
  %528 = load i32, i32* %527, align 4
  store i32 %528, i32* %19, align 4
  store i32 %528, i32* %20, align 4
  %529 = load i32, i32* %26, align 4
  %530 = load i32*, i32** %18, align 8
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds i32, i32* %530, i64 %531
  store i32* %532, i32** %18, align 8
  br label %533

533:                                              ; preds = %512
  %534 = load i32, i32* %14, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %14, align 4
  br label %508

536:                                              ; preds = %508
  br label %541

537:                                              ; preds = %258
  %538 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %539 = load i32, i32* %28, align 4
  %540 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %538, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %539)
  br label %541

541:                                              ; preds = %537, %536, %459, %331
  br label %542

542:                                              ; preds = %541
  %543 = load i32, i32* %13, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %13, align 4
  br label %45

545:                                              ; preds = %45
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 4
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %670

550:                                              ; preds = %545
  %551 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* %8, align 4
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %559 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = mul nsw i32 %557, %560
  %562 = sub nsw i32 %556, %561
  %563 = call i32 @FFMIN(i32 %553, i32 %562)
  store i32 %563, i32* %31, align 4
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  store i32 %566, i32* %32, align 4
  %567 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %568 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %567, i32 0, i32 1
  %569 = load i32**, i32*** %568, align 8
  %570 = getelementptr inbounds i32*, i32** %569, i64 0
  %571 = load i32*, i32** %570, align 8
  %572 = load i32, i32* %8, align 4
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = mul nsw i32 %572, %575
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 0
  %579 = load i32*, i32** %578, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 0
  %581 = load i32, i32* %580, align 4
  %582 = mul nsw i32 %576, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %571, i64 %583
  store i32* %584, i32** %33, align 8
  %585 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %586 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %585, i32 0, i32 1
  %587 = load i32**, i32*** %586, align 8
  %588 = getelementptr inbounds i32*, i32** %587, i64 1
  %589 = load i32*, i32** %588, align 8
  %590 = load i32, i32* %8, align 4
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %592 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 8
  %594 = mul nsw i32 %590, %593
  %595 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %595, i32 0, i32 0
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 1
  %599 = load i32, i32* %598, align 4
  %600 = mul nsw i32 %594, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %589, i64 %601
  store i32* %602, i32** %34, align 8
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %604 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i32 0, i32 1
  %605 = load i32**, i32*** %604, align 8
  %606 = getelementptr inbounds i32*, i32** %605, i64 2
  %607 = load i32*, i32** %606, align 8
  %608 = load i32, i32* %8, align 4
  %609 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %610 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = mul nsw i32 %608, %611
  %613 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %614 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %613, i32 0, i32 0
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 2
  %617 = load i32, i32* %616, align 4
  %618 = mul nsw i32 %612, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %607, i64 %619
  store i32* %620, i32** %35, align 8
  store i32 0, i32* %13, align 4
  br label %621

621:                                              ; preds = %666, %550
  %622 = load i32, i32* %13, align 4
  %623 = load i32, i32* %31, align 4
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %669

625:                                              ; preds = %621
  %626 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %627 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i32 0, i32 3
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 0
  %629 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %628, align 8
  %630 = load i32*, i32** %33, align 8
  %631 = load i32*, i32** %34, align 8
  %632 = load i32, i32* %32, align 4
  %633 = call i32 %629(i32* %630, i32* %631, i32 %632)
  %634 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %635, i32 0, i32 0
  %637 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %636, align 8
  %638 = load i32*, i32** %35, align 8
  %639 = load i32*, i32** %34, align 8
  %640 = load i32, i32* %32, align 4
  %641 = call i32 %637(i32* %638, i32* %639, i32 %640)
  %642 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %643 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %642, i32 0, i32 0
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 0
  %646 = load i32, i32* %645, align 4
  %647 = load i32*, i32** %33, align 8
  %648 = sext i32 %646 to i64
  %649 = getelementptr inbounds i32, i32* %647, i64 %648
  store i32* %649, i32** %33, align 8
  %650 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %651 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %650, i32 0, i32 0
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32*, i32** %34, align 8
  %656 = sext i32 %654 to i64
  %657 = getelementptr inbounds i32, i32* %655, i64 %656
  store i32* %657, i32** %34, align 8
  %658 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %659 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %658, i32 0, i32 0
  %660 = load i32*, i32** %659, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 2
  %662 = load i32, i32* %661, align 4
  %663 = load i32*, i32** %35, align 8
  %664 = sext i32 %662 to i64
  %665 = getelementptr inbounds i32, i32* %663, i64 %664
  store i32* %665, i32** %35, align 8
  br label %666

666:                                              ; preds = %625
  %667 = load i32, i32* %13, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %13, align 4
  br label %621

669:                                              ; preds = %621
  br label %670

670:                                              ; preds = %669, %545
  store i32 0, i32* %5, align 4
  br label %671

671:                                              ; preds = %670, %237, %215, %172, %143
  %672 = load i32, i32* %5, align 4
  ret i32 %672
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
