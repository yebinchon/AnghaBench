; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_imm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@EA_MISC = common dso_local global i32 0, align 4
@EA_MISC_IMMEDIATE = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_imm(i32* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 9
  %13 = and i32 %12, 7
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @op_bit(i32* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %363

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @op_ill(i32* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %363

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @INSN_GET_SIZE, align 4
  %30 = load i32, i32* @size, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @op_ill(i32* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %363

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @EA_MISC, align 4
  %39 = shl i32 %38, 3
  %40 = load i32, i32* @EA_MISC_IMMEDIATE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @size, align 4
  %43 = call i32 @ea_get(i32* %37, i32 %41, i32 %42, i32 0, i32* %7, i32 1)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %71

52:                                               ; preds = %49, %46, %36
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 63
  %55 = icmp eq i32 %54, 60
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %57 = load i32, i32* @size, align 4
  switch i32 %57, label %66 [
    i32 129, label %58
    i32 128, label %61
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* @current_entry, align 4
  %60 = call i32 @JIT_EMIT_GET_OP2_CCR(i32 %59)
  br label %70

61:                                               ; preds = %56
  %62 = load i32, i32* @current_entry, align 4
  %63 = call i32 @JIT_EMIT_CHECK_SUPER(i32 %62)
  %64 = load i32, i32* @current_entry, align 4
  %65 = call i32 @JIT_EMIT_GET_OP2_SR(i32 %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @op_ill(i32* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %363

70:                                               ; preds = %61, %58
  br label %80

71:                                               ; preds = %52, %49
  store i32 0, i32* %8, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @size, align 4
  %75 = call i32 @ea_get(i32* %72, i32 %73, i32 %74, i32 1, i32* %9, i32 2)
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %363

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @cc_needed(i32* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %285 [
    i32 0, label %85
    i32 1, label %120
    i32 5, label %155
    i32 6, label %190
    i32 2, label %250
  ]

85:                                               ; preds = %80
  %86 = load i32, i32* @size, align 4
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @current_entry, align 4
  %90 = call i32 @JIT_EMIT_OR_B(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @current_entry, align 4
  %95 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %119

97:                                               ; preds = %85
  %98 = load i32, i32* @size, align 4
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* @current_entry, align 4
  %102 = call i32 @JIT_EMIT_OR_W(i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @current_entry, align 4
  %107 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %106)
  br label %108

108:                                              ; preds = %105, %100
  br label %118

109:                                              ; preds = %97
  %110 = load i32, i32* @current_entry, align 4
  %111 = call i32 @JIT_EMIT_OR_L(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @current_entry, align 4
  %116 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %115)
  br label %117

117:                                              ; preds = %114, %109
  br label %118

118:                                              ; preds = %117, %108
  br label %119

119:                                              ; preds = %118, %96
  br label %320

120:                                              ; preds = %80
  %121 = load i32, i32* @size, align 4
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* @current_entry, align 4
  %125 = call i32 @JIT_EMIT_AND_B(i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @current_entry, align 4
  %130 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %129)
  br label %131

131:                                              ; preds = %128, %123
  br label %154

132:                                              ; preds = %120
  %133 = load i32, i32* @size, align 4
  %134 = icmp eq i32 %133, 128
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* @current_entry, align 4
  %137 = call i32 @JIT_EMIT_AND_W(i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @current_entry, align 4
  %142 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %141)
  br label %143

143:                                              ; preds = %140, %135
  br label %153

144:                                              ; preds = %132
  %145 = load i32, i32* @current_entry, align 4
  %146 = call i32 @JIT_EMIT_AND_L(i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @current_entry, align 4
  %151 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %150)
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %143
  br label %154

154:                                              ; preds = %153, %131
  br label %320

155:                                              ; preds = %80
  %156 = load i32, i32* @size, align 4
  %157 = icmp eq i32 %156, 129
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32, i32* @current_entry, align 4
  %160 = call i32 @JIT_EMIT_EOR_B(i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @current_entry, align 4
  %165 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %164)
  br label %166

166:                                              ; preds = %163, %158
  br label %189

167:                                              ; preds = %155
  %168 = load i32, i32* @size, align 4
  %169 = icmp eq i32 %168, 128
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* @current_entry, align 4
  %172 = call i32 @JIT_EMIT_EOR_W(i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @current_entry, align 4
  %177 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %176)
  br label %178

178:                                              ; preds = %175, %170
  br label %188

179:                                              ; preds = %167
  %180 = load i32, i32* @current_entry, align 4
  %181 = call i32 @JIT_EMIT_EOR_L(i32 %180)
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @current_entry, align 4
  %186 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %185)
  br label %187

187:                                              ; preds = %184, %179
  br label %188

188:                                              ; preds = %187, %178
  br label %189

189:                                              ; preds = %188, %166
  br label %320

190:                                              ; preds = %80
  %191 = load i32, i32* @size, align 4
  %192 = load i32, i32* @SIZE_L, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @EA_MODE(i32 %195)
  %197 = load i64, i64* @EA_DATA_REG, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = sub nsw i32 %200, 8
  store i32 %201, i32* %9, align 4
  br label %205

202:                                              ; preds = %194
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, 2
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %202, %199
  br label %215

206:                                              ; preds = %190
  %207 = load i32, i32* %5, align 4
  %208 = call i64 @EA_MODE(i32 %207)
  %209 = load i64, i64* @EA_DATA_REG, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* %9, align 4
  %213 = sub nsw i32 %212, 4
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %205
  %216 = load i32, i32* @size, align 4
  %217 = icmp eq i32 %216, 129
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i32, i32* @current_entry, align 4
  %220 = call i32 @JIT_EMIT_SUB_B(i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @current_entry, align 4
  %225 = call i32 @JIT_EMIT_SETCC_CMP_B(i32 %224)
  br label %226

226:                                              ; preds = %223, %218
  br label %249

227:                                              ; preds = %215
  %228 = load i32, i32* @size, align 4
  %229 = icmp eq i32 %228, 128
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i32, i32* @current_entry, align 4
  %232 = call i32 @JIT_EMIT_SUB_W(i32 %231)
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* @current_entry, align 4
  %237 = call i32 @JIT_EMIT_SETCC_CMP_W(i32 %236)
  br label %238

238:                                              ; preds = %235, %230
  br label %248

239:                                              ; preds = %227
  %240 = load i32, i32* @current_entry, align 4
  %241 = call i32 @JIT_EMIT_SUB_L(i32 %240)
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32, i32* @current_entry, align 4
  %246 = call i32 @JIT_EMIT_SETCC_CMP_L(i32 %245)
  br label %247

247:                                              ; preds = %244, %239
  br label %248

248:                                              ; preds = %247, %238
  br label %249

249:                                              ; preds = %248, %226
  br label %320

250:                                              ; preds = %80
  %251 = load i32, i32* @size, align 4
  %252 = icmp eq i32 %251, 129
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load i32, i32* @current_entry, align 4
  %255 = call i32 @JIT_EMIT_SUB_B(i32 %254)
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* @current_entry, align 4
  %260 = call i32 @JIT_EMIT_SETCC_SUB_B(i32 %259)
  br label %261

261:                                              ; preds = %258, %253
  br label %284

262:                                              ; preds = %250
  %263 = load i32, i32* @size, align 4
  %264 = icmp eq i32 %263, 128
  br i1 %264, label %265, label %274

265:                                              ; preds = %262
  %266 = load i32, i32* @current_entry, align 4
  %267 = call i32 @JIT_EMIT_SUB_W(i32 %266)
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i32, i32* @current_entry, align 4
  %272 = call i32 @JIT_EMIT_SETCC_SUB_W(i32 %271)
  br label %273

273:                                              ; preds = %270, %265
  br label %283

274:                                              ; preds = %262
  %275 = load i32, i32* @current_entry, align 4
  %276 = call i32 @JIT_EMIT_SUB_L(i32 %275)
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i32, i32* @current_entry, align 4
  %281 = call i32 @JIT_EMIT_SETCC_SUB_L(i32 %280)
  br label %282

282:                                              ; preds = %279, %274
  br label %283

283:                                              ; preds = %282, %273
  br label %284

284:                                              ; preds = %283, %261
  br label %320

285:                                              ; preds = %80
  %286 = load i32, i32* @size, align 4
  %287 = icmp eq i32 %286, 129
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load i32, i32* @current_entry, align 4
  %290 = call i32 @JIT_EMIT_ADD_B(i32 %289)
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load i32, i32* @current_entry, align 4
  %295 = call i32 @JIT_EMIT_SETCC_ADD_B(i32 %294)
  br label %296

296:                                              ; preds = %293, %288
  br label %319

297:                                              ; preds = %285
  %298 = load i32, i32* @size, align 4
  %299 = icmp eq i32 %298, 128
  br i1 %299, label %300, label %309

300:                                              ; preds = %297
  %301 = load i32, i32* @current_entry, align 4
  %302 = call i32 @JIT_EMIT_ADD_W(i32 %301)
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i32, i32* @current_entry, align 4
  %307 = call i32 @JIT_EMIT_SETCC_ADD_W(i32 %306)
  br label %308

308:                                              ; preds = %305, %300
  br label %318

309:                                              ; preds = %297
  %310 = load i32, i32* @current_entry, align 4
  %311 = call i32 @JIT_EMIT_ADD_L(i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i32, i32* @current_entry, align 4
  %316 = call i32 @JIT_EMIT_SETCC_ADD_L(i32 %315)
  br label %317

317:                                              ; preds = %314, %309
  br label %318

318:                                              ; preds = %317, %308
  br label %319

319:                                              ; preds = %318, %296
  br label %320

320:                                              ; preds = %319, %284, %249, %189, %154, %119
  %321 = load i32, i32* @size, align 4
  %322 = load i32, i32* @SIZE_L, align 4
  %323 = icmp eq i32 %321, %322
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 16, i32 8
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* %5, align 4
  %329 = call i64 @EA_MODE(i32 %328)
  %330 = load i64, i64* @EA_DATA_REG, align 8
  %331 = icmp eq i64 %329, %330
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 0, i32 4
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* @current_entry, align 4
  %337 = load i32, i32* %9, align 4
  %338 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %336, i32 %337)
  %339 = load i32*, i32** %4, align 8
  %340 = call i32 @advance_PC(i32* %339)
  %341 = load i32, i32* %6, align 4
  %342 = icmp ne i32 %341, 6
  br i1 %342, label %343, label %362

343:                                              ; preds = %320
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %343
  %347 = load i32, i32* @size, align 4
  %348 = icmp eq i32 %347, 129
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* @current_entry, align 4
  %351 = call i32 @JIT_EMIT_SET_CCR(i32 %350)
  br label %355

352:                                              ; preds = %346
  %353 = load i32, i32* @current_entry, align 4
  %354 = call i32 @JIT_EMIT_SET_SR(i32 %353)
  br label %355

355:                                              ; preds = %352, %349
  br label %361

356:                                              ; preds = %343
  %357 = load i32*, i32** %4, align 8
  %358 = load i32, i32* %5, align 4
  %359 = load i32, i32* @size, align 4
  %360 = call i32 @ea_set(i32* %357, i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %356, %355
  br label %362

362:                                              ; preds = %361, %320
  store i32 0, i32* %3, align 4
  br label %363

363:                                              ; preds = %362, %78, %66, %32, %23, %16
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

declare dso_local i32 @op_bit(i32*, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_CCR(i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_SUPER(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_SR(i32) #1

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

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

declare dso_local i32 @advance_PC(i32*) #1

declare dso_local i32 @JIT_EMIT_SET_CCR(i32) #1

declare dso_local i32 @JIT_EMIT_SET_SR(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
