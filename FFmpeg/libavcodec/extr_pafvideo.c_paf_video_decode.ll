; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pafvideo.c_paf_video_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pafvideo.c_paf_video_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32*, i32**, i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32**, i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown/invalid code\00", align 1
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_12__*)* @paf_video_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @paf_video_decode(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %5, align 4
  br label %464

34:                                               ; preds = %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bytestream2_init(i32* %36, i32 %39, i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 8
  %46 = call i32 @bytestream2_get_byte(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 15
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %54, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 15
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %34
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %5, align 4
  br label %464

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 32
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 8
  %69 = call i32 @bytestream2_get_bytes_left(i32* %68)
  %70 = sub nsw i32 %66, %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 32
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = mul nsw i32 %74, %78
  %80 = sdiv i32 %79, 100
  %81 = icmp sgt i32 %70, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %5, align 4
  br label %464

84:                                               ; preds = %62, %58
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = call i32 @ff_reget_buffer(%struct.TYPE_13__* %85, %struct.TYPE_14__* %88, i32 0)
  store i32 %89, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %5, align 4
  br label %464

93:                                               ; preds = %84
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @AVPALETTE_SIZE, align 4
  %106 = call i32 @memset(i32* %104, i8* null, i32 %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 8
  br label %128

118:                                              ; preds = %93
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 8
  %123 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  store i32 %123, i32* %127, align 8
  br label %128

128:                                              ; preds = %118, %97
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 64
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %217

132:                                              ; preds = %128
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %17, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 8
  %142 = call i32 @bytestream2_get_byte(i32* %141)
  store i32 %142, i32* %18, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 8
  %145 = call i32 @bytestream2_get_byte(i32* %144)
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %147, %148
  %150 = icmp sgt i32 %149, 256
  br i1 %150, label %151, label %153

151:                                              ; preds = %132
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %5, align 4
  br label %464

153:                                              ; preds = %132
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 8
  %156 = call i32 @bytestream2_get_bytes_left(i32* %155)
  %157 = load i32, i32* %19, align 4
  %158 = mul nsw i32 3, %157
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %5, align 4
  br label %464

162:                                              ; preds = %153
  %163 = load i32, i32* %18, align 4
  %164 = load i32*, i32** %17, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %209, %162
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %19, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %212

171:                                              ; preds = %167
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 8
  %174 = call i8* @bytestream2_get_byteu(i32* %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %20, align 4
  %177 = shl i32 %176, 2
  %178 = load i32, i32* %20, align 4
  %179 = lshr i32 %178, 4
  %180 = or i32 %177, %179
  store i32 %180, i32* %20, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 8
  %183 = call i8* @bytestream2_get_byteu(i32* %182)
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %21, align 4
  %186 = shl i32 %185, 2
  %187 = load i32, i32* %21, align 4
  %188 = lshr i32 %187, 4
  %189 = or i32 %186, %188
  store i32 %189, i32* %21, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 8
  %192 = call i8* @bytestream2_get_byteu(i32* %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %22, align 4
  %194 = load i32, i32* %22, align 4
  %195 = shl i32 %194, 2
  %196 = load i32, i32* %22, align 4
  %197 = lshr i32 %196, 4
  %198 = or i32 %195, %197
  store i32 %198, i32* %22, align 4
  %199 = load i32, i32* %20, align 4
  %200 = shl i32 %199, 16
  %201 = or i32 -16777216, %200
  %202 = load i32, i32* %21, align 4
  %203 = shl i32 %202, 8
  %204 = or i32 %201, %203
  %205 = load i32, i32* %22, align 4
  %206 = or i32 %204, %205
  %207 = load i32*, i32** %17, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %17, align 8
  store i32 %206, i32* %207, align 4
  br label %209

209:                                              ; preds = %171
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %167

212:                                              ; preds = %167
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %212, %128
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 1, i32* %224, align 4
  %225 = load i32, i32* %11, align 4
  %226 = and i32 %225, 32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %264

228:                                              ; preds = %217
  store i32 0, i32* %14, align 4
  br label %229

229:                                              ; preds = %260, %228
  %230 = load i32, i32* %14, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %263

232:                                              ; preds = %229
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %232
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @memset(i32* %248, i8* null, i32 %251)
  br label %253

253:                                              ; preds = %241, %232
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 0, i32* %259, align 4
  br label %260

260:                                              ; preds = %253
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %229

263:                                              ; preds = %229
  br label %264

264:                                              ; preds = %263, %217
  %265 = load i32, i32* %11, align 4
  %266 = and i32 %265, 15
  switch i32 %266, label %409 [
    i32 0, label %267
    i32 1, label %278
    i32 2, label %307
    i32 4, label %343
  ]

267:                                              ; preds = %264
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @decode_0(%struct.TYPE_11__* %268, i32 %271, i32 %272)
  store i32 %273, i32* %16, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = load i32, i32* %16, align 4
  store i32 %276, i32* %5, align 4
  br label %464

277:                                              ; preds = %267
  br label %411

278:                                              ; preds = %264
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load i32**, i32*** %280, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds i32*, i32** %281, i64 %284
  %286 = load i32*, i32** %285, align 8
  store i32* %286, i32** %12, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 8
  %289 = call i32 @bytestream2_skip(i32* %288, i32 2)
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 8
  %292 = call i32 @bytestream2_get_bytes_left(i32* %291)
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %278
  %298 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %298, i32* %5, align 4
  br label %464

299:                                              ; preds = %278
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 8
  %302 = load i32*, i32** %12, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @bytestream2_get_bufferu(i32* %301, i32* %302, i32 %305)
  br label %411

307:                                              ; preds = %264
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 8
  %310 = call i32 @bytestream2_get_byte(i32* %309)
  store i32 %310, i32* %15, align 4
  %311 = load i32, i32* %15, align 4
  %312 = icmp sgt i32 %311, 3
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %314, i32* %5, align 4
  br label %464

315:                                              ; preds = %307
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %317, %320
  br i1 %321, label %322, label %342

322:                                              ; preds = %315
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 3
  %325 = load i32**, i32*** %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds i32*, i32** %325, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 3
  %333 = load i32**, i32*** %332, align 8
  %334 = load i32, i32* %15, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %333, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @memcpy(i32* %330, i32* %337, i32 %340)
  br label %342

342:                                              ; preds = %322, %315
  br label %411

343:                                              ; preds = %264
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 3
  %346 = load i32**, i32*** %345, align 8
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds i32*, i32** %346, i64 %349
  %351 = load i32*, i32** %350, align 8
  store i32* %351, i32** %12, align 8
  %352 = load i32*, i32** %12, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  store i32* %357, i32** %13, align 8
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 8
  %360 = call i32 @bytestream2_skip(i32* %359, i32 2)
  br label %361

361:                                              ; preds = %403, %343
  %362 = load i32*, i32** %12, align 8
  %363 = load i32*, i32** %13, align 8
  %364 = icmp ult i32* %362, %363
  br i1 %364, label %365, label %408

365:                                              ; preds = %361
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 8
  %368 = call i32 @bytestream2_get_bytes_left(i32* %367)
  %369 = icmp slt i32 %368, 2
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %371, i32* %5, align 4
  br label %464

372:                                              ; preds = %365
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 8
  %375 = call i8* @bytestream2_get_byteu(i32* %374)
  store i8* %375, i8** %23, align 8
  %376 = load i8*, i8** %23, align 8
  %377 = call i32 @FFABS(i8* %376)
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %24, align 4
  %379 = load i32*, i32** %12, align 8
  %380 = load i32, i32* %24, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32*, i32** %13, align 8
  %384 = icmp ugt i32* %382, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %372
  %386 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %386, i32* %5, align 4
  br label %464

387:                                              ; preds = %372
  %388 = load i8*, i8** %23, align 8
  %389 = icmp ult i8* %388, null
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = load i32*, i32** %12, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 8
  %394 = call i8* @bytestream2_get_byteu(i32* %393)
  %395 = load i32, i32* %24, align 4
  %396 = call i32 @memset(i32* %391, i8* %394, i32 %395)
  br label %403

397:                                              ; preds = %387
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 8
  %400 = load i32*, i32** %12, align 8
  %401 = load i32, i32* %24, align 4
  %402 = call i32 @bytestream2_get_buffer(i32* %399, i32* %400, i32 %401)
  br label %403

403:                                              ; preds = %397, %390
  %404 = load i32, i32* %24, align 4
  %405 = load i32*, i32** %12, align 8
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  store i32* %407, i32** %12, align 8
  br label %361

408:                                              ; preds = %361
  br label %411

409:                                              ; preds = %264
  %410 = call i32 @av_assert0(i32 0)
  br label %411

411:                                              ; preds = %409, %408, %342, %299, %277
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 5
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 0
  %416 = load i32**, i32*** %415, align 8
  %417 = getelementptr inbounds i32*, i32** %416, i64 0
  %418 = load i32*, i32** %417, align 8
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 5
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 3
  %423 = load i32*, i32** %422, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 3
  %428 = load i32**, i32*** %427, align 8
  %429 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = getelementptr inbounds i32*, i32** %428, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 7
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @av_image_copy_plane(i32* %418, i32 %425, i32* %433, i32 %436, i32 %439, i32 %442)
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = add i64 %446, 1
  %448 = and i64 %447, 3
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 1
  store i64 %448, i64* %450, align 8
  %451 = load i8*, i8** %7, align 8
  %452 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 5
  %454 = load %struct.TYPE_14__*, %struct.TYPE_14__** %453, align 8
  %455 = call i32 @av_frame_ref(i8* %451, %struct.TYPE_14__* %454)
  store i32 %455, i32* %16, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %411
  %458 = load i32, i32* %16, align 4
  store i32 %458, i32* %5, align 4
  br label %464

459:                                              ; preds = %411
  %460 = load i32*, i32** %8, align 8
  store i32 1, i32* %460, align 4
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %5, align 4
  br label %464

464:                                              ; preds = %459, %457, %385, %370, %313, %297, %275, %160, %151, %91, %82, %54, %32
  %465 = load i32, i32* %5, align 4
  ret i32 %465
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memset(i32*, i8*, i32) #1

declare dso_local i8* @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @decode_0(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFABS(i8*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
