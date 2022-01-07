; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_system_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_system_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64*, i32 }

@CCREG = common dso_local global i64 0, align 8
@HOST_CCREG = common dso_local global i8 0, align 1
@is_delayslot = common dso_local global i32 0, align 4
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@opcode3 = common dso_local global i32* null, align 8
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@ccadj = common dso_local global i32* null, align 8
@out = common dso_local global i64 0, align 8
@CC_STUB = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@VBR = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@HOST_REGS = common dso_local global i32 0, align 4
@MOREG = common dso_local global i32 0, align 4
@MMREG = common dso_local global i32 0, align 4
@STOREL_STUB = common dso_local global i32 0, align 4
@imm = common dso_local global i32* null, align 8
@LOADL_STUB = common dso_local global i32 0, align 4
@cycles = common dso_local global i32* null, align 8
@jump_vaddr_reg = common dso_local global i32** null, align 8
@slave = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @system_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
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
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %17 = load %struct.regstat*, %struct.regstat** %4, align 8
  %18 = getelementptr inbounds %struct.regstat, %struct.regstat* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @CCREG, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @get_reg(i64* %19, i32 %21)
  %23 = ptrtoint i8* %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @HOST_CCREG, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @is_delayslot, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** @opcode, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %2
  %43 = load i32*, i32** @opcode2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 11
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load i32*, i32** @opcode3, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %94

