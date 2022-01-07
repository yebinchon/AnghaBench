; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ujump_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ujump_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64*, i32 }
%struct.regstat = type { i8* }

@ba = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"idle loop\0A\00", align 1
@regs = common dso_local global %struct.TYPE_3__* null, align 8
@rt1 = common dso_local global i64* null, align 8
@PR = common dso_local global i64 0, align 8
@rt2 = common dso_local global i64* null, align 8
@branch_regs = common dso_local global %struct.TYPE_4__* null, align 8
@CCREG = common dso_local global i32 0, align 4
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@rs3 = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"branch(%d): eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\0A\00", align 1
@HOST_CCREG = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@ccadj = common dso_local global i32* null, align 8
@cycles = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"branch: internal\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"branch: external\0A\00", align 1
@is_ds = common dso_local global i64* null, align 8
@out = common dso_local global i64 0, align 8
@EXCLUDE_REG = common dso_local global i32 0, align 4
@HOST_REGS = common dso_local global i32 0, align 4
@HOST_TEMPREG = common dso_local global i32 0, align 4
@PTEMP = common dso_local global i8 0, align 1
@hash_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ujump_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %13 = load %struct.regstat*, %struct.regstat** %4, align 8
  %14 = getelementptr inbounds %struct.regstat, %struct.regstat* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** @ba, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @start, align 4
  %23 = sub nsw i32 %21, %22
  %24 = ashr i32 %23, 1
  %25 = icmp eq i32 %16, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.regstat*, %struct.regstat** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @address_generation(i32 %30, %struct.regstat* %31, i32 %37)
  %39 = load i64*, i64** @rt1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %28
  %47 = load i64*, i64** @rt1, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load i64*, i64** @rt2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %55, %46
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @PR, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @get_reg(i64* %70, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @start, align 4
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %64
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @emit_movimm(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %64
  br label %90

90:                                               ; preds = %89, %55
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.regstat*, %struct.regstat** %4, align 8
  %95 = call i32 @ds_assemble(i32 %93, %struct.regstat* %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %5, align 8
  %102 = load i64*, i64** @rt1, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = shl i64 1, %106
  %108 = load i64, i64* %5, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %5, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @wb_invalidate(i64* %115, i64* %121, i32 %127, i64 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @regs, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* @CCREG, align 4
  %143 = load i32, i32* @CCREG, align 4
  %144 = load i32, i32* @CCREG, align 4
  %145 = call i32 @load_regs(i64* %135, i64* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i64*, i64** @rt1, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %281

153:                                              ; preds = %91
  %154 = load i64*, i64** @rs1, align 8
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PR, align 8
  %161 = icmp ne i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i64*, i64** @rs2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PR, align 8
  %171 = icmp ne i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i64*, i64** @rs3, align 8
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @PR, align 8
  %181 = icmp ne i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @PR, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @get_reg(i64* %189, i32 %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 3
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 5
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 6
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 7
  %249 = load i64, i64* %248, align 8
  %250 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %193, i64 %201, i64 %209, i64 %217, i64 %225, i64 %233, i64 %241, i64 %249)
  %251 = load i32, i32* @start, align 4
  %252 = load i32, i32* %3, align 4
  %253 = mul nsw i32 %252, 2
  %254 = add nsw i32 %251, %253
  %255 = add nsw i32 %254, 4
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %153
  %259 = load i64*, i64** @rt1, align 8
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %259, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @PR, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %258
  %268 = load i64*, i64** @rt2, align 8
  %269 = load i32, i32* %3, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %268, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @PR, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %267
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @emit_movimm(i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %276, %267, %258, %153
  br label %281

281:                                              ; preds = %280, %91
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* @CCREG, align 4
  %289 = call i32 @get_reg(i64* %287, i32 %288)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* @HOST_CCREG, align 4
  %292 = icmp eq i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @assert(i32 %293)
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** @ba, align 8
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @store_regs_bt(i64* %300, i32 %306, i32 %311)
  %313 = load i32, i32* %3, align 4
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %315 = load i32, i32* %3, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i64*, i64** %318, align 8
  %320 = load i32*, i32** @ba, align 8
  %321 = load i32, i32* %3, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @TAKEN, align 4
  %326 = call i32 @do_cc(i32 %313, i64* %319, i32* %7, i32 %324, i32 %325, i32 0)
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %355

329:                                              ; preds = %281
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* @CLOCK_DIVIDER, align 4
  %332 = load i32*, i32** @ccadj, align 8
  %333 = load i32, i32* %3, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** @cycles, align 8
  %338 = load i32, i32* %3, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %336, %341
  %343 = load i32*, i32** @cycles, align 8
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %342, %348
  %350 = load i32, i32* %7, align 4
  %351 = sub nsw i32 %349, %350
  %352 = mul nsw i32 %331, %351
  %353 = load i32, i32* %6, align 4
  %354 = call i32 @emit_addimm(i32 %330, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %329, %281
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %357 = load i32, i32* %3, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = load i64*, i64** %360, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** @branch_regs, align 8
  %363 = load i32, i32* %3, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load i32*, i32** @ba, align 8
  %369 = load i32, i32* %3, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @load_regs_bt(i64* %361, i32 %367, i32 %372)
  %374 = load i32*, i32** @ba, align 8
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = call i64 @internal_branch(i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %355
  %382 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %385

383:                                              ; preds = %355
  %384 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %385

385:                                              ; preds = %383, %381
  %386 = load i32*, i32** @ba, align 8
  %387 = load i32, i32* %3, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = call i64 @internal_branch(i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %410

393:                                              ; preds = %385
  %394 = load i64*, i64** @is_ds, align 8
  %395 = load i32*, i32** @ba, align 8
  %396 = load i32, i32* %3, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @start, align 4
  %401 = sub nsw i32 %399, %400
  %402 = ashr i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %394, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %393
  %408 = load i32, i32* %3, align 4
  %409 = call i32 @ds_assemble_entry(i32 %408)
  br label %426

410:                                              ; preds = %393, %385
  %411 = load i64, i64* @out, align 8
  %412 = trunc i64 %411 to i32
  %413 = load i32*, i32** @ba, align 8
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** @ba, align 8
  %419 = load i32, i32* %3, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = call i64 @internal_branch(i32 %422)
  %424 = call i32 @add_to_linker(i32 %412, i32 %417, i64 %423)
  %425 = call i32 @emit_jmp(i32 0)
  br label %426

426:                                              ; preds = %410, %407
  ret void
}

declare dso_local i32 @assem_debug(i8*, ...) #1

declare dso_local i32 @address_generation(i32, %struct.regstat*, i32) #1

declare dso_local i32 @get_reg(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @ds_assemble(i32, %struct.regstat*) #1

declare dso_local i32 @wb_invalidate(i64*, i64*, i32, i64) #1

declare dso_local i32 @load_regs(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @store_regs_bt(i64*, i32, i32) #1

declare dso_local i32 @do_cc(i32, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @load_regs_bt(i64*, i32, i32) #1

declare dso_local i64 @internal_branch(i32) #1

declare dso_local i32 @ds_assemble_entry(i32) #1

declare dso_local i32 @add_to_linker(i32, i32, i64) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
