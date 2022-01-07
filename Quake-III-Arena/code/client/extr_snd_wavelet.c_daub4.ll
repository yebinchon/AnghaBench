; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_daub4.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_daub4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C0 = common dso_local global float 0.000000e+00, align 4
@C1 = common dso_local global float 0.000000e+00, align 4
@C2 = common dso_local global float 0.000000e+00, align 4
@C3 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daub4(float* %0, i64 %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4097 x float], align 16
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 -1
  store float* %14, float** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %310

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = lshr i64 %19, 1
  store i64 %20, i64* %9, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %161

24:                                               ; preds = %18
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  br label %25

25:                                               ; preds = %97, %24
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 3
  %29 = icmp ule i64 %26, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %25
  %31 = load float, float* @C0, align 4
  %32 = load float*, float** %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds float, float* %32, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fmul float %31, %35
  %37 = load float, float* @C1, align 4
  %38 = load float*, float** %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %37, %42
  %44 = fadd float %36, %43
  %45 = load float, float* @C2, align 4
  %46 = load float*, float** %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 2
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fmul float %45, %50
  %52 = fadd float %44, %51
  %53 = load float, float* @C3, align 4
  %54 = load float*, float** %8, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 3
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fmul float %53, %58
  %60 = fadd float %52, %59
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %61
  store float %60, float* %62, align 4
  %63 = load float, float* @C3, align 4
  %64 = load float*, float** %8, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %63, %67
  %69 = load float, float* @C2, align 4
  %70 = load float*, float** %8, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fmul float %69, %74
  %76 = fsub float %68, %75
  %77 = load float, float* @C1, align 4
  %78 = load float*, float** %8, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 2
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fmul float %77, %82
  %84 = fadd float %76, %83
  %85 = load float, float* @C0, align 4
  %86 = load float*, float** %8, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 3
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fmul float %85, %90
  %92 = fsub float %84, %91
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %93, %94
  %96 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %95
  store float %92, float* %96, align 4
  br label %97

97:                                               ; preds = %30
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 2
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %25

102:                                              ; preds = %25
  %103 = load float, float* @C0, align 4
  %104 = load float*, float** %8, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fmul float %103, %108
  %110 = load float, float* @C1, align 4
  %111 = load float*, float** %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds float, float* %111, i64 %112
  %114 = load float, float* %113, align 4
  %115 = fmul float %110, %114
  %116 = fadd float %109, %115
  %117 = load float, float* @C2, align 4
  %118 = load float*, float** %8, align 8
  %119 = getelementptr inbounds float, float* %118, i64 1
  %120 = load float, float* %119, align 4
  %121 = fmul float %117, %120
  %122 = fadd float %116, %121
  %123 = load float, float* @C3, align 4
  %124 = load float*, float** %8, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  %126 = load float, float* %125, align 4
  %127 = fmul float %123, %126
  %128 = fadd float %122, %127
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %129
  store float %128, float* %130, align 4
  %131 = load float, float* @C3, align 4
  %132 = load float*, float** %8, align 8
  %133 = load i64, i64* %5, align 8
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fmul float %131, %136
  %138 = load float, float* @C2, align 4
  %139 = load float*, float** %8, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds float, float* %139, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fmul float %138, %142
  %144 = fsub float %137, %143
  %145 = load float, float* @C1, align 4
  %146 = load float*, float** %8, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  %148 = load float, float* %147, align 4
  %149 = fmul float %145, %148
  %150 = fadd float %144, %149
  %151 = load float, float* @C0, align 4
  %152 = load float*, float** %8, align 8
  %153 = getelementptr inbounds float, float* %152, i64 2
  %154 = load float, float* %153, align 4
  %155 = fmul float %151, %154
  %156 = fsub float %150, %155
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %157, %158
  %160 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %159
  store float %156, float* %160, align 4
  br label %295

