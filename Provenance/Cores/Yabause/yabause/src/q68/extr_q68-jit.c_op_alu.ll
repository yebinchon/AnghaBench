; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_alu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_MISC = common dso_local global i64 0, align 8
@EA_MISC_IMMEDIATE = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_alu(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @INSN_GET_REG, align 4
  %12 = load i32, i32* @INSN_GET_SIZE, align 4
  %13 = load i32, i32* @size, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 45360
  %18 = icmp eq i32 %17, 37120
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @opADSX(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %521

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 45552
  %26 = icmp eq i32 %25, 33024
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @op_BCD(i32* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %521

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 61744
  %34 = icmp eq i32 %33, 49408
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @op_EXG(i32* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %521

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 61744
  %42 = icmp eq i32 %41, 33024
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @op_ill(i32* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %521

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 61752
  %50 = icmp eq i32 %49, 45320
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 6
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @opCMPM(i32* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %521

60:                                               ; preds = %51, %47
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 256
  store i32 %63, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 12
  switch i32 %65, label %77 [
    i32 8, label %66
    i32 9, label %67
    i32 11, label %68
    i32 12, label %76
  ]

66:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %78

67:                                               ; preds = %61
  store i32 4, i32* %8, align 4
  br label %78

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 6
  %71 = add nsw i32 %70, 1
  %72 = and i32 %71, 7
  %73 = icmp sle i32 %72, 4
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 3, i32 2
  store i32 %75, i32* %8, align 4
  br label %78

76:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %78

77:                                               ; preds = %61
  store i32 5, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %76, %68, %67, %66
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %99

87:                                               ; preds = %84, %81, %78
  %88 = load i32, i32* @size, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @SIZE_L, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @SIZE_W, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* @size, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %87, %84
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* @current_entry, align 4
  %104 = load i32, i32* @reg, align 4
  %105 = mul nsw i32 %104, 4
  %106 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %103, i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @size, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ea_get(i32* %107, i32 %108, i32 %109, i32 %110, i32* %9, i32 2)
  br label %132

112:                                              ; preds = %99
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @size, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ea_get(i32* %113, i32 %114, i32 %115, i32 %116, i32* %9, i32 1)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* @current_entry, align 4
  %122 = load i32, i32* @reg, align 4
  %123 = add nsw i32 8, %122
  %124 = mul nsw i32 %123, 4
  %125 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %121, i32 %124)
  br label %131

126:                                              ; preds = %112
  %127 = load i32, i32* @current_entry, align 4
  %128 = load i32, i32* @reg, align 4
  %129 = mul nsw i32 %128, 4
  %130 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %126, %120
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %521

136:                                              ; preds = %132
  %137 = load i32, i32* @size, align 4
  %138 = load i32, i32* @SIZE_L, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %9, align 4
  br label %181

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* @size, align 4
  %160 = load i32, i32* @SIZE_L, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load i32, i32* %5, align 4
  %164 = call i64 @EA_MODE(i32 %163)
  %165 = load i64, i64* @EA_ADDRESS_REG, align 8
  %166 = icmp sle i64 %164, %165
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %5, align 4
  %169 = call i64 @EA_MODE(i32 %168)
  %170 = load i64, i64* @EA_MISC, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i32, i32* %5, align 4
  %174 = call i64 @EA_REG(i32 %173)
  %175 = load i64, i64* @EA_MISC_IMMEDIATE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172, %162, %155
  %178 = load i32, i32* %9, align 4
  %179 = sub nsw i32 %178, 2
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %177, %172, %167, %158
  br label %181

181:                                              ; preds = %180, %149
  %182 = load i32*, i32** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @cc_needed(i32* %182, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %8, align 4
  switch i32 %185, label %410 [
    i32 0, label %186
    i32 1, label %223
    i32 2, label %260
    i32 3, label %297
    i32 4, label %351
  ]

186:                                              ; preds = %181
  %187 = load i32, i32* @size, align 4
  %188 = load i32, i32* @SIZE_B, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i32, i32* @current_entry, align 4
  %192 = call i32 @JIT_EMIT_OR_B(i32 %191)
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* @current_entry, align 4
  %197 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %196)
  br label %198

198:                                              ; preds = %195, %190
  br label %222

199:                                              ; preds = %186
  %200 = load i32, i32* @size, align 4
  %201 = load i32, i32* @SIZE_W, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i32, i32* @current_entry, align 4
  %205 = call i32 @JIT_EMIT_OR_W(i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* @current_entry, align 4
  %210 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %209)
  br label %211

211:                                              ; preds = %208, %203
  br label %221

212:                                              ; preds = %199
  %213 = load i32, i32* @current_entry, align 4
  %214 = call i32 @JIT_EMIT_OR_L(i32 %213)
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* @current_entry, align 4
  %219 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %218)
  br label %220

220:                                              ; preds = %217, %212
  br label %221

221:                                              ; preds = %220, %211
  br label %222

222:                                              ; preds = %221, %198
  br label %469

223:                                              ; preds = %181
  %224 = load i32, i32* @size, align 4
  %225 = load i32, i32* @SIZE_B, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load i32, i32* @current_entry, align 4
  %229 = call i32 @JIT_EMIT_AND_B(i32 %228)
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @current_entry, align 4
  %234 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %233)
  br label %235

235:                                              ; preds = %232, %227
  br label %259

236:                                              ; preds = %223
  %237 = load i32, i32* @size, align 4
  %238 = load i32, i32* @SIZE_W, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %236
  %241 = load i32, i32* @current_entry, align 4
  %242 = call i32 @JIT_EMIT_AND_W(i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i32, i32* @current_entry, align 4
  %247 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %246)
  br label %248

248:                                              ; preds = %245, %240
  br label %258

249:                                              ; preds = %236
  %250 = load i32, i32* @current_entry, align 4
  %251 = call i32 @JIT_EMIT_AND_L(i32 %250)
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32, i32* @current_entry, align 4
  %256 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %255)
  br label %257

257:                                              ; preds = %254, %249
  br label %258

258:                                              ; preds = %257, %248
  br label %259

259:                                              ; preds = %258, %235
  br label %469

260:                                              ; preds = %181
  %261 = load i32, i32* @size, align 4
  %262 = load i32, i32* @SIZE_B, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %260
  %265 = load i32, i32* @current_entry, align 4
  %266 = call i32 @JIT_EMIT_EOR_B(i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, i32* @current_entry, align 4
  %271 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %270)
  br label %272

272:                                              ; preds = %269, %264
  br label %296

273:                                              ; preds = %260
  %274 = load i32, i32* @size, align 4
  %275 = load i32, i32* @SIZE_W, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %286

277:                                              ; preds = %273
  %278 = load i32, i32* @current_entry, align 4
  %279 = call i32 @JIT_EMIT_EOR_W(i32 %278)
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load i32, i32* @current_entry, align 4
  %284 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %283)
  br label %285

285:                                              ; preds = %282, %277
  br label %295

286:                                              ; preds = %273
  %287 = load i32, i32* @current_entry, align 4
  %288 = call i32 @JIT_EMIT_EOR_L(i32 %287)
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, i32* @current_entry, align 4
  %293 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %292)
  br label %294

