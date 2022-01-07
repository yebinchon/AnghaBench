; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68k_in.c_m68ki_build_opcode_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68k_in.c_m68ki_build_opcode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64*, i32 }

@m68k_op_illegal = common dso_local global i32 0, align 4
@m68ki_instruction_jump_table = common dso_local global i32* null, align 8
@NUM_CPU_TYPES = common dso_local global i32 0, align 4
@m68ki_cycles = common dso_local global i64** null, align 8
@m68k_opcode_handler_table = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68ki_build_opcode_table() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 65536
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  %10 = load i32, i32* @m68k_op_illegal, align 4
  %11 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NUM_CPU_TYPES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64**, i64*** @m68ki_cycles, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @m68k_opcode_handler_table, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %1, align 8
  br label %37

37:                                               ; preds = %92, %35
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 65280
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 65536
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %47, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %46
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %84, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @NUM_CPU_TYPES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64**, i64*** @m68ki_cycles, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %75, i64* %83, align 8
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %64

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 1
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %1, align 8
  br label %37

95:                                               ; preds = %37
  br label %96

96:                                               ; preds = %148, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 65280
  br i1 %100, label %101, label %151

101:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %145, %101
  %103 = load i32, i32* %3, align 4
  %104 = icmp sle i32 %103, 255
  br i1 %104, label %105, label %148

105:                                              ; preds = %102
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  store i32 %108, i32* %116, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %141, %105
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @NUM_CPU_TYPES, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %117
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64**, i64*** @m68ki_cycles, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64*, i64** %129, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %133, i64 %139
  store i64 %128, i64* %140, align 8
  br label %141

141:                                              ; preds = %121
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %117

144:                                              ; preds = %117
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %102

148:                                              ; preds = %102
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 1
  store %struct.TYPE_3__* %150, %struct.TYPE_3__** %1, align 8
  br label %96

151:                                              ; preds = %96
  br label %152

152:                                              ; preds = %212, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 61944
  br i1 %156, label %157, label %215

157:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %209, %157
  %159 = load i32, i32* %3, align 4
  %160 = icmp slt i32 %159, 8
  br i1 %160, label %161, label %212

161:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %205, %161
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 8
  br i1 %164, label %165, label %208

165:                                              ; preds = %162
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %3, align 4
  %170 = shl i32 %169, 9
  %171 = or i32 %168, %170
  %172 = load i32, i32* %4, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %2, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %178 = load i32, i32* %2, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %201, %165
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @NUM_CPU_TYPES, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64**, i64*** @m68ki_cycles, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64*, i64** %193, i64 %195
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %192, i64* %200, align 8
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  br label %181

204:                                              ; preds = %181
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %162

208:                                              ; preds = %162
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %158

212:                                              ; preds = %158
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 1
  store %struct.TYPE_3__* %214, %struct.TYPE_3__** %1, align 8
  br label %152

215:                                              ; preds = %152
  br label %216

216:                                              ; preds = %268, %215
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 65520
  br i1 %220, label %221, label %271

221:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %265, %221
  %223 = load i32, i32* %3, align 4
  %224 = icmp sle i32 %223, 15
  br i1 %224, label %225, label %268

225:                                              ; preds = %222
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %3, align 4
  %234 = or i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %229, i64 %235
  store i32 %228, i32* %236, align 4
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %261, %225
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @NUM_CPU_TYPES, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %264

241:                                              ; preds = %237
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load i64**, i64*** @m68ki_cycles, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64*, i64** %249, i64 %251
  %253 = load i64*, i64** %252, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %3, align 4
  %258 = or i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %253, i64 %259
  store i64 %248, i64* %260, align 8
  br label %261

261:                                              ; preds = %241
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %237

264:                                              ; preds = %237
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %3, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %3, align 4
  br label %222

268:                                              ; preds = %222
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 1
  store %struct.TYPE_3__* %270, %struct.TYPE_3__** %1, align 8
  br label %216

