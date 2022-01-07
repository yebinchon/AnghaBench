; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68k_in.c_m68ki_build_opcode_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68k_in.c_m68ki_build_opcode_table.c"
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
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 65536
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load i32, i32* @m68k_op_illegal, align 4
  %12 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 %11, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %29, %10
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUM_CPU_TYPES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i64**, i64*** @m68ki_cycles, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %16

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @m68k_opcode_handler_table, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %1, align 8
  br label %38

38:                                               ; preds = %93, %36
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 65280
  br i1 %42, label %43, label %96

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %90, %43
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 65536
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %47
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %85, %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NUM_CPU_TYPES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64**, i64*** @m68ki_cycles, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %76, i64* %84, align 8
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %47
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %44

93:                                               ; preds = %44
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 1
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %1, align 8
  br label %38

96:                                               ; preds = %38
  br label %97

97:                                               ; preds = %149, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 65280
  br i1 %101, label %102, label %152

102:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %146, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp sle i32 %104, 255
  br i1 %105, label %106, label %149

106:                                              ; preds = %103
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  store i32 %109, i32* %117, align 4
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %142, %106
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @NUM_CPU_TYPES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %145

122:                                              ; preds = %118
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64**, i64*** @m68ki_cycles, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64*, i64** %130, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %134, i64 %140
  store i64 %129, i64* %141, align 8
  br label %142

142:                                              ; preds = %122
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %118

145:                                              ; preds = %118
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %103

149:                                              ; preds = %103
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 1
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %1, align 8
  br label %97

152:                                              ; preds = %97
  br label %153

153:                                              ; preds = %255, %152
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 61944
  br i1 %157, label %158, label %258

158:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %252, %158
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %160, 8
  br i1 %161, label %162, label %255

162:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %248, %162
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %164, 8
  br i1 %165, label %166, label %251

166:                                              ; preds = %163
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %4, align 4
  %171 = shl i32 %170, 9
  %172 = or i32 %169, %171
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %172, %173
  store i32 %174, i32* %3, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %202, %166
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @NUM_CPU_TYPES, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64**, i64*** @m68ki_cycles, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64*, i64** %194, i64 %196
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 %193, i64* %201, align 8
  br label %202

202:                                              ; preds = %186
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %182

205:                                              ; preds = %182
  %206 = load i32, i32* %3, align 4
  %207 = and i32 %206, 61440
  %208 = icmp eq i32 %207, 57344
  br i1 %208, label %209, label %247

209:                                              ; preds = %205
  %210 = load i32, i32* %3, align 4
  %211 = and i32 %210, 32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %247, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %4, align 4
  %215 = sub nsw i32 %214, 1
  %216 = and i32 %215, 7
  %217 = add nsw i32 %216, 1
  %218 = shl i32 %217, 1
  store i32 %218, i32* %2, align 4
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64**, i64*** @m68ki_cycles, align 8
  %222 = getelementptr inbounds i64*, i64** %221, i64 0
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, %220
  store i64 %228, i64* %226, align 8
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64**, i64*** @m68ki_cycles, align 8
  %232 = getelementptr inbounds i64*, i64** %231, i64 1
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, %230
  store i64 %238, i64* %236, align 8
  %239 = load i64**, i64*** @m68ki_cycles, align 8
  %240 = getelementptr inbounds i64*, i64** %239, i64 2
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %3, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 0
  store i64 %246, i64* %244, align 8
  br label %247

247:                                              ; preds = %213, %209, %205
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %5, align 4
  br label %163

251:                                              ; preds = %163
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %159

255:                                              ; preds = %159
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 1
  store %struct.TYPE_3__* %257, %struct.TYPE_3__** %1, align 8
  br label %153

258:                                              ; preds = %153
  br label %259

259:                                              ; preds = %311, %258
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 65520
  br i1 %263, label %264, label %314

264:                                              ; preds = %259
  store i32 0, i32* %4, align 4
  br label %265

265:                                              ; preds = %308, %264
  %266 = load i32, i32* %4, align 4
  %267 = icmp sle i32 %266, 15
  br i1 %267, label %268, label %311

268:                                              ; preds = %265
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %4, align 4
  %277 = or i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %272, i64 %278
  store i32 %271, i32* %279, align 4
  store i32 0, i32* %6, align 4
  br label %280

280:                                              ; preds = %304, %268
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* @NUM_CPU_TYPES, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %307

284:                                              ; preds = %280
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 2
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = load i64**, i64*** @m68ki_cycles, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64*, i64** %292, i64 %294
  %296 = load i64*, i64** %295, align 8
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %4, align 4
  %301 = or i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %296, i64 %302
  store i64 %291, i64* %303, align 8
  br label %304