294:                                              ; preds = %291, %286
  br label %295

295:                                              ; preds = %294, %285
  br label %296

296:                                              ; preds = %295, %272
  br label %469

297:                                              ; preds = %181
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %297
  %301 = load i32, i32* @size, align 4
  %302 = load i32, i32* @SIZE_W, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %300
  %305 = load i32, i32* @current_entry, align 4
  %306 = call i32 @JIT_EMIT_SUBA_W(i32 %305)
  %307 = load i32, i32* %10, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i32, i32* @current_entry, align 4
  %311 = call i32 @JIT_EMIT_SETCC_CMP_W(i32 %310)
  br label %312

312:                                              ; preds = %309, %304
  br label %350

313:                                              ; preds = %300, %297
  %314 = load i32, i32* @size, align 4
  %315 = load i32, i32* @SIZE_B, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i32, i32* @current_entry, align 4
  %319 = call i32 @JIT_EMIT_SUB_B(i32 %318)
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i32, i32* @current_entry, align 4
  %324 = call i32 @JIT_EMIT_SETCC_CMP_B(i32 %323)
  br label %325

325:                                              ; preds = %322, %317
  br label %349

326:                                              ; preds = %313
  %327 = load i32, i32* @size, align 4
  %328 = load i32, i32* @SIZE_W, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %326
  %331 = load i32, i32* @current_entry, align 4
  %332 = call i32 @JIT_EMIT_SUB_W(i32 %331)
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i32, i32* @current_entry, align 4
  %337 = call i32 @JIT_EMIT_SETCC_CMP_W(i32 %336)
  br label %338

