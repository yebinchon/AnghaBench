; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_int32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@WV_MONO_DATA = common dso_local global i32 0, align 4
@MAG_MASK = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@WV_INT32_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32)* @scan_int32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_int32(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WV_MONO_DATA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %79, %34
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %14, align 4
  %46 = mul nsw i32 %45, 9
  %47 = load i32, i32* %17, align 4
  %48 = and i32 %47, 65535
  %49 = mul nsw i32 %48, 3
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* %17, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* %17, align 4
  %59 = xor i32 %58, -1
  br label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %67, 1
  %69 = sub nsw i32 0, %68
  %70 = xor i32 %66, %69
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %35

82:                                               ; preds = %35
  br label %169

83:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %165, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %168

88:                                               ; preds = %84
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %18, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %99, 9
  %101 = load i32, i32* %18, align 4
  %102 = and i32 %101, 65535
  %103 = mul nsw i32 %102, 3
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %18, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 9
  %111 = load i32, i32* %19, align 4
  %112 = and i32 %111, 65535
  %113 = mul nsw i32 %112, 3
  %114 = add nsw i32 %110, %113
  %115 = load i32, i32* %19, align 4
  %116 = ashr i32 %115, 16
  %117 = and i32 %116, 65535
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %88
  %122 = load i32, i32* %18, align 4
  %123 = xor i32 %122, -1
  br label %126

124:                                              ; preds = %88
  %125 = load i32, i32* %18, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %123, %121 ], [ %125, %124 ]
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %19, align 4
  %134 = xor i32 %133, -1
  br label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %19, align 4
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i32 [ %134, %132 ], [ %136, %135 ]
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = and i32 %142, 1
  %144 = sub nsw i32 0, %143
  %145 = xor i32 %141, %144
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = and i32 %149, 1
  %151 = sub nsw i32 0, %150
  %152 = xor i32 %148, %151
  %153 = load i32, i32* %12, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* %13, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %137
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %84

168:                                              ; preds = %84
  br label %169

169:                                              ; preds = %168, %82
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @MAG_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %182, %169
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i32, i32* @MAG_LSB, align 4
  %184 = shl i32 1, %183
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %10, align 4
  %190 = ashr i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %179

191:                                              ; preds = %179
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MAG_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @MAG_LSB, align 4
  %198 = ashr i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %191
  %201 = load i32, i32* @WV_INT32_DATA, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  store i32 0, i32* %5, align 4
  br label %354

207:                                              ; preds = %191
  %208 = load i32, i32* %11, align 4
  %209 = and i32 %208, 1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %233, label %211

211:                                              ; preds = %207
  br label %212

212:                                              ; preds = %227, %211
  %213 = load i32, i32* @MAG_LSB, align 4
  %214 = shl i32 1, %213
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %11, align 4
  %226 = ashr i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %212
  %228 = load i32, i32* %11, align 4
  %229 = and i32 %228, 1
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  br i1 %231, label %212, label %232

232:                                              ; preds = %227
  br label %286

233:                                              ; preds = %207
  %234 = load i32, i32* %13, align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %258

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %253, %237
  %239 = load i32, i32* @MAG_LSB, align 4
  %240 = shl i32 1, %239
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %13, align 4
  %252 = ashr i32 %251, 1
  store i32 %252, i32* %13, align 4
  br label %253

253:                                              ; preds = %238
  %254 = load i32, i32* %13, align 4
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %238, label %257

257:                                              ; preds = %253
  br label %285

258:                                              ; preds = %233
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, 2
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %284, label %262

262:                                              ; preds = %258
  br label %263

263:                                              ; preds = %278, %262
  %264 = load i32, i32* @MAG_LSB, align 4
  %265 = shl i32 1, %264
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %268, %265
  store i32 %269, i32* %267, align 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %12, align 4
  %277 = ashr i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %278

278:                                              ; preds = %263
  %279 = load i32, i32* %12, align 4
  %280 = and i32 %279, 2
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  br i1 %282, label %263, label %283

283:                                              ; preds = %278
  br label %284

284:                                              ; preds = %283, %258
  br label %285

285:                                              ; preds = %284, %257
  br label %286

286:                                              ; preds = %285, %232
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @MAG_MASK, align 4
  %291 = and i32 %289, %290
  %292 = load i32, i32* @MAG_LSB, align 4
  %293 = ashr i32 %291, %292
  %294 = icmp sgt i32 %293, 23
  br i1 %294, label %295, label %323

295:                                              ; preds = %286
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @MAG_MASK, align 4
  %300 = and i32 %298, %299
  %301 = load i32, i32* @MAG_LSB, align 4
  %302 = ashr i32 %300, %301
  %303 = sub nsw i32 %302, 23
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* @MAG_MASK, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 4
  %317 = load i32, i32* @MAG_LSB, align 4
  %318 = shl i32 23, %317
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %295, %286
  %324 = load i32, i32* %16, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %323
  %327 = load i32, i32* @WV_INT32_DATA, align 4
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @WV_MONO_DATA, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %326
  %339 = load i32*, i32** %7, align 8
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %16, align 4
  %342 = call i32 @shift_mono(i32* %339, i32 %340, i32 %341)
  br label %349

343:                                              ; preds = %326
  %344 = load i32*, i32** %7, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %16, align 4
  %348 = call i32 @shift_stereo(i32* %344, i32* %345, i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %343, %338
  br label %350

350:                                              ; preds = %349, %323
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %5, align 4
  br label %354

354:                                              ; preds = %350, %200
  %355 = load i32, i32* %5, align 4
  ret i32 %355
}

declare dso_local i32 @shift_mono(i32*, i32, i32) #1

declare dso_local i32 @shift_stereo(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
