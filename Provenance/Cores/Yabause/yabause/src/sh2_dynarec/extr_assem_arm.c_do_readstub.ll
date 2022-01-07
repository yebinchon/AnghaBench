; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_readstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_readstub.c"
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
@LOADB_STUB = common dso_local global i32 0, align 4
@CCREG = common dso_local global i32 0, align 4
@MappedMemoryReadByte = common dso_local global i64 0, align 8
@LOADW_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadWord = common dso_local global i64 0, align 8
@LOADL_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadLong = common dso_local global i64 0, align 8
@LOADS_STUB = common dso_local global i32 0, align 4
@RTEMP = common dso_local global i32 0, align 4
@dynarec_local = common dso_local global i32 0, align 4

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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i64, i64* @start, align 8
  %16 = load i32**, i32*** @stubs, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %15, %24
  %26 = call i32 @assem_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = call i32 @literal_pool(i32 256)
  %28 = load i32**, i32*** @stubs, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @out, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @set_jump_target(i32 %34, i32 %36)
  %38 = load i32**, i32*** @stubs, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32**, i32*** @stubs, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32**, i32*** @stubs, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32**, i32*** @stubs, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.regstat*
  store %struct.regstat* %67, %struct.regstat** %7, align 8
  %68 = load i32**, i32*** @stubs, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.regstat*, %struct.regstat** %7, align 8
  %76 = getelementptr inbounds %struct.regstat, %struct.regstat* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @AGEN1, align 4
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 1
  %82 = add nsw i32 %79, %81
  %83 = call i32 @get_reg(i8* %78, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32*, i32** @rt1, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TBIT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %1
  br label %99

93:                                               ; preds = %1
  %94 = load i32*, i32** @rt1, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %99

99:                                               ; preds = %93, %92
  %100 = phi i32 [ -1, %92 ], [ %98, %93 ]
  %101 = call i32 @get_reg(i8* %84, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %108, %99
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @get_reg(i8* %114, i32 -1)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %10, align 4
  %118 = icmp sge i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @save_regs(i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @LOADB_STUB, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @emit_xorimm(i32 %127, i32 1, i32 0)
  br label %136

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @emit_mov(i32 %133, i32 0)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %126
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* @CCREG, align 4
  %139 = call i32 @get_reg(i8* %137, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* @CCREG, align 4
  %144 = call i32 @emit_loadreg(i32 %143, i32 2)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @LOADB_STUB, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i64, i64* @MappedMemoryReadByte, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @emit_call(i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @LOADW_STUB, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64, i64* @MappedMemoryReadWord, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @emit_call(i32 %159)
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @LOADL_STUB, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i64, i64* @MappedMemoryReadLong, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @emit_call(i32 %167)
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @LOADS_STUB, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %265

173:                                              ; preds = %169
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* @RTEMP, align 4
  %176 = call i32 @get_reg(i8* %174, i32 %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp sge i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %186, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 12
  br i1 %185, label %186, label %189

186:                                              ; preds = %183, %173
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @emit_writeword(i32 %187, i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24))
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i64, i64* @MappedMemoryReadLong, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @emit_call(i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %204, label %195

195:                                              ; preds = %189
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 12
  br i1 %203, label %204, label %207

204:                                              ; preds = %201, %198, %195, %189
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @emit_readword(i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24), i32 %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %14, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = call i32 @emit_writeword(i32 0, i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24))
  br label %242

212:                                              ; preds = %207
  %213 = load i32, i32* %14, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %224, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %14, align 4
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %14, align 4
  %220 = icmp eq i32 %219, 3
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %14, align 4
  %223 = icmp eq i32 %222, 12
  br i1 %223, label %224, label %226

224:                                              ; preds = %221, %218, %215, %212
  %225 = call i32 @emit_writeword(i32 0, i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24))
  br label %229

226:                                              ; preds = %221
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @emit_mov(i32 0, i32 %227)
  br label %229

229:                                              ; preds = %226, %224
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @emit_readword(i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24), i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @emit_addimm(i32 %235, i32 4, i32 %236)
  br label %241

238:                                              ; preds = %229
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @emit_addimm(i32 %239, i32 4, i32 0)
  br label %241

241:                                              ; preds = %238, %232
  br label %242

242:                                              ; preds = %241, %210
  %243 = load i64, i64* @MappedMemoryReadLong, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 @emit_call(i32 %244)
  %246 = load i32, i32* %11, align 4
  %247 = icmp sge i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = call i32 @assert(i32 %248)
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %242
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @emit_mov(i32 0, i32 %253)
  br label %255

255:                                              ; preds = %252, %242
  %256 = load i32, i32* %14, align 4
  %257 = icmp slt i32 %256, 4
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %14, align 4
  %260 = icmp eq i32 %259, 12
  br i1 %260, label %261, label %264

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @emit_readword(i32 add nsw (i32 ptrtoint (i32* @dynarec_local to i32), i32 24), i32 %262)
  br label %264

264:                                              ; preds = %261, %258
  br label %296

265:                                              ; preds = %169
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @LOADB_STUB, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = load i32, i32* %11, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @emit_movsbl_reg(i32 0, i32 %273)
  br label %275

275:                                              ; preds = %272, %269
  br label %295

276:                                              ; preds = %265
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @LOADW_STUB, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %287

280:                                              ; preds = %276
  %281 = load i32, i32* %11, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @emit_movswl_reg(i32 0, i32 %284)
  br label %286

286:                                              ; preds = %283, %280
  br label %294

287:                                              ; preds = %276
  %288 = load i32, i32* %11, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @emit_mov(i32 0, i32 %291)
  br label %293

293:                                              ; preds = %290, %287
  br label %294

294:                                              ; preds = %293, %286
  br label %295

295:                                              ; preds = %294, %275
  br label %296

296:                                              ; preds = %295, %264
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @restore_regs(i32 %297)
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @LOADS_STUB, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @emit_addimm(i32 %303, i32 8, i32 %304)
  br label %306

306:                                              ; preds = %302, %296
  %307 = load i32**, i32*** @stubs, align 8
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @emit_jmp(i32 %313)
  %315 = load i32, i32* %2, align 4
  ret i32 %315
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @literal_pool(i32) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_loadreg(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_writeword(i32, i32) #1

declare dso_local i32 @emit_readword(i32, i32) #1

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
