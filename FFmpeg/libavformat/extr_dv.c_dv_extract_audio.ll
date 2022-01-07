; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_extract_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_dv_extract_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32**, i32 }

@dv_audio_source = common dso_local global i32 0, align 4
@dv_audio_frequency = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too many dv pcm frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_3__*)* @dv_extract_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dv_extract_audio(i32* %0, i32** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @dv_audio_source, align 4
  %25 = call i32* @dv_extract_pack(i32* %23, i32 %24)
  store i32* %25, i32** %20, align 8
  %26 = load i32*, i32** %20, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %380

29:                                               ; preds = %3
  %30 = load i32*, i32** %20, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 63
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %20, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 3
  %38 = and i32 %37, 7
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %20, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 7
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %380

46:                                               ; preds = %29
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @dv_audio_frequency, align 4
  %49 = call i32 @FF_ARRAY_ELEMS(i32 %48)
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %4, align 4
  br label %380

53:                                               ; preds = %46
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %60, %61
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %17, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 720
  br i1 %71, label %72, label %79

72:                                               ; preds = %53
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 12
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %72, %53
  %80 = phi i1 [ false, %53 ], [ %78, %72 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 0
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 4
  %92 = icmp sgt i32 %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 @av_log(i32* null, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %4, align 4
  br label %380

97:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %375, %97
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %378

104:                                              ; preds = %98
  %105 = load i32, i32* %22, align 4
  %106 = icmp slt i32 %105, 4
  %107 = zext i1 %106 to i32
  %108 = call i32 @av_assert0(i32 %107)
  %109 = load i32**, i32*** %6, align 8
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32*, i32** %109, i64 %112
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %21, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %104
  br label %378

118:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %371, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %374

125:                                              ; preds = %119
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 480
  store i32* %127, i32** %5, align 8
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load i32, i32* %22, align 4
  %136 = icmp slt i32 %135, 4
  %137 = zext i1 %136 to i32
  %138 = call i32 @av_assert0(i32 %137)
  %139 = load i32**, i32*** %6, align 8
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %22, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32*, i32** %139, i64 %142
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %21, align 8
  %145 = load i32*, i32** %21, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %134
  br label %374

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148, %130, %125
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %367, %149
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 9
  br i1 %152, label %153, label %370

153:                                              ; preds = %150
  store i32 8, i32* %12, align 4
  br label %154

154:                                              ; preds = %361, %153
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %155, 80
  br i1 %156, label %157, label %364

157:                                              ; preds = %154
  %158 = load i32, i32* %16, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %232

160:                                              ; preds = %157
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 8
  %174 = sdiv i32 %173, 2
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = add nsw i32 %171, %178
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = mul nsw i32 %180, 2
  %182 = load i32, i32* %8, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %160
  br label %361

185:                                              ; preds = %160
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %21, align 8
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %21, align 8
  %203 = load i32, i32* %13, align 4
  %204 = mul nsw i32 %203, 2
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32 %201, i32* %207, align 4
  %208 = load i32*, i32** %21, align 8
  %209 = load i32, i32* %13, align 4
  %210 = mul nsw i32 %209, 2
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 128
  br i1 %215, label %216, label %231

216:                                              ; preds = %185
  %217 = load i32*, i32** %21, align 8
  %218 = load i32, i32* %13, align 4
  %219 = mul nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %216
  %225 = load i32*, i32** %21, align 8
  %226 = load i32, i32* %13, align 4
  %227 = mul nsw i32 %226, 2
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %224, %216, %185
  br label %360

232:                                              ; preds = %157
  %233 = load i32*, i32** %5, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 4
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = ashr i32 %244, 4
  %246 = or i32 %238, %245
  store i32 %246, i32* %18, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 4
  %254 = load i32*, i32** %5, align 8
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 2
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 15
  %261 = or i32 %253, %260
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %18, align 4
  %263 = icmp eq i32 %262, 2048
  br i1 %263, label %264, label %265

264:                                              ; preds = %232
  br label %268

265:                                              ; preds = %232
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @dv_audio_12to16(i32 %266)
  br label %268

268:                                              ; preds = %265, %264
  %269 = phi i32 [ 0, %264 ], [ %267, %265 ]
  store i32 %269, i32* %18, align 4
  %270 = load i32, i32* %19, align 4
  %271 = icmp eq i32 %270, 2048
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %276

273:                                              ; preds = %268
  %274 = load i32, i32* %19, align 4
  %275 = call i32 @dv_audio_12to16(i32 %274)
  br label %276

276:                                              ; preds = %273, %272
  %277 = phi i32 [ 0, %272 ], [ %275, %273 ]
  store i32 %277, i32* %19, align 4
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 4
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %17, align 4
  %283 = srem i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %280, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %12, align 4
  %292 = sub nsw i32 %291, 8
  %293 = sdiv i32 %292, 3
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = mul nsw i32 %293, %296
  %298 = add nsw i32 %290, %297
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = mul nsw i32 %299, 2
  %301 = load i32, i32* %8, align 4
  %302 = icmp sge i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %276
  br label %361

304:                                              ; preds = %276
  %305 = load i32, i32* %18, align 4
  %306 = and i32 %305, 255
  %307 = load i32*, i32** %21, align 8
  %308 = load i32, i32* %13, align 4
  %309 = mul nsw i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %306, i32* %311, align 4
  %312 = load i32, i32* %18, align 4
  %313 = ashr i32 %312, 8
  %314 = load i32*, i32** %21, align 8
  %315 = load i32, i32* %13, align 4
  %316 = mul nsw i32 %315, 2
  %317 = add nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  store i32 %313, i32* %319, align 4
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 4
  %322 = load i32**, i32*** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %17, align 4
  %325 = srem i32 %323, %324
  %326 = load i32, i32* %17, align 4
  %327 = add nsw i32 %325, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %322, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %12, align 4
  %336 = sub nsw i32 %335, 8
  %337 = sdiv i32 %336, 3
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 8
  %341 = mul nsw i32 %337, %340
  %342 = add nsw i32 %334, %341
  store i32 %342, i32* %13, align 4
  %343 = load i32, i32* %19, align 4
  %344 = and i32 %343, 255
  %345 = load i32*, i32** %21, align 8
  %346 = load i32, i32* %13, align 4
  %347 = mul nsw i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  store i32 %344, i32* %349, align 4
  %350 = load i32, i32* %19, align 4
  %351 = ashr i32 %350, 8
  %352 = load i32*, i32** %21, align 8
  %353 = load i32, i32* %13, align 4
  %354 = mul nsw i32 %353, 2
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  store i32 %351, i32* %357, align 4
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %12, align 4
  br label %360

360:                                              ; preds = %304, %231
  br label %361

361:                                              ; preds = %360, %303, %184
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %362, 2
  store i32 %363, i32* %12, align 4
  br label %154

364:                                              ; preds = %154
  %365 = load i32*, i32** %5, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1280
  store i32* %366, i32** %5, align 8
  br label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %11, align 4
  br label %150

370:                                              ; preds = %150
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %10, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %10, align 4
  br label %119

374:                                              ; preds = %147, %119
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %9, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %9, align 4
  br label %98

378:                                              ; preds = %117, %98
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %378, %93, %51, %45, %28
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local i32* @dv_extract_pack(i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @dv_audio_12to16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
