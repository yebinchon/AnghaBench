; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opshft.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opshft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_COUNT = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@INSN_GET_REG = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opshft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opshft(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 256
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INSN_GET_SIZE, align 4
  %13 = load i32, i32* @INSN_GET_COUNT, align 4
  %14 = load i32, i32* @INSN_GET_REG0, align 4
  %15 = load i32, i32* @size, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 2048
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @EA_MODE(i32 %22)
  %24 = load i64, i64* @EA_ADDRESS_REG, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %17
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @op_ill(i32* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %280

30:                                               ; preds = %21
  %31 = load i32, i32* @SIZE_W, align 4
  store i32 %31, i32* @size, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 9
  %34 = and i32 %33, 3
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @current_entry, align 4
  %36 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %35, i32 1)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @size, align 4
  %40 = call i32 @ea_get(i32* %37, i32 %38, i32 %39, i32 1, i32* %9, i32 2)
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %280

44:                                               ; preds = %30
  br label %67

45:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 3
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @INSN_GET_REG, align 4
  %54 = load i32, i32* @current_entry, align 4
  %55 = load i32, i32* @reg, align 4
  %56 = mul nsw i32 %55, 4
  %57 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %54, i32 %56)
  br label %62

58:                                               ; preds = %45
  %59 = load i32, i32* @current_entry, align 4
  %60 = load i32, i32* @count, align 4
  %61 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* @current_entry, align 4
  %64 = load i32, i32* @reg0, align 4
  %65 = mul nsw i32 %64, 4
  %66 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %63, i32 %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %44
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %237 [
    i32 0, label %69
    i32 1, label %111
    i32 2, label %153
    i32 3, label %195
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* @size, align 4
  %74 = load i32, i32* @SIZE_B, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @current_entry, align 4
  %78 = call i32 @JIT_EMIT_ASL_B(i32 %77)
  br label %90

79:                                               ; preds = %72
  %80 = load i32, i32* @size, align 4
  %81 = load i32, i32* @SIZE_W, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @current_entry, align 4
  %85 = call i32 @JIT_EMIT_ASL_W(i32 %84)
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @current_entry, align 4
  %88 = call i32 @JIT_EMIT_ASL_L(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %76
  br label %110

91:                                               ; preds = %69
  %92 = load i32, i32* @size, align 4
  %93 = load i32, i32* @SIZE_B, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @current_entry, align 4
  %97 = call i32 @JIT_EMIT_ASR_B(i32 %96)
  br label %109

98:                                               ; preds = %91
  %99 = load i32, i32* @size, align 4
  %100 = load i32, i32* @SIZE_W, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @current_entry, align 4
  %104 = call i32 @JIT_EMIT_ASR_W(i32 %103)
  br label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @current_entry, align 4
  %107 = call i32 @JIT_EMIT_ASR_L(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109, %90
  br label %237

111:                                              ; preds = %67
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* @size, align 4
  %116 = load i32, i32* @SIZE_B, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* @current_entry, align 4
  %120 = call i32 @JIT_EMIT_LSL_B(i32 %119)
  br label %132

121:                                              ; preds = %114
  %122 = load i32, i32* @size, align 4
  %123 = load i32, i32* @SIZE_W, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @current_entry, align 4
  %127 = call i32 @JIT_EMIT_LSL_W(i32 %126)
  br label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @current_entry, align 4
  %130 = call i32 @JIT_EMIT_LSL_L(i32 %129)
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %118
  br label %152

133:                                              ; preds = %111
  %134 = load i32, i32* @size, align 4
  %135 = load i32, i32* @SIZE_B, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @current_entry, align 4
  %139 = call i32 @JIT_EMIT_LSR_B(i32 %138)
  br label %151

140:                                              ; preds = %133
  %141 = load i32, i32* @size, align 4
  %142 = load i32, i32* @SIZE_W, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @current_entry, align 4
  %146 = call i32 @JIT_EMIT_LSR_W(i32 %145)
  br label %150

147:                                              ; preds = %140
  %148 = load i32, i32* @current_entry, align 4
  %149 = call i32 @JIT_EMIT_LSR_L(i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %137
  br label %152

152:                                              ; preds = %151, %132
  br label %237

153:                                              ; preds = %67
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i32, i32* @size, align 4
  %158 = load i32, i32* @SIZE_B, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* @current_entry, align 4
  %162 = call i32 @JIT_EMIT_ROXL_B(i32 %161)
  br label %174

163:                                              ; preds = %156
  %164 = load i32, i32* @size, align 4
  %165 = load i32, i32* @SIZE_W, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @current_entry, align 4
  %169 = call i32 @JIT_EMIT_ROXL_W(i32 %168)
  br label %173

170:                                              ; preds = %163
  %171 = load i32, i32* @current_entry, align 4
  %172 = call i32 @JIT_EMIT_ROXL_L(i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %160
  br label %194

175:                                              ; preds = %153
  %176 = load i32, i32* @size, align 4
  %177 = load i32, i32* @SIZE_B, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @current_entry, align 4
  %181 = call i32 @JIT_EMIT_ROXR_B(i32 %180)
  br label %193

182:                                              ; preds = %175
  %183 = load i32, i32* @size, align 4
  %184 = load i32, i32* @SIZE_W, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* @current_entry, align 4
  %188 = call i32 @JIT_EMIT_ROXR_W(i32 %187)
  br label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @current_entry, align 4
  %191 = call i32 @JIT_EMIT_ROXR_L(i32 %190)
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %179
  br label %194

194:                                              ; preds = %193, %174
  br label %237

195:                                              ; preds = %67
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %195
  %199 = load i32, i32* @size, align 4
  %200 = load i32, i32* @SIZE_B, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @current_entry, align 4
  %204 = call i32 @JIT_EMIT_ROL_B(i32 %203)
  br label %216

205:                                              ; preds = %198
  %206 = load i32, i32* @size, align 4
  %207 = load i32, i32* @SIZE_W, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i32, i32* @current_entry, align 4
  %211 = call i32 @JIT_EMIT_ROL_W(i32 %210)
  br label %215

212:                                              ; preds = %205
  %213 = load i32, i32* @current_entry, align 4
  %214 = call i32 @JIT_EMIT_ROL_L(i32 %213)
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %202
  br label %236

217:                                              ; preds = %195
  %218 = load i32, i32* @size, align 4
  %219 = load i32, i32* @SIZE_B, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* @current_entry, align 4
  %223 = call i32 @JIT_EMIT_ROR_B(i32 %222)
  br label %235

224:                                              ; preds = %217
  %225 = load i32, i32* @size, align 4
  %226 = load i32, i32* @SIZE_W, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load i32, i32* @current_entry, align 4
  %230 = call i32 @JIT_EMIT_ROR_W(i32 %229)
  br label %234

231:                                              ; preds = %224
  %232 = load i32, i32* @current_entry, align 4
  %233 = call i32 @JIT_EMIT_ROR_L(i32 %232)
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %221
  br label %236

236:                                              ; preds = %235, %216
  br label %237

237:                                              ; preds = %67, %236, %194, %152, %110
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @size, align 4
  %244 = call i32 @ea_set(i32* %241, i32 %242, i32 %243)
  br label %270

245:                                              ; preds = %237
  %246 = load i32, i32* @size, align 4
  %247 = load i32, i32* @SIZE_B, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = load i32, i32* @current_entry, align 4
  %251 = load i32, i32* @reg0, align 4
  %252 = mul nsw i32 %251, 4
  %253 = call i32 @JIT_EMIT_SET_REGISTER_B(i32 %250, i32 %252)
  br label %269

254:                                              ; preds = %245
  %255 = load i32, i32* @size, align 4
  %256 = load i32, i32* @SIZE_W, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = load i32, i32* @current_entry, align 4
  %260 = load i32, i32* @reg0, align 4
  %261 = mul nsw i32 %260, 4
  %262 = call i32 @JIT_EMIT_SET_REGISTER_W(i32 %259, i32 %261)
  br label %268

263:                                              ; preds = %254
  %264 = load i32, i32* @current_entry, align 4
  %265 = load i32, i32* @reg0, align 4
  %266 = mul nsw i32 %265, 4
  %267 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %264, i32 %266)
  br label %268

268:                                              ; preds = %263, %258
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %240
  %271 = load i32, i32* @current_entry, align 4
  %272 = load i32, i32* @size, align 4
  %273 = load i32, i32* @SIZE_L, align 4
  %274 = icmp eq i32 %272, %273
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 8, i32 6
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %276, %277
  %279 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %271, i32 %278)
  store i32 0, i32* %3, align 4
  br label %280

280:                                              ; preds = %270, %43, %26
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_REGISTER(i32, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_REGISTER(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ASL_B(i32) #1

declare dso_local i32 @JIT_EMIT_ASL_W(i32) #1

declare dso_local i32 @JIT_EMIT_ASL_L(i32) #1

declare dso_local i32 @JIT_EMIT_ASR_B(i32) #1

declare dso_local i32 @JIT_EMIT_ASR_W(i32) #1

declare dso_local i32 @JIT_EMIT_ASR_L(i32) #1

declare dso_local i32 @JIT_EMIT_LSL_B(i32) #1

declare dso_local i32 @JIT_EMIT_LSL_W(i32) #1

declare dso_local i32 @JIT_EMIT_LSL_L(i32) #1

declare dso_local i32 @JIT_EMIT_LSR_B(i32) #1

declare dso_local i32 @JIT_EMIT_LSR_W(i32) #1

declare dso_local i32 @JIT_EMIT_LSR_L(i32) #1

declare dso_local i32 @JIT_EMIT_ROXL_B(i32) #1

declare dso_local i32 @JIT_EMIT_ROXL_W(i32) #1

declare dso_local i32 @JIT_EMIT_ROXL_L(i32) #1

declare dso_local i32 @JIT_EMIT_ROXR_B(i32) #1

declare dso_local i32 @JIT_EMIT_ROXR_W(i32) #1

declare dso_local i32 @JIT_EMIT_ROXR_L(i32) #1

declare dso_local i32 @JIT_EMIT_ROL_B(i32) #1

declare dso_local i32 @JIT_EMIT_ROL_W(i32) #1

declare dso_local i32 @JIT_EMIT_ROL_L(i32) #1

declare dso_local i32 @JIT_EMIT_ROR_B(i32) #1

declare dso_local i32 @JIT_EMIT_ROR_W(i32) #1

declare dso_local i32 @JIT_EMIT_ROR_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_B(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
