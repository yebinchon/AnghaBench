; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_multdiv_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_multdiv_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64, i32 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@MACL = common dso_local global i64 0, align 8
@rt1 = common dso_local global i64* null, align 8
@rt2 = common dso_local global i64* null, align 8
@MACH = common dso_local global i64 0, align 8
@SR = common dso_local global i64 0, align 8
@EAX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@HOST_TEMPREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multdiv_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %23 = load i32*, i32** @opcode, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %133

29:                                               ; preds = %2
  %30 = load i32*, i32** @opcode2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load %struct.regstat*, %struct.regstat** %4, align 8
  %38 = getelementptr inbounds %struct.regstat, %struct.regstat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64*, i64** @rs1, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @get_reg(i32 %39, i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.regstat*, %struct.regstat** %4, align 8
  %47 = getelementptr inbounds %struct.regstat, %struct.regstat* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64*, i64** @rs2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @get_reg(i32 %48, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.regstat*, %struct.regstat** %4, align 8
  %56 = getelementptr inbounds %struct.regstat, %struct.regstat* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @MACL, align 8
  %59 = call i32 @get_reg(i32 %57, i64 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @emit_multiply(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %36
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32*, i32** @opcode2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %116

75:                                               ; preds = %68
  %76 = load %struct.regstat*, %struct.regstat** %4, align 8
  %77 = getelementptr inbounds %struct.regstat, %struct.regstat* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** @rt1, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @get_reg(i32 %78, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.regstat*, %struct.regstat** %4, align 8
  %86 = getelementptr inbounds %struct.regstat, %struct.regstat* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64*, i64** @rt2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @get_reg(i32 %87, i64 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.regstat*, %struct.regstat** %4, align 8
  %95 = getelementptr inbounds %struct.regstat, %struct.regstat* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MACH, align 8
  %98 = shl i64 1, %97
  %99 = and i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @emit_zeroreg(i32 %102)
  br label %104

104:                                              ; preds = %101, %75
  %105 = load %struct.regstat*, %struct.regstat** %4, align 8
  %106 = getelementptr inbounds %struct.regstat, %struct.regstat* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MACL, align 8
  %109 = shl i64 1, %108
  %110 = and i64 %107, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @emit_zeroreg(i32 %113)
  br label %115

115:                                              ; preds = %112, %104
  br label %116

116:                                              ; preds = %115, %68
  %117 = load i32*, i32** @opcode2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.regstat*, %struct.regstat** %4, align 8
  %125 = getelementptr inbounds %struct.regstat, %struct.regstat* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @SR, align 8
  %128 = call i32 @get_reg(i32 %126, i64 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @emit_andimm(i32 %129, i32 254, i32 %130)
  br label %132

132:                                              ; preds = %123, %116
  br label %133

133:                                              ; preds = %132, %2
  %134 = load i32*, i32** @opcode, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %268

140:                                              ; preds = %133
  %141 = load i32*, i32** @opcode2, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 7
  br i1 %146, label %147, label %192

147:                                              ; preds = %140
  %148 = load %struct.regstat*, %struct.regstat** %4, align 8
  %149 = getelementptr inbounds %struct.regstat, %struct.regstat* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64*, i64** @rs1, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @get_reg(i32 %150, i64 %155)
  store i32 %156, i32* %11, align 4
  %157 = load %struct.regstat*, %struct.regstat** %4, align 8
  %158 = getelementptr inbounds %struct.regstat, %struct.regstat* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i64*, i64** @rs2, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @get_reg(i32 %159, i64 %164)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.regstat*, %struct.regstat** %4, align 8
  %167 = getelementptr inbounds %struct.regstat, %struct.regstat* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* @SR, align 8
  %170 = call i32 @get_reg(i32 %168, i64 %169)
  store i32 %170, i32* %13, align 4
  %171 = load %struct.regstat*, %struct.regstat** %4, align 8
  %172 = getelementptr inbounds %struct.regstat, %struct.regstat* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @get_reg(i32 %173, i64 -1)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp sge i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* %12, align 4
  %180 = icmp sge i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = icmp sge i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @emit_div0s(i32 %187, i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %147, %140
  %193 = load i32*, i32** @opcode2, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 14
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load i32*, i32** @opcode2, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 15
  br i1 %205, label %206, label %267

206:                                              ; preds = %199, %192
  %207 = load %struct.regstat*, %struct.regstat** %4, align 8
  %208 = getelementptr inbounds %struct.regstat, %struct.regstat* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i64*, i64** @rs1, align 8
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @get_reg(i32 %209, i64 %214)
  store i32 %215, i32* %15, align 4
  %216 = load %struct.regstat*, %struct.regstat** %4, align 8
  %217 = getelementptr inbounds %struct.regstat, %struct.regstat* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i64*, i64** @rs2, align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @get_reg(i32 %218, i64 %223)
  store i32 %224, i32* %16, align 4
  %225 = load %struct.regstat*, %struct.regstat** %4, align 8
  %226 = getelementptr inbounds %struct.regstat, %struct.regstat* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i64, i64* @MACL, align 8
  %229 = call i32 @get_reg(i32 %227, i64 %228)
  store i32 %229, i32* %17, align 4
  %230 = load %struct.regstat*, %struct.regstat** %4, align 8
  %231 = getelementptr inbounds %struct.regstat, %struct.regstat* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @get_reg(i32 %232, i64 -1)
  store i32 %233, i32* %18, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp sge i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %206
  %237 = load i32, i32* %18, align 4
  %238 = icmp sge i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load i32*, i32** @opcode2, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 14
  br i1 %246, label %247, label %254

247:                                              ; preds = %236
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @emit_movzwl_reg(i32 %248, i32 %249)
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @emit_movzwl_reg(i32 %251, i32 %252)
  br label %261

254:                                              ; preds = %236
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %17, align 4
  %257 = call i32 @emit_movswl_reg(i32 %255, i32 %256)
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i32 @emit_movswl_reg(i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %254, %247
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %17, align 4
  %265 = call i32 @emit_multiply(i32 %262, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %261, %206
  br label %267

267:                                              ; preds = %266, %199
  br label %268

268:                                              ; preds = %267, %133
  %269 = load i32*, i32** @opcode, align 8
  %270 = load i32, i32* %3, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %275, label %360

275:                                              ; preds = %268
  %276 = load %struct.regstat*, %struct.regstat** %4, align 8
  %277 = getelementptr inbounds %struct.regstat, %struct.regstat* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i64*, i64** @rs1, align 8
  %280 = load i32, i32* %3, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @get_reg(i32 %278, i64 %283)
  store i32 %284, i32* %19, align 4
  %285 = load %struct.regstat*, %struct.regstat** %4, align 8
  %286 = getelementptr inbounds %struct.regstat, %struct.regstat* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i64*, i64** @rs2, align 8
  %289 = load i32, i32* %3, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @get_reg(i32 %287, i64 %292)
  store i32 %293, i32* %20, align 4
  %294 = load %struct.regstat*, %struct.regstat** %4, align 8
  %295 = getelementptr inbounds %struct.regstat, %struct.regstat* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i64, i64* @MACH, align 8
  %298 = call i32 @get_reg(i32 %296, i64 %297)
  store i32 %298, i32* %21, align 4
  %299 = load %struct.regstat*, %struct.regstat** %4, align 8
  %300 = getelementptr inbounds %struct.regstat, %struct.regstat* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i64, i64* @MACL, align 8
  %303 = call i32 @get_reg(i32 %301, i64 %302)
  store i32 %303, i32* %22, align 4
  %304 = load i32, i32* %21, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %350

306:                                              ; preds = %275
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* @EAX, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = call i32 @assert(i32 %310)
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* @EDX, align 4
  %314 = icmp eq i32 %312, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @assert(i32 %315)
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* @EAX, align 4
  %319 = icmp ne i32 %317, %318
  %320 = zext i1 %319 to i32
  %321 = call i32 @assert(i32 %320)
  %322 = load i32, i32* %19, align 4
  %323 = load i32, i32* @EAX, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %306
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* @EAX, align 4
  %328 = call i32 @emit_mov(i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %306
  %330 = load i32*, i32** @opcode2, align 8
  %331 = load i32, i32* %3, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 5
  br i1 %335, label %336, label %339

336:                                              ; preds = %329
  %337 = load i32, i32* %20, align 4
  %338 = call i32 @emit_mul(i32 %337)
  br label %339

339:                                              ; preds = %336, %329
  %340 = load i32*, i32** @opcode2, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 13
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = load i32, i32* %20, align 4
  %348 = call i32 @emit_imul(i32 %347)
  br label %349

349:                                              ; preds = %346, %339
  br label %359

350:                                              ; preds = %275
  %351 = load i32, i32* %22, align 4
  %352 = icmp sge i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load i32, i32* %19, align 4
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %22, align 4
  %357 = call i32 @emit_multiply(i32 %354, i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %353, %350
  br label %359

359:                                              ; preds = %358, %349
  br label %360

360:                                              ; preds = %359, %268
  ret void
}

declare dso_local i32 @get_reg(i32, i64) #1

declare dso_local i32 @emit_multiply(i32, i32, i32) #1

declare dso_local i32 @emit_zeroreg(i32) #1

declare dso_local i32 @emit_andimm(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_div0s(i32, i32, i32, i32) #1

declare dso_local i32 @emit_movzwl_reg(i32, i32) #1

declare dso_local i32 @emit_movswl_reg(i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_mul(i32) #1

declare dso_local i32 @emit_imul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
