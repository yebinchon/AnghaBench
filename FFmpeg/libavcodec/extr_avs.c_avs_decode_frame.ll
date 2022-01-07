; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avs.c_avs_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avs.c_avs_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32**, i32*, i32 }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32 }

@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVS_PALETTE = common dso_local global i32 0, align 4
@AVS_VIDEO = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_17__*)* @avs_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avs_decode_frame(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32*, align 8
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
  %29 = alloca %struct.TYPE_15__, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %13, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %14, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %15, align 8
  store i32 3, i32* %25, align 4
  store i32 3, i32* %26, align 4
  %56 = bitcast %struct.TYPE_15__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %59 = call i32 @ff_reget_buffer(%struct.TYPE_19__* %57, %struct.TYPE_18__* %58, i32 0)
  store i32 %59, i32* %24, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %4
  %62 = load i32, i32* %24, align 4
  store i32 %62, i32* %5, align 4
  br label %391

63:                                               ; preds = %4
  %64 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %18, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %23, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = icmp slt i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %63
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %5, align 4
  br label %391

88:                                               ; preds = %63
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %27, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %28, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* @AVS_PALETTE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %189

100:                                              ; preds = %88
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %32, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @AV_RL16(i32* %106)
  store i32 %107, i32* %30, align 4
  %108 = load i32, i32* %30, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = call i32 @AV_RL16(i32* %110)
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %31, align 4
  %113 = load i32, i32* %30, align 4
  %114 = icmp sge i32 %113, 256
  br i1 %114, label %132, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* %31, align 4
  %117 = icmp sgt i32 %116, 256
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = ptrtoint i32* %119 to i64
  %122 = ptrtoint i32* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 4
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %30, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 3, %127
  %129 = add nsw i32 8, %128
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %124, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %118, %115, %100
  %133 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %133, i32* %5, align 4
  br label %391

134:                                              ; preds = %118
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32* %136, i32** %10, align 8
  %137 = load i32, i32* %30, align 4
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %175, %134
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %31, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %138
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 18
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 10
  %151 = or i32 %146, %150
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 2
  %156 = or i32 %151, %155
  %157 = load i32*, i32** %32, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32*, i32** %32, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 6
  %167 = and i32 %166, 197379
  %168 = or i32 -16777216, %167
  %169 = load i32*, i32** %32, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %168
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %142
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  store i32* %179, i32** %10, align 8
  br label %138

180:                                              ; preds = %138
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %27, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %28, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  store i32* %188, i32** %10, align 8
  br label %189

189:                                              ; preds = %180, %88
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* @AVS_VIDEO, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %194, i32* %5, align 4
  br label %391

195:                                              ; preds = %189
  %196 = load i32, i32* %27, align 4
  switch i32 %196, label %206 [
    i32 131, label %197
    i32 128, label %203
    i32 130, label %204
    i32 129, label %205
  ]

197:                                              ; preds = %195
  %198 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %195, %197
  store i32 3, i32* %25, align 4
  store i32 3, i32* %26, align 4
  br label %208

204:                                              ; preds = %195
  store i32 2, i32* %25, align 4
  store i32 2, i32* %26, align 4
  br label %208

205:                                              ; preds = %195
  store i32 2, i32* %25, align 4
  store i32 3, i32* %26, align 4
  br label %208

206:                                              ; preds = %195
  %207 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %207, i32* %5, align 4
  br label %391

208:                                              ; preds = %205, %204, %203
  %209 = load i32*, i32** %11, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = ptrtoint i32* %209 to i64
  %212 = ptrtoint i32* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 4
  %215 = load i32, i32* %25, align 4
  %216 = mul nsw i32 256, %215
  %217 = load i32, i32* %26, align 4
  %218 = mul nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %214, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %208
  %222 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %222, i32* %5, align 4
  br label %391

223:                                              ; preds = %208
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %25, align 4
  %226 = mul nsw i32 256, %225
  %227 = load i32, i32* %26, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  store i32* %230, i32** %16, align 8
  %231 = load i32, i32* %27, align 4
  %232 = icmp ne i32 %231, 131
  br i1 %232, label %233, label %261

233:                                              ; preds = %223
  %234 = load i32, i32* %25, align 4
  %235 = sdiv i32 318, %234
  %236 = add nsw i32 %235, 7
  %237 = sdiv i32 %236, 8
  %238 = load i32, i32* %26, align 4
  %239 = sdiv i32 198, %238
  %240 = mul nsw i32 %237, %239
  store i32 %240, i32* %33, align 4
  %241 = load i32*, i32** %11, align 8
  %242 = load i32*, i32** %16, align 8
  %243 = ptrtoint i32* %241 to i64
  %244 = ptrtoint i32* %242 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 4
  %247 = load i32, i32* %33, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %246, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %233
  %251 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %251, i32* %5, align 4
  br label %391

252:                                              ; preds = %233
  %253 = load i32*, i32** %16, align 8
  %254 = load i32, i32* %33, align 4
  %255 = mul nsw i32 %254, 8
  %256 = call i32 @init_get_bits(%struct.TYPE_15__* %29, i32* %253, i32 %255)
  %257 = load i32, i32* %33, align 4
  %258 = load i32*, i32** %16, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %16, align 8
  br label %261

261:                                              ; preds = %252, %223
  store i32 0, i32* %22, align 4
  br label %262

262:                                              ; preds = %377, %261
  %263 = load i32, i32* %22, align 4
  %264 = icmp slt i32 %263, 198
  br i1 %264, label %265, label %381

265:                                              ; preds = %262
  store i32 0, i32* %21, align 4
  br label %266

266:                                              ; preds = %367, %265
  %267 = load i32, i32* %21, align 4
  %268 = icmp slt i32 %267, 318
  br i1 %268, label %269, label %371

269:                                              ; preds = %266
  %270 = load i32, i32* %27, align 4
  %271 = icmp eq i32 %270, 131
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = call i64 @get_bits1(%struct.TYPE_15__* %29)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %366

275:                                              ; preds = %272, %269
  %276 = load i32*, i32** %11, align 8
  %277 = load i32*, i32** %16, align 8
  %278 = ptrtoint i32* %276 to i64
  %279 = ptrtoint i32* %277 to i64
  %280 = sub i64 %278, %279
  %281 = sdiv exact i64 %280, 4
  %282 = icmp slt i64 %281, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %275
  %284 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %284, i32* %5, align 4
  br label %391

285:                                              ; preds = %275
  %286 = load i32*, i32** %10, align 8
  %287 = load i32*, i32** %16, align 8
  %288 = getelementptr inbounds i32, i32* %287, i32 1
  store i32* %288, i32** %16, align 8
  %289 = load i32, i32* %287, align 4
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* %26, align 4
  %292 = mul nsw i32 %290, %291
  %293 = mul nsw i32 %289, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %286, i64 %294
  store i32* %295, i32** %17, align 8
  store i32 0, i32* %20, align 4
  br label %296

296:                                              ; preds = %362, %285
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %25, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %365

300:                                              ; preds = %296
  %301 = load i32*, i32** %17, align 8
  %302 = load i32, i32* %25, align 4
  %303 = mul nsw i32 0, %302
  %304 = load i32, i32* %20, align 4
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %301, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %18, align 8
  %310 = load i32, i32* %22, align 4
  %311 = add nsw i32 %310, 0
  %312 = load i32, i32* %23, align 4
  %313 = mul nsw i32 %311, %312
  %314 = load i32, i32* %21, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %20, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %309, i64 %318
  store i32 %308, i32* %319, align 4
  %320 = load i32*, i32** %17, align 8
  %321 = load i32, i32* %25, align 4
  %322 = mul nsw i32 1, %321
  %323 = load i32, i32* %20, align 4
  %324 = add nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %320, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32*, i32** %18, align 8
  %329 = load i32, i32* %22, align 4
  %330 = add nsw i32 %329, 1
  %331 = load i32, i32* %23, align 4
  %332 = mul nsw i32 %330, %331
  %333 = load i32, i32* %21, align 4
  %334 = add nsw i32 %332, %333
  %335 = load i32, i32* %20, align 4
  %336 = add nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %328, i64 %337
  store i32 %327, i32* %338, align 4
  %339 = load i32, i32* %26, align 4
  %340 = icmp eq i32 %339, 3
  br i1 %340, label %341, label %361

341:                                              ; preds = %300
  %342 = load i32*, i32** %17, align 8
  %343 = load i32, i32* %25, align 4
  %344 = mul nsw i32 2, %343
  %345 = load i32, i32* %20, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %342, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %18, align 8
  %351 = load i32, i32* %22, align 4
  %352 = add nsw i32 %351, 2
  %353 = load i32, i32* %23, align 4
  %354 = mul nsw i32 %352, %353
  %355 = load i32, i32* %21, align 4
  %356 = add nsw i32 %354, %355
  %357 = load i32, i32* %20, align 4
  %358 = add nsw i32 %356, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %350, i64 %359
  store i32 %349, i32* %360, align 4
  br label %361

361:                                              ; preds = %341, %300
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %20, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %20, align 4
  br label %296

365:                                              ; preds = %296
  br label %366

366:                                              ; preds = %365, %272
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %21, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %21, align 4
  br label %266

371:                                              ; preds = %266
  %372 = load i32, i32* %27, align 4
  %373 = icmp ne i32 %372, 131
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call i32 @align_get_bits(%struct.TYPE_15__* %29)
  br label %376

376:                                              ; preds = %374, %371
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %26, align 4
  %379 = load i32, i32* %22, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %22, align 4
  br label %262

381:                                              ; preds = %262
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %384 = call i32 @av_frame_ref(%struct.TYPE_18__* %382, %struct.TYPE_18__* %383)
  store i32 %384, i32* %24, align 4
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %381
  %387 = load i32, i32* %24, align 4
  store i32 %387, i32* %5, align 4
  br label %391

388:                                              ; preds = %381
  %389 = load i32*, i32** %8, align 8
  store i32 1, i32* %389, align 4
  %390 = load i32, i32* %12, align 4
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %388, %386, %283, %250, %221, %206, %193, %132, %86, %61
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @init_get_bits(%struct.TYPE_15__*, i32*, i32) #2

declare dso_local i64 @get_bits1(%struct.TYPE_15__*) #2

declare dso_local i32 @align_get_bits(%struct.TYPE_15__*) #2

declare dso_local i32 @av_frame_ref(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
