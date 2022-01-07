; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_readstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_readstub.c"
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
@EAX = common dso_local global i32 0, align 4
@LOADB_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadByte = common dso_local global i64 0, align 8
@LOADW_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadWord = common dso_local global i64 0, align 8
@LOADL_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadLong = common dso_local global i64 0, align 8
@LOADS_STUB = common dso_local global i32 0, align 4
@RTEMP = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@ESP = common dso_local global i32 0, align 4

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
  %121 = load i32, i32* @EAX, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @EAX, align 4
  %126 = call i32 @emit_mov(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %113
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @LOADB_STUB, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @EAX, align 4
  %133 = load i32, i32* @EAX, align 4
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
  br i1 %162, label %163, label %273

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
  br i1 %173, label %182, label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @ECX, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @EDX, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178, %174, %163
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @ESP, align 4
  %185 = call i32 @emit_writeword_indexed(i32 %183, i32 0, i32 %184)
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i64, i64* @MappedMemoryReadLong, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @emit_call(i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @ECX, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @EDX, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193, %186
  %198 = load i32, i32* @ESP, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @emit_readword_indexed(i32 0, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %193
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @EAX, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32, i32* @EAX, align 4
  %207 = load i32, i32* @ESP, align 4
  %208 = call i32 @emit_writeword_indexed(i32 %206, i32 0, i32 %207)
  br label %241

209:                                              ; preds = %201
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @ECX, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @EDX, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213, %209
  %218 = load i32, i32* @EAX, align 4
  %219 = load i32, i32* @ESP, align 4
  %220 = call i32 @emit_writeword_indexed(i32 %218, i32 0, i32 %219)
  br label %225

221:                                              ; preds = %213
  %222 = load i32, i32* @EAX, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @emit_mov(i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %217
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @EAX, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i32, i32* @ESP, align 4
  %231 = load i32, i32* @EAX, align 4
  %232 = call i32 @emit_readword_indexed(i32 0, i32 %230, i32 %231)
  %233 = load i32, i32* @EAX, align 4
  %234 = load i32, i32* @EAX, align 4
  %235 = call i32 @emit_addimm(i32 %233, i32 4, i32 %234)
  br label %240

236:                                              ; preds = %225
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @EAX, align 4
  %239 = call i32 @emit_addimm(i32 %237, i32 4, i32 %238)
  br label %240

240:                                              ; preds = %236, %229
  br label %241

241:                                              ; preds = %240, %205
  %242 = load i64, i64* @MappedMemoryReadLong, align 8
  %243 = trunc i64 %242 to i32
  %244 = call i32 @emit_call(i32 %243)
  %245 = load i32, i32* %11, align 4
  %246 = icmp sge i32 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* @EAX, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %241
  %253 = load i32, i32* @EAX, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i32 @emit_mov(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %252, %241
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @EAX, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @ECX, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @EDX, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %264, %260, %256
  %269 = load i32, i32* @ESP, align 4
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @emit_readword_indexed(i32 0, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %264
  br label %311

273:                                              ; preds = %159
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* @LOADB_STUB, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = load i32, i32* %11, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i32, i32* @EAX, align 4
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @emit_movsbl_reg(i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %280, %277
  br label %310

285:                                              ; preds = %273
  %286 = load i32, i32* %4, align 4
  %287 = load i32, i32* @LOADW_STUB, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %285
  %290 = load i32, i32* %11, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32, i32* @EAX, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i32 @emit_movswl_reg(i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  br label %309

297:                                              ; preds = %285
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @EAX, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %297
  %302 = load i32, i32* %11, align 4
  %303 = icmp sge i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i32, i32* @EAX, align 4
  %306 = load i32, i32* %11, align 4
  %307 = call i32 @emit_mov(i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %304, %301, %297
  br label %309

309:                                              ; preds = %308, %296
  br label %310

310:                                              ; preds = %309, %284
  br label %311

311:                                              ; preds = %310, %272
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @restore_regs(i32 %312)
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @LOADS_STUB, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @emit_addimm(i32 %318, i32 8, i32 %319)
  br label %321

321:                                              ; preds = %317, %311
  %322 = load i32**, i32*** @stubs, align 8
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 2
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @emit_jmp(i32 %328)
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_xorimm(i32, i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_writeword_indexed(i32, i32, i32) #1

declare dso_local i32 @emit_readword_indexed(i32, i32, i32) #1

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
