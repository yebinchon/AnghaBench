; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_ccstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_ccstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"do_ccstub %x\0A\00", align 1
@start = common dso_local global i32 0, align 4
@stubs = common dso_local global i32** null, align 8
@out = common dso_local global i64 0, align 8
@NODS = common dso_local global i32 0, align 4
@itype = common dso_local global i64* null, align 8
@LOAD = common dso_local global i64 0, align 8
@rs1 = common dso_local global i64* null, align 8
@rt1 = common dso_local global i64* null, align 8
@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@GBRIND = common dso_local global i64 0, align 8
@regs = common dso_local global %struct.TYPE_3__* null, align 8
@cpmap = common dso_local global i32** null, align 8
@TAKEN = common dso_local global i32 0, align 4
@branch_regs = common dso_local global %struct.TYPE_4__* null, align 8
@ba = common dso_local global i32* null, align 8
@slave = common dso_local global i64 0, align 8
@slave_pc = common dso_local global i32 0, align 4
@master_pc = common dso_local global i32 0, align 4
@RJUMP = common dso_local global i64 0, align 8
@rt2 = common dso_local global i64* null, align 8
@RTEMP = common dso_local global i64 0, align 8
@opcode = common dso_local global i64* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@opcode3 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown branch type in do_ccstub\0A\00", align 1
@HOST_CCREG = common dso_local global i64 0, align 8
@CCREG = common dso_local global i32 0, align 4
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@SLAVERA_REG = common dso_local global i32 0, align 4
@cc_interrupt = common dso_local global i64 0, align 8
@slave_entry = common dso_local global i64 0, align 8
@NOTTAKEN = common dso_local global i32 0, align 4
@slen = common dso_local global i32 0, align 4
@regmap_pre = common dso_local global i32** null, align 8
@bt = common dso_local global i64* null, align 8
@ccstub_return = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ccstub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 @literal_pool(i32 256)
  %9 = load i32, i32* @start, align 4
  %10 = load i32**, i32*** @stubs, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %9, %17
  %19 = call i32 @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32**, i32*** @stubs, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @out, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @set_jump_target(i32 %26, i32 %28)
  %30 = load i32**, i32*** @stubs, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i32**, i32*** @stubs, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NODS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %141

