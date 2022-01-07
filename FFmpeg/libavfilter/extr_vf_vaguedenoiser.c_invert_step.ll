; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_invert_step.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_invert_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPAD = common dso_local global i32 0, align 4
@synthesis_low = common dso_local global float* null, align 8
@synthesis_high = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32*)* @invert_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invert_step(float* %0, float* %1, float* %2, i32 %3, i32* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* @NPAD, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float*, float** %6, align 8
  %36 = load i32, i32* @NPAD, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(float* %34, float* %38, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = srem i32 %44, 2
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2, i32 1
  store i32 %48, i32* %14, align 4
  %49 = load float*, float** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @symmetric_extension(float* %49, i32 %50, i32 %51, i32 %52)
  %54 = load float*, float** %7, align 8
  %55 = load i32, i32* @NPAD, align 4
  %56 = load i32, i32* @NPAD, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(float* %54, i32 0, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 2
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %16, align 4
  store i32 9, i32* %15, align 4
  br label %67

67:                                               ; preds = %172, %5
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 11
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %175

72:                                               ; preds = %67
  %73 = load float*, float** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float*, float** @synthesis_low, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  %80 = load float, float* %79, align 4
  %81 = fmul float %77, %80
  store float %81, float* %17, align 4
  %82 = load float*, float** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float*, float** @synthesis_low, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  %89 = load float, float* %88, align 4
  %90 = fmul float %86, %89
  store float %90, float* %18, align 4
  %91 = load float*, float** %8, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load float*, float** @synthesis_low, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  %98 = load float, float* %97, align 4
  %99 = fmul float %95, %98
  store float %99, float* %19, align 4
  %100 = load float*, float** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = load float*, float** @synthesis_low, align 8
  %106 = getelementptr inbounds float, float* %105, i64 3
  %107 = load float, float* %106, align 4
  %108 = fmul float %104, %107
  store float %108, float* %20, align 4
  %109 = load float, float* %17, align 4
  %110 = load float*, float** %7, align 8
  %111 = load i32, i32* %15, align 4
  %112 = mul nsw i32 2, %111
  %113 = sub nsw i32 %112, 13
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %110, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fadd float %116, %109
  store float %117, float* %115, align 4
  %118 = load float, float* %18, align 4
  %119 = load float*, float** %7, align 8
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 2, %120
  %122 = sub nsw i32 %121, 12
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %119, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fadd float %125, %118
  store float %126, float* %124, align 4
  %127 = load float, float* %19, align 4
  %128 = load float*, float** %7, align 8
  %129 = load i32, i32* %15, align 4
  %130 = mul nsw i32 2, %129
  %131 = sub nsw i32 %130, 11
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fadd float %134, %127
  store float %135, float* %133, align 4
  %136 = load float, float* %20, align 4
  %137 = load float*, float** %7, align 8
  %138 = load i32, i32* %15, align 4
  %139 = mul nsw i32 2, %138
  %140 = sub nsw i32 %139, 10
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %137, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fadd float %143, %136
  store float %144, float* %142, align 4
  %145 = load float, float* %19, align 4
  %146 = load float*, float** %7, align 8
  %147 = load i32, i32* %15, align 4
  %148 = mul nsw i32 2, %147
  %149 = sub nsw i32 %148, 9
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %146, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fadd float %152, %145
  store float %153, float* %151, align 4
  %154 = load float, float* %18, align 4
  %155 = load float*, float** %7, align 8
  %156 = load i32, i32* %15, align 4
  %157 = mul nsw i32 2, %156
  %158 = sub nsw i32 %157, 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %155, i64 %159
  %161 = load float, float* %160, align 4
  %162 = fadd float %161, %154
  store float %162, float* %160, align 4
  %163 = load float, float* %17, align 4
  %164 = load float*, float** %7, align 8
  %165 = load i32, i32* %15, align 4
  %166 = mul nsw i32 2, %165
  %167 = sub nsw i32 %166, 7
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %164, i64 %168
  %170 = load float, float* %169, align 4
  %171 = fadd float %170, %163
  store float %171, float* %169, align 4
  br label %172

172:                                              ; preds = %72
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %67

175:                                              ; preds = %67
  %176 = load float*, float** %8, align 8
  %177 = load i32, i32* @NPAD, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  %180 = load float*, float** %6, align 8
  %181 = load i32, i32* @NPAD, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = call i32 @memcpy(float* %179, float* %186, i32 %190)
  store i32 2, i32* %13, align 4
  %192 = load i32, i32* %9, align 4
  %193 = srem i32 %192, 2
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 2
  store i32 %196, i32* %14, align 4
  %197 = load float*, float** %8, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @symmetric_extension(float* %197, i32 %198, i32 %199, i32 %200)
  store i32 8, i32* %15, align 4
  br label %202

202:                                              ; preds = %334, %175
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, 11
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %207, label %337

207:                                              ; preds = %202
  %208 = load float*, float** %8, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float*, float** @synthesis_high, align 8
  %214 = getelementptr inbounds float, float* %213, i64 0
  %215 = load float, float* %214, align 4
  %216 = fmul float %212, %215
  store float %216, float* %21, align 4
  %217 = load float*, float** %8, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = load float*, float** @synthesis_high, align 8
  %223 = getelementptr inbounds float, float* %222, i64 1
  %224 = load float, float* %223, align 4
  %225 = fmul float %221, %224
  store float %225, float* %22, align 4
  %226 = load float*, float** %8, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = load float*, float** @synthesis_high, align 8
  %232 = getelementptr inbounds float, float* %231, i64 2
  %233 = load float, float* %232, align 4
  %234 = fmul float %230, %233
  store float %234, float* %23, align 4
  %235 = load float*, float** %8, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  %239 = load float, float* %238, align 4
  %240 = load float*, float** @synthesis_high, align 8
  %241 = getelementptr inbounds float, float* %240, i64 3
  %242 = load float, float* %241, align 4
  %243 = fmul float %239, %242
  store float %243, float* %24, align 4
  %244 = load float*, float** %8, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = load float*, float** @synthesis_high, align 8
  %250 = getelementptr inbounds float, float* %249, i64 4
  %251 = load float, float* %250, align 4
  %252 = fmul float %248, %251
  store float %252, float* %25, align 4
  %253 = load float, float* %21, align 4
  %254 = load float*, float** %7, align 8
  %255 = load i32, i32* %15, align 4
  %256 = mul nsw i32 2, %255
  %257 = sub nsw i32 %256, 13
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %254, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fadd float %260, %253
  store float %261, float* %259, align 4
  %262 = load float, float* %22, align 4
  %263 = load float*, float** %7, align 8
  %264 = load i32, i32* %15, align 4
  %265 = mul nsw i32 2, %264
  %266 = sub nsw i32 %265, 12
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %263, i64 %267
  %269 = load float, float* %268, align 4
  %270 = fadd float %269, %262
  store float %270, float* %268, align 4
  %271 = load float, float* %23, align 4
  %272 = load float*, float** %7, align 8
  %273 = load i32, i32* %15, align 4
  %274 = mul nsw i32 2, %273
  %275 = sub nsw i32 %274, 11
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %272, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fadd float %278, %271
  store float %279, float* %277, align 4
  %280 = load float, float* %24, align 4
  %281 = load float*, float** %7, align 8
  %282 = load i32, i32* %15, align 4
  %283 = mul nsw i32 2, %282
  %284 = sub nsw i32 %283, 10
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %281, i64 %285
  %287 = load float, float* %286, align 4
  %288 = fadd float %287, %280
  store float %288, float* %286, align 4
  %289 = load float, float* %25, align 4
  %290 = load float*, float** %7, align 8
  %291 = load i32, i32* %15, align 4
  %292 = mul nsw i32 2, %291
  %293 = sub nsw i32 %292, 9
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %290, i64 %294
  %296 = load float, float* %295, align 4
  %297 = fadd float %296, %289
  store float %297, float* %295, align 4
  %298 = load float, float* %24, align 4
  %299 = load float*, float** %7, align 8
  %300 = load i32, i32* %15, align 4
  %301 = mul nsw i32 2, %300
  %302 = sub nsw i32 %301, 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %299, i64 %303
  %305 = load float, float* %304, align 4
  %306 = fadd float %305, %298
  store float %306, float* %304, align 4
  %307 = load float, float* %23, align 4
  %308 = load float*, float** %7, align 8
  %309 = load i32, i32* %15, align 4
  %310 = mul nsw i32 2, %309
  %311 = sub nsw i32 %310, 7
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float* %308, i64 %312
  %314 = load float, float* %313, align 4
  %315 = fadd float %314, %307
  store float %315, float* %313, align 4
  %316 = load float, float* %22, align 4
  %317 = load float*, float** %7, align 8
  %318 = load i32, i32* %15, align 4
  %319 = mul nsw i32 2, %318
  %320 = sub nsw i32 %319, 6
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %317, i64 %321
  %323 = load float, float* %322, align 4
  %324 = fadd float %323, %316
  store float %324, float* %322, align 4
  %325 = load float, float* %21, align 4
  %326 = load float*, float** %7, align 8
  %327 = load i32, i32* %15, align 4
  %328 = mul nsw i32 2, %327
  %329 = sub nsw i32 %328, 5
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %326, i64 %330
  %332 = load float, float* %331, align 4
  %333 = fadd float %332, %325
  store float %333, float* %331, align 4
  br label %334

334:                                              ; preds = %207
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %202

337:                                              ; preds = %202
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @symmetric_extension(float*, i32, i32, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
