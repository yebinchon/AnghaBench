; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc_impl.h_init_filters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_snes_ntscsnes_ntsc_impl.h_init_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@PI = common dso_local global float 0.000000e+00, align 4
@LUMA_CUTOFF = common dso_local global i64 0, align 8
@kernel_size = common dso_local global i32 0, align 4
@kernel_half = common dso_local global i32 0, align 4
@rescale_in = common dso_local global float 0.000000e+00, align 4
@rescale_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @init_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_filters(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  store float* %28, float** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to float
  %33 = fmul float %32, 0x3FA0624DE0000000
  %34 = fadd float 1.000000e+00, %33
  store float %34, float* %6, align 4
  store float 3.200000e+01, float* %7, align 4
  %35 = load float, float* %6, align 4
  %36 = call i64 @pow(float %35, float 3.200000e+01)
  %37 = sitofp i64 %36 to float
  store float %37, float* %8, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to float
  %42 = fadd float %41, 1.000000e+00
  store float %42, float* %11, align 4
  %43 = load float, float* @PI, align 4
  %44 = fdiv float %43, 3.200000e+01
  %45 = load i64, i64* @LUMA_CUTOFF, align 8
  %46 = sitofp i64 %45 to float
  %47 = fmul float %44, %46
  %48 = load float, float* %11, align 4
  %49 = load float, float* %11, align 4
  %50 = fmul float %48, %49
  %51 = fadd float %50, 1.000000e+00
  %52 = fmul float %47, %51
  store float %52, float* %11, align 4
  %53 = load float*, float** %5, align 8
  %54 = load i32, i32* @kernel_size, align 4
  %55 = mul nsw i32 %54, 3
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  store float 3.200000e+01, float* %58, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %129, %2
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @kernel_half, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %62, 1
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %132

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @kernel_half, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %11, align 4
  %72 = fmul float %70, %71
  store float %72, float* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %65
  %76 = load float, float* %8, align 4
  %77 = fcmp ogt float %76, 0x3FF0E56040000000
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load float, float* %8, align 4
  %80 = fcmp olt float %79, 0x3FEF645A20000000
  br i1 %80, label %81, label %128

81:                                               ; preds = %78, %75, %65
  %82 = load float, float* %6, align 4
  %83 = load float, float* %13, align 4
  %84 = call i64 @cos(float %83)
  %85 = sitofp i64 %84 to float
  %86 = fmul float %82, %85
  store float %86, float* %14, align 4
  %87 = load float, float* %14, align 4
  %88 = fsub float 1.000000e+00, %87
  %89 = load float, float* %8, align 4
  %90 = load float, float* %13, align 4
  %91 = fmul float 3.200000e+01, %90
  %92 = call i64 @cos(float %91)
  %93 = sitofp i64 %92 to float
  %94 = fmul float %89, %93
  %95 = fsub float %88, %94
  %96 = load float, float* %8, align 4
  %97 = load float, float* %6, align 4
  %98 = fmul float %96, %97
  %99 = load float, float* %13, align 4
  %100 = fmul float 3.100000e+01, %99
  %101 = call i64 @cos(float %100)
  %102 = sitofp i64 %101 to float
  %103 = fmul float %98, %102
  %104 = fadd float %95, %103
  store float %104, float* %15, align 4
  %105 = load float, float* %14, align 4
  %106 = fsub float 1.000000e+00, %105
  %107 = load float, float* %14, align 4
  %108 = fsub float %106, %107
  %109 = load float, float* %6, align 4
  %110 = load float, float* %6, align 4
  %111 = fmul float %109, %110
  %112 = fadd float %108, %111
  store float %112, float* %16, align 4
  %113 = load float, float* %15, align 4
  %114 = load float, float* %16, align 4
  %115 = fdiv float %113, %114
  store float %115, float* %17, align 4
  %116 = load float, float* %17, align 4
  %117 = fsub float %116, 5.000000e-01
  %118 = load float*, float** %5, align 8
  %119 = load i32, i32* @kernel_size, align 4
  %120 = mul nsw i32 %119, 3
  %121 = sdiv i32 %120, 2
  %122 = load i32, i32* @kernel_half, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %118, i64 %126
  store float %117, float* %127, align 4
  br label %128

128:                                              ; preds = %81, %78
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %59

132:                                              ; preds = %59
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %175, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @kernel_half, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 1
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %133
  %140 = load float, float* @PI, align 4
  %141 = fmul float %140, 2.000000e+00
  %142 = load i32, i32* @kernel_half, align 4
  %143 = mul nsw i32 %142, 2
  %144 = sitofp i32 %143 to float
  %145 = fdiv float %141, %144
  %146 = load i32, i32* %10, align 4
  %147 = sitofp i32 %146 to float
  %148 = fmul float %145, %147
  store float %148, float* %18, align 4
  %149 = load float, float* %18, align 4
  %150 = call i64 @cos(float %149)
  %151 = sitofp i64 %150 to float
  %152 = fmul float 5.000000e-01, %151
  %153 = fsub float 0x3FDAE147A0000000, %152
  %154 = load float, float* %18, align 4
  %155 = fmul float %154, 2.000000e+00
  %156 = call i64 @cos(float %155)
  %157 = sitofp i64 %156 to float
  %158 = fmul float 0x3FB47AE140000000, %157
  %159 = fadd float %153, %158
  store float %159, float* %19, align 4
  %160 = load float, float* %19, align 4
  %161 = load float*, float** %5, align 8
  %162 = load i32, i32* @kernel_size, align 4
  %163 = mul nsw i32 %162, 3
  %164 = sdiv i32 %163, 2
  %165 = load i32, i32* @kernel_half, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %161, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fmul float %171, %160
  store float %172, float* %170, align 4
  %173 = load float, float* %9, align 4
  %174 = fadd float %173, %172
  store float %174, float* %9, align 4
  br label %175

175:                                              ; preds = %139
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %133

178:                                              ; preds = %133
  %179 = load float, float* %9, align 4
  %180 = fdiv float 1.000000e+00, %179
  store float %180, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %215, %178
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @kernel_half, align 4
  %184 = mul nsw i32 %183, 2
  %185 = add nsw i32 %184, 1
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %218

187:                                              ; preds = %181
  %188 = load i32, i32* @kernel_size, align 4
  %189 = mul nsw i32 %188, 3
  %190 = sdiv i32 %189, 2
  %191 = load i32, i32* @kernel_half, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %20, align 4
  %195 = load float, float* %9, align 4
  %196 = load float*, float** %5, align 8
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = fmul float %200, %195
  store float %201, float* %199, align 4
  %202 = load float*, float** %5, align 8
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %202, i64 %204
  %206 = load float, float* %205, align 4
  %207 = load float*, float** %5, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = fcmp oeq float %206, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @retro_assert(i32 %213)
  br label %215

215:                                              ; preds = %187
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %10, align 4
  br label %181

218:                                              ; preds = %181
  store float -3.125000e-02, float* %21, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sitofp i64 %221 to float
  store float %222, float* %22, align 4
  %223 = load float, float* %22, align 4
  %224 = fcmp olt float %223, 0.000000e+00
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load float, float* %22, align 4
  %227 = load float, float* %22, align 4
  %228 = fmul float %227, %226
  store float %228, float* %22, align 4
  %229 = load float, float* %22, align 4
  %230 = load float, float* %22, align 4
  %231 = fmul float %230, %229
  store float %231, float* %22, align 4
  %232 = load float, float* %22, align 4
  %233 = load float, float* %22, align 4
  %234 = fmul float %233, %232
  store float %234, float* %22, align 4
  %235 = load float, float* %22, align 4
  %236 = fmul float %235, 0xC04713B140000000
  store float %236, float* %22, align 4
  br label %237

237:                                              ; preds = %225, %218
  %238 = load float, float* %22, align 4
  %239 = fmul float 0xBF94CCCCC0000000, %238
  %240 = fsub float -3.125000e-02, %239
  store float %240, float* %22, align 4
  %241 = load i32, i32* @kernel_half, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %23, align 4
  br label %243

243:                                              ; preds = %264, %237
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* @kernel_half, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %23, align 4
  %250 = mul nsw i32 %248, %249
  %251 = sitofp i32 %250 to float
  %252 = load float, float* %22, align 4
  %253 = fmul float %251, %252
  %254 = fptosi float %253 to i32
  %255 = call i64 @exp(i32 %254)
  %256 = sitofp i64 %255 to float
  %257 = load float*, float** %5, align 8
  %258 = load i32, i32* @kernel_size, align 4
  %259 = sdiv i32 %258, 2
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %257, i64 %262
  store float %256, float* %263, align 4
  br label %264

264:                                              ; preds = %247
  %265 = load i32, i32* %23, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %23, align 4
  br label %243

267:                                              ; preds = %243
  store i32 0, i32* %23, align 4
  br label %268

268:                                              ; preds = %321, %267
  %269 = load i32, i32* %23, align 4
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %324

271:                                              ; preds = %268
  store float 0.000000e+00, float* %24, align 4
  %272 = load i32, i32* %23, align 4
  store i32 %272, i32* %25, align 4
  br label %273

273:                                              ; preds = %285, %271
  %274 = load i32, i32* %25, align 4
  %275 = load i32, i32* @kernel_size, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %273
  %278 = load float*, float** %5, align 8
  %279 = load i32, i32* %25, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %278, i64 %280
  %282 = load float, float* %281, align 4
  %283 = load float, float* %24, align 4
  %284 = fadd float %283, %282
  store float %284, float* %24, align 4
  br label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %25, align 4
  %287 = add nsw i32 %286, 2
  store i32 %287, i32* %25, align 4
  br label %273

288:                                              ; preds = %273
  %289 = load float, float* %24, align 4
  %290 = fdiv float 1.000000e+00, %289
  store float %290, float* %24, align 4
  %291 = load i32, i32* %23, align 4
  store i32 %291, i32* %25, align 4
  br label %292

292:                                              ; preds = %317, %288
  %293 = load i32, i32* %25, align 4
  %294 = load i32, i32* @kernel_size, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %320

296:                                              ; preds = %292
  %297 = load float, float* %24, align 4
  %298 = load float*, float** %5, align 8
  %299 = load i32, i32* %25, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fmul float %302, %297
  store float %303, float* %301, align 4
  %304 = load float*, float** %5, align 8
  %305 = load i32, i32* %25, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = load float*, float** %5, align 8
  %310 = load i32, i32* %25, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, float* %309, i64 %311
  %313 = load float, float* %312, align 4
  %314 = fcmp oeq float %308, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @retro_assert(i32 %315)
  br label %317

317:                                              ; preds = %296
  %318 = load i32, i32* %25, align 4
  %319 = add nsw i32 %318, 2
  store i32 %319, i32* %25, align 4
  br label %292

320:                                              ; preds = %292
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %23, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %23, align 4
  br label %268

324:                                              ; preds = %268
  ret void
}

declare dso_local i64 @pow(float, float) #1

declare dso_local i64 @cos(float) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i64 @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
