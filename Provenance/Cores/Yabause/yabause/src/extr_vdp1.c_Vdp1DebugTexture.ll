; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugTexture.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@Vdp1Ram = common dso_local global i32 0, align 4
@Vdp2Regs = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Vdp1DebugTexture(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @Vdp1DebugGetCommandNumberAddr(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %638

46:                                               ; preds = %3
  %47 = load i32, i32* @Vdp1Ram, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @T1ReadWord(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 32768
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32* null, i32** %4, align 8
  br label %638

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 16384
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32* null, i32** %4, align 8
  br label %638

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @Vdp1Ram, align 4
  %62 = call i32 @Vdp1ReadCommand(%struct.TYPE_4__* %9, i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  switch i32 %65, label %132 [
    i32 0, label %66
    i32 1, label %66
    i32 2, label %66
    i32 3, label %66
    i32 4, label %101
    i32 5, label %101
    i32 6, label %101
    i32 7, label %101
    i32 8, label %131
    i32 9, label %131
    i32 10, label %131
    i32 11, label %131
  ]

66:                                               ; preds = %59, %59, %59, %59
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 16128
  %70 = ashr i32 %69, 5
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %82, %86
  %88 = trunc i64 %87 to i32
  %89 = call i64 @malloc(i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %11, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  br label %638

93:                                               ; preds = %66
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 128
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %133

101:                                              ; preds = %59, %59, %59, %59
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 1, i32* %103, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 1, i32* %105, align 4
  %106 = call i64 @malloc(i32 4)
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** %11, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32* null, i32** %4, align 8
  br label %638

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 32768
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @SAT2YAB1(i32 255, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %119, i32* %121, align 4
  br label %129

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @ColorRamGetColor(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %115
  %130 = load i32*, i32** %11, align 8
  store i32* %130, i32** %4, align 8
  br label %638

131:                                              ; preds = %59, %59, %59, %59
  store i32* null, i32** %4, align 8
  br label %638

132:                                              ; preds = %59
  store i32* null, i32** %4, align 8
  br label %638

133:                                              ; preds = %100
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 8
  store i32 %136, i32* %12, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 64
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %14, align 4
  store i32 255, i32* %15, align 4
  %142 = load i32*, i32** %11, align 8
  store i32* %142, i32** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 3
  %146 = and i32 %145, 7
  switch i32 %146, label %635 [
    i32 0, label %147
    i32 1, label %264
    i32 2, label %405
    i32 3, label %461
    i32 4, label %517
    i32 5, label %572
  ]

147:                                              ; preds = %133
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %20, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 112
  %154 = shl i32 %153, 4
  store i32 %154, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %155

155:                                              ; preds = %260, %147
  %156 = load i32, i32* %22, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %263

161:                                              ; preds = %155
  store i32 0, i32* %23, align 4
  br label %162

162:                                              ; preds = %254, %161
  %163 = load i32, i32* %23, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %259

168:                                              ; preds = %162
  %169 = load i32, i32* @Vdp1Ram, align 4
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, 524287
  %172 = call i32 @T1ReadByte(i32 %169, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %168
  %176 = load i32, i32* %13, align 4
  %177 = ashr i32 %176, 4
  %178 = call i32 @CheckEndcode(i32 %177, i32 15, i32* %18)
  store i32 %178, i32* %19, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load i32, i32* %19, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %23, align 4
  %186 = call i32 @DoEndcode(i32 %181, i32* %12, i32** %16, i32 %184, i32 %185, i32 0, i32 4)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %259

189:                                              ; preds = %180
  br label %212

190:                                              ; preds = %175, %168
  %191 = load i32, i32* %13, align 4
  %192 = ashr i32 %191, 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32*, i32** %16, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %16, align 8
  store i32 0, i32* %198, align 4
  br label %211

200:                                              ; preds = %194, %190
  %201 = load i32, i32* %13, align 4
  %202 = ashr i32 %201, 4
  %203 = load i32, i32* %20, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %204, %205
  %207 = call i8* @ColorRamGetColor(i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32*, i32** %16, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %16, align 8
  store i32 %208, i32* %209, align 4
  br label %211

211:                                              ; preds = %200, %197
  br label %212

212:                                              ; preds = %211, %189
  %213 = load i32, i32* %23, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  %218 = load i32, i32* %13, align 4
  %219 = and i32 %218, 15
  %220 = call i32 @CheckEndcode(i32 %219, i32 15, i32* %18)
  store i32 %220, i32* %19, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load i32, i32* %19, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %23, align 4
  %228 = call i32 @DoEndcode(i32 %223, i32* %12, i32** %16, i32 %226, i32 %227, i32 1, i32 4)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %259

231:                                              ; preds = %222
  br label %254

232:                                              ; preds = %217, %212
  %233 = load i32, i32* %13, align 4
  %234 = and i32 %233, 15
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32*, i32** %16, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %16, align 8
  store i32 0, i32* %240, align 4
  br label %253

242:                                              ; preds = %236, %232
  %243 = load i32, i32* %13, align 4
  %244 = and i32 %243, 15
  %245 = load i32, i32* %20, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %21, align 4
  %248 = add nsw i32 %246, %247
  %249 = call i8* @ColorRamGetColor(i32 %248)
  %250 = ptrtoint i8* %249 to i32
  %251 = load i32*, i32** %16, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %16, align 8
  store i32 %250, i32* %251, align 4
  br label %253

253:                                              ; preds = %242, %239
  br label %254

254:                                              ; preds = %253, %231
  %255 = load i32, i32* %23, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %23, align 4
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %162

259:                                              ; preds = %230, %188, %162
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %22, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %22, align 4
  br label %155

263:                                              ; preds = %155
  br label %636

264:                                              ; preds = %133
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %266, 8
  store i32 %267, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %268

268:                                              ; preds = %401, %264
  %269 = load i32, i32* %26, align 4
  %270 = load i32*, i32** %7, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %404

274:                                              ; preds = %268
  store i32 0, i32* %27, align 4
  br label %275

275:                                              ; preds = %395, %274
  %276 = load i32, i32* %27, align 4
  %277 = load i32*, i32** %6, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %400

281:                                              ; preds = %275
  %282 = load i32, i32* @Vdp1Ram, align 4
  %283 = load i32, i32* %12, align 4
  %284 = and i32 %283, 524287
  %285 = call i32 @T1ReadByte(i32 %282, i32 %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %281
  %289 = load i32, i32* %13, align 4
  %290 = ashr i32 %289, 4
  %291 = call i32 @CheckEndcode(i32 %290, i32 15, i32* %18)
  store i32 %291, i32* %19, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load i32, i32* %19, align 4
  %295 = load i32*, i32** %6, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %27, align 4
  %299 = call i32 @DoEndcode(i32 %294, i32* %12, i32** %16, i32 %297, i32 %298, i32 0, i32 4)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %400

302:                                              ; preds = %293
  br label %339

303:                                              ; preds = %288, %281
  %304 = load i32, i32* %13, align 4
  %305 = ashr i32 %304, 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i32, i32* %14, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i32*, i32** %16, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %16, align 8
  store i32 0, i32* %311, align 4
  br label %338

313:                                              ; preds = %307, %303
  %314 = load i32, i32* @Vdp1Ram, align 4
  %315 = load i32, i32* %13, align 4
  %316 = ashr i32 %315, 4
  %317 = mul nsw i32 %316, 2
  %318 = load i32, i32* %25, align 4
  %319 = add nsw i32 %317, %318
  %320 = and i32 %319, 524287
  %321 = call i32 @T1ReadWord(i32 %314, i32 %320)
  store i32 %321, i32* %24, align 4
  %322 = load i32, i32* %24, align 4
  %323 = and i32 %322, 32768
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %313
  %326 = load i32, i32* %24, align 4
  %327 = call i8* @SAT2YAB1(i32 255, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  %329 = load i32*, i32** %16, align 8
  %330 = getelementptr inbounds i32, i32* %329, i32 1
  store i32* %330, i32** %16, align 8
  store i32 %328, i32* %329, align 4
  br label %337

331:                                              ; preds = %313
  %332 = load i32, i32* %24, align 4
  %333 = call i8* @ColorRamGetColor(i32 %332)
  %334 = ptrtoint i8* %333 to i32
  %335 = load i32*, i32** %16, align 8
  %336 = getelementptr inbounds i32, i32* %335, i32 1
  store i32* %336, i32** %16, align 8
  store i32 %334, i32* %335, align 4
  br label %337

337:                                              ; preds = %331, %325
  br label %338

338:                                              ; preds = %337, %310
  br label %339

339:                                              ; preds = %338, %302
  %340 = load i32, i32* %27, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %27, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %339
  %345 = load i32, i32* %13, align 4
  %346 = and i32 %345, 15
  %347 = call i32 @CheckEndcode(i32 %346, i32 15, i32* %18)
  store i32 %347, i32* %19, align 4
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %344
  %350 = load i32, i32* %19, align 4
  %351 = load i32*, i32** %6, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %27, align 4
  %355 = call i32 @DoEndcode(i32 %350, i32* %12, i32** %16, i32 %353, i32 %354, i32 1, i32 4)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %349
  br label %400

358:                                              ; preds = %349
  br label %395

359:                                              ; preds = %344, %339
  %360 = load i32, i32* %13, align 4
  %361 = and i32 %360, 15
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = load i32, i32* %14, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = load i32*, i32** %16, align 8
  %368 = getelementptr inbounds i32, i32* %367, i32 1
  store i32* %368, i32** %16, align 8
  store i32 0, i32* %367, align 4
  br label %394

369:                                              ; preds = %363, %359
  %370 = load i32, i32* @Vdp1Ram, align 4
  %371 = load i32, i32* %13, align 4
  %372 = and i32 %371, 15
  %373 = mul nsw i32 %372, 2
  %374 = load i32, i32* %25, align 4
  %375 = add nsw i32 %373, %374
  %376 = and i32 %375, 524287
  %377 = call i32 @T1ReadWord(i32 %370, i32 %376)
  store i32 %377, i32* %24, align 4
  %378 = load i32, i32* %24, align 4
  %379 = and i32 %378, 32768
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %369
  %382 = load i32, i32* %24, align 4
  %383 = call i8* @SAT2YAB1(i32 255, i32 %382)
  %384 = ptrtoint i8* %383 to i32
  %385 = load i32*, i32** %16, align 8
  %386 = getelementptr inbounds i32, i32* %385, i32 1
  store i32* %386, i32** %16, align 8
  store i32 %384, i32* %385, align 4
  br label %393

387:                                              ; preds = %369
  %388 = load i32, i32* %24, align 4
  %389 = call i8* @ColorRamGetColor(i32 %388)
  %390 = ptrtoint i8* %389 to i32
  %391 = load i32*, i32** %16, align 8
  %392 = getelementptr inbounds i32, i32* %391, i32 1
  store i32* %392, i32** %16, align 8
  store i32 %390, i32* %391, align 4
  br label %393

393:                                              ; preds = %387, %381
  br label %394

394:                                              ; preds = %393, %366
  br label %395

395:                                              ; preds = %394, %358
  %396 = load i32, i32* %27, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %27, align 4
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %12, align 4
  br label %275

400:                                              ; preds = %357, %301, %275
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %26, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %26, align 4
  br label %268

404:                                              ; preds = %268
  br label %636

405:                                              ; preds = %133
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %28, align 4
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 112
  %412 = shl i32 %411, 4
  store i32 %412, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %413

413:                                              ; preds = %457, %405
  %414 = load i32, i32* %30, align 4
  %415 = load i32*, i32** %7, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  %417 = load i32, i32* %416, align 4
  %418 = icmp slt i32 %414, %417
  br i1 %418, label %419, label %460

419:                                              ; preds = %413
  store i32 0, i32* %31, align 4
  br label %420

420:                                              ; preds = %453, %419
  %421 = load i32, i32* %31, align 4
  %422 = load i32*, i32** %6, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = load i32, i32* %423, align 4
  %425 = icmp slt i32 %421, %424
  br i1 %425, label %426, label %456

426:                                              ; preds = %420
  %427 = load i32, i32* @Vdp1Ram, align 4
  %428 = load i32, i32* %12, align 4
  %429 = and i32 %428, 524287
  %430 = call i32 @T1ReadByte(i32 %427, i32 %429)
  %431 = and i32 %430, 63
  store i32 %431, i32* %13, align 4
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %12, align 4
  %434 = load i32, i32* %13, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %442

436:                                              ; preds = %426
  %437 = load i32, i32* %14, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %436
  %440 = load i32*, i32** %16, align 8
  %441 = getelementptr inbounds i32, i32* %440, i32 1
  store i32* %441, i32** %16, align 8
  store i32 0, i32* %440, align 4
  br label %452

442:                                              ; preds = %436, %426
  %443 = load i32, i32* %13, align 4
  %444 = load i32, i32* %28, align 4
  %445 = or i32 %443, %444
  %446 = load i32, i32* %29, align 4
  %447 = add nsw i32 %445, %446
  %448 = call i8* @ColorRamGetColor(i32 %447)
  %449 = ptrtoint i8* %448 to i32
  %450 = load i32*, i32** %16, align 8
  %451 = getelementptr inbounds i32, i32* %450, i32 1
  store i32* %451, i32** %16, align 8
  store i32 %449, i32* %450, align 4
  br label %452

452:                                              ; preds = %442, %439
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %31, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %31, align 4
  br label %420

456:                                              ; preds = %420
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %30, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %30, align 4
  br label %413

460:                                              ; preds = %413
  br label %636

461:                                              ; preds = %133
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %32, align 4
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = and i32 %466, 112
  %468 = shl i32 %467, 4
  store i32 %468, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %469

469:                                              ; preds = %513, %461
  %470 = load i32, i32* %34, align 4
  %471 = load i32*, i32** %7, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %516

475:                                              ; preds = %469
  store i32 0, i32* %35, align 4
  br label %476

476:                                              ; preds = %509, %475
  %477 = load i32, i32* %35, align 4
  %478 = load i32*, i32** %6, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 0
  %480 = load i32, i32* %479, align 4
  %481 = icmp slt i32 %477, %480
  br i1 %481, label %482, label %512

482:                                              ; preds = %476
  %483 = load i32, i32* @Vdp1Ram, align 4
  %484 = load i32, i32* %12, align 4
  %485 = and i32 %484, 524287
  %486 = call i32 @T1ReadByte(i32 %483, i32 %485)
  %487 = and i32 %486, 127
  store i32 %487, i32* %13, align 4
  %488 = load i32, i32* %12, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %12, align 4
  %490 = load i32, i32* %13, align 4
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %482
  %493 = load i32, i32* %14, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = load i32*, i32** %16, align 8
  %497 = getelementptr inbounds i32, i32* %496, i32 1
  store i32* %497, i32** %16, align 8
  store i32 0, i32* %496, align 4
  br label %508

498:                                              ; preds = %492, %482
  %499 = load i32, i32* %13, align 4
  %500 = load i32, i32* %32, align 4
  %501 = or i32 %499, %500
  %502 = load i32, i32* %33, align 4
  %503 = add nsw i32 %501, %502
  %504 = call i8* @ColorRamGetColor(i32 %503)
  %505 = ptrtoint i8* %504 to i32
  %506 = load i32*, i32** %16, align 8
  %507 = getelementptr inbounds i32, i32* %506, i32 1
  store i32* %507, i32** %16, align 8
  store i32 %505, i32* %506, align 4
  br label %508

508:                                              ; preds = %498, %495
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %35, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %35, align 4
  br label %476

512:                                              ; preds = %476
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %34, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %34, align 4
  br label %469

516:                                              ; preds = %469
  br label %636

517:                                              ; preds = %133
  %518 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %519 = load i32, i32* %518, align 4
  store i32 %519, i32* %36, align 4
  %520 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %521 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = and i32 %522, 112
  %524 = shl i32 %523, 4
  store i32 %524, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %525

525:                                              ; preds = %568, %517
  %526 = load i32, i32* %38, align 4
  %527 = load i32*, i32** %7, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 0
  %529 = load i32, i32* %528, align 4
  %530 = icmp slt i32 %526, %529
  br i1 %530, label %531, label %571

531:                                              ; preds = %525
  store i32 0, i32* %39, align 4
  br label %532

532:                                              ; preds = %564, %531
  %533 = load i32, i32* %39, align 4
  %534 = load i32*, i32** %6, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 0
  %536 = load i32, i32* %535, align 4
  %537 = icmp slt i32 %533, %536
  br i1 %537, label %538, label %567

538:                                              ; preds = %532
  %539 = load i32, i32* @Vdp1Ram, align 4
  %540 = load i32, i32* %12, align 4
  %541 = and i32 %540, 524287
  %542 = call i32 @T1ReadByte(i32 %539, i32 %541)
  store i32 %542, i32* %13, align 4
  %543 = load i32, i32* %12, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %12, align 4
  %545 = load i32, i32* %13, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %553

547:                                              ; preds = %538
  %548 = load i32, i32* %14, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %547
  %551 = load i32*, i32** %16, align 8
  %552 = getelementptr inbounds i32, i32* %551, i32 1
  store i32* %552, i32** %16, align 8
  store i32 0, i32* %551, align 4
  br label %563

553:                                              ; preds = %547, %538
  %554 = load i32, i32* %13, align 4
  %555 = load i32, i32* %36, align 4
  %556 = or i32 %554, %555
  %557 = load i32, i32* %37, align 4
  %558 = add nsw i32 %556, %557
  %559 = call i8* @ColorRamGetColor(i32 %558)
  %560 = ptrtoint i8* %559 to i32
  %561 = load i32*, i32** %16, align 8
  %562 = getelementptr inbounds i32, i32* %561, i32 1
  store i32* %562, i32** %16, align 8
  store i32 %560, i32* %561, align 4
  br label %563

563:                                              ; preds = %553, %550
  br label %564

564:                                              ; preds = %563
  %565 = load i32, i32* %39, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %39, align 4
  br label %532

567:                                              ; preds = %532
  br label %568

568:                                              ; preds = %567
  %569 = load i32, i32* %38, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %38, align 4
  br label %525

571:                                              ; preds = %525
  br label %636

572:                                              ; preds = %133
  store i32 0, i32* %40, align 4
  br label %573

573:                                              ; preds = %631, %572
  %574 = load i32, i32* %40, align 4
  %575 = load i32*, i32** %7, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 0
  %577 = load i32, i32* %576, align 4
  %578 = icmp slt i32 %574, %577
  br i1 %578, label %579, label %634

579:                                              ; preds = %573
  store i32 0, i32* %41, align 4
  br label %580

580:                                              ; preds = %627, %579
  %581 = load i32, i32* %41, align 4
  %582 = load i32*, i32** %6, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 0
  %584 = load i32, i32* %583, align 4
  %585 = icmp slt i32 %581, %584
  br i1 %585, label %586, label %630

586:                                              ; preds = %580
  %587 = load i32, i32* @Vdp1Ram, align 4
  %588 = load i32, i32* %12, align 4
  %589 = and i32 %588, 524287
  %590 = call i32 @T1ReadWord(i32 %587, i32 %589)
  store i32 %590, i32* %13, align 4
  %591 = load i32, i32* %17, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %607

593:                                              ; preds = %586
  %594 = load i32, i32* %13, align 4
  %595 = call i32 @CheckEndcode(i32 %594, i32 32767, i32* %18)
  store i32 %595, i32* %19, align 4
  %596 = icmp sgt i32 %595, 0
  br i1 %596, label %597, label %607

597:                                              ; preds = %593
  %598 = load i32, i32* %19, align 4
  %599 = load i32*, i32** %6, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* %41, align 4
  %603 = call i32 @DoEndcode(i32 %598, i32* %12, i32** %16, i32 %601, i32 %602, i32 0, i32 16)
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %606

605:                                              ; preds = %597
  br label %630

606:                                              ; preds = %597
  br label %624

607:                                              ; preds = %593, %586
  %608 = load i32, i32* %13, align 4
  %609 = and i32 %608, 32768
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %617, label %611

611:                                              ; preds = %607
  %612 = load i32, i32* %14, align 4
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %611
  %615 = load i32*, i32** %16, align 8
  %616 = getelementptr inbounds i32, i32* %615, i32 1
  store i32* %616, i32** %16, align 8
  store i32 0, i32* %615, align 4
  br label %623

617:                                              ; preds = %611, %607
  %618 = load i32, i32* %13, align 4
  %619 = call i8* @SAT2YAB1(i32 255, i32 %618)
  %620 = ptrtoint i8* %619 to i32
  %621 = load i32*, i32** %16, align 8
  %622 = getelementptr inbounds i32, i32* %621, i32 1
  store i32* %622, i32** %16, align 8
  store i32 %620, i32* %621, align 4
  br label %623

623:                                              ; preds = %617, %614
  br label %624

624:                                              ; preds = %623, %606
  %625 = load i32, i32* %12, align 4
  %626 = add nsw i32 %625, 2
  store i32 %626, i32* %12, align 4
  br label %627

627:                                              ; preds = %624
  %628 = load i32, i32* %41, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %41, align 4
  br label %580

630:                                              ; preds = %605, %580
  br label %631

631:                                              ; preds = %630
  %632 = load i32, i32* %40, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %40, align 4
  br label %573

634:                                              ; preds = %573
  br label %636

635:                                              ; preds = %133
  br label %636

636:                                              ; preds = %635, %634, %571, %516, %460, %404, %263
  %637 = load i32*, i32** %11, align 8
  store i32* %637, i32** %4, align 8
  br label %638

638:                                              ; preds = %636, %132, %131, %129, %109, %92, %58, %53, %45
  %639 = load i32*, i32** %4, align 8
  ret i32* %639
}

declare dso_local i32 @Vdp1DebugGetCommandNumberAddr(i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @SAT2YAB1(i32, i32) #1

declare dso_local i8* @ColorRamGetColor(i32) #1

declare dso_local i32 @T1ReadByte(i32, i32) #1

declare dso_local i32 @CheckEndcode(i32, i32, i32*) #1

declare dso_local i32 @DoEndcode(i32, i32*, i32**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