46:                                               ; preds = %1
  %47 = load i64*, i64** @itype, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LOAD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %46
  %56 = load i64*, i64** @rs1, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** @rt1, align 8
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %55
  %70 = load i64*, i64** @addrmode, align 8
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DUALIND, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %69
  %79 = load i64*, i64** @addrmode, align 8
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GBRIND, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %78
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64*, i64** @rs1, align 8
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @get_reg(i32* %93, i64 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %87
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = ashr i32 %109, %110
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %103
  %115 = load i32**, i32*** @cpmap, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @emit_movimm(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %114, %103, %87
  br label %127

127:                                              ; preds = %126, %78, %69, %55, %46
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @wb_dirtys(i32* %133, i32 %139)
  br label %194

141:                                              ; preds = %1
  %142 = load i32**, i32*** @stubs, align 8
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TAKEN, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %141
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @wb_dirtys(i32* %157, i32 %163)
  br label %193

165:                                              ; preds = %141
  %166 = load i32*, i32** @ba, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @internal_branch(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %165
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** @ba, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @wb_needed_dirtys(i32* %179, i32 %185, i32 %190)
  br label %192

192:                                              ; preds = %173, %165
  br label %193

193:                                              ; preds = %192, %151
  br label %194

194:                                              ; preds = %193, %127
  %195 = load i32**, i32*** @stubs, align 8
  %196 = load i32, i32* %2, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 5
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, -1
  br i1 %202, label %203, label %219

203:                                              ; preds = %194
  %204 = load i32**, i32*** @stubs, align 8
  %205 = load i32, i32* %2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @emit_movimm(i32 %210, i32 0)
  %212 = load i64, i64* @slave, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  br label %216

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %214
  %217 = phi i32 [ ptrtoint (i32* @slave_pc to i32), %214 ], [ ptrtoint (i32* @master_pc to i32), %215 ]
  %218 = call i32 @emit_writeword(i32 0, i32 %217)
  br label %342

219:                                              ; preds = %194
  %220 = load i64*, i64** @itype, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @RJUMP, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %338

227:                                              ; preds = %219
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i64*, i64** @rs1, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @get_reg(i32* %233, i64 %238)
  store i32 %239, i32* %5, align 4
  %240 = load i64*, i64** @rs1, align 8
  %241 = load i32, i32* %3, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** @rt1, align 8
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %245, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %244, %250
  br i1 %251, label %265, label %252

252:                                              ; preds = %227
  %253 = load i64*, i64** @rs1, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** @rt2, align 8
  %259 = load i32, i32* %3, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %257, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %252, %227
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %267 = load i32, i32* %3, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @RTEMP, align 8
  %273 = call i32 @get_reg(i32* %271, i64 %272)
  store i32 %273, i32* %5, align 4
  br label %329

274:                                              ; preds = %252
  %275 = load i64*, i64** @opcode, align 8
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %274
  %282 = load i32*, i32** @opcode2, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 3
  br i1 %287, label %288, label %297

288:                                              ; preds = %281
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %290 = load i32, i32* %3, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @RTEMP, align 8
  %296 = call i32 @get_reg(i32* %294, i64 %295)
  store i32 %296, i32* %5, align 4
  br label %328

297:                                              ; preds = %281, %274
  %298 = load i64*, i64** @opcode, align 8
  %299 = load i32, i32* %3, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64, i64* %298, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %327

304:                                              ; preds = %297
  %305 = load i32*, i32** @opcode2, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 11
  br i1 %310, label %311, label %327

311:                                              ; preds = %304
  %312 = load i32*, i32** @opcode3, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %327

318:                                              ; preds = %311
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %320 = load i32, i32* %3, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* @RTEMP, align 8
  %326 = call i32 @get_reg(i32* %324, i64 %325)
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %318, %311, %304, %297
  br label %328

328:                                              ; preds = %327, %288
  br label %329

329:                                              ; preds = %328, %265
  %330 = load i32, i32* %5, align 4
  %331 = load i64, i64* @slave, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  br label %335

334:                                              ; preds = %329
  br label %335

335:                                              ; preds = %334, %333
  %336 = phi i32 [ ptrtoint (i32* @slave_pc to i32), %333 ], [ ptrtoint (i32* @master_pc to i32), %334 ]
  %337 = call i32 @emit_writeword(i32 %330, i32 %336)
  br label %341

338:                                              ; preds = %219
  %339 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %340 = call i32 @exit(i32 1) #3
  unreachable

341:                                              ; preds = %335
  br label %342

342:                                              ; preds = %341, %216
  %343 = load i32**, i32*** @stubs, align 8
  %344 = load i32, i32* %2, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 6
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @NODS, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %379

352:                                              ; preds = %342
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %354 = load i32, i32* %3, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @HOST_CCREG, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @CCREG, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %375, label %364

364:                                              ; preds = %352
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i64, i64* @HOST_CCREG, align 8
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, -1
  br label %375

375:                                              ; preds = %364, %352
  %376 = phi i1 [ true, %352 ], [ %374, %364 ]
  %377 = zext i1 %376 to i32
  %378 = call i32 @assert(i32 %377)
  br label %406

379:                                              ; preds = %342
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %381 = load i32, i32* %3, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = load i64, i64* @HOST_CCREG, align 8
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @CCREG, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %402, label %391

391:                                              ; preds = %379
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %393 = load i32, i32* %3, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* @HOST_CCREG, align 8
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, -1
  br label %402

402:                                              ; preds = %391, %379
  %403 = phi i1 [ true, %379 ], [ %401, %391 ]
  %404 = zext i1 %403 to i32
  %405 = call i32 @assert(i32 %404)
  br label %406

406:                                              ; preds = %402, %375
  %407 = load i32**, i32*** @stubs, align 8
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 3
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %406
  %416 = load i64, i64* @HOST_CCREG, align 8
  %417 = load i32, i32* @CLOCK_DIVIDER, align 4
  %418 = load i32**, i32*** @stubs, align 8
  %419 = load i32, i32* %2, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32*, i32** %418, i64 %420
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 3
  %424 = load i32, i32* %423, align 4
  %425 = mul nsw i32 %417, %424
  %426 = load i64, i64* @HOST_CCREG, align 8
  %427 = call i32 @emit_addimm(i64 %416, i32 %425, i64 %426)
  br label %428

428:                                              ; preds = %415, %406
  %429 = load i64, i64* @slave, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = load i32, i32* @SLAVERA_REG, align 4
  %433 = call i32 @emit_load_return_address(i32 %432)
  %434 = load i64, i64* @cc_interrupt, align 8
  %435 = trunc i64 %434 to i32
  %436 = call i32 @emit_jmp(i32 %435)
  br label %441

437:                                              ; preds = %428
  %438 = load i64, i64* @slave_entry, align 8
  %439 = trunc i64 %438 to i32
  %440 = call i32 @emit_call(i32 %439)
  br label %441

441:                                              ; preds = %437, %431
  %442 = load i32**, i32*** @stubs, align 8
  %443 = load i32, i32* %2, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32*, i32** %442, i64 %444
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 3
  %448 = load i32, i32* %447, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %474

450:                                              ; preds = %441
  %451 = load i32**, i32*** @stubs, align 8
  %452 = load i32, i32* %2, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32*, i32** %451, i64 %453
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 6
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @NODS, align 4
  %459 = icmp ne i32 %457, %458
  br i1 %459, label %460, label %474

460:                                              ; preds = %450
  %461 = load i64, i64* @HOST_CCREG, align 8
  %462 = load i32, i32* @CLOCK_DIVIDER, align 4
  %463 = sub nsw i32 0, %462
  %464 = load i32**, i32*** @stubs, align 8
  %465 = load i32, i32* %2, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32*, i32** %464, i64 %466
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 3
  %470 = load i32, i32* %469, align 4
  %471 = mul nsw i32 %463, %470
  %472 = load i64, i64* @HOST_CCREG, align 8
  %473 = call i32 @emit_addimm(i64 %461, i32 %471, i64 %472)
  br label %474

474:                                              ; preds = %460, %450, %441
  %475 = load i32**, i32*** @stubs, align 8
  %476 = load i32, i32* %2, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32*, i32** %475, i64 %477
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 6
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @TAKEN, align 4
  %483 = icmp eq i32 %481, %482
  br i1 %483, label %484, label %569

484:                                              ; preds = %474
  %485 = load i32*, i32** @ba, align 8
  %486 = load i32, i32* %3, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = call i64 @internal_branch(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %513

492:                                              ; preds = %484
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %494 = load i32, i32* %3, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 0
  %498 = load i32*, i32** %497, align 8
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %500 = load i32*, i32** @ba, align 8
  %501 = load i32, i32* %3, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @start, align 4
  %506 = sub nsw i32 %504, %505
  %507 = ashr i32 %506, 1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 2
  %511 = load i32*, i32** %510, align 8
  %512 = call i32 @load_needed_regs(i32* %498, i32* %511)
  br label %568

513:                                              ; preds = %484
  %514 = load i64*, i64** @itype, align 8
  %515 = load i32, i32* %3, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i64, i64* %514, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @RJUMP, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %567

521:                                              ; preds = %513
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %523 = load i32, i32* %3, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 0
  %527 = load i32*, i32** %526, align 8
  %528 = load i64, i64* @RTEMP, align 8
  %529 = call i32 @get_reg(i32* %527, i64 %528)
  %530 = icmp sge i32 %529, 0
  br i1 %530, label %531, label %547

531:                                              ; preds = %521
  %532 = load i64, i64* @slave, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  br label %536

535:                                              ; preds = %531
  br label %536

536:                                              ; preds = %535, %534
  %537 = phi i32 [ ptrtoint (i32* @slave_pc to i32), %534 ], [ ptrtoint (i32* @master_pc to i32), %535 ]
  %538 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %539 = load i32, i32* %3, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 0
  %543 = load i32*, i32** %542, align 8
  %544 = load i64, i64* @RTEMP, align 8
  %545 = call i32 @get_reg(i32* %543, i64 %544)
  %546 = call i32 @emit_readword(i32 %537, i32 %545)
  br label %566

547:                                              ; preds = %521
  %548 = load i64*, i64** @rs1, align 8
  %549 = load i32, i32* %3, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %548, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %554 = load i32, i32* %3, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %556, i32 0, i32 0
  %558 = load i32*, i32** %557, align 8
  %559 = load i64*, i64** @rs1, align 8
  %560 = load i32, i32* %3, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %559, i64 %561
  %563 = load i64, i64* %562, align 8
  %564 = call i32 @get_reg(i32* %558, i64 %563)
  %565 = call i32 @emit_loadreg(i64 %552, i32 %564)
  br label %566

566:                                              ; preds = %547, %536
  br label %567

567:                                              ; preds = %566, %513
  br label %568

568:                                              ; preds = %567, %492
  br label %801

569:                                              ; preds = %474
  %570 = load i32**, i32*** @stubs, align 8
  %571 = load i32, i32* %2, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32*, i32** %570, i64 %572
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 6
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* @NOTTAKEN, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %579, label %607

579:                                              ; preds = %569
  %580 = load i32, i32* %3, align 4
  %581 = load i32, i32* @slen, align 4
  %582 = sub nsw i32 %581, 2
  %583 = icmp slt i32 %580, %582
  br i1 %583, label %584, label %598

584:                                              ; preds = %579
  %585 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %586 = load i32, i32* %3, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 0
  %590 = load i32*, i32** %589, align 8
  %591 = load i32**, i32*** @regmap_pre, align 8
  %592 = load i32, i32* %3, align 4
  %593 = add nsw i32 %592, 2
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32*, i32** %591, i64 %594
  %596 = load i32*, i32** %595, align 8
  %597 = call i32 @load_needed_regs(i32* %590, i32* %596)
  br label %606

598:                                              ; preds = %579
  %599 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %600 = load i32, i32* %3, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %602, i32 0, i32 0
  %604 = load i32*, i32** %603, align 8
  %605 = call i32 @load_all_regs(i32* %604)
  br label %606

606:                                              ; preds = %598, %584
  br label %800

607:                                              ; preds = %569
  %608 = load i32**, i32*** @stubs, align 8
  %609 = load i32, i32* %2, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32*, i32** %608, i64 %610
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 6
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* @NODS, align 4
  %616 = icmp eq i32 %614, %615
  br i1 %616, label %617, label %791

617:                                              ; preds = %607
  %618 = load i64*, i64** @bt, align 8
  %619 = load i32, i32* %3, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i64, i64* %618, i64 %620
  %622 = load i64, i64* %621, align 8
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %627, label %624

624:                                              ; preds = %617
  %625 = load i32, i32* %3, align 4
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %634

627:                                              ; preds = %624, %617
  %628 = load i64, i64* @out, align 8
  %629 = trunc i64 %628 to i32
  %630 = load i32*, i32** @ccstub_return, align 8
  %631 = load i32, i32* %3, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  store i32 %629, i32* %633, align 4
  br label %790

634:                                              ; preds = %624
  %635 = load i32**, i32*** @stubs, align 8
  %636 = load i32, i32* %2, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32*, i32** %635, i64 %637
  %639 = load i32*, i32** %638, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 3
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %657

643:                                              ; preds = %634
  %644 = load i64, i64* @HOST_CCREG, align 8
  %645 = load i32, i32* @CLOCK_DIVIDER, align 4
  %646 = sub nsw i32 0, %645
  %647 = load i32**, i32*** @stubs, align 8
  %648 = load i32, i32* %2, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32*, i32** %647, i64 %649
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 3
  %653 = load i32, i32* %652, align 4
  %654 = mul nsw i32 %646, %653
  %655 = load i64, i64* @HOST_CCREG, align 8
  %656 = call i32 @emit_addimm(i64 %644, i32 %654, i64 %655)
  br label %657

657:                                              ; preds = %643, %634
  %658 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %659 = load i32, i32* %3, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %658, i64 %660
  %662 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %661, i32 0, i32 0
  %663 = load i32*, i32** %662, align 8
  %664 = call i32 @load_all_regs(i32* %663)
  %665 = load i32**, i32*** @regmap_pre, align 8
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32*, i32** %665, i64 %667
  %669 = load i32*, i32** %668, align 8
  %670 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %671 = load i32, i32* %3, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %670, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 0
  %675 = load i32*, i32** %674, align 8
  %676 = load i32, i32* %3, align 4
  %677 = call i32 @load_consts(i32* %669, i32* %675, i32 %676)
  %678 = load i64*, i64** @itype, align 8
  %679 = load i32, i32* %3, align 4
  %680 = add nsw i32 %679, 1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i64, i64* %678, i64 %681
  %683 = load i64, i64* %682, align 8
  %684 = load i64, i64* @LOAD, align 8
  %685 = icmp eq i64 %683, %684
  br i1 %685, label %686, label %785

686:                                              ; preds = %657
  %687 = load i64*, i64** @rs1, align 8
  %688 = load i32, i32* %3, align 4
  %689 = add nsw i32 %688, 1
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i64, i64* %687, i64 %690
  %692 = load i64, i64* %691, align 8
  %693 = load i64*, i64** @rt1, align 8
  %694 = load i32, i32* %3, align 4
  %695 = add nsw i32 %694, 1
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i64, i64* %693, i64 %696
  %698 = load i64, i64* %697, align 8
  %699 = icmp eq i64 %692, %698
  br i1 %699, label %700, label %785

700:                                              ; preds = %686
  %701 = load i64*, i64** @addrmode, align 8
  %702 = load i32, i32* %3, align 4
  %703 = add nsw i32 %702, 1
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i64, i64* %701, i64 %704
  %706 = load i64, i64* %705, align 8
  %707 = load i64, i64* @DUALIND, align 8
  %708 = icmp ne i64 %706, %707
  br i1 %708, label %709, label %785

709:                                              ; preds = %700
  %710 = load i64*, i64** @addrmode, align 8
  %711 = load i32, i32* %3, align 4
  %712 = add nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i64, i64* %710, i64 %713
  %715 = load i64, i64* %714, align 8
  %716 = load i64, i64* @GBRIND, align 8
  %717 = icmp ne i64 %715, %716
  br i1 %717, label %718, label %785

718:                                              ; preds = %709
  %719 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %720 = load i32, i32* %3, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %719, i64 %721
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 0
  %724 = load i32*, i32** %723, align 8
  %725 = load i64*, i64** @rs1, align 8
  %726 = load i32, i32* %3, align 4
  %727 = add nsw i32 %726, 1
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i64, i64* %725, i64 %728
  %730 = load i64, i64* %729, align 8
  %731 = call i32 @get_reg(i32* %724, i64 %730)
  store i32 %731, i32* %6, align 4
  %732 = load i32, i32* %6, align 4
  %733 = icmp sge i32 %732, 0
  br i1 %733, label %734, label %784

734:                                              ; preds = %718
  %735 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %736 = load i32, i32* %3, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %735, i64 %737
  %739 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %738, i32 0, i32 1
  %740 = load i32, i32* %739, align 8
  %741 = load i32, i32* %6, align 4
  %742 = ashr i32 %740, %741
  %743 = and i32 %742, 1
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %784

745:                                              ; preds = %734
  %746 = load i32**, i32*** @cpmap, align 8
  %747 = load i32, i32* %3, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32*, i32** %746, i64 %748
  %750 = load i32*, i32** %749, align 8
  %751 = load i32, i32* %6, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = load i32*, i32** @imm, align 8
  %756 = load i32, i32* %3, align 4
  %757 = add nsw i32 %756, 1
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i32, i32* %755, i64 %758
  %760 = load i32, i32* %759, align 4
  %761 = add nsw i32 %754, %760
  store i32 %761, i32* %7, align 4
  %762 = load i32, i32* %7, align 4
  %763 = call i64 @can_direct_read(i32 %762)
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %768

765:                                              ; preds = %745
  %766 = load i32, i32* %7, align 4
  %767 = call i32 @map_address(i32 %766)
  store i32 %767, i32* %7, align 4
  br label %768

768:                                              ; preds = %765, %745
  %769 = load i32*, i32** @opcode2, align 8
  %770 = load i32, i32* %3, align 4
  %771 = add nsw i32 %770, 1
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds i32, i32* %769, i64 %772
  %774 = load i32, i32* %773, align 4
  %775 = and i32 %774, 3
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %780

777:                                              ; preds = %768
  %778 = load i32, i32* %7, align 4
  %779 = xor i32 %778, 1
  store i32 %779, i32* %7, align 4
  br label %780

780:                                              ; preds = %777, %768
  %781 = load i32, i32* %7, align 4
  %782 = load i32, i32* %6, align 4
  %783 = call i32 @emit_movimm(i32 %781, i32 %782)
  br label %784

784:                                              ; preds = %780, %734, %718
  br label %785

785:                                              ; preds = %784, %709, %700, %686, %657
  %786 = load i32*, i32** @ccstub_return, align 8
  %787 = load i32, i32* %3, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i32, i32* %786, i64 %788
  store i32 0, i32* %789, align 4
  br label %790

790:                                              ; preds = %785, %627
  br label %799

791:                                              ; preds = %607
  %792 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %793 = load i32, i32* %3, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %792, i64 %794
  %796 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %795, i32 0, i32 0
  %797 = load i32*, i32** %796, align 8
  %798 = call i32 @load_all_regs(i32* %797)
  br label %799

799:                                              ; preds = %791, %790
  br label %800

800:                                              ; preds = %799, %606
  br label %801

801:                                              ; preds = %800, %568
  %802 = load i32**, i32*** @stubs, align 8
  %803 = load i32, i32* %2, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32*, i32** %802, i64 %804
  %806 = load i32*, i32** %805, align 8
  %807 = getelementptr inbounds i32, i32* %806, i64 2
  %808 = load i32, i32* %807, align 4
  %809 = call i32 @emit_jmp(i32 %808)
  ret void
}

declare dso_local i32 @literal_pool(i32) #1

declare dso_local i32 @assem_debug(i8*, i32) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @get_reg(i32*, i64) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @wb_dirtys(i32*, i32) #1

declare dso_local i64 @internal_branch(i32) #1

declare dso_local i32 @wb_needed_dirtys(i32*, i32, i32) #1

declare dso_local i32 @emit_writeword(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_addimm(i64, i32, i64) #1

declare dso_local i32 @emit_load_return_address(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @load_needed_regs(i32*, i32*) #1

declare dso_local i32 @emit_readword(i32, i32) #1

declare dso_local i32 @emit_loadreg(i64, i32) #1

declare dso_local i32 @load_all_regs(i32*) #1

declare dso_local i32 @load_consts(i32*, i32*, i32) #1

declare dso_local i64 @can_direct_read(i32) #1

declare dso_local i32 @map_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
