; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op4alu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op4alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_SIZE = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@size = common dso_local global i64 0, align 8
@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i64 0, align 8
@current_entry = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op4alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op4alu(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @INSN_GET_SIZE, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 9
  %12 = and i32 %11, 7
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @EA_MODE(i32 %13)
  %15 = load i64, i64* @EA_ADDRESS_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @op_ill(i32* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %263

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* @size, align 8
  %25 = call i32 @ea_get(i32* %22, i32 %23, i64 %24, i32 1, i32* %7, i32 1)
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %263

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 5
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @EA_MODE(i32 %33)
  %35 = load i64, i64* @EA_DATA_REG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* @size, align 8
  %39 = load i64, i64* @SIZE_L, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %37
  br label %53

45:                                               ; preds = %32
  %46 = load i64, i64* @size, align 8
  %47 = load i64, i64* @SIZE_L, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 8, i32 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %44
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* @current_entry, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 3
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 -1, i32 0
  %60 = call i32 @JIT_EMIT_GET_OP2_IMMEDIATE(i32 %55, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @cc_needed(i32* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %213 [
    i32 0, label %65
    i32 2, label %102
    i32 1, label %139
    i32 3, label %176
  ]

65:                                               ; preds = %54
  %66 = load i64, i64* @size, align 8
  %67 = load i64, i64* @SIZE_B, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @current_entry, align 4
  %71 = call i32 @JIT_EMIT_SUBX_B(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @current_entry, align 4
  %76 = call i32 @JIT_EMIT_SETCC_SUBX_B(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %101

78:                                               ; preds = %65
  %79 = load i64, i64* @size, align 8
  %80 = load i64, i64* @SIZE_W, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* @current_entry, align 4
  %84 = call i32 @JIT_EMIT_SUBX_W(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @current_entry, align 4
  %89 = call i32 @JIT_EMIT_SETCC_SUBX_W(i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %100

91:                                               ; preds = %78
  %92 = load i32, i32* @current_entry, align 4
  %93 = call i32 @JIT_EMIT_SUBX_L(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @current_entry, align 4
  %98 = call i32 @JIT_EMIT_SETCC_SUBX_L(i32 %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %90
  br label %101

101:                                              ; preds = %100, %77
  br label %250

102:                                              ; preds = %54
  %103 = load i64, i64* @size, align 8
  %104 = load i64, i64* @SIZE_B, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i32, i32* @current_entry, align 4
  %108 = call i32 @JIT_EMIT_SUB_B(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @current_entry, align 4
  %113 = call i32 @JIT_EMIT_SETCC_SUB_B(i32 %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %138

115:                                              ; preds = %102
  %116 = load i64, i64* @size, align 8
  %117 = load i64, i64* @SIZE_W, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* @current_entry, align 4
  %121 = call i32 @JIT_EMIT_SUB_W(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @current_entry, align 4
  %126 = call i32 @JIT_EMIT_SETCC_SUB_W(i32 %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %137

128:                                              ; preds = %115
  %129 = load i32, i32* @current_entry, align 4
  %130 = call i32 @JIT_EMIT_SUB_L(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @current_entry, align 4
  %135 = call i32 @JIT_EMIT_SETCC_SUB_L(i32 %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %127
  br label %138

138:                                              ; preds = %137, %114
  br label %250

139:                                              ; preds = %54
  %140 = load i64, i64* @size, align 8
  %141 = load i64, i64* @SIZE_B, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* @current_entry, align 4
  %145 = call i32 @JIT_EMIT_AND_B(i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @current_entry, align 4
  %150 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %175

152:                                              ; preds = %139
  %153 = load i64, i64* @size, align 8
  %154 = load i64, i64* @SIZE_W, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* @current_entry, align 4
  %158 = call i32 @JIT_EMIT_AND_W(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @current_entry, align 4
  %163 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %162)
  br label %164

164:                                              ; preds = %161, %156
  br label %174

165:                                              ; preds = %152
  %166 = load i32, i32* @current_entry, align 4
  %167 = call i32 @JIT_EMIT_AND_L(i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @current_entry, align 4
  %172 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %171)
  br label %173

173:                                              ; preds = %170, %165
  br label %174

174:                                              ; preds = %173, %164
  br label %175

175:                                              ; preds = %174, %151
  br label %250

176:                                              ; preds = %54
  %177 = load i64, i64* @size, align 8
  %178 = load i64, i64* @SIZE_B, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i32, i32* @current_entry, align 4
  %182 = call i32 @JIT_EMIT_EOR_B(i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @current_entry, align 4
  %187 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %186)
  br label %188

188:                                              ; preds = %185, %180
  br label %212

189:                                              ; preds = %176
  %190 = load i64, i64* @size, align 8
  %191 = load i64, i64* @SIZE_W, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = load i32, i32* @current_entry, align 4
  %195 = call i32 @JIT_EMIT_EOR_W(i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, i32* @current_entry, align 4
  %200 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %199)
  br label %201

201:                                              ; preds = %198, %193
  br label %211

202:                                              ; preds = %189
  %203 = load i32, i32* @current_entry, align 4
  %204 = call i32 @JIT_EMIT_EOR_L(i32 %203)
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* @current_entry, align 4
  %209 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %208)
  br label %210

210:                                              ; preds = %207, %202
  br label %211

211:                                              ; preds = %210, %201
  br label %212

212:                                              ; preds = %211, %188
  br label %250

213:                                              ; preds = %54
  %214 = load i64, i64* @size, align 8
  %215 = load i64, i64* @SIZE_B, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %213
  %218 = load i32, i32* @current_entry, align 4
  %219 = call i32 @JIT_EMIT_OR_B(i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* @current_entry, align 4
  %224 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %223)
  br label %225

225:                                              ; preds = %222, %217
  br label %249

226:                                              ; preds = %213
  %227 = load i64, i64* @size, align 8
  %228 = load i64, i64* @SIZE_W, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  %231 = load i32, i32* @current_entry, align 4
  %232 = call i32 @JIT_EMIT_OR_W(i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* @current_entry, align 4
  %237 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %236)
  br label %238

238:                                              ; preds = %235, %230
  br label %248

239:                                              ; preds = %226
  %240 = load i32, i32* @current_entry, align 4
  %241 = call i32 @JIT_EMIT_OR_L(i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32, i32* @current_entry, align 4
  %246 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %245)
  br label %247

247:                                              ; preds = %244, %239
  br label %248

248:                                              ; preds = %247, %238
  br label %249

249:                                              ; preds = %248, %225
  br label %250

250:                                              ; preds = %249, %212, %175, %138, %101
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 5
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i64, i64* @size, align 8
  %257 = call i32 @ea_set(i32* %254, i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %253, %250
  %259 = load i32, i32* @current_entry, align 4
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 4, %260
  %262 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %259, i32 %261)
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %258, %28, %17
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_IMMEDIATE(i32, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_L(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_AND_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_B(i32) #1

declare dso_local i32 @JIT_EMIT_AND_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_W(i32) #1

declare dso_local i32 @JIT_EMIT_AND_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_L(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_B(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_W(i32) #1

declare dso_local i32 @JIT_EMIT_EOR_L(i32) #1

declare dso_local i32 @JIT_EMIT_OR_B(i32) #1

declare dso_local i32 @JIT_EMIT_OR_W(i32) #1

declare dso_local i32 @JIT_EMIT_OR_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i64) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
