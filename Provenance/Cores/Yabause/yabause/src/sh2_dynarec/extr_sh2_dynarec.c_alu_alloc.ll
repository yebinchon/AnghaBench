; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alu_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@opcode = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@SR = common dso_local global i32 0, align 4
@minimum_free_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alu_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @opcode, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %96

11:                                               ; preds = %2
  %12 = load %struct.regstat*, %struct.regstat** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @rs1, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @alloc_reg(%struct.regstat* %12, i32 %13, i32 %18)
  %20 = load %struct.regstat*, %struct.regstat** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @rs2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @alloc_reg(%struct.regstat* %20, i32 %21, i32 %26)
  %28 = load %struct.regstat*, %struct.regstat** %3, align 8
  %29 = load i32*, i32** @rs2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clear_const(%struct.regstat* %28, i32 %33)
  %35 = load i32*, i32** @opcode2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %57

41:                                               ; preds = %11
  %42 = load i32*, i32** @opcode2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 11
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.regstat*, %struct.regstat** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** @rt1, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @alloc_reg(%struct.regstat* %49, i32 %50, i32 %55)
  br label %95

57:                                               ; preds = %41, %11
  %58 = load %struct.regstat*, %struct.regstat** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SR, align 4
  %61 = call i32 @alloc_reg(%struct.regstat* %58, i32 %59, i32 %60)
  %62 = load %struct.regstat*, %struct.regstat** %3, align 8
  %63 = load i32, i32* @SR, align 4
  %64 = call i32 @dirty_reg(%struct.regstat* %62, i32 %63)
  %65 = load i32*, i32** @opcode2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load %struct.regstat*, %struct.regstat** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @alloc_reg_temp(%struct.regstat* %72, i32 %73, i32 -1)
  %75 = load i32*, i32** @minimum_free_regs, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %57
  %80 = load i32*, i32** @opcode2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 12
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.regstat*, %struct.regstat** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @alloc_reg_temp(%struct.regstat* %87, i32 %88, i32 -1)
  %90 = load i32*, i32** @minimum_free_regs, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %79
  br label %95

95:                                               ; preds = %94, %48
  br label %96

96:                                               ; preds = %95, %2
  %97 = load i32*, i32** @opcode, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %190

103:                                              ; preds = %96
  %104 = load %struct.regstat*, %struct.regstat** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32*, i32** @rs1, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @alloc_reg(%struct.regstat* %104, i32 %105, i32 %110)
  %112 = load %struct.regstat*, %struct.regstat** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32*, i32** @rs2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @alloc_reg(%struct.regstat* %112, i32 %113, i32 %118)
  %120 = load %struct.regstat*, %struct.regstat** %3, align 8
  %121 = load i32*, i32** @rs2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clear_const(%struct.regstat* %120, i32 %125)
  %127 = load i32*, i32** @opcode2, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 8
  br i1 %132, label %133, label %148

133:                                              ; preds = %103
  %134 = load %struct.regstat*, %struct.regstat** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @SR, align 4
  %137 = call i32 @alloc_reg(%struct.regstat* %134, i32 %135, i32 %136)
  %138 = load %struct.regstat*, %struct.regstat** %3, align 8
  %139 = load i32, i32* @SR, align 4
  %140 = call i32 @dirty_reg(%struct.regstat* %138, i32 %139)
  %141 = load %struct.regstat*, %struct.regstat** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @alloc_reg_temp(%struct.regstat* %141, i32 %142, i32 -1)
  %144 = load i32*, i32** @minimum_free_regs, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 1, i32* %147, align 4
  br label %189

148:                                              ; preds = %103
  %149 = load %struct.regstat*, %struct.regstat** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32*, i32** @rt1, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @alloc_reg(%struct.regstat* %149, i32 %150, i32 %155)
  %157 = load i32*, i32** @opcode2, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %188

164:                                              ; preds = %148
  %165 = load %struct.regstat*, %struct.regstat** %3, align 8
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @SR, align 4
  %168 = call i32 @alloc_reg(%struct.regstat* %165, i32 %166, i32 %167)
  %169 = load %struct.regstat*, %struct.regstat** %3, align 8
  %170 = load i32, i32* @SR, align 4
  %171 = call i32 @dirty_reg(%struct.regstat* %169, i32 %170)
  %172 = load i32*, i32** @opcode2, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 3
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %187

179:                                              ; preds = %164
  %180 = load %struct.regstat*, %struct.regstat** %3, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @alloc_reg_temp(%struct.regstat* %180, i32 %181, i32 -1)
  %183 = load i32*, i32** @minimum_free_regs, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %179, %164
  br label %188

