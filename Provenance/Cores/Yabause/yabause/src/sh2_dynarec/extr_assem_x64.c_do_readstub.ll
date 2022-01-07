; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_readstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_readstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"do_readstub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@AGEN1 = common dso_local global i32 0, align 4
@rt1 = common dso_local global i32* null, align 8
@TBIT = common dso_local global i32 0, align 4
@EDI = common dso_local global i32 0, align 4
@LOADB_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadByte = common dso_local global i64 0, align 8
@LOADW_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadWord = common dso_local global i64 0, align 8
@LOADL_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadLong = common dso_local global i64 0, align 8
@LOADS_STUB = common dso_local global i32 0, align 4
@RTEMP = common dso_local global i32 0, align 4
@EAX = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@ESI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_readstub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i64, i64* @start, align 8
  %14 = load i32**, i32*** @stubs, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %13, %22
  %24 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32**, i32*** @stubs, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @out, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @set_jump_target(i32 %31, i32 %33)
  %35 = load i32**, i32*** @stubs, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32**, i32*** @stubs, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32**, i32*** @stubs, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32**, i32*** @stubs, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.regstat*
  store %struct.regstat* %64, %struct.regstat** %7, align 8
  %65 = load i32**, i32*** @stubs, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load %struct.regstat*, %struct.regstat** %7, align 8
  %73 = getelementptr inbounds %struct.regstat, %struct.regstat* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @AGEN1, align 4
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 1
  %79 = add nsw i32 %76, %78
  %80 = call i32 @get_reg(i8* %75, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32*, i32** @rt1, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TBIT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %1
  br label %96

90:                                               ; preds = %1
  %91 = load i32*, i32** @rt1, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %90, %89
  %97 = phi i32 [ -1, %89 ], [ %95, %90 ]
  %98 = call i32 @get_reg(i8* %81, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sge i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %105, %96
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @get_reg(i8* %111, i32 -1)
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %10, align 4
  %115 = icmp sge i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @save_regs(i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EDI, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @EDI, align 4
  %126 = call i32 @emit_mov(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %113
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @LOADB_STUB, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @EDI, align 4
  %133 = load i32, i32* @EDI, align 4
  %134 = call i32 @emit_xorimm(i32 %132, i32 1, i32 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @LOADB_STUB, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i64, i64* @MappedMemoryReadByte, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @emit_call(i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @LOADW_STUB, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i64, i64* @MappedMemoryReadWord, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @emit_call(i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @LOADL_STUB, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i64, i64* @MappedMemoryReadLong, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @emit_call(i32 %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @LOADS_STUB, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %299

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @RTEMP, align 4
  %166 = call i32 @get_reg(i8* %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sge i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @EAX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %190, label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @ECX, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %190, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @EDX, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @ESI, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @EDI, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186, %182, %178, %174, %163
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @emit_mov(i32 %191, i32 12)
  br label %193

193:                                              ; preds = %190, %186
  %194 = load i64, i64* @MappedMemoryReadLong, align 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 @emit_call(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @EAX, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @ECX, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @EDX, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @ESI, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208, %204, %200, %193
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @emit_mov(i32 12, i32 %213)
  br label %215

215:                                              ; preds = %212, %208
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @EDI, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* @EAX, align 4
  %221 = call i32 @emit_mov(i32 %220, i32 12)
  br label %260

222:                                              ; preds = %215
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @EAX, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @ECX, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %238, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @EDX, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @ESI, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %234, %230, %226, %222
  %239 = load i32, i32* @EAX, align 4
  %240 = call i32 @emit_mov(i32 %239, i32 12)
  br label %245

241:                                              ; preds = %234
  %242 = load i32, i32* @EAX, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @emit_mov(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @EDI, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i32, i32* @EDI, align 4
  %251 = call i32 @emit_mov(i32 12, i32 %250)
  %252 = load i32, i32* @EDI, align 4
  %253 = load i32, i32* @EDI, align 4
  %254 = call i32 @emit_addimm(i32 %252, i32 4, i32 %253)
  br label %259

255:                                              ; preds = %245
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @EDI, align 4
  %258 = call i32 @emit_addimm(i32 %256, i32 4, i32 %257)
  br label %259

259:                                              ; preds = %255, %249
  br label %260

260:                                              ; preds = %259, %219
  %261 = load i64, i64* @MappedMemoryReadLong, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @emit_call(i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = icmp sge i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @EAX, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %260
  %272 = load i32, i32* @EAX, align 4
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @emit_mov(i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %260
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @EAX, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %295, label %279

279:                                              ; preds = %275
  %280 = load i32, i32* %12, align 4
  %281 = load i32, i32* @ECX, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %295, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* @EDX, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @ESI, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load i32, i32* %12, align 4
  %293 = load i32, i32* @EDI, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291, %287, %283, %279, %275
  %296 = load i32, i32* %12, align 4
  %297 = call i32 @emit_mov(i32 12, i32 %296)
  br label %298

298:                                              ; preds = %295, %291
  br label %337

299:                                              ; preds = %159
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* @LOADB_STUB, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load i32, i32* %11, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, i32* @EAX, align 4
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @emit_movsbl_reg(i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %303
  br label %336

311:                                              ; preds = %299
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @LOADW_STUB, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %311
  %316 = load i32, i32* %11, align 4
  %317 = icmp sge i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32, i32* @EAX, align 4
  %320 = load i32, i32* %11, align 4
  %321 = call i32 @emit_movswl_reg(i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %318, %315
  br label %335

323:                                              ; preds = %311
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* @EAX, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load i32, i32* %11, align 4
  %329 = icmp sge i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, i32* @EAX, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @emit_mov(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %330, %327, %323
  br label %335

335:                                              ; preds = %334, %322
  br label %336

336:                                              ; preds = %335, %310
  br label %337

337:                                              ; preds = %336, %298
  %338 = load i32, i32* %8, align 4
  %339 = call i32 @restore_regs(i32 %338)
  %340 = load i32, i32* %4, align 4
  %341 = load i32, i32* @LOADS_STUB, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %337
  %344 = load i32, i32* %6, align 4
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @emit_addimm(i32 %344, i32 8, i32 %345)
  br label %347

347:                                              ; preds = %343, %337
  %348 = load i32**, i32*** @stubs, align 8
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @emit_jmp(i32 %354)
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @emit_movsbl_reg(i32, i32) #1

declare dso_local i32 @emit_movswl_reg(i32, i32) #1

declare dso_local i32 @restore_regs(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
