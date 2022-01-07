; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opshft.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opshft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_COUNT = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@count = common dso_local global i32 0, align 4
@INSN_GET_REG = common dso_local global i32 0, align 4
@reg = common dso_local global i64 0, align 8
@reg0 = common dso_local global i64 0, align 8
@SR_X = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_X_SHIFT = common dso_local global i32 0, align 4
@BYTE_OFS = common dso_local global i32 0, align 4
@WORD_OFS = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @opshft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opshft(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 256
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @INSN_GET_SIZE, align 4
  %20 = load i32, i32* @INSN_GET_COUNT, align 4
  %21 = load i32, i32* @INSN_GET_REG0, align 4
  %22 = load i32, i32* @size, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %49

24:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 2048
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @EA_MODE(i32 %29)
  %31 = load i64, i64* @EA_ADDRESS_REG, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @op_ill(%struct.TYPE_6__* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %463

37:                                               ; preds = %28
  store i32 128, i32* @size, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 9
  %40 = and i32 %39, 3
  store i32 %40, i32* %8, align 4
  store i32 1, i32* @count, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @size, align 4
  %44 = call i32 @ea_get(%struct.TYPE_6__* %41, i32 %42, i32 %43, i32 1, i32* %10)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %463

48:                                               ; preds = %37
  br label %96

49:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 3
  %52 = and i32 %51, 3
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* @INSN_GET_REG, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @reg, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 63
  store i32 %64, i32* @count, align 4
  br label %65

65:                                               ; preds = %56, %49
  %66 = load i32, i32* @size, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @reg0, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  br label %94

75:                                               ; preds = %65
  %76 = load i32, i32* @size, align 4
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @reg0, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @reg0, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %85, %78
  %93 = phi i32 [ %84, %78 ], [ %91, %85 ]
  br label %94

94:                                               ; preds = %92, %68
  %95 = phi i32 [ %74, %68 ], [ %93, %92 ]
  store i32 %95, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %48
  %97 = load i32, i32* @count, align 4
  %98 = mul nsw i32 %97, 2
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = call i32 (...) @INSN_CLEAR_CC()
  %102 = load i32, i32* @count, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %383

104:                                              ; preds = %96
  %105 = load i32, i32* @size, align 4
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @size, align 4
  %110 = icmp eq i32 %109, 128
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 16, i32 32
  br label %113

113:                                              ; preds = %108, %107
  %114 = phi i32 [ 8, %107 ], [ %112, %108 ]
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  switch i32 %115, label %328 [
    i32 0, label %116
    i32 1, label %206
    i32 2, label %263
  ]

116:                                              ; preds = %113
  %117 = load i32, i32* @SR_X, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %146, %125
  %127 = load i32, i32* @count, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  %133 = ashr i32 %130, %132
  %134 = and i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %135, 1
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %139, 1
  %141 = ashr i32 %138, %140
  %142 = xor i32 %137, %141
  %143 = and i32 %142, 1
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %129
  %147 = load i32, i32* @count, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* @count, align 4
  br label %126

149:                                              ; preds = %126
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @SR_V, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %149
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* @SR_X, align 4
  %163 = load i32, i32* @SR_C, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %161, %158
  br label %205

170:                                              ; preds = %116
  %171 = load i32, i32* @size, align 4
  %172 = icmp eq i32 %171, 129
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %9, align 4
  br label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @size, align 4
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %178, %175
  br label %181

181:                                              ; preds = %180, %173
  %182 = load i32, i32* @count, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 32, i32* @count, align 4
  br label %186

186:                                              ; preds = %185, %181
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @count, align 4
  %189 = sub nsw i32 %188, 1
  %190 = ashr i32 %187, %189
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %186
  %195 = load i32, i32* @SR_X, align 4
  %196 = load i32, i32* @SR_C, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %194, %186
  %203 = load i32, i32* %9, align 4
  %204 = ashr i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %202, %169
  br label %382

206:                                              ; preds = %113
  %207 = load i32, i32* @SR_X, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @count, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  store i32 0, i32* %9, align 4
  br label %262

217:                                              ; preds = %206
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %217
  %221 = load i32, i32* @count, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %9, align 4
  %224 = shl i32 %223, %222
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = sub nsw i32 %226, 1
  %228 = ashr i32 %225, %227
  %229 = and i32 %228, 1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %220
  %232 = load i32, i32* @SR_X, align 4
  %233 = load i32, i32* @SR_C, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %231, %220
  %240 = load i32, i32* %9, align 4
  %241 = shl i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %261

242:                                              ; preds = %217
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @count, align 4
  %245 = sub nsw i32 %244, 1
  %246 = ashr i32 %243, %245
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %242
  %251 = load i32, i32* @SR_X, align 4
  %252 = load i32, i32* @SR_C, align 4
  %253 = or i32 %251, %252
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %258

258:                                              ; preds = %250, %242
  %259 = load i32, i32* %9, align 4
  %260 = ashr i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %258, %239
  br label %262

262:                                              ; preds = %261, %216
  br label %382

263:                                              ; preds = %113
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @SR_X_SHIFT, align 4
  %268 = ashr i32 %266, %267
  %269 = and i32 %268, 1
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* @SR_X, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load i32, i32* %6, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %263
  br label %279

279:                                              ; preds = %293, %278
  %280 = load i32, i32* @count, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %11, align 4
  %285 = sub nsw i32 %284, 1
  %286 = ashr i32 %283, %285
  %287 = and i32 %286, 1
  store i32 %287, i32* %15, align 4
  %288 = load i32, i32* %9, align 4
  %289 = shl i32 %288, 1
  %290 = load i32, i32* %14, align 4
  %291 = or i32 %289, %290
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %15, align 4
  store i32 %292, i32* %14, align 4
  br label %293

293:                                              ; preds = %282
  %294 = load i32, i32* @count, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* @count, align 4
  br label %279

296:                                              ; preds = %279
  br label %316

297:                                              ; preds = %263
  br label %298

298:                                              ; preds = %312, %297
  %299 = load i32, i32* @count, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %298
  %302 = load i32, i32* %9, align 4
  %303 = and i32 %302, 1
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* %9, align 4
  %305 = ashr i32 %304, 1
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %11, align 4
  %308 = sub nsw i32 %307, 1
  %309 = shl i32 %306, %308
  %310 = or i32 %305, %309
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %16, align 4
  store i32 %311, i32* %14, align 4
  br label %312

312:                                              ; preds = %301
  %313 = load i32, i32* @count, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* @count, align 4
  br label %298

315:                                              ; preds = %298
  br label %316

316:                                              ; preds = %315, %296
  %317 = load i32, i32* %14, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = load i32, i32* @SR_C, align 4
  %321 = load i32, i32* @SR_X, align 4
  %322 = or i32 %320, %321
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %319, %316
  br label %382

328:                                              ; preds = %113
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @count, align 4
  %331 = srem i32 %330, %329
  store i32 %331, i32* @count, align 4
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %359

334:                                              ; preds = %328
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* @count, align 4
  %337 = shl i32 %335, %336
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @count, align 4
  %341 = sub nsw i32 %339, %340
  %342 = ashr i32 %338, %341
  %343 = or i32 %337, %342
  store i32 %343, i32* %9, align 4
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %11, align 4
  %346 = sub nsw i32 %345, 1
  %347 = ashr i32 %344, %346
  %348 = and i32 %347, 1
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %334
  %351 = load i32, i32* @SR_C, align 4
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %334
  %357 = load i32, i32* %9, align 4
  %358 = shl i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %381

359:                                              ; preds = %328
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* @count, align 4
  %362 = ashr i32 %360, %361
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* @count, align 4
  %366 = sub nsw i32 %364, %365
  %367 = shl i32 %363, %366
  %368 = or i32 %362, %367
  store i32 %368, i32* %9, align 4
  %369 = load i32, i32* %9, align 4
  %370 = and i32 %369, 1
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %359
  %373 = load i32, i32* @SR_C, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 8
  br label %378

378:                                              ; preds = %372, %359
  %379 = load i32, i32* %9, align 4
  %380 = ashr i32 %379, 1
  store i32 %380, i32* %9, align 4
  br label %381

381:                                              ; preds = %378, %356
  br label %382

382:                                              ; preds = %381, %327, %262, %205
  br label %400

383:                                              ; preds = %96
  %384 = load i32, i32* %8, align 4
  %385 = icmp eq i32 %384, 2
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @SR_X, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %386
  %394 = load i32, i32* @SR_C, align 4
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %397, %394
  store i32 %398, i32* %396, align 8
  br label %399

399:                                              ; preds = %393, %386, %383
  br label %400

400:                                              ; preds = %399, %382
  %401 = load i32, i32* @size, align 4
  %402 = icmp eq i32 %401, 129
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = load i32, i32* %9, align 4
  br label %414

405:                                              ; preds = %400
  %406 = load i32, i32* @size, align 4
  %407 = icmp eq i32 %406, 128
  br i1 %407, label %408, label %410

408:                                              ; preds = %405
  %409 = load i32, i32* %9, align 4
  br label %412

410:                                              ; preds = %405
  %411 = load i32, i32* %9, align 4
  br label %412

412:                                              ; preds = %410, %408
  %413 = phi i32 [ %409, %408 ], [ %411, %410 ]
  br label %414

414:                                              ; preds = %412, %403
  %415 = phi i32 [ %404, %403 ], [ %413, %412 ]
  %416 = call i32 @INSN_SETNZ(i32 %415)
  %417 = load i32, i32* %7, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %414
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %421 = load i32, i32* %5, align 4
  %422 = load i32, i32* @size, align 4
  %423 = load i32, i32* %9, align 4
  %424 = call i32 @ea_set(%struct.TYPE_6__* %420, i32 %421, i32 %422, i32 %423)
  br label %455

425:                                              ; preds = %414
  %426 = load i32, i32* @size, align 4
  switch i32 %426, label %447 [
    i32 129, label %427
    i32 128, label %437
  ]

427:                                              ; preds = %425
  %428 = load i32, i32* %9, align 4
  %429 = load i32, i32* @BYTE_OFS, align 4
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = load i64, i64* @reg0, align 8
  %434 = getelementptr inbounds i32, i32* %432, i64 %433
  %435 = sext i32 %429 to i64
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  store i32 %428, i32* %436, align 4
  br label %454

437:                                              ; preds = %425
  %438 = load i32, i32* %9, align 4
  %439 = load i32, i32* @WORD_OFS, align 4
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 0
  %442 = load i32*, i32** %441, align 8
  %443 = load i64, i64* @reg0, align 8
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  %445 = sext i32 %439 to i64
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  store i32 %438, i32* %446, align 4
  br label %454

447:                                              ; preds = %425
  %448 = load i32, i32* %9, align 4
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* @reg0, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  store i32 %448, i32* %453, align 4
  br label %454

454:                                              ; preds = %447, %437, %427
  br label %455

455:                                              ; preds = %454, %419
  %456 = load i32, i32* @size, align 4
  %457 = load i32, i32* @SIZE_L, align 4
  %458 = icmp eq i32 %456, %457
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i32 8, i32 6
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %460, %461
  store i32 %462, i32* %3, align 4
  br label %463

463:                                              ; preds = %455, %47, %33
  %464 = load i32, i32* %3, align 4
  ret i32 %464
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_get(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @INSN_CLEAR_CC(...) #1

declare dso_local i32 @INSN_SETNZ(i32) #1

declare dso_local i32 @ea_set(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