271:                                              ; preds = %216
  br label %272

272:                                              ; preds = %326, %271
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 61951
  br i1 %276, label %277, label %329

277:                                              ; preds = %272
  store i32 0, i32* %3, align 4
  br label %278

278:                                              ; preds = %323, %277
  %279 = load i32, i32* %3, align 4
  %280 = icmp sle i32 %279, 7
  br i1 %280, label %281, label %326

281:                                              ; preds = %278
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %3, align 4
  %290 = shl i32 %289, 9
  %291 = or i32 %288, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  store i32 %284, i32* %293, align 4
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %319, %281
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @NUM_CPU_TYPES, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %322

298:                                              ; preds = %294
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 2
  %301 = load i64*, i64** %300, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = load i64**, i64*** @m68ki_cycles, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64*, i64** %306, i64 %308
  %310 = load i64*, i64** %309, align 8
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %3, align 4
  %315 = shl i32 %314, 9
  %316 = or i32 %313, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %310, i64 %317
  store i64 %305, i64* %318, align 8
  br label %319

319:                                              ; preds = %298
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %294

322:                                              ; preds = %294
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %3, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %3, align 4
  br label %278

326:                                              ; preds = %278
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 1
  store %struct.TYPE_3__* %328, %struct.TYPE_3__** %1, align 8
  br label %272

329:                                              ; preds = %272
  br label %330

330:                                              ; preds = %382, %329
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp eq i32 %333, 65528
  br i1 %334, label %335, label %385

335:                                              ; preds = %330
  store i32 0, i32* %3, align 4
  br label %336

336:                                              ; preds = %379, %335
  %337 = load i32, i32* %3, align 4
  %338 = icmp sle i32 %337, 7
  br i1 %338, label %339, label %382

339:                                              ; preds = %336
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %3, align 4
  %348 = or i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %343, i64 %349
  store i32 %342, i32* %350, align 4
  store i32 0, i32* %5, align 4
  br label %351

351:                                              ; preds = %375, %339
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* @NUM_CPU_TYPES, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %378

355:                                              ; preds = %351
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 2
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i64**, i64*** @m68ki_cycles, align 8
  %364 = load i32, i32* %5, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64*, i64** %363, i64 %365
  %367 = load i64*, i64** %366, align 8
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %3, align 4
  %372 = or i32 %370, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %367, i64 %373
  store i64 %362, i64* %374, align 8
  br label %375

375:                                              ; preds = %355
  %376 = load i32, i32* %5, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %5, align 4
  br label %351

378:                                              ; preds = %351
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %3, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %3, align 4
  br label %336

382:                                              ; preds = %336
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 1
  store %struct.TYPE_3__* %384, %struct.TYPE_3__** %1, align 8
  br label %330

385:                                              ; preds = %330
  br label %386

386:                                              ; preds = %426, %385
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, 65535
  br i1 %390, label %391, label %429

391:                                              ; preds = %386
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %395, i64 %399
  store i32 %394, i32* %400, align 4
  store i32 0, i32* %5, align 4
  br label %401

401:                                              ; preds = %423, %391
  %402 = load i32, i32* %5, align 4
  %403 = load i32, i32* @NUM_CPU_TYPES, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %401
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 2
  %408 = load i64*, i64** %407, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  %412 = load i64, i64* %411, align 8
  %413 = load i64**, i64*** @m68ki_cycles, align 8
  %414 = load i32, i32* %5, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i64*, i64** %413, i64 %415
  %417 = load i64*, i64** %416, align 8
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64, i64* %417, i64 %421
  store i64 %412, i64* %422, align 8
  br label %423

423:                                              ; preds = %405
  %424 = load i32, i32* %5, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %5, align 4
  br label %401

426:                                              ; preds = %401
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 1
  store %struct.TYPE_3__* %428, %struct.TYPE_3__** %1, align 8
  br label %386

429:                                              ; preds = %386
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