338:                                              ; preds = %335, %330
  br label %348

339:                                              ; preds = %326
  %340 = load i32, i32* @current_entry, align 4
  %341 = call i32 @JIT_EMIT_SUB_L(i32 %340)
  %342 = load i32, i32* %10, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load i32, i32* @current_entry, align 4
  %346 = call i32 @JIT_EMIT_SETCC_CMP_L(i32 %345)
  br label %347

347:                                              ; preds = %344, %339
  br label %348

348:                                              ; preds = %347, %338
  br label %349

349:                                              ; preds = %348, %325
  br label %350

350:                                              ; preds = %349, %312
  br label %469

351:                                              ; preds = %181
  %352 = load i32, i32* %7, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load i32, i32* @size, align 4
  %356 = load i32, i32* @SIZE_W, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, i32* @current_entry, align 4
  %360 = call i32 @JIT_EMIT_SUBA_W(i32 %359)
  br label %409

361:                                              ; preds = %354, %351
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i32, i32* @size, align 4
  %366 = load i32, i32* @SIZE_L, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = load i32, i32* @current_entry, align 4
  %370 = call i32 @JIT_EMIT_SUB_L(i32 %369)
  br label %408

371:                                              ; preds = %364, %361
  %372 = load i32, i32* @size, align 4
  %373 = load i32, i32* @SIZE_B, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %384

375:                                              ; preds = %371
  %376 = load i32, i32* @current_entry, align 4
  %377 = call i32 @JIT_EMIT_SUB_B(i32 %376)
  %378 = load i32, i32* %10, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i32, i32* @current_entry, align 4
  %382 = call i32 @JIT_EMIT_SETCC_SUB_B(i32 %381)
  br label %383

383:                                              ; preds = %380, %375
  br label %407

384:                                              ; preds = %371
  %385 = load i32, i32* @size, align 4
  %386 = load i32, i32* @SIZE_W, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %384
  %389 = load i32, i32* @current_entry, align 4
  %390 = call i32 @JIT_EMIT_SUB_W(i32 %389)
  %391 = load i32, i32* %10, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = load i32, i32* @current_entry, align 4
  %395 = call i32 @JIT_EMIT_SETCC_SUB_W(i32 %394)
  br label %396

396:                                              ; preds = %393, %388
  br label %406

397:                                              ; preds = %384
  %398 = load i32, i32* @current_entry, align 4
  %399 = call i32 @JIT_EMIT_SUB_L(i32 %398)
  %400 = load i32, i32* %10, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i32, i32* @current_entry, align 4
  %404 = call i32 @JIT_EMIT_SETCC_SUB_L(i32 %403)
  br label %405

405:                                              ; preds = %402, %397
  br label %406

406:                                              ; preds = %405, %396
  br label %407

407:                                              ; preds = %406, %383
  br label %408

408:                                              ; preds = %407, %368
  br label %409

409:                                              ; preds = %408, %358
  br label %469

410:                                              ; preds = %181
  %411 = load i32, i32* %7, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %410
  %414 = load i32, i32* @size, align 4
  %415 = load i32, i32* @SIZE_W, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %413
  %418 = load i32, i32* @current_entry, align 4
  %419 = call i32 @JIT_EMIT_ADDA_W(i32 %418)
  br label %468

420:                                              ; preds = %413, %410
  %421 = load i32, i32* %7, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %420
  %424 = load i32, i32* @size, align 4
  %425 = load i32, i32* @SIZE_L, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %423
  %428 = load i32, i32* @current_entry, align 4
  %429 = call i32 @JIT_EMIT_ADD_L(i32 %428)
  br label %467

430:                                              ; preds = %423, %420
  %431 = load i32, i32* @size, align 4
  %432 = load i32, i32* @SIZE_B, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %430
  %435 = load i32, i32* @current_entry, align 4
  %436 = call i32 @JIT_EMIT_ADD_B(i32 %435)
  %437 = load i32, i32* %10, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %434
  %440 = load i32, i32* @current_entry, align 4
  %441 = call i32 @JIT_EMIT_SETCC_ADD_B(i32 %440)
  br label %442

442:                                              ; preds = %439, %434
  br label %466

443:                                              ; preds = %430
  %444 = load i32, i32* @size, align 4
  %445 = load i32, i32* @SIZE_W, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %447, label %456

