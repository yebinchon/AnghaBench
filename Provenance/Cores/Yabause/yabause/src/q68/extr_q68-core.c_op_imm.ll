; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_imm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@SR_S = common dso_local global i32 0, align 4
@EX_PRIVILEGE_VIOLATION = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @op_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_imm(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 9
  %17 = and i32 %16, 7
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @op_bit(%struct.TYPE_9__* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %314

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @op_ill(%struct.TYPE_9__* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %314

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @INSN_GET_SIZE, align 4
  %34 = load i32, i32* @size, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @op_ill(%struct.TYPE_9__* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %314

40:                                               ; preds = %32
  %41 = load i32, i32* @size, align 4
  %42 = call i32 @SIZE_TO_BYTES(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 -2, %46
  %48 = xor i32 %47, -1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i64 @IFETCH(%struct.TYPE_9__* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @size, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %10, align 4
  br label %69

57:                                               ; preds = %40
  %58 = load i32, i32* @size, align 4
  %59 = load i32, i32* @SIZE_L, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = call i64 @IFETCH(%struct.TYPE_9__* %64)
  %66 = trunc i64 %65 to i32
  %67 = or i32 %63, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %61, %57
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %78, label %112

78:                                               ; preds = %75, %72, %69
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 63
  %81 = icmp eq i32 %80, 60
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load i32, i32* @size, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SR_S, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @EX_PRIVILEGE_VIOLATION, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %314

96:                                               ; preds = %85, %82
  store i32 1, i32* %11, align 4
  store i32 8, i32* %12, align 4
  %97 = load i32, i32* @size, align 4
  switch i32 %97, label %107 [
    i32 129, label %98
    i32 128, label %103
  ]

98:                                               ; preds = %96
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 255
  store i32 %102, i32* %13, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  br label %111

107:                                              ; preds = %96
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @op_ill(%struct.TYPE_9__* %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %314

111:                                              ; preds = %103, %98
  br label %121

112:                                              ; preds = %78, %75
  store i32 0, i32* %11, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @size, align 4
  %116 = call i32 @ea_get(%struct.TYPE_9__* %113, i32 %114, i32 %115, i32 1, i32* %12)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %314

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %129

127:                                              ; preds = %124, %121
  %128 = call i32 (...) @INSN_CLEAR_XCC()
  br label %131

129:                                              ; preds = %124
  %130 = call i32 (...) @INSN_CLEAR_CC()
  br label %131

131:                                              ; preds = %129, %127
  %132 = load i32, i32* %6, align 4
  switch i32 %132, label %222 [
    i32 0, label %133
    i32 1, label %137
    i32 5, label %141
    i32 6, label %145
    i32 2, label %171
  ]

133:                                              ; preds = %131
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %14, align 4
  br label %266

137:                                              ; preds = %131
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %10, align 4
  %140 = and i32 %138, %139
  store i32 %140, i32* %14, align 4
  br label %266

141:                                              ; preds = %131
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %10, align 4
  %144 = xor i32 %142, %143
  store i32 %144, i32* %14, align 4
  br label %266

145:                                              ; preds = %131
  %146 = load i32, i32* @size, align 4
  %147 = load i32, i32* @SIZE_L, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = call i64 @EA_MODE(i32 %150)
  %152 = load i64, i64* @EA_DATA_REG, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = sub nsw i32 %155, 8
  store i32 %156, i32* %12, align 4
  br label %160

157:                                              ; preds = %149
  %158 = load i32, i32* %12, align 4
  %159 = sub nsw i32 %158, 2
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %157, %154
  br label %170

161:                                              ; preds = %145
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @EA_MODE(i32 %162)
  %164 = load i64, i64* @EA_DATA_REG, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169, %160
  br label %171

171:                                              ; preds = %131, %170
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %174, %175
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %13, align 4
  %179 = xor i32 %177, %178
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %13, align 4
  %182 = xor i32 %180, %181
  %183 = and i32 %179, %182
  %184 = load i32, i32* %8, align 4
  %185 = ashr i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %171
  %188 = load i32, i32* @SR_V, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %171
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %8, align 4
  %196 = ashr i32 %194, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 %197, %198
  %200 = sub nsw i32 %196, %199
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %8, align 4
  %203 = ashr i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %193
  %207 = load i32, i32* @SR_C, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 6
  br i1 %213, label %214, label %220

214:                                              ; preds = %206
  %215 = load i32, i32* @SR_X, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %214, %206
  br label %221

221:                                              ; preds = %220, %193
  br label %266

222:                                              ; preds = %131
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = and i32 %225, %226
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = xor i32 %228, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %14, align 4
  %233 = xor i32 %231, %232
  %234 = and i32 %230, %233
  %235 = load i32, i32* %8, align 4
  %236 = ashr i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %222
  %239 = load i32, i32* @SR_V, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %238, %222
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %8, align 4
  %247 = ashr i32 %245, %246
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %8, align 4
  %250 = ashr i32 %248, %249
  %251 = add nsw i32 %247, %250
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %8, align 4
  %254 = ashr i32 %252, %253
  %255 = sub nsw i32 %251, %254
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %244
  %258 = load i32, i32* @SR_X, align 4
  %259 = load i32, i32* @SR_C, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %257, %244
  br label %266

266:                                              ; preds = %265, %221, %141, %137, %133
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @INSN_SETNZ_SHIFT(i32 %267)
  %269 = load i32, i32* %6, align 4
  %270 = icmp ne i32 %269, 6
  br i1 %270, label %271, label %299

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %292

274:                                              ; preds = %271
  %275 = load i32, i32* @size, align 4
  %276 = icmp eq i32 %275, 128
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = load i32, i32* %14, align 4
  %280 = call i32 @set_SR(%struct.TYPE_9__* %278, i32 %279)
  br label %291

281:                                              ; preds = %274
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 65280
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %281, %277
  br label %298

292:                                              ; preds = %271
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @size, align 4
  %296 = load i32, i32* %14, align 4
  %297 = call i32 @ea_set(%struct.TYPE_9__* %293, i32 %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %292, %291
  br label %299

299:                                              ; preds = %298, %266
  %300 = load i32, i32* @size, align 4
  %301 = load i32, i32* @SIZE_L, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 16, i32 8
  %305 = load i32, i32* %5, align 4
  %306 = call i64 @EA_MODE(i32 %305)
  %307 = load i64, i64* @EA_DATA_REG, align 8
  %308 = icmp eq i64 %306, %307
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 0, i32 4
  %311 = add nsw i32 %304, %310
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %311, %312
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %299, %119, %107, %92, %36, %27, %20
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @op_bit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SIZE_TO_BYTES(i32) #1

declare dso_local i64 @IFETCH(%struct.TYPE_9__*) #1

declare dso_local i32 @ea_get(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @INSN_CLEAR_XCC(...) #1

declare dso_local i32 @INSN_CLEAR_CC(...) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @INSN_SETNZ_SHIFT(i32) #1

declare dso_local i32 @set_SR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ea_set(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