188:                                              ; preds = %187, %148
  br label %189

189:                                              ; preds = %188, %133
  br label %190

190:                                              ; preds = %189, %96
  %191 = load i32*, i32** @opcode, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %243

197:                                              ; preds = %190
  %198 = load %struct.regstat*, %struct.regstat** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = load i32*, i32** @rs1, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @alloc_reg(%struct.regstat* %198, i32 %199, i32 %204)
  %206 = load i32*, i32** @opcode2, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %197
  %213 = load %struct.regstat*, %struct.regstat** %3, align 8
  %214 = load i32*, i32** @rt1, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @dirty_reg(%struct.regstat* %213, i32 %218)
  br label %220

220:                                              ; preds = %212, %197
  %221 = load %struct.regstat*, %struct.regstat** %3, align 8
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @SR, align 4
  %224 = call i32 @alloc_reg(%struct.regstat* %221, i32 %222, i32 %223)
  %225 = load %struct.regstat*, %struct.regstat** %3, align 8
  %226 = load i32, i32* @SR, align 4
  %227 = call i32 @dirty_reg(%struct.regstat* %225, i32 %226)
  %228 = load i32*, i32** @opcode2, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %220
  %235 = load %struct.regstat*, %struct.regstat** %3, align 8
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @alloc_reg_temp(%struct.regstat* %235, i32 %236, i32 -1)
  %238 = load i32*, i32** @minimum_free_regs, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 1, i32* %241, align 4
  br label %242

242:                                              ; preds = %234, %220
  br label %243

243:                                              ; preds = %242, %190
  %244 = load i32*, i32** @opcode, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 6
  br i1 %249, label %250, label %314

250:                                              ; preds = %243
  %251 = load i32*, i32** @rs1, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %4, align 4
  %257 = call i64 @needed_again(i32 %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %250
  %260 = load %struct.regstat*, %struct.regstat** %3, align 8
  %261 = load i32, i32* %4, align 4
  %262 = load i32*, i32** @rs1, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @alloc_reg(%struct.regstat* %260, i32 %261, i32 %266)
  br label %268

268:                                              ; preds = %259, %250
  %269 = load %struct.regstat*, %struct.regstat** %3, align 8
  %270 = load i32, i32* %4, align 4
  %271 = load i32*, i32** @rt1, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @alloc_reg(%struct.regstat* %269, i32 %270, i32 %275)
  %277 = load i32*, i32** @opcode2, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 8
  br i1 %282, label %290, label %283

283:                                              ; preds = %268
  %284 = load i32*, i32** @opcode2, align 8
  %285 = load i32, i32* %4, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 9
  br i1 %289, label %290, label %298

290:                                              ; preds = %283, %268
  %291 = load %struct.regstat*, %struct.regstat** %3, align 8
  %292 = load i32, i32* %4, align 4
  %293 = call i32 @alloc_reg_temp(%struct.regstat* %291, i32 %292, i32 -1)
  %294 = load i32*, i32** @minimum_free_regs, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 1, i32* %297, align 4
  br label %298

298:                                              ; preds = %290, %283
  %299 = load i32*, i32** @opcode2, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 10
  br i1 %304, label %305, label %313

305:                                              ; preds = %298
  %306 = load %struct.regstat*, %struct.regstat** %3, align 8
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @SR, align 4
  %309 = call i32 @alloc_reg(%struct.regstat* %306, i32 %307, i32 %308)
  %310 = load %struct.regstat*, %struct.regstat** %3, align 8
  %311 = load i32, i32* @SR, align 4
  %312 = call i32 @dirty_reg(%struct.regstat* %310, i32 %311)
  br label %313

313:                                              ; preds = %305, %298
  br label %314

314:                                              ; preds = %313, %243
  %315 = load %struct.regstat*, %struct.regstat** %3, align 8
  %316 = load i32*, i32** @rs1, align 8
  %317 = load i32, i32* %4, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @clear_const(%struct.regstat* %315, i32 %320)
  %322 = load %struct.regstat*, %struct.regstat** %3, align 8
  %323 = load i32*, i32** @rt1, align 8
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @clear_const(%struct.regstat* %322, i32 %327)
  %329 = load %struct.regstat*, %struct.regstat** %3, align 8
  %330 = load i32*, i32** @rt1, align 8
  %331 = load i32, i32* %4, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @dirty_reg(%struct.regstat* %329, i32 %334)
  ret void
}

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

declare dso_local i32 @alloc_reg_temp(%struct.regstat*, i32, i32) #1

declare dso_local i64 @needed_again(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
