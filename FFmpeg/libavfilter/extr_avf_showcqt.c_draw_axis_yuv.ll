; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_axis_yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_axis_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32** }

@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32)* @draw_axis_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_axis_yuv(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %50, 2
  br label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %16, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %17, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %18, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %19, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %20, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 2
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %21, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 3
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %22, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %23, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %24, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %25, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %26, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %27, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %28, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %29, align 4
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %418, %54
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %421

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = sdiv i32 %135, 2
  br label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi i32 [ %136, %134 ], [ %138, %137 ]
  store i32 %140, i32* %12, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %23, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  store i32* %148, i32** %30, align 8
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %24, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %149, i64 %155
  store i32* %156, i32** %31, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %25, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  store i32* %164, i32** %32, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %26, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  store i32* %170, i32** %33, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %27, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  store i32* %176, i32** %34, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %28, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  store i32* %182, i32** %35, align 8
  %183 = load i32*, i32** %22, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %29, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  store i32* %188, i32** %36, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %211, %192
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %193
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @BLEND_WITH_CHROMA(i32 %202)
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @BLEND_WITH_CHROMA(i32 %209)
  br label %211

211:                                              ; preds = %197
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 2
  store i32 %213, i32* %10, align 4
  br label %193

214:                                              ; preds = %193
  br label %278

215:                                              ; preds = %139
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %215
  store i32 0, i32* %10, align 4
  br label %220

220:                                              ; preds = %244, %219
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %247

224:                                              ; preds = %220
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @BLEND_WITHOUT_CHROMA(i32 %229, i32 0)
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @BLEND_CHROMA2(i32 %235)
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @BLEND_WITHOUT_CHROMA(i32 %242, i32 1)
  br label %244

244:                                              ; preds = %224
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 2
  store i32 %246, i32* %10, align 4
  br label %220

247:                                              ; preds = %220
  br label %277

248:                                              ; preds = %215
  store i32 0, i32* %10, align 4
  br label %249

249:                                              ; preds = %273, %248
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %276

253:                                              ; preds = %249
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @BLEND_WITHOUT_CHROMA(i32 %258, i32 0)
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @BLEND_CHROMA2x2(i32 %264)
  %266 = load i32*, i32** %7, align 8
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @BLEND_WITHOUT_CHROMA(i32 %271, i32 1)
  br label %273

273:                                              ; preds = %253
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 2
  store i32 %275, i32* %10, align 4
  br label %249

276:                                              ; preds = %249
  br label %277

277:                                              ; preds = %276, %247
  br label %278

278:                                              ; preds = %277, %214
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %280, %281
  %283 = add nsw i32 %282, 1
  %284 = load i32, i32* %23, align 4
  %285 = mul nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %279, i64 %286
  store i32* %287, i32** %30, align 8
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %289, %290
  %292 = add nsw i32 %291, 1
  %293 = load i32, i32* %24, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %288, i64 %295
  store i32* %296, i32** %31, align 8
  %297 = load i32*, i32** %18, align 8
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %298, %299
  %301 = add nsw i32 %300, 1
  %302 = load i32, i32* %25, align 4
  %303 = mul nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %297, i64 %304
  store i32* %305, i32** %32, align 8
  %306 = load i32*, i32** %19, align 8
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 1
  %309 = load i32, i32* %26, align 4
  %310 = mul nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  store i32* %312, i32** %33, align 8
  %313 = load i32*, i32** %20, align 8
  %314 = load i32, i32* %11, align 4
  %315 = add nsw i32 %314, 1
  %316 = load i32, i32* %27, align 4
  %317 = mul nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %313, i64 %318
  store i32* %319, i32** %34, align 8
  %320 = load i32*, i32** %21, align 8
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 1
  %323 = load i32, i32* %28, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %320, i64 %325
  store i32* %326, i32** %35, align 8
  %327 = load i32*, i32** %22, align 8
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 1
  %330 = load i32, i32* %29, align 4
  %331 = mul nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %327, i64 %332
  store i32* %333, i32** %36, align 8
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %360

337:                                              ; preds = %278
  store i32 0, i32* %10, align 4
  br label %338

338:                                              ; preds = %356, %337
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %13, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %338
  %343 = load i32*, i32** %7, align 8
  %344 = load i32, i32* %10, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @BLEND_WITH_CHROMA(i32 %347)
  %349 = load i32*, i32** %7, align 8
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @BLEND_WITH_CHROMA(i32 %354)
  br label %356

356:                                              ; preds = %342
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %357, 2
  store i32 %358, i32* %10, align 4
  br label %338

359:                                              ; preds = %338
  br label %417

360:                                              ; preds = %278
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %393

364:                                              ; preds = %360
  store i32 0, i32* %10, align 4
  br label %365

365:                                              ; preds = %389, %364
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* %13, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %392

369:                                              ; preds = %365
  %370 = load i32*, i32** %7, align 8
  %371 = load i32, i32* %10, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @BLEND_WITHOUT_CHROMA(i32 %374, i32 0)
  %376 = load i32*, i32** %7, align 8
  %377 = load i32, i32* %10, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @BLEND_CHROMA2(i32 %380)
  %382 = load i32*, i32** %7, align 8
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @BLEND_WITHOUT_CHROMA(i32 %387, i32 1)
  br label %389

389:                                              ; preds = %369
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 2
  store i32 %391, i32* %10, align 4
  br label %365

392:                                              ; preds = %365
  br label %416

393:                                              ; preds = %360
  store i32 0, i32* %10, align 4
  br label %394

394:                                              ; preds = %412, %393
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %13, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %415

398:                                              ; preds = %394
  %399 = load i32*, i32** %7, align 8
  %400 = load i32, i32* %10, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @BLEND_WITHOUT_CHROMA(i32 %403, i32 1)
  %405 = load i32*, i32** %7, align 8
  %406 = load i32, i32* %10, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @BLEND_WITHOUT_CHROMA(i32 %410, i32 1)
  br label %412

412:                                              ; preds = %398
  %413 = load i32, i32* %10, align 4
  %414 = add nsw i32 %413, 2
  store i32 %414, i32* %10, align 4
  br label %394

415:                                              ; preds = %394
  br label %416

416:                                              ; preds = %415, %392
  br label %417

417:                                              ; preds = %416, %359
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %11, align 4
  %420 = add nsw i32 %419, 2
  store i32 %420, i32* %11, align 4
  br label %126

421:                                              ; preds = %126
  ret void
}

declare dso_local i32 @BLEND_WITH_CHROMA(i32) #1

declare dso_local i32 @BLEND_WITHOUT_CHROMA(i32, i32) #1

declare dso_local i32 @BLEND_CHROMA2(i32) #1

declare dso_local i32 @BLEND_CHROMA2x2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
