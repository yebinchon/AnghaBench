; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ds_assemble_entry.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ds_assemble_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, i64*, i32, i32 }

@ba = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@instr_addr = common dso_local global i64* null, align 8
@out = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Assemble delay slot at %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<->\0A\00", align 1
@regs = common dso_local global %struct.TYPE_15__* null, align 8
@HOST_CCREG = common dso_local global i64 0, align 8
@CCREG = common dso_local global i64 0, align 8
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@rs3 = common dso_local global i32* null, align 8
@itype = common dso_local global i32* null, align 8
@MMREG = common dso_local global i32 0, align 4
@is_delayslot = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Jump in the delay slot.  This is probably a bug.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"branch: internal\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"branch: external\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ds_assemble_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @ba, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @start, align 4
  %10 = sub nsw i32 %8, %9
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i64*, i64** @instr_addr, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @out, align 8
  %20 = load i64*, i64** @instr_addr, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 %19, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i32*, i32** @ba, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @HOST_CCREG, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CCREG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %24
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @HOST_CCREG, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CCREG, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %43
  %56 = load i64, i64* @CCREG, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wb_register(i64 %56, i64* %62, i32 %68)
  br label %70

70:                                               ; preds = %55, %43, %24
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32*, i32** @rs1, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @rs2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @rs3, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @load_regs(i64* %76, i64* %82, i32 %87, i32 %92, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i64 %102
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @address_generation(i32 %99, %struct.TYPE_15__* %103, i64* %109)
  %111 = load i32*, i32** @itype, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 139
  br i1 %116, label %124, label %117

117:                                              ; preds = %70
  %118 = load i32*, i32** @itype, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 131
  br i1 %123, label %124, label %141

124:                                              ; preds = %117, %70
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* @MMREG, align 4
  %138 = load i32, i32* @MMREG, align 4
  %139 = load i32, i32* @MMREG, align 4
  %140 = call i32 @load_regs(i64* %130, i64* %136, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %124, %117
  store i64 0, i64* @is_delayslot, align 8
  %142 = load i32*, i32** @itype, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %233 [
    i32 145, label %147
    i32 140, label %154
    i32 133, label %161
    i32 139, label %168
    i32 131, label %175
    i32 134, label %182
    i32 136, label %189
    i32 137, label %196
    i32 138, label %203
    i32 142, label %210
    i32 141, label %217
    i32 143, label %224
    i32 129, label %231
    i32 130, label %231
    i32 128, label %231
    i32 135, label %231
    i32 144, label %231
    i32 132, label %231
  ]

147:                                              ; preds = %141
  %148 = load i32, i32* %3, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 %151
  %153 = call i32 @alu_assemble(i32 %148, %struct.TYPE_15__* %152)
  br label %233

154:                                              ; preds = %141
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = call i32 @imm8_assemble(i32 %155, %struct.TYPE_15__* %159)
  br label %233

161:                                              ; preds = %141
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %165
  %167 = call i32 @shiftimm_assemble(i32 %162, %struct.TYPE_15__* %166)
  br label %233

168:                                              ; preds = %141
  %169 = load i32, i32* %3, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  %174 = call i32 @load_assemble(i32 %169, %struct.TYPE_15__* %173)
  br label %233

175:                                              ; preds = %141
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i64 %179
  %181 = call i32 @store_assemble(i32 %176, %struct.TYPE_15__* %180)
  br label %233

182:                                              ; preds = %141
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %186
  %188 = call i32 @rmw_assemble(i32 %183, %struct.TYPE_15__* %187)
  br label %233

189:                                              ; preds = %141
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i64 %193
  %195 = call i32 @pcrel_assemble(i32 %190, %struct.TYPE_15__* %194)
  br label %233

196:                                              ; preds = %141
  %197 = load i32, i32* %3, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 %200
  %202 = call i32 @multdiv_assemble(i32 %197, %struct.TYPE_15__* %201)
  br label %233

203:                                              ; preds = %141
  %204 = load i32, i32* %3, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 %207
  %209 = call i32 @mov_assemble(i32 %204, %struct.TYPE_15__* %208)
  br label %233

210:                                              ; preds = %141
  %211 = load i32, i32* %2, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i64 %214
  %216 = call i32 @ext_assemble(i32 %211, %struct.TYPE_15__* %215)
  br label %233

217:                                              ; preds = %141
  %218 = load i32, i32* %2, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i64 %221
  %223 = call i32 @flags_assemble(i32 %218, %struct.TYPE_15__* %222)
  br label %233

224:                                              ; preds = %141
  %225 = load i32, i32* %2, align 4
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i64 %228
  %230 = call i32 @complex_assemble(i32 %225, %struct.TYPE_15__* %229)
  br label %233

231:                                              ; preds = %141, %141, %141, %141, %141, %141
  %232 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %141, %224, %217, %210, %203, %196, %189, %182, %175, %168, %161, %154, %147
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %241 = load i32, i32* %3, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** @ba, align 8
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 2
  %252 = call i32 @store_regs_bt(i64* %239, i32 %245, i32 %251)
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load i64*, i64** %257, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** @regs, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32*, i32** @ba, align 8
  %266 = load i32, i32* %2, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 2
  %271 = call i32 @load_regs_bt(i64* %258, i32 %264, i32 %270)
  %272 = load i32*, i32** @ba, align 8
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 2
  %278 = call i64 @internal_branch(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %233
  %281 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %284

282:                                              ; preds = %233
  %283 = call i32 (i8*, ...) @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %280
  %285 = load i32*, i32** @ba, align 8
  %286 = load i32, i32* %2, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 2
  %291 = call i64 @internal_branch(i32 %290)
  %292 = call i32 @assert(i64 %291)
  %293 = load i64, i64* @out, align 8
  %294 = trunc i64 %293 to i32
  %295 = load i32*, i32** @ba, align 8
  %296 = load i32, i32* %2, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 2
  %301 = load i32*, i32** @ba, align 8
  %302 = load i32, i32* %2, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 2
  %307 = call i64 @internal_branch(i32 %306)
  %308 = call i32 @add_to_linker(i32 %294, i32 %300, i64 %307)
  %309 = call i32 @emit_jmp(i32 0)
  ret void
}

declare dso_local i32 @assem_debug(i8*, ...) #1

declare dso_local i32 @wb_register(i64, i64*, i32) #1

declare dso_local i32 @load_regs(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @address_generation(i32, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @alu_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @imm8_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @shiftimm_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @load_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @store_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @rmw_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @pcrel_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @multdiv_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @mov_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ext_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @flags_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @complex_assemble(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @store_regs_bt(i64*, i32, i32) #1

declare dso_local i32 @load_regs_bt(i64*, i32, i32) #1

declare dso_local i64 @internal_branch(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @add_to_linker(i32, i32, i64) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