56:                                               ; preds = %49
  %57 = load i8, i8* @HOST_CCREG, align 1
  %58 = sext i8 %57 to i32
  %59 = load i32, i32* @CLOCK_DIVIDER, align 4
  %60 = load i32*, i32** @ccadj, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i8, i8* @HOST_CCREG, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 @emit_addimm(i32 %58, i32 %65, i32 %67)
  %69 = load i64, i64* @out, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = call i32 @emit_jns(i32 0)
  %72 = load i64, i64* @out, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i8, i8* @HOST_CCREG, align 1
  %75 = call i32 @emit_zeroreg(i8 signext %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* @out, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @set_jump_target(i32 %76, i32 %78)
  %80 = load i32, i32* @CC_STUB, align 4
  %81 = load i64, i64* @out, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @start, align 4
  %86 = load i32, i32* %3, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* @TAKEN, align 4
  %90 = call i32 @add_stub(i32 %80, i32 %82, i32 %83, i32 0, i32 %84, i32 %88, i32 %89, i32 0)
  %91 = call i32 @emit_jmp(i32 0)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @emit_jmp(i32 %92)
  br label %356

94:                                               ; preds = %49, %42, %2
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %95 = load i32*, i32** @opcode, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 12
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.regstat*, %struct.regstat** %4, align 8
  %104 = getelementptr inbounds %struct.regstat, %struct.regstat* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = call i8* @get_reg(i64* %105, i32 -1)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load %struct.regstat*, %struct.regstat** %4, align 8
  %109 = getelementptr inbounds %struct.regstat, %struct.regstat* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* @VBR, align 4
  %112 = call i8* @get_reg(i64* %110, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load %struct.regstat*, %struct.regstat** %4, align 8
  %115 = getelementptr inbounds %struct.regstat, %struct.regstat* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* @SR, align 4
  %118 = call i8* @get_reg(i64* %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %10, align 4
  %120 = load %struct.regstat*, %struct.regstat** %4, align 8
  %121 = getelementptr inbounds %struct.regstat, %struct.regstat* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = call i8* @get_reg(i64* %122, i32 15)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %144, %94
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @HOST_REGS, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load %struct.regstat*, %struct.regstat** %4, align 8
  %131 = getelementptr inbounds %struct.regstat, %struct.regstat* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load i32, i32* %15, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %16, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %138, %129
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %15, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %125

147:                                              ; preds = %125
  %148 = load i32, i32* %9, align 4
  %149 = icmp sge i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = icmp sge i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = icmp sge i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp sge i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @emit_addimm(i32 %164, i32 -4, i32 %165)
  %167 = load %struct.regstat*, %struct.regstat** %4, align 8
  %168 = getelementptr inbounds %struct.regstat, %struct.regstat* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* @MOREG, align 4
  %171 = call i8* @get_reg(i64* %169, i32 %170)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %12, align 4
  %173 = load %struct.regstat*, %struct.regstat** %4, align 8
  %174 = getelementptr inbounds %struct.regstat, %struct.regstat* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* @MMREG, align 4
  %177 = call i8* @get_reg(i64* %175, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp sge i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* %12, align 4
  %184 = shl i32 1, %183
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %16, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @do_map_w(i32 %188, i32 %189, i32 %190, i32 %191, i32 0, i32 0, i32 0)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @do_map_w_branch(i32 %193, i32 0, i32 0, i32* %14)
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @emit_rorimm(i32 %195, i32 16, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @emit_writeword_indexed_map(i32 %198, i32 0, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @emit_rorimm(i32 %203, i32 16, i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %147
  %209 = load i32, i32* @STOREL_STUB, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i64, i64* @out, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load %struct.regstat*, %struct.regstat** %4, align 8
  %216 = ptrtoint %struct.regstat* %215 to i32
  %217 = load i32*, i32** @ccadj, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @add_stub(i32 %209, i32 %210, i32 %212, i32 %213, i32 %214, i32 %216, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %208, %147
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @emit_addimm(i32 %225, i32 -4, i32 %226)
  %228 = load %struct.regstat*, %struct.regstat** %4, align 8
  %229 = getelementptr inbounds %struct.regstat, %struct.regstat* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = load %struct.regstat*, %struct.regstat** %4, align 8
  %232 = getelementptr inbounds %struct.regstat, %struct.regstat* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @store_regs_bt(i64* %230, i32 %233, i32 -1)
  %235 = load i32, i32* @start, align 4
  %236 = load i32, i32* %3, align 4
  %237 = mul nsw i32 %236, 2
  %238 = add nsw i32 %235, %237
  %239 = add nsw i32 %238, 2
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @emit_movimm(i32 %239, i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = load i32*, i32** @imm, align 8
  %244 = load i32, i32* %3, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 2
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @emit_addimm(i32 %242, i32 %248, i32 %249)
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %13, align 4
  %255 = call i32 @do_map_w(i32 %251, i32 %252, i32 %253, i32 %254, i32 0, i32 0, i32 0)
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %12, align 4
  %257 = call i32 @do_map_w_branch(i32 %256, i32 0, i32 0, i32* %14)
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @emit_rorimm(i32 %258, i32 16, i32 %259)
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @emit_writeword_indexed_map(i32 %261, i32 0, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %224
  %269 = load i32, i32* @STOREL_STUB, align 4
  %270 = load i32, i32* %14, align 4
  %271 = load i64, i64* @out, align 8
  %272 = trunc i64 %271 to i32
  %273 = load i32, i32* %3, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.regstat*, %struct.regstat** %4, align 8
  %276 = ptrtoint %struct.regstat* %275 to i32
  %277 = load i32*, i32** @ccadj, align 8
  %278 = load i32, i32* %3, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @add_stub(i32 %269, i32 %270, i32 %272, i32 %273, i32 %274, i32 %276, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %268, %224
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @do_map_r(i32 %285, i32 %286, i32 %287, i32 %288, i32 0, i32 -1, i32 -1, i32 0, i32 0)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @do_map_r_branch(i32 %290, i32 0, i32 0, i32* %14)
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @emit_readword_indexed_map(i32 0, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %9, align 4
  %298 = call i32 @emit_rorimm(i32 %296, i32 16, i32 %297)
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %284
  %302 = load i32, i32* @LOADL_STUB, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i64, i64* @out, align 8
  %305 = trunc i64 %304 to i32
  %306 = load i32, i32* %3, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load %struct.regstat*, %struct.regstat** %4, align 8
  %309 = ptrtoint %struct.regstat* %308 to i32
  %310 = load i32*, i32** @ccadj, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @add_stub(i32 %302, i32 %303, i32 %305, i32 %306, i32 %307, i32 %309, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %301, %284
  %318 = load %struct.regstat*, %struct.regstat** %4, align 8
  %319 = getelementptr inbounds %struct.regstat, %struct.regstat* %318, i32 0, i32 0
  %320 = load i64*, i64** %319, align 8
  %321 = load i8, i8* @HOST_CCREG, align 1
  %322 = sext i8 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @CCREG, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %317
  %328 = load i64, i64* @CCREG, align 8
  %329 = load i8, i8* @HOST_CCREG, align 1
  %330 = call i32 @emit_loadreg(i64 %328, i8 signext %329)
  br label %331

331:                                              ; preds = %327, %317
  %332 = load i32, i32* @CLOCK_DIVIDER, align 4
  %333 = load i32*, i32** @ccadj, align 8
  %334 = load i32, i32* %3, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** @cycles, align 8
  %339 = load i32, i32* %3, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %337, %342
  %344 = mul nsw i32 %332, %343
  %345 = load i8, i8* @HOST_CCREG, align 1
  %346 = call i32 @emit_addimm_and_set_flags(i32 %344, i8 signext %345)
  %347 = load i32**, i32*** @jump_vaddr_reg, align 8
  %348 = load i64, i64* @slave, align 8
  %349 = getelementptr inbounds i32*, i32** %347, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @emit_jmp(i32 %354)
  br label %356

356:                                              ; preds = %331, %56
  ret void
}

declare dso_local i8* @get_reg(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @emit_jns(i32) #1

declare dso_local i32 @emit_zeroreg(i8 signext) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @do_map_w(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_map_w_branch(i32, i32, i32, i32*) #1

declare dso_local i32 @emit_rorimm(i32, i32, i32) #1

declare dso_local i32 @emit_writeword_indexed_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @store_regs_bt(i64*, i32, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @do_map_r(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_map_r_branch(i32, i32, i32, i32*) #1

declare dso_local i32 @emit_readword_indexed_map(i32, i32, i32, i32) #1

declare dso_local i32 @emit_loadreg(i64, i8 signext) #1

declare dso_local i32 @emit_addimm_and_set_flags(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
