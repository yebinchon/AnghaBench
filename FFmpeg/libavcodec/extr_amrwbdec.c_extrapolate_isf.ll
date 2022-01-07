; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_extrapolate_isf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_extrapolate_isf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_ORDER_16k = common dso_local global i32 0, align 4
@LP_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*)* @extrapolate_isf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extrapolate_isf(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %12 = load i32, i32* @LP_ORDER_16k, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @LP_ORDER, align 4
  %15 = sub nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca float, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load float*, float** %2, align 8
  %20 = load i32, i32* @LP_ORDER, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %19, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %2, align 8
  %26 = load i32, i32* @LP_ORDER_16k, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  store float %24, float* %29, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %1
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @LP_ORDER, align 4
  %33 = sub nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load float*, float** %2, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %2, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fsub float %41, %46
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %18, i64 %49
  store float %47, float* %50, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %30

54:                                               ; preds = %30
  store float 0.000000e+00, float* %5, align 4
  store i32 2, i32* %9, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @LP_ORDER, align 4
  %58 = sub nsw i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %18, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load i32, i32* @LP_ORDER, align 4
  %66 = sub nsw i32 %65, 4
  %67 = sitofp i32 %66 to float
  %68 = fdiv float 1.000000e+00, %67
  %69 = fmul float %64, %68
  %70 = load float, float* %5, align 4
  %71 = fadd float %70, %69
  store float %71, float* %5, align 4
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %55

75:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load float, float* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 2
  %83 = call float @auto_correlation(float* %18, float %80, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 %85
  store float %83, float* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fcmp ogt float %90, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %76

102:                                              ; preds = %76
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @LP_ORDER, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %141, %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @LP_ORDER_16k, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %107
  %113 = load float*, float** %2, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %113, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %2, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %119, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fadd float %118, %126
  %128 = load float*, float** %2, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, 2
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %128, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fsub float %127, %135
  %137 = load float*, float** %2, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float %136, float* %140, align 4
  br label %141

141:                                              ; preds = %112
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %107

144:                                              ; preds = %107
  %145 = load float*, float** %2, align 8
  %146 = getelementptr inbounds float, float* %145, i64 2
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %2, align 8
  %149 = getelementptr inbounds float, float* %148, i64 3
  %150 = load float, float* %149, align 4
  %151 = fsub float %147, %150
  %152 = load float*, float** %2, align 8
  %153 = getelementptr inbounds float, float* %152, i64 4
  %154 = load float, float* %153, align 4
  %155 = fsub float %151, %154
  %156 = fpext float %155 to double
  %157 = fdiv double %156, 6.000000e+00
  %158 = fadd double 7.965000e+03, %157
  %159 = fptrunc double %158 to float
  store float %159, float* %7, align 4
  %160 = load float, float* %7, align 4
  %161 = call float @FFMIN(float %160, i32 7600)
  %162 = load float*, float** %2, align 8
  %163 = load i32, i32* @LP_ORDER, align 4
  %164 = sub nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %162, i64 %165
  %167 = load float, float* %166, align 4
  %168 = fsub float %161, %167
  %169 = fpext float %168 to double
  %170 = fmul double 5.000000e-01, %169
  %171 = load float*, float** %2, align 8
  %172 = load i32, i32* @LP_ORDER_16k, align 4
  %173 = sub nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %2, align 8
  %178 = load i32, i32* @LP_ORDER, align 4
  %179 = sub nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %177, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fsub float %176, %182
  %184 = fpext float %183 to double
  %185 = fdiv double %170, %184
  %186 = fptrunc double %185 to float
  store float %186, float* %8, align 4
  %187 = load i32, i32* @LP_ORDER, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %212, %144
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @LP_ORDER_16k, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %189
  %195 = load float, float* %8, align 4
  %196 = load float*, float** %2, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** %2, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %201, i64 %204
  %206 = load float, float* %205, align 4
  %207 = fsub float %200, %206
  %208 = fmul float %195, %207
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %18, i64 %210
  store float %208, float* %211, align 4
  br label %212

212:                                              ; preds = %194
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %189

217:                                              ; preds = %189
  store i32 1, i32* %9, align 4
  br label %218

218:                                              ; preds = %274, %217
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @LP_ORDER_16k, align 4
  %221 = load i32, i32* @LP_ORDER, align 4
  %222 = sub nsw i32 %220, %221
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %277

224:                                              ; preds = %218
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %18, i64 %226
  %228 = load float, float* %227, align 4
  %229 = load i32, i32* %9, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %18, i64 %231
  %233 = load float, float* %232, align 4
  %234 = fadd float %228, %233
  %235 = fpext float %234 to double
  %236 = fcmp olt double %235, 5.000000e+00
  br i1 %236, label %237, label %273

237:                                              ; preds = %224
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %18, i64 %239
  %241 = load float, float* %240, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %18, i64 %244
  %246 = load float, float* %245, align 4
  %247 = fcmp ogt float %241, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %237
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %18, i64 %250
  %252 = load float, float* %251, align 4
  %253 = fpext float %252 to double
  %254 = fsub double 5.000000e+00, %253
  %255 = fptrunc double %254 to float
  %256 = load i32, i32* %9, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %18, i64 %258
  store float %255, float* %259, align 4
  br label %272

260:                                              ; preds = %237
  %261 = load i32, i32* %9, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %18, i64 %263
  %265 = load float, float* %264, align 4
  %266 = fpext float %265 to double
  %267 = fsub double 5.000000e+00, %266
  %268 = fptrunc double %267 to float
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %18, i64 %270
  store float %268, float* %271, align 4
  br label %272

272:                                              ; preds = %260, %248
  br label %273

273:                                              ; preds = %272, %224
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %218

277:                                              ; preds = %218
  %278 = load i32, i32* @LP_ORDER, align 4
  %279 = sub nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %280

280:                                              ; preds = %302, %277
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @LP_ORDER_16k, align 4
  %283 = sub nsw i32 %282, 1
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %307

285:                                              ; preds = %280
  %286 = load float*, float** %2, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %286, i64 %289
  %291 = load float, float* %290, align 4
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %18, i64 %293
  %295 = load float, float* %294, align 4
  %296 = fmul float %295, 0x3F00000000000000
  %297 = fadd float %291, %296
  %298 = load float*, float** %2, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  store float %297, float* %301, align 4
  br label %302

302:                                              ; preds = %285
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  br label %280

307:                                              ; preds = %280
  store i32 0, i32* %9, align 4
  br label %308

308:                                              ; preds = %322, %307
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* @LP_ORDER_16k, align 4
  %311 = sub nsw i32 %310, 1
  %312 = icmp slt i32 %309, %311
  br i1 %312, label %313, label %325

313:                                              ; preds = %308
  %314 = load float*, float** %2, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %314, i64 %316
  %318 = load float, float* %317, align 4
  %319 = fpext float %318 to double
  %320 = fmul double %319, 8.000000e-01
  %321 = fptrunc double %320 to float
  store float %321, float* %317, align 4
  br label %322

322:                                              ; preds = %313
  %323 = load i32, i32* %9, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %9, align 4
  br label %308

325:                                              ; preds = %308
  %326 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %326)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @auto_correlation(float*, float, i32) #2

declare dso_local float @FFMIN(float, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
