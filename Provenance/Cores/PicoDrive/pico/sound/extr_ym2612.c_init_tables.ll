; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_init_tables.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@SIN_LEN = common dso_local global i32 0, align 4
@ENV_STEP = common dso_local global i32 0, align 4
@ym_sin_tab = common dso_local global i32* null, align 8
@TL_RES_LEN = common dso_local global i32 0, align 4
@ym_tl_tab2 = common dso_local global i32* null, align 8
@ym_tl_tab = common dso_local global i32* null, align 8
@lfo_pm_output = common dso_local global i64** null, align 8
@lfo_pm_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %72, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @M_PI, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @SIN_LEN, align 4
  %25 = sdiv i32 %23, %24
  %26 = call double @sin(i32 %25)
  store double %26, double* %7, align 8
  %27 = load double, double* %7, align 8
  %28 = fcmp ogt double %27, 0.000000e+00
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load double, double* %7, align 8
  %31 = fdiv double 1.000000e+00, %30
  %32 = fptosi double %31 to i32
  %33 = call i32 @log(i32 %32)
  %34 = mul nsw i32 8, %33
  %35 = call i32 @log(i32 2)
  %36 = sdiv i32 %34, %35
  %37 = sitofp i32 %36 to double
  store double %37, double* %6, align 8
  br label %47

38:                                               ; preds = %18
  %39 = load double, double* %7, align 8
  %40 = fdiv double -1.000000e+00, %39
  %41 = fptosi double %40 to i32
  %42 = call i32 @log(i32 %41)
  %43 = mul nsw i32 8, %42
  %44 = call i32 @log(i32 2)
  %45 = sdiv i32 %43, %44
  %46 = sitofp i32 %45 to double
  store double %46, double* %6, align 8
  br label %47

47:                                               ; preds = %38, %29
  %48 = load double, double* %6, align 8
  %49 = load i32, i32* @ENV_STEP, align 4
  %50 = sdiv i32 %49, 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %48, %51
  store double %52, double* %6, align 8
  %53 = load double, double* %6, align 8
  %54 = fmul double 2.000000e+00, %53
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 1
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** @ym_sin_tab, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %15

75:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %136, %75
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @TL_RES_LEN, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %139

80:                                               ; preds = %76
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  %83 = sitofp i32 %82 to double
  %84 = load i32, i32* @ENV_STEP, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 4.000000e+00
  %87 = fmul double %83, %86
  %88 = fdiv double %87, 8.000000e+00
  %89 = fptosi double %88 to i32
  %90 = call i32 @pow(i32 2, i32 %89)
  %91 = sdiv i32 65536, %90
  %92 = sitofp i32 %91 to double
  store double %92, double* %7, align 8
  %93 = load double, double* %7, align 8
  %94 = call double @llvm.floor.f64(double %93)
  store double %94, double* %7, align 8
  %95 = load double, double* %7, align 8
  %96 = fptosi double %95 to i32
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 4
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %80
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 1
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %109

106:                                              ; preds = %80
  %107 = load i32, i32* %5, align 4
  %108 = ashr i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, 2
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32*, i32** @ym_tl_tab2, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  store i32 1, i32* %1, align 4
  br label %117

117:                                              ; preds = %132, %109
  %118 = load i32, i32* %1, align 4
  %119 = icmp slt i32 %118, 13
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %1, align 4
  %123 = ashr i32 %121, %122
  %124 = load i32*, i32** @ym_tl_tab2, align 8
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* %1, align 4
  %127 = load i32, i32* @TL_RES_LEN, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  store i32 %123, i32* %131, align 4
  br label %132

132:                                              ; preds = %120
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %117

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %2, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %2, align 4
  br label %76

139:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %190, %139
  %141 = load i32, i32* %2, align 4
  %142 = icmp slt i32 %141, 256
  br i1 %142, label %143, label %193

143:                                              ; preds = %140
  %144 = load i32*, i32** @ym_sin_tab, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %186, %143
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @TL_RES_LEN, align 4
  %152 = mul nsw i32 26, %151
  %153 = sdiv i32 %152, 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %189

155:                                              ; preds = %149
  %156 = load i32, i32* %3, align 4
  %157 = shl i32 %156, 2
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @TL_RES_LEN, align 4
  %162 = mul nsw i32 13, %161
  %163 = icmp sge i32 %160, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %155
  %165 = load i32*, i32** @ym_tl_tab, align 8
  %166 = load i32, i32* %3, align 4
  %167 = shl i32 %166, 7
  %168 = load i32, i32* %2, align 4
  %169 = or i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 0, i32* %171, align 4
  br label %185

