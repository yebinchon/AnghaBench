; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divl_32_ix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_divl_32_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@NFLAG_SET = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@ZFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@EXCEPTION_ZERO_DIVIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_divl_32_ix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @CPU_TYPE, align 4
  %12 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %279

14:                                               ; preds = %0
  %15 = call i32 (...) @OPER_I_16()
  store i32 %15, i32* %1, align 4
  %16 = call i32 (...) @OPER_AY_IX_32()
  store i32 %16, i32* %2, align 4
  %17 = load i32*, i32** @REG_D, align 8
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32*, i32** @REG_D, align 8
  %24 = load i32, i32* %1, align 4
  %25 = ashr i32 %24, 12
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %276

32:                                               ; preds = %14
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @BIT_A(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %200

36:                                               ; preds = %32
  %37 = load i32, i32* %1, align 4
  %38 = call i64 @BIT_B(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, -2147483648
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32*, i32** @REG_D, align 8
  %51 = load i32, i32* %1, align 4
  %52 = and i32 %51, 7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** @REG_D, align 8
  %56 = load i32, i32* %1, align 4
  %57 = ashr i32 %56, 12
  %58 = and i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32 -2147483648, i32* %60, align 4
  %61 = load i32, i32* @NFLAG_SET, align 4
  store i32 %61, i32* @FLAG_N, align 4
  %62 = load i32, i32* @ZFLAG_CLEAR, align 4
  store i32 %62, i32* @FLAG_Z, align 4
  %63 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %63, i32* @FLAG_V, align 4
  %64 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %64, i32* @FLAG_C, align 4
  br label %281

65:                                               ; preds = %46, %43, %40
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @GET_MSB_32(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = sub nsw i32 %71, %74
  %76 = call i32 @MASK_OUT_ABOVE_32(i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @MASK_OUT_ABOVE_32(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %65
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @GET_MSB_32(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  %85 = load i32, i32* %2, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @MASK_OUT_ABOVE_32(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @VFLAG_SET, align 4
  store i32 %94, i32* @FLAG_V, align 4
  br label %281

95:                                               ; preds = %89
  store i32 31, i32* %9, align 4
  br label %96

96:                                               ; preds = %119, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 %100, 1
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 1
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %9, align 4
  %106 = ashr i32 %104, %105
  %107 = and i32 %106, 1
  %108 = add nsw i32 %103, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %2, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %9, align 4
  br label %96

122:                                              ; preds = %96
  store i32 31, i32* %9, align 4
  br label %123

123:                                              ; preds = %151, %122
  %124 = load i32, i32* %9, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @GET_MSB_32(i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %6, align 4
  %132 = shl i32 %131, 1
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %9, align 4
  %135 = ashr i32 %133, %134
  %136 = and i32 %135, 1
  %137 = add nsw i32 %132, %136
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141, %126
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %144, %141
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %9, align 4
  br label %123

154:                                              ; preds = %123
  %155 = load i32, i32* %1, align 4
  %156 = call i64 @BIT_B(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = icmp sgt i32 %159, 2147483647
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @VFLAG_SET, align 4
  store i32 %162, i32* @FLAG_V, align 4
  br label %281

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 0, %167
  %169 = call i32 @MASK_OUT_ABOVE_32(i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %5, align 4
  %171 = sub nsw i32 0, %170
  %172 = call i32 @MASK_OUT_ABOVE_32(i32 %171)
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %166, %163
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32, i32* %5, align 4
  %178 = sub nsw i32 0, %177
  %179 = call i32 @MASK_OUT_ABOVE_32(i32 %178)
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %173
  br label %181

181:                                              ; preds = %180, %154
  %182 = load i32, i32* %6, align 4
  %183 = load i32*, i32** @REG_D, align 8
  %184 = load i32, i32* %1, align 4
  %185 = and i32 %184, 7
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load i32*, i32** @REG_D, align 8
  %190 = load i32, i32* %1, align 4
  %191 = ashr i32 %190, 12
  %192 = and i32 %191, 7
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @NFLAG_32(i32 %195)
  store i32 %196, i32* @FLAG_N, align 4
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* @FLAG_Z, align 4
  %198 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %198, i32* @FLAG_V, align 4
  %199 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %199, i32* @FLAG_C, align 4
  br label %281

200:                                              ; preds = %32
  %201 = load i32, i32* %1, align 4
  %202 = call i64 @BIT_B(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %248

204:                                              ; preds = %200
  %205 = load i32, i32* %4, align 4
  %206 = icmp eq i32 %205, -2147483648
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load i32, i32* %2, align 4
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load i32, i32* @NFLAG_SET, align 4
  store i32 %211, i32* @FLAG_N, align 4
  %212 = load i32, i32* @ZFLAG_CLEAR, align 4
  store i32 %212, i32* @FLAG_Z, align 4
  %213 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %213, i32* @FLAG_V, align 4
  %214 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %214, i32* @FLAG_C, align 4
  %215 = load i32*, i32** @REG_D, align 8
  %216 = load i32, i32* %1, align 4
  %217 = ashr i32 %216, 12
  %218 = and i32 %217, 7
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  store i32 -2147483648, i32* %220, align 4
  %221 = load i32*, i32** @REG_D, align 8
  %222 = load i32, i32* %1, align 4
  %223 = and i32 %222, 7
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  store i32 0, i32* %225, align 4
  br label %281

226:                                              ; preds = %207, %204
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @MAKE_INT_32(i32 %227)
  %229 = load i32, i32* %2, align 4
  %230 = call i32 @MAKE_INT_32(i32 %229)
  %231 = srem i32 %228, %230
  %232 = load i32*, i32** @REG_D, align 8
  %233 = load i32, i32* %1, align 4
  %234 = and i32 %233, 7
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @MAKE_INT_32(i32 %237)
  %239 = load i32, i32* %2, align 4
  %240 = call i32 @MAKE_INT_32(i32 %239)
  %241 = sdiv i32 %238, %240
  %242 = load i32*, i32** @REG_D, align 8
  %243 = load i32, i32* %1, align 4
  %244 = ashr i32 %243, 12
  %245 = and i32 %244, 7
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  store i32 %241, i32* %247, align 4
  store i32 %241, i32* %5, align 4
  br label %270

248:                                              ; preds = %200
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @MASK_OUT_ABOVE_32(i32 %249)
  %251 = load i32, i32* %2, align 4
  %252 = call i32 @MASK_OUT_ABOVE_32(i32 %251)
  %253 = srem i32 %250, %252
  %254 = load i32*, i32** @REG_D, align 8
  %255 = load i32, i32* %1, align 4
  %256 = and i32 %255, 7
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @MASK_OUT_ABOVE_32(i32 %259)
  %261 = load i32, i32* %2, align 4
  %262 = call i32 @MASK_OUT_ABOVE_32(i32 %261)
  %263 = sdiv i32 %260, %262
  %264 = load i32*, i32** @REG_D, align 8
  %265 = load i32, i32* %1, align 4
  %266 = ashr i32 %265, 12
  %267 = and i32 %266, 7
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  store i32 %263, i32* %269, align 4
  store i32 %263, i32* %5, align 4
  br label %270

270:                                              ; preds = %248, %226
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @NFLAG_32(i32 %271)
  store i32 %272, i32* @FLAG_N, align 4
  %273 = load i32, i32* %5, align 4
  store i32 %273, i32* @FLAG_Z, align 4
  %274 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %274, i32* @FLAG_V, align 4
  %275 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %275, i32* @FLAG_C, align 4
  br label %281

276:                                              ; preds = %14
  %277 = load i32, i32* @EXCEPTION_ZERO_DIVIDE, align 4
  %278 = call i32 @m68ki_exception_trap(i32 %277)
  br label %281

279:                                              ; preds = %0
  %280 = call i32 (...) @m68ki_exception_illegal()
  br label %281

281:                                              ; preds = %279, %276, %270, %210, %181, %161, %93, %49
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @OPER_AY_IX_32(...) #1

declare dso_local i64 @BIT_A(i32) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @GET_MSB_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @MAKE_INT_32(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