447:                                              ; preds = %443
  %448 = load i32, i32* @current_entry, align 4
  %449 = call i32 @JIT_EMIT_ADD_W(i32 %448)
  %450 = load i32, i32* %10, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %447
  %453 = load i32, i32* @current_entry, align 4
  %454 = call i32 @JIT_EMIT_SETCC_ADD_W(i32 %453)
  br label %455

455:                                              ; preds = %452, %447
  br label %465

456:                                              ; preds = %443
  %457 = load i32, i32* @current_entry, align 4
  %458 = call i32 @JIT_EMIT_ADD_L(i32 %457)
  %459 = load i32, i32* %10, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = load i32, i32* @current_entry, align 4
  %463 = call i32 @JIT_EMIT_SETCC_ADD_L(i32 %462)
  br label %464

464:                                              ; preds = %461, %456
  br label %465

465:                                              ; preds = %464, %455
  br label %466

466:                                              ; preds = %465, %442
  br label %467

467:                                              ; preds = %466, %427
  br label %468

468:                                              ; preds = %467, %417
  br label %469

469:                                              ; preds = %468, %409, %350, %296, %259, %222
  %470 = load i32, i32* %8, align 4
  %471 = icmp ne i32 %470, 3
  br i1 %471, label %472, label %516

472:                                              ; preds = %469
  %473 = load i32, i32* %6, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %472
  %476 = load i32*, i32** %4, align 8
  %477 = load i32, i32* %5, align 4
  %478 = load i32, i32* @size, align 4
  %479 = call i32 @ea_set(i32* %476, i32 %477, i32 %478)
  br label %515

480:                                              ; preds = %472
  %481 = load i32, i32* %7, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %480
  %484 = load i32, i32* @current_entry, align 4
  %485 = load i32, i32* @reg, align 4
  %486 = add nsw i32 8, %485
  %487 = mul nsw i32 %486, 4
  %488 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %484, i32 %487)
  br label %514

489:                                              ; preds = %480
  %490 = load i32, i32* @size, align 4
  %491 = load i32, i32* @SIZE_B, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %498

493:                                              ; preds = %489
  %494 = load i32, i32* @current_entry, align 4
  %495 = load i32, i32* @reg, align 4
  %496 = mul nsw i32 %495, 4
  %497 = call i32 @JIT_EMIT_SET_REGISTER_B(i32 %494, i32 %496)
  br label %513

498:                                              ; preds = %489
  %499 = load i32, i32* @size, align 4
  %500 = load i32, i32* @SIZE_W, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %507

502:                                              ; preds = %498
  %503 = load i32, i32* @current_entry, align 4
  %504 = load i32, i32* @reg, align 4
  %505 = mul nsw i32 %504, 4
  %506 = call i32 @JIT_EMIT_SET_REGISTER_W(i32 %503, i32 %505)
  br label %512

507:                                              ; preds = %498
  %508 = load i32, i32* @current_entry, align 4
  %509 = load i32, i32* @reg, align 4
  %510 = mul nsw i32 %509, 4
  %511 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %508, i32 %510)
  br label %512

512:                                              ; preds = %507, %502
  br label %513

513:                                              ; preds = %512, %493
  br label %514

514:                                              ; preds = %513, %483
  br label %515

515:                                              ; preds = %514, %475
  br label %516

516:                                              ; preds = %515, %469
  %517 = load i32, i32* @current_entry, align 4
  %518 = load i32, i32* %9, align 4
  %519 = add nsw i32 4, %518
  %520 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %517, i32 %519)
  store i32 0, i32* %3, align 4
  br label %521

521:                                              ; preds = %516, %135, %56, %43, %35, %27, %19
  %522 = load i32, i32* %3, align 4
  ret i32 %522
}

declare dso_local i32 @opADSX(i32*, i32) #1

declare dso_local i32 @op_BCD(i32*, i32) #1

declare dso_local i32 @op_EXG(i32*, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @opCMPM(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_REGISTER(i32, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_REGISTER(i32, i32) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i64 @EA_REG(i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_OR_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_B(i32) #1

declare dso_local i32 @JIT_EMIT_OR_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_W(i32) #1

declare dso_local i32 @JIT_EMIT_OR_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_L(i32) #1

declare dso_local i32 @JIT_EMIT_AND_B(i32) #1

declare dso_local i32 @JIT_EMIT_AND_W(i32) #1

declare dso_local i32 @JIT_EMIT_AND_L(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_B(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_W(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_L(i32) #1

declare dso_local i32 @JIT_EMIT_SUBA_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADDA_W(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_B(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
