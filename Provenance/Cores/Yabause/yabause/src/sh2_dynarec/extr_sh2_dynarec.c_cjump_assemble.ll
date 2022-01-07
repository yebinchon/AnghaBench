; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_cjump_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_cjump_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.regstat = type { i8* }

@regs = common dso_local global %struct.TYPE_3__* null, align 8
@ba = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"match=%d\0A\00", align 1
@start = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"idle loop\0A\00", align 1
@SR = common dso_local global i32 0, align 4
@CCREG = common dso_local global i32 0, align 4
@HOST_CCREG = common dso_local global i32 0, align 4
@NODS = common dso_local global i32 0, align 4
@branch_regs = common dso_local global %struct.TYPE_4__* null, align 8
@TAKEN = common dso_local global i32 0, align 4
@source = common dso_local global i64* null, align 8
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@ccadj = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"branch: internal\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"branch: external\0A\00", align 1
@is_ds = common dso_local global i64* null, align 8
@out = common dso_local global i64 0, align 8
@CC_STUB = common dso_local global i32 0, align 4
@NOTTAKEN = common dso_local global i32 0, align 4
@opcode2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cjump_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %18 = load %struct.regstat*, %struct.regstat** %4, align 8
  %19 = getelementptr inbounds %struct.regstat, %struct.regstat* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @ba, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @match_bt(i32 %26, i32 %32, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** @ba, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @internal_branch(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32*, i32** @ba, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @start, align 4
  %54 = sub nsw i32 %52, %53
  %55 = ashr i32 %54, 1
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %2
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* @SR, align 4
  %66 = call i32 @get_reg(i8* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @CCREG, align 4
  %73 = call i32 @get_reg(i8* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HOST_CCREG, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @start, align 4
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* @NODS, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @do_cc(i32 %79, i32 %85, i32* %11, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %63
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** @ba, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @store_regs_bt(i32 %101, i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %95, %63
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %225

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** @ba, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TAKEN, align 4
  %131 = call i32 @do_cc(i32 %118, i32 %124, i32* %11, i32 %129, i32 %130, i32 0)
  %132 = load i32, i32* %3, align 4
  %133 = load i32*, i32** @ba, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @start, align 4
  %139 = sub nsw i32 %137, %138
  %140 = ashr i32 %139, 1
  %141 = icmp ne i32 %132, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %117
  %143 = load i64*, i64** @source, align 8
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %224

150:                                              ; preds = %142, %117
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @CLOCK_DIVIDER, align 4
  %156 = load i32*, i32** @ccadj, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 2
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %161, %162
  %164 = mul nsw i32 %155, %163
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @emit_addimm(i32 %154, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %153, %150
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** @ba, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @load_regs_bt(i32 %173, i32 %179, i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %167
  %189 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %192

190:                                              ; preds = %167
  %191 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %188
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %192
  %196 = load i64*, i64** @is_ds, align 8
  %197 = load i32*, i32** @ba, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @start, align 4
  %203 = sub nsw i32 %201, %202
  %204 = ashr i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %196, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %195
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @ds_assemble_entry(i32 %210)
  br label %223

212:                                              ; preds = %195, %192
  %213 = load i64, i64* @out, align 8
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** @ba, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @add_to_linker(i32 %214, i32 %219, i32 %220)
  %222 = call i32 @emit_jmp(i32 0)
  br label %223

223:                                              ; preds = %212, %209
  br label %224

224:                                              ; preds = %223, %142
  br label %439

225:                                              ; preds = %114
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %254

228:                                              ; preds = %225
  %229 = load i32, i32* @CLOCK_DIVIDER, align 4
  %230 = load i32*, i32** @ccadj, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 2
  %236 = mul nsw i32 %229, %235
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @emit_addimm_and_set_flags(i32 %236, i32 %237)
  %239 = load i64, i64* @out, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %14, align 4
  %241 = call i32 @emit_jns(i32 0)
  %242 = load i32, i32* @CC_STUB, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i64, i64* @out, align 8
  %245 = trunc i64 %244 to i32
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* @start, align 4
  %248 = load i32, i32* %3, align 4
  %249 = mul nsw i32 %248, 2
  %250 = add nsw i32 %247, %249
  %251 = add nsw i32 %250, 4
  %252 = load i32, i32* @NOTTAKEN, align 4
  %253 = call i32 @add_stub(i32 %242, i32 %243, i32 %245, i32 0, i32 %246, i32 %251, i32 %252, i32 0)
  br label %438

254:                                              ; preds = %225
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %254
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @CLOCK_DIVIDER, align 4
  %263 = load i32*, i32** @ccadj, align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %11, align 4
  %269 = sub nsw i32 %267, %268
  %270 = mul nsw i32 %262, %269
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @emit_addimm(i32 %261, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %260, %257, %254
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @emit_testimm(i32 %274, i32 1)
  %276 = load i32*, i32** @opcode2, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 9
  br i1 %281, label %282, label %300

282:                                              ; preds = %273
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i64, i64* @out, align 8
  store i64 %286, i64* %16, align 8
  %287 = call i32 @emit_jeq(i32 1)
  br label %299

288:                                              ; preds = %282
  %289 = load i64, i64* @out, align 8
  %290 = trunc i64 %289 to i32
  %291 = load i32*, i32** @ba, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %13, align 4
  %297 = call i32 @add_to_linker(i32 %290, i32 %295, i32 %296)
  %298 = call i32 @emit_jne(i32 0)
  br label %299

299:                                              ; preds = %288, %285
  br label %300

300:                                              ; preds = %299, %273
  %301 = load i32*, i32** @opcode2, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 11
  br i1 %306, label %307, label %325

307:                                              ; preds = %300
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i64, i64* @out, align 8
  store i64 %311, i64* %16, align 8
  %312 = call i32 @emit_jne(i32 1)
  br label %324

313:                                              ; preds = %307
  %314 = load i64, i64* @out, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i32*, i32** @ba, align 8
  %317 = load i32, i32* %3, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %13, align 4
  %322 = call i32 @add_to_linker(i32 %315, i32 %320, i32 %321)
  %323 = call i32 @emit_jeq(i32 0)
  br label %324

324:                                              ; preds = %313, %310
  br label %325

325:                                              ; preds = %324, %300
  %326 = load i32, i32* %12, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %424

328:                                              ; preds = %325
  %329 = load i64, i64* %15, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i64, i64* %15, align 8
  %333 = load i64, i64* @out, align 8
  %334 = call i32 @set_jump_target(i64 %332, i64 %333)
  br label %335

335:                                              ; preds = %331, %328
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* @CLOCK_DIVIDER, align 4
  %341 = sub nsw i32 0, %340
  %342 = load i32, i32* %11, align 4
  %343 = mul nsw i32 %341, %342
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @emit_addimm(i32 %339, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %338, %335
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %348 = load i32, i32* %3, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %354 = load i32, i32* %3, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** @ba, align 8
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @store_regs_bt(i32 %352, i32 %358, i32 %363)
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32*, i32** @ba, align 8
  %378 = load i32, i32* %3, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @load_regs_bt(i32 %370, i32 %376, i32 %381)
  %383 = load i32, i32* %13, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %346
  %386 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %389

387:                                              ; preds = %346
  %388 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %389

389:                                              ; preds = %387, %385
  %390 = load i32, i32* %13, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %409

392:                                              ; preds = %389
  %393 = load i64*, i64** @is_ds, align 8
  %394 = load i32*, i32** @ba, align 8
  %395 = load i32, i32* %3, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @start, align 4
  %400 = sub nsw i32 %398, %399
  %401 = ashr i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i64, i64* %393, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %392
  %407 = load i32, i32* %3, align 4
  %408 = call i32 @ds_assemble_entry(i32 %407)
  br label %420

409:                                              ; preds = %392, %389
  %410 = load i64, i64* @out, align 8
  %411 = trunc i64 %410 to i32
  %412 = load i32*, i32** @ba, align 8
  %413 = load i32, i32* %3, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %13, align 4
  %418 = call i32 @add_to_linker(i32 %411, i32 %416, i32 %417)
  %419 = call i32 @emit_jmp(i32 0)
  br label %420

420:                                              ; preds = %409, %406
  %421 = load i64, i64* %16, align 8
  %422 = load i64, i64* @out, align 8
  %423 = call i32 @set_jump_target(i64 %421, i64 %422)
  br label %424

424:                                              ; preds = %420, %325
  %425 = load i32, i32* %11, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %437

427:                                              ; preds = %424
  %428 = load i32, i32* %12, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %437, label %430

430:                                              ; preds = %427
  %431 = load i32, i32* %6, align 4
  %432 = load i32, i32* @CLOCK_DIVIDER, align 4
  %433 = load i32, i32* %11, align 4
  %434 = mul nsw i32 %432, %433
  %435 = load i32, i32* %6, align 4
  %436 = call i32 @emit_addimm(i32 %431, i32 %434, i32 %435)
  br label %437

437:                                              ; preds = %430, %427, %424
  br label %438

438:                                              ; preds = %437, %228
  br label %439

439:                                              ; preds = %438, %224
  ret void
}

declare dso_local i32 @match_bt(i32, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, ...) #1

declare dso_local i32 @internal_branch(i32) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_cc(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @store_regs_bt(i32, i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @load_regs_bt(i32, i32, i32) #1

declare dso_local i32 @ds_assemble_entry(i32) #1

declare dso_local i32 @add_to_linker(i32, i32, i32) #1

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @emit_addimm_and_set_flags(i32, i32) #1

declare dso_local i32 @emit_jns(i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_testimm(i32, i32) #1

declare dso_local i32 @emit_jeq(i32) #1

declare dso_local i32 @emit_jne(i32) #1

declare dso_local i32 @set_jump_target(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