172:                                              ; preds = %155
  %173 = load i32*, i32** @ym_tl_tab2, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** @ym_tl_tab, align 8
  %179 = load i32, i32* %3, align 4
  %180 = shl i32 %179, 7
  %181 = load i32, i32* %2, align 4
  %182 = or i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %178, i64 %183
  store i32 %177, i32* %184, align 4
  br label %185

185:                                              ; preds = %172, %164
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 2
  store i32 %188, i32* %3, align 4
  br label %149

189:                                              ; preds = %149
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %2, align 4
  br label %140

193:                                              ; preds = %140
  store i32 0, i32* %1, align 4
  br label %194

194:                                              ; preds = %303, %193
  %195 = load i32, i32* %1, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %306

197:                                              ; preds = %194
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %299, %197
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %199, 128
  br i1 %200, label %201, label %302

201:                                              ; preds = %198
  %202 = load i32, i32* %1, align 4
  store i32 %202, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %295, %201
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %298

206:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %207

207:                                              ; preds = %235, %206
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %208, 7
  br i1 %209, label %210, label %238

210:                                              ; preds = %207
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %14, align 4
  %213 = shl i32 1, %212
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %210
  %217 = load i32, i32* %14, align 4
  %218 = mul nsw i32 %217, 8
  store i32 %218, i32* %13, align 4
  %219 = load i64**, i64*** @lfo_pm_output, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64*, i64** %219, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %10, align 4
  br label %234

234:                                              ; preds = %216, %210
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %207

238:                                              ; preds = %207
  %239 = load i32, i32* %10, align 4
  %240 = load i32*, i32** @lfo_pm_table, align 8
  %241 = load i32, i32* %9, align 4
  %242 = mul nsw i32 %241, 32
  %243 = mul nsw i32 %242, 8
  %244 = load i32, i32* %1, align 4
  %245 = mul nsw i32 %244, 32
  %246 = add nsw i32 %243, %245
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %246, %247
  %249 = add nsw i32 %248, 0
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %240, i64 %250
  store i32 %239, i32* %251, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load i32*, i32** @lfo_pm_table, align 8
  %254 = load i32, i32* %9, align 4
  %255 = mul nsw i32 %254, 32
  %256 = mul nsw i32 %255, 8
  %257 = load i32, i32* %1, align 4
  %258 = mul nsw i32 %257, 32
  %259 = add nsw i32 %256, %258
  %260 = load i32, i32* %11, align 4
  %261 = xor i32 %260, 7
  %262 = add nsw i32 %259, %261
  %263 = add nsw i32 %262, 8
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %253, i64 %264
  store i32 %252, i32* %265, align 4
  %266 = load i32, i32* %10, align 4
  %267 = sub nsw i32 0, %266
  %268 = load i32*, i32** @lfo_pm_table, align 8
  %269 = load i32, i32* %9, align 4
  %270 = mul nsw i32 %269, 32
  %271 = mul nsw i32 %270, 8
  %272 = load i32, i32* %1, align 4
  %273 = mul nsw i32 %272, 32
  %274 = add nsw i32 %271, %273
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %274, %275
  %277 = add nsw i32 %276, 16
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %268, i64 %278
  store i32 %267, i32* %279, align 4
  %280 = load i32, i32* %10, align 4
  %281 = sub nsw i32 0, %280
  %282 = load i32*, i32** @lfo_pm_table, align 8
  %283 = load i32, i32* %9, align 4
  %284 = mul nsw i32 %283, 32
  %285 = mul nsw i32 %284, 8
  %286 = load i32, i32* %1, align 4
  %287 = mul nsw i32 %286, 32
  %288 = add nsw i32 %285, %287
  %289 = load i32, i32* %11, align 4
  %290 = xor i32 %289, 7
  %291 = add nsw i32 %288, %290
  %292 = add nsw i32 %291, 24
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %282, i64 %293
  store i32 %281, i32* %294, align 4
  br label %295

295:                                              ; preds = %238
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %11, align 4
  br label %203

298:                                              ; preds = %203
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %198

302:                                              ; preds = %198
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %1, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %1, align 4
  br label %194

306:                                              ; preds = %194
  ret void
}

declare dso_local double @sin(i32) #1

declare dso_local i32 @log(i32) #1

declare dso_local i32 @pow(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
