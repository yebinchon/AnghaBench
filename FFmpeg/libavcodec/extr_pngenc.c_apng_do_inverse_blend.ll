; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_apng_do_inverse_blend.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_apng_do_inverse_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32**, i32*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@APNG_BLEND_OP_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @apng_do_inverse_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apng_do_inverse_blend(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %16, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %17, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %119, %4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %122

56:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %107, %56
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %57
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memcmp(i32* %69, i32* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %63
  br label %107

80:                                               ; preds = %63
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp uge i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp uge i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %103, %99
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %57

110:                                              ; preds = %57
  %111 = load i32, i32* %18, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %16, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %17, align 8
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %50

122:                                              ; preds = %50
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %128, %122
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @APNG_BLEND_OP_SOURCE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %180

138:                                              ; preds = %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %17, align 8
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %176, %138
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %179

149:                                              ; preds = %145
  %150 = load i32*, i32** %17, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %11, align 4
  %158 = mul i32 %156, %157
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %12, align 4
  %163 = mul i32 %161, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sub i32 %167, %168
  %170 = mul i32 %166, %169
  %171 = call i32 @memcpy(i32* %150, i32* %165, i32 %170)
  %172 = load i32, i32* %19, align 4
  %173 = load i32*, i32** %17, align 8
  %174 = zext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %17, align 8
  br label %176

176:                                              ; preds = %149
  %177 = load i32, i32* %11, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %145

179:                                              ; preds = %145
  br label %383

180:                                              ; preds = %132
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %207 [
    i32 129, label %184
    i32 128, label %184
    i32 130, label %184
    i32 132, label %184
    i32 131, label %185
  ]

184:                                              ; preds = %180, %180, %180, %180
  br label %208

185:                                              ; preds = %180
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %21, align 8
  store i64 0, i64* %20, align 8
  br label %191

191:                                              ; preds = %203, %185
  %192 = load i64, i64* %20, align 8
  %193 = icmp ult i64 %192, 256
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load i32*, i32** %21, align 8
  %196 = load i64, i64* %20, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %206

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %20, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %20, align 8
  br label %191

206:                                              ; preds = %201, %191
  br label %208

207:                                              ; preds = %180
  store i32 -1, i32* %5, align 4
  br label %410

208:                                              ; preds = %206, %184
  %209 = load i32, i32* %14, align 4
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %379, %208
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %15, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %382

214:                                              ; preds = %210
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %11, align 4
  %222 = mul i32 %220, %221
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %12, align 4
  %227 = mul i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  store i32* %229, i32** %22, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32**, i32*** %231, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i64 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %11, align 4
  %237 = mul i32 %235, %236
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %12, align 4
  %242 = mul i32 %240, %241
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  store i32* %244, i32** %23, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i32**, i32*** %246, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %14, align 4
  %253 = sub i32 %251, %252
  %254 = mul i32 %250, %253
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %249, i64 %255
  store i32* %256, i32** %17, align 8
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %10, align 4
  br label %258

258:                                              ; preds = %363, %214
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %13, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %378

262:                                              ; preds = %258
  %263 = load i32*, i32** %22, align 8
  %264 = load i32*, i32** %23, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @memcmp(i32* %263, i32* %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %286, label %268

268:                                              ; preds = %262
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 131
  br i1 %272, label %273, label %281

273:                                              ; preds = %268
  %274 = load i64, i64* %20, align 8
  %275 = icmp eq i64 %274, 256
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i32 -1, i32* %5, align 4
  br label %410

277:                                              ; preds = %273
  %278 = load i64, i64* %20, align 8
  %279 = trunc i64 %278 to i32
  %280 = load i32*, i32** %17, align 8
  store i32 %279, i32* %280, align 4
  br label %285

281:                                              ; preds = %268
  %282 = load i32*, i32** %17, align 8
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @memset(i32* %282, i32 0, i32 %283)
  br label %285

285:                                              ; preds = %281, %277
  br label %363

286:                                              ; preds = %262
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  switch i32 %289, label %358 [
    i32 129, label %290
    i32 128, label %302
    i32 130, label %314
    i32 132, label %326
    i32 131, label %338
  ]

290:                                              ; preds = %286
  %291 = load i32*, i32** %22, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 65535
  br i1 %294, label %300, label %295

295:                                              ; preds = %290
  %296 = load i32*, i32** %23, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295, %290
  br label %358

301:                                              ; preds = %295
  store i32 -1, i32* %5, align 4
  br label %410

302:                                              ; preds = %286
  %303 = load i32*, i32** %22, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 65535
  br i1 %306, label %312, label %307

307:                                              ; preds = %302
  %308 = load i32*, i32** %23, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307, %302
  br label %358

313:                                              ; preds = %307
  store i32 -1, i32* %5, align 4
  br label %410

314:                                              ; preds = %286
  %315 = load i32*, i32** %22, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 255
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = load i32*, i32** %23, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319, %314
  br label %358

325:                                              ; preds = %319
  store i32 -1, i32* %5, align 4
  br label %410

326:                                              ; preds = %286
  %327 = load i32*, i32** %22, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 255
  br i1 %330, label %336, label %331

331:                                              ; preds = %326
  %332 = load i32*, i32** %23, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331, %326
  br label %358

337:                                              ; preds = %331
  store i32 -1, i32* %5, align 4
  br label %410

338:                                              ; preds = %286
  %339 = load i32*, i32** %21, align 8
  %340 = load i32*, i32** %22, align 8
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = ashr i32 %344, 24
  %346 = icmp eq i32 %345, 255
  br i1 %346, label %356, label %347

347:                                              ; preds = %338
  %348 = load i32*, i32** %21, align 8
  %349 = load i32*, i32** %23, align 8
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 24
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %347, %338
  br label %358

357:                                              ; preds = %347
  store i32 -1, i32* %5, align 4
  br label %410

358:                                              ; preds = %286, %356, %336, %324, %312, %300
  %359 = load i32*, i32** %17, align 8
  %360 = load i32*, i32** %22, align 8
  %361 = load i32, i32* %9, align 4
  %362 = call i32 @memmove(i32* %359, i32* %360, i32 %361)
  br label %363

363:                                              ; preds = %358, %285
  %364 = load i32, i32* %10, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %9, align 4
  %367 = load i32*, i32** %22, align 8
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  store i32* %369, i32** %22, align 8
  %370 = load i32, i32* %9, align 4
  %371 = load i32*, i32** %23, align 8
  %372 = zext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %23, align 8
  %374 = load i32, i32* %9, align 4
  %375 = load i32*, i32** %17, align 8
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32* %377, i32** %17, align 8
  br label %258

378:                                              ; preds = %258
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %11, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %11, align 4
  br label %210

382:                                              ; preds = %210
  br label %383

383:                                              ; preds = %382, %179
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %12, align 4
  %386 = sub i32 %384, %385
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  %389 = load i32, i32* %15, align 4
  %390 = load i32, i32* %14, align 4
  %391 = sub i32 %389, %390
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 8
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 2
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* %12, align 4
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 3
  store i32 %404, i32* %406, align 8
  %407 = load i32, i32* %14, align 4
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 4
  store i32 %407, i32* %409, align 4
  store i32 0, i32* %5, align 4
  br label %410

410:                                              ; preds = %383, %357, %337, %325, %313, %301, %276, %207
  %411 = load i32, i32* %5, align 4
  ret i32 %411
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
