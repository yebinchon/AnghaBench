; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_sjump_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_sjump_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8*, i32 }
%struct.TYPE_2__ = type { i8*, i64, i32, i32 }

@ba = common dso_local global i32* null, align 8
@branch_regs = common dso_local global %struct.regstat* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"match=%d\0A\00", align 1
@start = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"idle loop\0A\00", align 1
@ooo = common dso_local global i64* null, align 8
@SR = common dso_local global i64 0, align 8
@CCREG = common dso_local global i64 0, align 8
@HOST_CCREG = common dso_local global i32 0, align 4
@regs = common dso_local global %struct.TYPE_2__* null, align 8
@NODS = common dso_local global i32 0, align 4
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
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
@rs3 = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"1:\0A\00", align 1
@itype = common dso_local global i64* null, align 8
@COMPLEX = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@MACL = common dso_local global i64 0, align 8
@MACH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"cycle count (adj)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sjump_assemble(i32 %0, %struct.regstat* %1) #0 {
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
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %23 = load %struct.regstat*, %struct.regstat** %4, align 8
  %24 = getelementptr inbounds %struct.regstat, %struct.regstat* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32*, i32** @ba, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @internal_branch(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.regstat, %struct.regstat* %32, i64 %34
  %36 = getelementptr inbounds %struct.regstat, %struct.regstat* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.regstat, %struct.regstat* %38, i64 %40
  %42 = getelementptr inbounds %struct.regstat, %struct.regstat* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** @ba, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @match_bt(i8* %37, i32 %43, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** @ba, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @internal_branch(i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32*, i32** @ba, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @start, align 4
  %65 = sub nsw i32 %63, %64
  %66 = ashr i32 %65, 1
  %67 = icmp eq i32 %58, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %2
  %69 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %2
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i64*, i64** @ooo, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.regstat, %struct.regstat* %82, i64 %84
  %86 = getelementptr inbounds %struct.regstat, %struct.regstat* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* @SR, align 8
  %89 = call i32 @get_reg(i8* %87, i64 %88)
  store i32 %89, i32* %9, align 4
  br label %94

90:                                               ; preds = %74
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* @SR, align 8
  %93 = call i32 @get_reg(i8* %91, i64 %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* @CCREG, align 8
  %97 = call i32 @get_reg(i8* %95, i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @HOST_CCREG, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i64*, i64** @ooo, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %572

109:                                              ; preds = %94
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @start, align 4
  %118 = load i32, i32* %3, align 4
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 %117, %119
  %121 = load i32, i32* @NODS, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @do_cc(i32 %110, i8* %116, i32* %7, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.regstat*, %struct.regstat** %4, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @address_generation(i32 %125, %struct.regstat* %126, i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.regstat*, %struct.regstat** %4, align 8
  %137 = call i32 @ds_assemble(i32 %135, %struct.regstat* %136)
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %14, align 8
  %144 = load i64*, i64** @rs1, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = shl i64 1, %148
  %150 = load i64*, i64** @rs2, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = shl i64 1, %154
  %156 = or i64 %149, %155
  %157 = xor i64 %156, -1
  %158 = load i64, i64* %14, align 8
  %159 = and i64 %158, %157
  store i64 %159, i64* %14, align 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.regstat, %struct.regstat* %166, i64 %168
  %170 = getelementptr inbounds %struct.regstat, %struct.regstat* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %14, align 8
  %179 = call i32 @wb_invalidate(i8* %165, i8* %171, i32 %177, i64 %178)
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.regstat, %struct.regstat* %186, i64 %188
  %190 = getelementptr inbounds %struct.regstat, %struct.regstat* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* @CCREG, align 8
  %193 = load i64, i64* @SR, align 8
  %194 = load i64, i64* @SR, align 8
  %195 = call i32 @load_regs(i8* %185, i8* %191, i64 %192, i64 %193, i64 %194)
  %196 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.regstat, %struct.regstat* %196, i64 %198
  %200 = getelementptr inbounds %struct.regstat, %struct.regstat* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i64, i64* @CCREG, align 8
  %203 = call i32 @get_reg(i8* %201, i64 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @HOST_CCREG, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %109
  %212 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.regstat, %struct.regstat* %212, i64 %214
  %216 = getelementptr inbounds %struct.regstat, %struct.regstat* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.regstat, %struct.regstat* %218, i64 %220
  %222 = getelementptr inbounds %struct.regstat, %struct.regstat* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32*, i32** @ba, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @store_regs_bt(i8* %217, i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %211, %109
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %341

233:                                              ; preds = %230
  %234 = load i32, i32* %3, align 4
  %235 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %236 = load i32, i32* %3, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.regstat, %struct.regstat* %235, i64 %237
  %239 = getelementptr inbounds %struct.regstat, %struct.regstat* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i32*, i32** @ba, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @TAKEN, align 4
  %247 = call i32 @do_cc(i32 %234, i8* %240, i32* %7, i32 %245, i32 %246, i32 0)
  %248 = load i32, i32* %3, align 4
  %249 = load i32*, i32** @ba, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @start, align 4
  %255 = sub nsw i32 %253, %254
  %256 = ashr i32 %255, 1
  %257 = icmp ne i32 %248, %256
  br i1 %257, label %266, label %258

258:                                              ; preds = %233
  %259 = load i64*, i64** @source, align 8
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %259, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %340

266:                                              ; preds = %258, %233
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %266
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @CLOCK_DIVIDER, align 4
  %272 = load i32*, i32** @ccadj, align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 2
  %278 = load i32, i32* %7, align 4
  %279 = sub nsw i32 %277, %278
  %280 = mul nsw i32 %271, %279
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @emit_addimm(i32 %270, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %269, %266
  %284 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.regstat, %struct.regstat* %284, i64 %286
  %288 = getelementptr inbounds %struct.regstat, %struct.regstat* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %291 = load i32, i32* %3, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.regstat, %struct.regstat* %290, i64 %292
  %294 = getelementptr inbounds %struct.regstat, %struct.regstat* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32*, i32** @ba, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @load_regs_bt(i8* %289, i32 %295, i32 %300)
  %302 = load i32, i32* %13, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %283
  %305 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %308

306:                                              ; preds = %283
  %307 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %304
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %328

311:                                              ; preds = %308
  %312 = load i64*, i64** @is_ds, align 8
  %313 = load i32*, i32** @ba, align 8
  %314 = load i32, i32* %3, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @start, align 4
  %319 = sub nsw i32 %317, %318
  %320 = ashr i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %312, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %311
  %326 = load i32, i32* %3, align 4
  %327 = call i32 @ds_assemble_entry(i32 %326)
  br label %339

328:                                              ; preds = %311, %308
  %329 = load i64, i64* @out, align 8
  %330 = trunc i64 %329 to i32
  %331 = load i32*, i32** @ba, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @add_to_linker(i32 %330, i32 %335, i32 %336)
  %338 = call i32 @emit_jmp(i32 0)
  br label %339

339:                                              ; preds = %328, %325
  br label %340

340:                                              ; preds = %339, %258
  br label %571

341:                                              ; preds = %230
  %342 = load i32, i32* %11, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %370

344:                                              ; preds = %341
  %345 = load i32, i32* @CLOCK_DIVIDER, align 4
  %346 = load i32*, i32** @ccadj, align 8
  %347 = load i32, i32* %3, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 2
  %352 = mul nsw i32 %345, %351
  %353 = load i32, i32* %6, align 4
  %354 = call i32 @emit_addimm_and_set_flags(i32 %352, i32 %353)
  %355 = load i64, i64* @out, align 8
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %15, align 4
  %357 = call i32 @emit_jns(i32 0)
  %358 = load i32, i32* @CC_STUB, align 4
  %359 = load i32, i32* %15, align 4
  %360 = load i64, i64* @out, align 8
  %361 = trunc i64 %360 to i32
  %362 = load i32, i32* %3, align 4
  %363 = load i32, i32* @start, align 4
  %364 = load i32, i32* %3, align 4
  %365 = mul nsw i32 %364, 2
  %366 = add nsw i32 %363, %365
  %367 = add nsw i32 %366, 4
  %368 = load i32, i32* @NOTTAKEN, align 4
  %369 = call i32 @add_stub(i32 %358, i32 %359, i32 %361, i32 0, i32 %362, i32 %367, i32 %368, i32 0)
  br label %570

370:                                              ; preds = %341
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %371 = load i32, i32* %7, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %389

373:                                              ; preds = %370
  %374 = load i32, i32* %12, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %389, label %376

376:                                              ; preds = %373
  %377 = load i32, i32* %6, align 4
  %378 = load i32, i32* @CLOCK_DIVIDER, align 4
  %379 = load i32*, i32** @ccadj, align 8
  %380 = load i32, i32* %3, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %7, align 4
  %385 = sub nsw i32 %383, %384
  %386 = mul nsw i32 %378, %385
  %387 = load i32, i32* %6, align 4
  %388 = call i32 @emit_addimm(i32 %377, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %376, %373, %370
  %390 = load i32, i32* %9, align 4
  %391 = icmp sge i32 %390, 0
  %392 = zext i1 %391 to i32
  %393 = call i32 @assert(i32 %392)
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @emit_testimm(i32 %394, i32 1)
  %396 = load i32*, i32** @opcode2, align 8
  %397 = load i32, i32* %3, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 13
  br i1 %401, label %402, label %421

402:                                              ; preds = %389
  %403 = load i32, i32* %12, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = load i64, i64* @out, align 8
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %17, align 4
  %408 = call i32 @emit_jeq(i32 1)
  br label %420

409:                                              ; preds = %402
  %410 = load i64, i64* @out, align 8
  %411 = trunc i64 %410 to i32
  %412 = load i32*, i32** @ba, align 8
  %413 = load i32, i32* %3, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %13, align 4
  %418 = call i32 @add_to_linker(i32 %411, i32 %416, i32 %417)
  %419 = call i32 @emit_jne(i32 0)
  br label %420

420:                                              ; preds = %409, %405
  br label %421

421:                                              ; preds = %420, %389
  %422 = load i32*, i32** @opcode2, align 8
  %423 = load i32, i32* %3, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 15
  br i1 %427, label %428, label %447

428:                                              ; preds = %421
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  %432 = load i64, i64* @out, align 8
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %17, align 4
  %434 = call i32 @emit_jne(i32 1)
  br label %446

435:                                              ; preds = %428
  %436 = load i64, i64* @out, align 8
  %437 = trunc i64 %436 to i32
  %438 = load i32*, i32** @ba, align 8
  %439 = load i32, i32* %3, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %13, align 4
  %444 = call i32 @add_to_linker(i32 %437, i32 %442, i32 %443)
  %445 = call i32 @emit_jeq(i32 0)
  br label %446

446:                                              ; preds = %435, %431
  br label %447

447:                                              ; preds = %446, %421
  %448 = load i32, i32* %12, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %548

450:                                              ; preds = %447
  %451 = load i32, i32* %16, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %458

453:                                              ; preds = %450
  %454 = load i32, i32* %16, align 4
  %455 = load i64, i64* @out, align 8
  %456 = trunc i64 %455 to i32
  %457 = call i32 @set_jump_target(i32 %454, i32 %456)
  br label %458

458:                                              ; preds = %453, %450
  %459 = load i32, i32* %7, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %458
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* @CLOCK_DIVIDER, align 4
  %464 = sub nsw i32 0, %463
  %465 = load i32, i32* %7, align 4
  %466 = mul nsw i32 %464, %465
  %467 = load i32, i32* %6, align 4
  %468 = call i32 @emit_addimm(i32 %462, i32 %466, i32 %467)
  br label %469

469:                                              ; preds = %461, %458
  %470 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %471 = load i32, i32* %3, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.regstat, %struct.regstat* %470, i64 %472
  %474 = getelementptr inbounds %struct.regstat, %struct.regstat* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %477 = load i32, i32* %3, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.regstat, %struct.regstat* %476, i64 %478
  %480 = getelementptr inbounds %struct.regstat, %struct.regstat* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = load i32*, i32** @ba, align 8
  %483 = load i32, i32* %3, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @store_regs_bt(i8* %475, i32 %481, i32 %486)
  %488 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %489 = load i32, i32* %3, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.regstat, %struct.regstat* %488, i64 %490
  %492 = getelementptr inbounds %struct.regstat, %struct.regstat* %491, i32 0, i32 0
  %493 = load i8*, i8** %492, align 8
  %494 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %495 = load i32, i32* %3, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.regstat, %struct.regstat* %494, i64 %496
  %498 = getelementptr inbounds %struct.regstat, %struct.regstat* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = load i32*, i32** @ba, align 8
  %501 = load i32, i32* %3, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @load_regs_bt(i8* %493, i32 %499, i32 %504)
  %506 = load i32, i32* %13, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %469
  %509 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %512

510:                                              ; preds = %469
  %511 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %512

512:                                              ; preds = %510, %508
  %513 = load i32, i32* %13, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %532

515:                                              ; preds = %512
  %516 = load i64*, i64** @is_ds, align 8
  %517 = load i32*, i32** @ba, align 8
  %518 = load i32, i32* %3, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @start, align 4
  %523 = sub nsw i32 %521, %522
  %524 = ashr i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i64, i64* %516, i64 %525
  %527 = load i64, i64* %526, align 8
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %515
  %530 = load i32, i32* %3, align 4
  %531 = call i32 @ds_assemble_entry(i32 %530)
  br label %543

532:                                              ; preds = %515, %512
  %533 = load i64, i64* @out, align 8
  %534 = trunc i64 %533 to i32
  %535 = load i32*, i32** @ba, align 8
  %536 = load i32, i32* %3, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %13, align 4
  %541 = call i32 @add_to_linker(i32 %534, i32 %539, i32 %540)
  %542 = call i32 @emit_jmp(i32 0)
  br label %543

543:                                              ; preds = %532, %529
  %544 = load i32, i32* %17, align 4
  %545 = load i64, i64* @out, align 8
  %546 = trunc i64 %545 to i32
  %547 = call i32 @set_jump_target(i32 %544, i32 %546)
  br label %548

548:                                              ; preds = %543, %447
  %549 = load i32, i32* %18, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %548
  %552 = load i32, i32* %18, align 4
  %553 = load i64, i64* @out, align 8
  %554 = trunc i64 %553 to i32
  %555 = call i32 @set_jump_target(i32 %552, i32 %554)
  br label %556

556:                                              ; preds = %551, %548
  %557 = load i32, i32* %7, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %569

559:                                              ; preds = %556
  %560 = load i32, i32* %12, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %569, label %562

562:                                              ; preds = %559
  %563 = load i32, i32* %6, align 4
  %564 = load i32, i32* @CLOCK_DIVIDER, align 4
  %565 = load i32, i32* %7, align 4
  %566 = mul nsw i32 %564, %565
  %567 = load i32, i32* %6, align 4
  %568 = call i32 @emit_addimm(i32 %563, i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %562, %559, %556
  br label %570

570:                                              ; preds = %569, %344
  br label %571

571:                                              ; preds = %570, %340
  br label %1039

572:                                              ; preds = %94
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %573 = load i32, i32* %3, align 4
  %574 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %575 = load i32, i32* %3, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %577, i32 0, i32 0
  %579 = load i8*, i8** %578, align 8
  %580 = load i32, i32* @start, align 4
  %581 = load i32, i32* %3, align 4
  %582 = mul nsw i32 %581, 2
  %583 = add nsw i32 %580, %582
  %584 = load i32, i32* @NODS, align 4
  %585 = call i32 @do_cc(i32 %573, i8* %579, i32* %7, i32 %583, i32 %584, i32 1)
  %586 = load i32, i32* %10, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %620, label %588

588:                                              ; preds = %572
  %589 = load i32, i32* %11, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %620, label %591

591:                                              ; preds = %588
  %592 = load i32, i32* %9, align 4
  %593 = icmp sge i32 %592, 0
  %594 = zext i1 %593 to i32
  %595 = call i32 @assert(i32 %594)
  %596 = load i32, i32* %9, align 4
  %597 = call i32 @emit_testimm(i32 %596, i32 1)
  %598 = load i32*, i32** @opcode2, align 8
  %599 = load i32, i32* %3, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %598, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = icmp eq i32 %602, 13
  br i1 %603, label %604, label %608

604:                                              ; preds = %591
  %605 = load i64, i64* @out, align 8
  %606 = trunc i64 %605 to i32
  store i32 %606, i32* %21, align 4
  %607 = call i32 @emit_jeq(i32 2)
  br label %608

608:                                              ; preds = %604, %591
  %609 = load i32*, i32** @opcode2, align 8
  %610 = load i32, i32* %3, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %609, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = icmp eq i32 %613, 15
  br i1 %614, label %615, label %619

615:                                              ; preds = %608
  %616 = load i64, i64* @out, align 8
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %21, align 4
  %618 = call i32 @emit_jne(i32 2)
  br label %619

619:                                              ; preds = %615, %608
  br label %620

620:                                              ; preds = %619, %588, %572
  %621 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %622 = load i32, i32* %3, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %624, i32 0, i32 1
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %19, align 8
  %627 = load i64*, i64** @rs1, align 8
  %628 = load i32, i32* %3, align 4
  %629 = add nsw i32 %628, 1
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i64, i64* %627, i64 %630
  %632 = load i64, i64* %631, align 8
  %633 = shl i64 1, %632
  %634 = load i64*, i64** @rs2, align 8
  %635 = load i32, i32* %3, align 4
  %636 = add nsw i32 %635, 1
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i64, i64* %634, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = shl i64 1, %639
  %641 = or i64 %633, %640
  %642 = load i64*, i64** @rs3, align 8
  %643 = load i32, i32* %3, align 4
  %644 = add nsw i32 %643, 1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i64, i64* %642, i64 %645
  %647 = load i64, i64* %646, align 8
  %648 = shl i64 1, %647
  %649 = or i64 %641, %648
  %650 = xor i64 %649, -1
  %651 = load i64, i64* %19, align 8
  %652 = and i64 %651, %650
  store i64 %652, i64* %19, align 8
  %653 = load i32, i32* %11, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %896, label %655

655:                                              ; preds = %620
  %656 = load i32, i32* %20, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %663

658:                                              ; preds = %655
  %659 = load i32, i32* %20, align 4
  %660 = load i64, i64* @out, align 8
  %661 = trunc i64 %660 to i32
  %662 = call i32 @set_jump_target(i32 %659, i32 %661)
  br label %663

663:                                              ; preds = %658, %655
  %664 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %665 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %665, i64 %667
  %669 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %668, i32 0, i32 0
  %670 = load i8*, i8** %669, align 8
  %671 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %672 = load i32, i32* %3, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.regstat, %struct.regstat* %671, i64 %673
  %675 = getelementptr inbounds %struct.regstat, %struct.regstat* %674, i32 0, i32 0
  %676 = load i8*, i8** %675, align 8
  %677 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %678 = load i32, i32* %3, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %677, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 8
  %683 = load i64, i64* %19, align 8
  %684 = call i32 @wb_invalidate(i8* %670, i8* %676, i32 %682, i64 %683)
  %685 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %686 = load i32, i32* %3, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %685, i64 %687
  %689 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %688, i32 0, i32 0
  %690 = load i8*, i8** %689, align 8
  %691 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %692 = load i32, i32* %3, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.regstat, %struct.regstat* %691, i64 %693
  %695 = getelementptr inbounds %struct.regstat, %struct.regstat* %694, i32 0, i32 0
  %696 = load i8*, i8** %695, align 8
  %697 = load i64*, i64** @rs1, align 8
  %698 = load i32, i32* %3, align 4
  %699 = add nsw i32 %698, 1
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i64, i64* %697, i64 %700
  %702 = load i64, i64* %701, align 8
  %703 = load i64*, i64** @rs2, align 8
  %704 = load i32, i32* %3, align 4
  %705 = add nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i64, i64* %703, i64 %706
  %708 = load i64, i64* %707, align 8
  %709 = load i64*, i64** @rs3, align 8
  %710 = load i32, i32* %3, align 4
  %711 = add nsw i32 %710, 1
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i64, i64* %709, i64 %712
  %714 = load i64, i64* %713, align 8
  %715 = call i32 @load_regs(i8* %690, i8* %696, i64 %702, i64 %708, i64 %714)
  %716 = load i32, i32* %3, align 4
  %717 = add nsw i32 %716, 1
  %718 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %719 = load i32, i32* %3, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.regstat, %struct.regstat* %718, i64 %720
  %722 = call i32 @address_generation(i32 %717, %struct.regstat* %721, i32 0)
  %723 = load i64*, i64** @itype, align 8
  %724 = load i32, i32* %3, align 4
  %725 = add nsw i32 %724, 1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i64, i64* %723, i64 %726
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @COMPLEX, align 8
  %730 = icmp eq i64 %728, %729
  br i1 %730, label %731, label %766

731:                                              ; preds = %663
  %732 = load i32*, i32** @opcode, align 8
  %733 = load i32, i32* %3, align 4
  %734 = add nsw i32 %733, 1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %732, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = or i32 %737, 4
  %739 = icmp eq i32 %738, 4
  br i1 %739, label %740, label %765

740:                                              ; preds = %731
  %741 = load i32*, i32** @opcode2, align 8
  %742 = load i32, i32* %3, align 4
  %743 = add nsw i32 %742, 1
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, i32* %741, i64 %744
  %746 = load i32, i32* %745, align 4
  %747 = icmp eq i32 %746, 15
  br i1 %747, label %748, label %765

748:                                              ; preds = %740
  %749 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %750 = load i32, i32* %3, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %752, i32 0, i32 0
  %754 = load i8*, i8** %753, align 8
  %755 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %756 = load i32, i32* %3, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.regstat, %struct.regstat* %755, i64 %757
  %759 = getelementptr inbounds %struct.regstat, %struct.regstat* %758, i32 0, i32 0
  %760 = load i8*, i8** %759, align 8
  %761 = load i64, i64* @MACL, align 8
  %762 = load i64, i64* @MACH, align 8
  %763 = load i64, i64* @MACH, align 8
  %764 = call i32 @load_regs(i8* %754, i8* %760, i64 %761, i64 %762, i64 %763)
  br label %765

765:                                              ; preds = %748, %740, %731
  br label %766

766:                                              ; preds = %765, %663
  %767 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %768 = load i32, i32* %3, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %767, i64 %769
  %771 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %770, i32 0, i32 0
  %772 = load i8*, i8** %771, align 8
  %773 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %774 = load i32, i32* %3, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.regstat, %struct.regstat* %773, i64 %775
  %777 = getelementptr inbounds %struct.regstat, %struct.regstat* %776, i32 0, i32 0
  %778 = load i8*, i8** %777, align 8
  %779 = load i64, i64* @CCREG, align 8
  %780 = load i64, i64* @CCREG, align 8
  %781 = load i64, i64* @CCREG, align 8
  %782 = call i32 @load_regs(i8* %772, i8* %778, i64 %779, i64 %780, i64 %781)
  %783 = load i32, i32* %3, align 4
  %784 = add nsw i32 %783, 1
  %785 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %786 = load i32, i32* %3, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds %struct.regstat, %struct.regstat* %785, i64 %787
  %789 = call i32 @ds_assemble(i32 %784, %struct.regstat* %788)
  %790 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %791 = load i32, i32* %3, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.regstat, %struct.regstat* %790, i64 %792
  %794 = getelementptr inbounds %struct.regstat, %struct.regstat* %793, i32 0, i32 0
  %795 = load i8*, i8** %794, align 8
  %796 = load i64, i64* @CCREG, align 8
  %797 = call i32 @get_reg(i8* %795, i64 %796)
  store i32 %797, i32* %6, align 4
  %798 = load i32, i32* %6, align 4
  %799 = icmp eq i32 %798, -1
  br i1 %799, label %800, label %804

800:                                              ; preds = %766
  %801 = load i64, i64* @CCREG, align 8
  %802 = load i32, i32* @HOST_CCREG, align 4
  store i32 %802, i32* %6, align 4
  %803 = call i32 @emit_loadreg(i64 %801, i32 %802)
  br label %804

804:                                              ; preds = %800, %766
  %805 = load i32, i32* %6, align 4
  %806 = load i32, i32* @HOST_CCREG, align 4
  %807 = icmp eq i32 %805, %806
  %808 = zext i1 %807 to i32
  %809 = call i32 @assert(i32 %808)
  %810 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %811 = load i32, i32* %3, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds %struct.regstat, %struct.regstat* %810, i64 %812
  %814 = getelementptr inbounds %struct.regstat, %struct.regstat* %813, i32 0, i32 0
  %815 = load i8*, i8** %814, align 8
  %816 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %817 = load i32, i32* %3, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.regstat, %struct.regstat* %816, i64 %818
  %820 = getelementptr inbounds %struct.regstat, %struct.regstat* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 8
  %822 = load i32*, i32** @ba, align 8
  %823 = load i32, i32* %3, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i32, i32* %822, i64 %824
  %826 = load i32, i32* %825, align 4
  %827 = call i32 @store_regs_bt(i8* %815, i32 %821, i32 %826)
  %828 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %829 = load i32, i32* %7, align 4
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %839

831:                                              ; preds = %804
  %832 = load i32, i32* %6, align 4
  %833 = load i32, i32* @CLOCK_DIVIDER, align 4
  %834 = sub nsw i32 0, %833
  %835 = load i32, i32* %7, align 4
  %836 = mul nsw i32 %834, %835
  %837 = load i32, i32* %6, align 4
  %838 = call i32 @emit_addimm(i32 %832, i32 %836, i32 %837)
  br label %839

839:                                              ; preds = %831, %804
  %840 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %841 = load i32, i32* %3, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.regstat, %struct.regstat* %840, i64 %842
  %844 = getelementptr inbounds %struct.regstat, %struct.regstat* %843, i32 0, i32 0
  %845 = load i8*, i8** %844, align 8
  %846 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %847 = load i32, i32* %3, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds %struct.regstat, %struct.regstat* %846, i64 %848
  %850 = getelementptr inbounds %struct.regstat, %struct.regstat* %849, i32 0, i32 1
  %851 = load i32, i32* %850, align 8
  %852 = load i32*, i32** @ba, align 8
  %853 = load i32, i32* %3, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32* %852, i64 %854
  %856 = load i32, i32* %855, align 4
  %857 = call i32 @load_regs_bt(i8* %845, i32 %851, i32 %856)
  %858 = load i32, i32* %13, align 4
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %862

860:                                              ; preds = %839
  %861 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %864

862:                                              ; preds = %839
  %863 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %864

864:                                              ; preds = %862, %860
  %865 = load i32, i32* %13, align 4
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %884

867:                                              ; preds = %864
  %868 = load i64*, i64** @is_ds, align 8
  %869 = load i32*, i32** @ba, align 8
  %870 = load i32, i32* %3, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i32, i32* %869, i64 %871
  %873 = load i32, i32* %872, align 4
  %874 = load i32, i32* @start, align 4
  %875 = sub nsw i32 %873, %874
  %876 = ashr i32 %875, 1
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i64, i64* %868, i64 %877
  %879 = load i64, i64* %878, align 8
  %880 = icmp ne i64 %879, 0
  br i1 %880, label %881, label %884

881:                                              ; preds = %867
  %882 = load i32, i32* %3, align 4
  %883 = call i32 @ds_assemble_entry(i32 %882)
  br label %895

884:                                              ; preds = %867, %864
  %885 = load i64, i64* @out, align 8
  %886 = trunc i64 %885 to i32
  %887 = load i32*, i32** @ba, align 8
  %888 = load i32, i32* %3, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i32, i32* %887, i64 %889
  %891 = load i32, i32* %890, align 4
  %892 = load i32, i32* %13, align 4
  %893 = call i32 @add_to_linker(i32 %886, i32 %891, i32 %892)
  %894 = call i32 @emit_jmp(i32 0)
  br label %895

895:                                              ; preds = %884, %881
  br label %896

896:                                              ; preds = %895, %620
  %897 = load i32, i32* %10, align 4
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %1038, label %899

899:                                              ; preds = %896
  %900 = load i32, i32* %22, align 4
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %907

902:                                              ; preds = %899
  %903 = load i32, i32* %22, align 4
  %904 = load i64, i64* @out, align 8
  %905 = trunc i64 %904 to i32
  %906 = call i32 @set_jump_target(i32 %903, i32 %905)
  br label %907

907:                                              ; preds = %902, %899
  %908 = load i32, i32* %21, align 4
  %909 = load i64, i64* @out, align 8
  %910 = trunc i64 %909 to i32
  %911 = call i32 @set_jump_target(i32 %908, i32 %910)
  %912 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %913 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %914 = load i32, i32* %3, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %913, i64 %915
  %917 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %916, i32 0, i32 0
  %918 = load i8*, i8** %917, align 8
  %919 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %920 = load i32, i32* %3, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds %struct.regstat, %struct.regstat* %919, i64 %921
  %923 = getelementptr inbounds %struct.regstat, %struct.regstat* %922, i32 0, i32 0
  %924 = load i8*, i8** %923, align 8
  %925 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %926 = load i32, i32* %3, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %925, i64 %927
  %929 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %928, i32 0, i32 2
  %930 = load i32, i32* %929, align 8
  %931 = load i64, i64* %19, align 8
  %932 = call i32 @wb_invalidate(i8* %918, i8* %924, i32 %930, i64 %931)
  %933 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %934 = load i32, i32* %3, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %933, i64 %935
  %937 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %936, i32 0, i32 0
  %938 = load i8*, i8** %937, align 8
  %939 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %940 = load i32, i32* %3, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds %struct.regstat, %struct.regstat* %939, i64 %941
  %943 = getelementptr inbounds %struct.regstat, %struct.regstat* %942, i32 0, i32 0
  %944 = load i8*, i8** %943, align 8
  %945 = load i64*, i64** @rs1, align 8
  %946 = load i32, i32* %3, align 4
  %947 = add nsw i32 %946, 1
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds i64, i64* %945, i64 %948
  %950 = load i64, i64* %949, align 8
  %951 = load i64*, i64** @rs2, align 8
  %952 = load i32, i32* %3, align 4
  %953 = add nsw i32 %952, 1
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i64, i64* %951, i64 %954
  %956 = load i64, i64* %955, align 8
  %957 = load i64*, i64** @rs3, align 8
  %958 = load i32, i32* %3, align 4
  %959 = add nsw i32 %958, 1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i64, i64* %957, i64 %960
  %962 = load i64, i64* %961, align 8
  %963 = call i32 @load_regs(i8* %938, i8* %944, i64 %950, i64 %956, i64 %962)
  %964 = load i32, i32* %3, align 4
  %965 = add nsw i32 %964, 1
  %966 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %967 = load i32, i32* %3, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds %struct.regstat, %struct.regstat* %966, i64 %968
  %970 = call i32 @address_generation(i32 %965, %struct.regstat* %969, i32 0)
  %971 = load i64*, i64** @itype, align 8
  %972 = load i32, i32* %3, align 4
  %973 = add nsw i32 %972, 1
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i64, i64* %971, i64 %974
  %976 = load i64, i64* %975, align 8
  %977 = load i64, i64* @COMPLEX, align 8
  %978 = icmp eq i64 %976, %977
  br i1 %978, label %979, label %1014

979:                                              ; preds = %907
  %980 = load i32*, i32** @opcode, align 8
  %981 = load i32, i32* %3, align 4
  %982 = add nsw i32 %981, 1
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds i32, i32* %980, i64 %983
  %985 = load i32, i32* %984, align 4
  %986 = or i32 %985, 4
  %987 = icmp eq i32 %986, 4
  br i1 %987, label %988, label %1013

988:                                              ; preds = %979
  %989 = load i32*, i32** @opcode2, align 8
  %990 = load i32, i32* %3, align 4
  %991 = add nsw i32 %990, 1
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i32, i32* %989, i64 %992
  %994 = load i32, i32* %993, align 4
  %995 = icmp eq i32 %994, 15
  br i1 %995, label %996, label %1013

996:                                              ; preds = %988
  %997 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %998 = load i32, i32* %3, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %997, i64 %999
  %1001 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1000, i32 0, i32 0
  %1002 = load i8*, i8** %1001, align 8
  %1003 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %1004 = load i32, i32* %3, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.regstat, %struct.regstat* %1003, i64 %1005
  %1007 = getelementptr inbounds %struct.regstat, %struct.regstat* %1006, i32 0, i32 0
  %1008 = load i8*, i8** %1007, align 8
  %1009 = load i64, i64* @MACL, align 8
  %1010 = load i64, i64* @MACH, align 8
  %1011 = load i64, i64* @MACH, align 8
  %1012 = call i32 @load_regs(i8* %1002, i8* %1008, i64 %1009, i64 %1010, i64 %1011)
  br label %1013

1013:                                             ; preds = %996, %988, %979
  br label %1014

1014:                                             ; preds = %1013, %907
  %1015 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %1016 = load i32, i32* %3, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1015, i64 %1017
  %1019 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1018, i32 0, i32 0
  %1020 = load i8*, i8** %1019, align 8
  %1021 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %1022 = load i32, i32* %3, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.regstat, %struct.regstat* %1021, i64 %1023
  %1025 = getelementptr inbounds %struct.regstat, %struct.regstat* %1024, i32 0, i32 0
  %1026 = load i8*, i8** %1025, align 8
  %1027 = load i64, i64* @CCREG, align 8
  %1028 = load i64, i64* @CCREG, align 8
  %1029 = load i64, i64* @CCREG, align 8
  %1030 = call i32 @load_regs(i8* %1020, i8* %1026, i64 %1027, i64 %1028, i64 %1029)
  %1031 = load i32, i32* %3, align 4
  %1032 = add nsw i32 %1031, 1
  %1033 = load %struct.regstat*, %struct.regstat** @branch_regs, align 8
  %1034 = load i32, i32* %3, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.regstat, %struct.regstat* %1033, i64 %1035
  %1037 = call i32 @ds_assemble(i32 %1032, %struct.regstat* %1036)
  br label %1038

1038:                                             ; preds = %1014, %896
  br label %1039

1039:                                             ; preds = %1038, %571
  ret void
}

declare dso_local i32 @internal_branch(i32) #1

declare dso_local i32 @match_bt(i8*, i32, i32) #1

declare dso_local i32 @assem_debug(i8*, ...) #1

declare dso_local i32 @get_reg(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_cc(i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @address_generation(i32, %struct.regstat*, i32) #1

declare dso_local i32 @ds_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @wb_invalidate(i8*, i8*, i32, i64) #1

declare dso_local i32 @load_regs(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @store_regs_bt(i8*, i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @load_regs_bt(i8*, i32, i32) #1

declare dso_local i32 @ds_assemble_entry(i32) #1

declare dso_local i32 @add_to_linker(i32, i32, i32) #1

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @emit_addimm_and_set_flags(i32, i32) #1

declare dso_local i32 @emit_jns(i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_testimm(i32, i32) #1

declare dso_local i32 @emit_jeq(i32) #1

declare dso_local i32 @emit_jne(i32) #1

declare dso_local i32 @set_jump_target(i32, i32) #1

declare dso_local i32 @emit_loadreg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