161:                                              ; preds = %18
  %162 = load float, float* @C2, align 4
  %163 = load float*, float** %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds float, float* %163, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fmul float %162, %166
  %168 = load float, float* @C1, align 4
  %169 = load float*, float** %8, align 8
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds float, float* %169, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fmul float %168, %172
  %174 = fadd float %167, %173
  %175 = load float, float* @C0, align 4
  %176 = load float*, float** %8, align 8
  %177 = getelementptr inbounds float, float* %176, i64 1
  %178 = load float, float* %177, align 4
  %179 = fmul float %175, %178
  %180 = fadd float %174, %179
  %181 = load float, float* @C3, align 4
  %182 = load float*, float** %8, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds float, float* %182, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fmul float %181, %185
  %187 = fadd float %180, %186
  %188 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 1
  store float %187, float* %188, align 4
  %189 = load float, float* @C3, align 4
  %190 = load float*, float** %8, align 8
  %191 = load i64, i64* %9, align 8
  %192 = getelementptr inbounds float, float* %190, i64 %191
  %193 = load float, float* %192, align 4
  %194 = fmul float %189, %193
  %195 = load float, float* @C0, align 4
  %196 = load float*, float** %8, align 8
  %197 = load i64, i64* %5, align 8
  %198 = getelementptr inbounds float, float* %196, i64 %197
  %199 = load float, float* %198, align 4
  %200 = fmul float %195, %199
  %201 = fsub float %194, %200
  %202 = load float, float* @C1, align 4
  %203 = load float*, float** %8, align 8
  %204 = getelementptr inbounds float, float* %203, i64 1
  %205 = load float, float* %204, align 4
  %206 = fmul float %202, %205
  %207 = fadd float %201, %206
  %208 = load float, float* @C2, align 4
  %209 = load float*, float** %8, align 8
  %210 = load i64, i64* %10, align 8
  %211 = getelementptr inbounds float, float* %209, i64 %210
  %212 = load float, float* %211, align 4
  %213 = fmul float %208, %212
  %214 = fsub float %207, %213
  %215 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 2
  store float %214, float* %215, align 8
  store i64 1, i64* %11, align 8
  store i64 3, i64* %12, align 8
  br label %216

216:                                              ; preds = %291, %161
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* %9, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %294

220:                                              ; preds = %216
  %221 = load float, float* @C2, align 4
  %222 = load float*, float** %8, align 8
  %223 = load i64, i64* %11, align 8
  %224 = getelementptr inbounds float, float* %222, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fmul float %221, %225
  %227 = load float, float* @C1, align 4
  %228 = load float*, float** %8, align 8
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* %9, align 8
  %231 = add i64 %229, %230
  %232 = getelementptr inbounds float, float* %228, i64 %231
  %233 = load float, float* %232, align 4
  %234 = fmul float %227, %233
  %235 = fadd float %226, %234
  %236 = load float, float* @C0, align 4
  %237 = load float*, float** %8, align 8
  %238 = load i64, i64* %11, align 8
  %239 = add i64 %238, 1
  %240 = getelementptr inbounds float, float* %237, i64 %239
  %241 = load float, float* %240, align 4
  %242 = fmul float %236, %241
  %243 = fadd float %235, %242
  %244 = load float, float* @C3, align 4
  %245 = load float*, float** %8, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %10, align 8
  %248 = add i64 %246, %247
  %249 = getelementptr inbounds float, float* %245, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fmul float %244, %250
  %252 = fadd float %243, %251
  %253 = load i64, i64* %12, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %12, align 8
  %255 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %253
  store float %252, float* %255, align 4
  %256 = load float, float* @C3, align 4
  %257 = load float*, float** %8, align 8
  %258 = load i64, i64* %11, align 8
  %259 = getelementptr inbounds float, float* %257, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fmul float %256, %260
  %262 = load float, float* @C0, align 4
  %263 = load float*, float** %8, align 8
  %264 = load i64, i64* %11, align 8
  %265 = load i64, i64* %9, align 8
  %266 = add i64 %264, %265
  %267 = getelementptr inbounds float, float* %263, i64 %266
  %268 = load float, float* %267, align 4
  %269 = fmul float %262, %268
  %270 = fsub float %261, %269
  %271 = load float, float* @C1, align 4
  %272 = load float*, float** %8, align 8
  %273 = load i64, i64* %11, align 8
  %274 = add i64 %273, 1
  %275 = getelementptr inbounds float, float* %272, i64 %274
  %276 = load float, float* %275, align 4
  %277 = fmul float %271, %276
  %278 = fadd float %270, %277
  %279 = load float, float* @C2, align 4
  %280 = load float*, float** %8, align 8
  %281 = load i64, i64* %11, align 8
  %282 = load i64, i64* %10, align 8
  %283 = add i64 %281, %282
  %284 = getelementptr inbounds float, float* %280, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fmul float %279, %285
  %287 = fsub float %278, %286
  %288 = load i64, i64* %12, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %12, align 8
  %290 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %288
  store float %287, float* %290, align 4
  br label %291

291:                                              ; preds = %220
  %292 = load i64, i64* %11, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %11, align 8
  br label %216

294:                                              ; preds = %216
  br label %295

295:                                              ; preds = %294, %102
  store i64 1, i64* %11, align 8
  br label %296

296:                                              ; preds = %307, %295
  %297 = load i64, i64* %11, align 8
  %298 = load i64, i64* %5, align 8
  %299 = icmp ule i64 %297, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = load i64, i64* %11, align 8
  %302 = getelementptr inbounds [4097 x float], [4097 x float]* %7, i64 0, i64 %301
  %303 = load float, float* %302, align 4
  %304 = load float*, float** %8, align 8
  %305 = load i64, i64* %11, align 8
  %306 = getelementptr inbounds float, float* %304, i64 %305
  store float %303, float* %306, align 4
  br label %307

307:                                              ; preds = %300
  %308 = load i64, i64* %11, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %11, align 8
  br label %296

310:                                              ; preds = %17, %296
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
