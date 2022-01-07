; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.h_decode_run_i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.h_decode_run_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32*)* @decode_run_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_run_i(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32* %6, i32 %7, i32* %8, i32* %9, i32 %10, i32 %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32* %6, i32** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %34, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %35, align 4
  %45 = load i32*, i32** %24, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %36, align 4
  %47 = load i32*, i32** %25, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %37, align 4
  %49 = load i32, i32* %35, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %14
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %15, align 4
  br label %461

56:                                               ; preds = %14
  %57 = load i32, i32* %17, align 4
  switch i32 %57, label %429 [
    i32 0, label %58
    i32 1, label %98
    i32 2, label %155
    i32 4, label %212
    i32 5, label %359
  ]

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %96, %58
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %18, align 4
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = load i32, i32* %21, align 4
  %65 = load i32*, i32** %22, align 8
  %66 = load i32, i32* %35, align 4
  %67 = load i32, i32* %23, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %34, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  store i32 %64, i32* %72, align 4
  %73 = load i32, i32* %34, align 4
  store i32 %73, i32* %36, align 4
  %74 = load i32, i32* %35, align 4
  store i32 %74, i32* %37, align 4
  %75 = load i32, i32* %34, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %34, align 4
  %77 = load i32, i32* %34, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %63
  store i32 0, i32* %34, align 4
  %83 = load i32, i32* %35, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %35, align 4
  %85 = load i32, i32* %35, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %15, align 4
  br label %461

95:                                               ; preds = %90, %82
  br label %96

96:                                               ; preds = %95, %63
  br label %59

97:                                               ; preds = %59
  br label %429

98:                                               ; preds = %56
  br label %99

99:                                               ; preds = %144, %98
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %18, align 4
  %102 = icmp sgt i32 %100, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %99
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %37, align 4
  %106 = load i32, i32* %23, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %36, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %22, align 8
  %114 = load i32, i32* %35, align 4
  %115 = load i32, i32* %23, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %34, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32 %112, i32* %120, align 4
  %121 = load i32, i32* %34, align 4
  store i32 %121, i32* %36, align 4
  %122 = load i32, i32* %35, align 4
  store i32 %122, i32* %37, align 4
  %123 = load i32, i32* %34, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %34, align 4
  %125 = load i32, i32* %34, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %103
  store i32 0, i32* %34, align 4
  %131 = load i32, i32* %35, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %35, align 4
  %133 = load i32, i32* %35, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %15, align 4
  br label %461

143:                                              ; preds = %138, %130
  br label %144

144:                                              ; preds = %143, %103
  br label %99

145:                                              ; preds = %99
  %146 = load i32*, i32** %22, align 8
  %147 = load i32, i32* %37, align 4
  %148 = load i32, i32* %23, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %36, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %21, align 4
  br label %429

155:                                              ; preds = %56
  %156 = load i32, i32* %35, align 4
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %159, i32* %15, align 4
  br label %461

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %210, %160
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %18, align 4
  %164 = icmp sgt i32 %162, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %161
  %166 = load i32*, i32** %22, align 8
  %167 = load i32, i32* %35, align 4
  %168 = load i32, i32* %23, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %34, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %27, align 4
  %173 = add nsw i32 %171, %172
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %166, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load i32*, i32** %22, align 8
  %180 = load i32, i32* %35, align 4
  %181 = load i32, i32* %23, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %34, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  store i32 %178, i32* %186, align 4
  %187 = load i32, i32* %34, align 4
  store i32 %187, i32* %36, align 4
  %188 = load i32, i32* %35, align 4
  store i32 %188, i32* %37, align 4
  %189 = load i32, i32* %34, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %34, align 4
  %191 = load i32, i32* %34, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %191, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %165
  store i32 0, i32* %34, align 4
  %197 = load i32, i32* %35, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %35, align 4
  %199 = load i32, i32* %35, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %199, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %208, i32* %15, align 4
  br label %461

209:                                              ; preds = %204, %196
  br label %210

210:                                              ; preds = %209, %165
  br label %161

211:                                              ; preds = %161
  br label %429

212:                                              ; preds = %56
  %213 = load i32, i32* %35, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %35, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i32, i32* %34, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %218, %212
  %222 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %222, i32* %15, align 4
  br label %461

223:                                              ; preds = %218, %215
  br label %224

224:                                              ; preds = %357, %223
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %18, align 4
  %227 = icmp sgt i32 %225, 0
  br i1 %227, label %228, label %358

228:                                              ; preds = %224
  %229 = load i32*, i32** %22, align 8
  store i32* %229, i32** %38, align 8
  %230 = load i32, i32* %37, align 4
  %231 = load i32, i32* %23, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load i32, i32* %36, align 4
  %234 = add nsw i32 %232, %233
  %235 = mul nsw i32 %234, 4
  store i32 %235, i32* %39, align 4
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* %23, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* %34, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %27, align 4
  %242 = add nsw i32 %240, %241
  %243 = mul nsw i32 %242, 4
  store i32 %243, i32* %40, align 4
  %244 = load i32, i32* %34, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %228
  %247 = load i32, i32* %26, align 4
  %248 = mul nsw i32 %247, 4
  store i32 %248, i32* %33, align 4
  br label %250

249:                                              ; preds = %228
  store i32 0, i32* %33, align 4
  br label %250

250:                                              ; preds = %249, %246
  %251 = load i32*, i32** %38, align 8
  %252 = load i32, i32* %39, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %38, align 8
  %257 = load i32, i32* %40, align 4
  %258 = add nsw i32 %257, 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %255, %261
  %263 = load i32*, i32** %38, align 8
  %264 = load i32, i32* %40, align 4
  %265 = load i32, i32* %33, align 4
  %266 = sub nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %262, %269
  store i32 %270, i32* %30, align 4
  %271 = load i32*, i32** %38, align 8
  %272 = load i32, i32* %39, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %38, align 8
  %278 = load i32, i32* %40, align 4
  %279 = add nsw i32 %278, 5
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %276, %282
  %284 = load i32*, i32** %38, align 8
  %285 = load i32, i32* %40, align 4
  %286 = load i32, i32* %33, align 4
  %287 = sub nsw i32 %285, %286
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %284, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %283, %291
  store i32 %292, i32* %31, align 4
  %293 = load i32*, i32** %38, align 8
  %294 = load i32, i32* %39, align 4
  %295 = add nsw i32 %294, 2
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %38, align 8
  %300 = load i32, i32* %40, align 4
  %301 = add nsw i32 %300, 6
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %298, %304
  %306 = load i32*, i32** %38, align 8
  %307 = load i32, i32* %40, align 4
  %308 = load i32, i32* %33, align 4
  %309 = sub nsw i32 %307, %308
  %310 = add nsw i32 %309, 2
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %305, %313
  store i32 %314, i32* %32, align 4
  %315 = load i32, i32* %32, align 4
  %316 = and i32 %315, 255
  %317 = shl i32 %316, 16
  %318 = load i32, i32* %31, align 4
  %319 = and i32 %318, 255
  %320 = shl i32 %319, 8
  %321 = add nsw i32 %317, %320
  %322 = load i32, i32* %30, align 4
  %323 = and i32 %322, 255
  %324 = add nsw i32 %321, %323
  store i32 %324, i32* %21, align 4
  %325 = load i32, i32* %21, align 4
  %326 = load i32*, i32** %22, align 8
  %327 = load i32, i32* %35, align 4
  %328 = load i32, i32* %23, align 4
  %329 = mul nsw i32 %327, %328
  %330 = load i32, i32* %34, align 4
  %331 = add nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %326, i64 %332
  store i32 %325, i32* %333, align 4
  %334 = load i32, i32* %34, align 4
  store i32 %334, i32* %36, align 4
  %335 = load i32, i32* %35, align 4
  store i32 %335, i32* %37, align 4
  %336 = load i32, i32* %34, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %34, align 4
  %338 = load i32, i32* %34, align 4
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = icmp sge i32 %338, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %250
  store i32 0, i32* %34, align 4
  %344 = load i32, i32* %35, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %35, align 4
  %346 = load i32, i32* %35, align 4
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp sge i32 %346, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %343
  %352 = load i32, i32* %18, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %355, i32* %15, align 4
  br label %461

356:                                              ; preds = %351, %343
  br label %357

357:                                              ; preds = %356, %250
  br label %224

358:                                              ; preds = %224
  br label %429

359:                                              ; preds = %56
  %360 = load i32, i32* %35, align 4
  %361 = icmp slt i32 %360, 1
  br i1 %361, label %368, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %35, align 4
  %364 = icmp eq i32 %363, 1
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load i32, i32* %34, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %365, %359
  %369 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %369, i32* %15, align 4
  br label %461

370:                                              ; preds = %365, %362
  br label %371

371:                                              ; preds = %427, %370
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, -1
  store i32 %373, i32* %18, align 4
  %374 = icmp sgt i32 %372, 0
  br i1 %374, label %375, label %428

375:                                              ; preds = %371
  %376 = load i32, i32* %34, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* %26, align 4
  store i32 %379, i32* %33, align 4
  br label %381

380:                                              ; preds = %375
  store i32 0, i32* %33, align 4
  br label %381

381:                                              ; preds = %380, %378
  %382 = load i32*, i32** %22, align 8
  %383 = load i32, i32* %35, align 4
  %384 = load i32, i32* %23, align 4
  %385 = mul nsw i32 %383, %384
  %386 = load i32, i32* %34, align 4
  %387 = add nsw i32 %385, %386
  %388 = load i32, i32* %27, align 4
  %389 = add nsw i32 %387, %388
  %390 = load i32, i32* %33, align 4
  %391 = sub nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %382, i64 %392
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %21, align 4
  %395 = load i32, i32* %21, align 4
  %396 = load i32*, i32** %22, align 8
  %397 = load i32, i32* %35, align 4
  %398 = load i32, i32* %23, align 4
  %399 = mul nsw i32 %397, %398
  %400 = load i32, i32* %34, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %396, i64 %402
  store i32 %395, i32* %403, align 4
  %404 = load i32, i32* %34, align 4
  store i32 %404, i32* %36, align 4
  %405 = load i32, i32* %35, align 4
  store i32 %405, i32* %37, align 4
  %406 = load i32, i32* %34, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %34, align 4
  %408 = load i32, i32* %34, align 4
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = icmp sge i32 %408, %411
  br i1 %412, label %413, label %427

413:                                              ; preds = %381
  store i32 0, i32* %34, align 4
  %414 = load i32, i32* %35, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %35, align 4
  %416 = load i32, i32* %35, align 4
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp sge i32 %416, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %413
  %422 = load i32, i32* %18, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %425, i32* %15, align 4
  br label %461

426:                                              ; preds = %421, %413
  br label %427

427:                                              ; preds = %426, %381
  br label %371

428:                                              ; preds = %371
  br label %429

429:                                              ; preds = %56, %428, %358, %211, %145, %97
  %430 = load i32, i32* %34, align 4
  %431 = load i32*, i32** %19, align 8
  store i32 %430, i32* %431, align 4
  %432 = load i32, i32* %35, align 4
  %433 = load i32*, i32** %20, align 8
  store i32 %432, i32* %433, align 4
  %434 = load i32, i32* %36, align 4
  %435 = load i32*, i32** %24, align 8
  store i32 %434, i32* %435, align 4
  %436 = load i32, i32* %37, align 4
  %437 = load i32*, i32** %25, align 8
  store i32 %436, i32* %437, align 4
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 16
  br i1 %441, label %442, label %451

442:                                              ; preds = %429
  %443 = load i32, i32* %21, align 4
  %444 = and i32 %443, 16128
  %445 = ashr i32 %444, 2
  %446 = load i32*, i32** %29, align 8
  store i32 %445, i32* %446, align 4
  %447 = load i32, i32* %21, align 4
  %448 = and i32 %447, 4194303
  %449 = ashr i32 %448, 16
  %450 = load i32*, i32** %28, align 8
  store i32 %449, i32* %450, align 4
  br label %460

451:                                              ; preds = %429
  %452 = load i32, i32* %21, align 4
  %453 = and i32 %452, 64512
  %454 = ashr i32 %453, 4
  %455 = load i32*, i32** %29, align 8
  store i32 %454, i32* %455, align 4
  %456 = load i32, i32* %21, align 4
  %457 = and i32 %456, 16777215
  %458 = ashr i32 %457, 18
  %459 = load i32*, i32** %28, align 8
  store i32 %458, i32* %459, align 4
  br label %460

460:                                              ; preds = %451, %442
  store i32 0, i32* %15, align 4
  br label %461

461:                                              ; preds = %460, %424, %368, %354, %221, %207, %158, %141, %93, %54
  %462 = load i32, i32* %15, align 4
  ret i32 %462
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