304:                                              ; preds = %284
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %280

307:                                              ; preds = %280
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %4, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %4, align 4
  br label %265

311:                                              ; preds = %265
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 1
  store %struct.TYPE_3__* %313, %struct.TYPE_3__** %1, align 8
  br label %259

314:                                              ; preds = %259
  br label %315

315:                                              ; preds = %369, %314
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 61951
  br i1 %319, label %320, label %372

320:                                              ; preds = %315
  store i32 0, i32* %4, align 4
  br label %321

321:                                              ; preds = %366, %320
  %322 = load i32, i32* %4, align 4
  %323 = icmp sle i32 %322, 7
  br i1 %323, label %324, label %369

324:                                              ; preds = %321
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %4, align 4
  %333 = shl i32 %332, 9
  %334 = or i32 %331, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %328, i64 %335
  store i32 %327, i32* %336, align 4
  store i32 0, i32* %6, align 4
  br label %337

337:                                              ; preds = %362, %324
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @NUM_CPU_TYPES, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %365

341:                                              ; preds = %337
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 2
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = load i64**, i64*** @m68ki_cycles, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %349, i64 %351
  %353 = load i64*, i64** %352, align 8
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %4, align 4
  %358 = shl i32 %357, 9
  %359 = or i32 %356, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %353, i64 %360
  store i64 %348, i64* %361, align 8
  br label %362

362:                                              ; preds = %341
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %6, align 4
  br label %337

365:                                              ; preds = %337
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %4, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %4, align 4
  br label %321

369:                                              ; preds = %321
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 1
  store %struct.TYPE_3__* %371, %struct.TYPE_3__** %1, align 8
  br label %315

372:                                              ; preds = %315
  br label %373

373:                                              ; preds = %425, %372
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 65528
  br i1 %377, label %378, label %428

378:                                              ; preds = %373
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %422, %378
  %380 = load i32, i32* %4, align 4
  %381 = icmp sle i32 %380, 7
  br i1 %381, label %382, label %425

382:                                              ; preds = %379
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %4, align 4
  %391 = or i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %386, i64 %392
  store i32 %385, i32* %393, align 4
  store i32 0, i32* %6, align 4
  br label %394

394:                                              ; preds = %418, %382
  %395 = load i32, i32* %6, align 4
  %396 = load i32, i32* @NUM_CPU_TYPES, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %421

398:                                              ; preds = %394
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 2
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load i64**, i64*** @m68ki_cycles, align 8
  %407 = load i32, i32* %6, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64*, i64** %406, i64 %408
  %410 = load i64*, i64** %409, align 8
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %4, align 4
  %415 = or i32 %413, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i64, i64* %410, i64 %416
  store i64 %405, i64* %417, align 8
  br label %418

418:                                              ; preds = %398
  %419 = load i32, i32* %6, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %6, align 4
  br label %394

421:                                              ; preds = %394
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %4, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %4, align 4
  br label %379

425:                                              ; preds = %379
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 1
  store %struct.TYPE_3__* %427, %struct.TYPE_3__** %1, align 8
  br label %373

428:                                              ; preds = %373
  br label %429

429:                                              ; preds = %469, %428
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp eq i32 %432, 65535
  br i1 %433, label %434, label %472

434:                                              ; preds = %429
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = load i32*, i32** @m68ki_instruction_jump_table, align 8
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %438, i64 %442
  store i32 %437, i32* %443, align 4
  store i32 0, i32* %6, align 4
  br label %444

444:                                              ; preds = %466, %434
  %445 = load i32, i32* %6, align 4
  %446 = load i32, i32* @NUM_CPU_TYPES, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %469

448:                                              ; preds = %444
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 2
  %451 = load i64*, i64** %450, align 8
  %452 = load i32, i32* %6, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i64, i64* %451, i64 %453
  %455 = load i64, i64* %454, align 8
  %456 = load i64**, i64*** @m68ki_cycles, align 8
  %457 = load i32, i32* %6, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i64*, i64** %456, i64 %458
  %460 = load i64*, i64** %459, align 8
  %461 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %460, i64 %464
  store i64 %455, i64* %465, align 8
  br label %466

466:                                              ; preds = %448
  %467 = load i32, i32* %6, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %6, align 4
  br label %444

469:                                              ; preds = %444
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 1
  store %struct.TYPE_3__* %471, %struct.TYPE_3__** %1, align 8
  br label %429

472:                                              ; preds = %429
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
