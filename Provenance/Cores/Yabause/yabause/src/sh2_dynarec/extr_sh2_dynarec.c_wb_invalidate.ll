; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_wb_invalidate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_wb_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@TEMPREG = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wb_invalidate(i8* %0, i8* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %112, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @HOST_REGS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @EXCLUDE_REG, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %27, %33
  br i1 %34, label %35, label %110

35:                                               ; preds = %21
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %109

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %44, %45
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %108

49:                                               ; preds = %43
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = ashr i32 %51, %57
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %49
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @get_reg(i8* %62, i8 signext %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @emit_storereg(i8 signext %76, i32 %77)
  br label %106

79:                                               ; preds = %61
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @get_reg(i8* %88, i8 signext %93)
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @emit_storereg(i8 signext %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %87
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %71
  br label %107

107:                                              ; preds = %106, %49
  br label %108

108:                                              ; preds = %107, %43
  br label %109

109:                                              ; preds = %108, %35
  br label %110

110:                                              ; preds = %109, %21
  br label %111

111:                                              ; preds = %110, %17
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %13

115:                                              ; preds = %13
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %193, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @HOST_REGS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %196

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @EXCLUDE_REG, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %192

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %130, %136
  br i1 %137, label %138, label %191

138:                                              ; preds = %124
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %190

146:                                              ; preds = %138
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = and i32 %152, 63
  %154 = load i8, i8* @TEMPREG, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %190

157:                                              ; preds = %146
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = call i64 @get_reg(i8* %158, i8 signext %163)
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %11, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %157
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %167
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %5, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = call i64 @get_reg(i8* %176, i8 signext %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %175, %167
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @emit_mov(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %175
  br label %189

189:                                              ; preds = %188, %157
  br label %190

190:                                              ; preds = %189, %146, %138
  br label %191

191:                                              ; preds = %190, %124
  br label %192

192:                                              ; preds = %191, %120
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %116

196:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %197

197:                                              ; preds = %279, %196
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @HOST_REGS, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %282

201:                                              ; preds = %197
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @EXCLUDE_REG, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %278

205:                                              ; preds = %201
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %211, %217
  br i1 %218, label %219, label %277

219:                                              ; preds = %205
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %276

227:                                              ; preds = %219
  %228 = load i8*, i8** %5, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = and i32 %233, 63
  %235 = load i8, i8* @TEMPREG, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %238, label %276

238:                                              ; preds = %227
  %239 = load i8*, i8** %6, align 8
  %240 = load i8*, i8** %5, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = call i64 @get_reg(i8* %239, i8 signext %244)
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %12, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %275

248:                                              ; preds = %238
  %249 = load i8*, i8** %5, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %248
  %257 = load i8*, i8** %6, align 8
  %258 = load i8*, i8** %5, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = call i64 @get_reg(i8* %257, i8 signext %262)
  %264 = icmp sge i64 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = load i32, i32* %12, align 4
  %272 = call i32 @emit_loadreg(i8 signext %270, i32 %271)
  br label %273

273:                                              ; preds = %265, %256
  br label %274

274:                                              ; preds = %273, %248
  br label %275

275:                                              ; preds = %274, %238
  br label %276

276:                                              ; preds = %275, %227, %219
  br label %277

277:                                              ; preds = %276, %205
  br label %278

278:                                              ; preds = %277, %201
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %197

282:                                              ; preds = %197
  ret void
}

declare dso_local i64 @get_reg(i8*, i8 signext) #1

declare dso_local i32 @emit_storereg(i8 signext, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_loadreg(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
