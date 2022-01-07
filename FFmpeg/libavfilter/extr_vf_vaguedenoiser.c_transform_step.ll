; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_transform_step.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_transform_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPAD = common dso_local global i32 0, align 4
@analysis_low = common dso_local global float* null, align 8
@analysis_high = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, i32, i32*)* @transform_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_step(float* %0, float* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %28 = load float*, float** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @symmetric_extension(float* %28, i32 %29, i32 1, i32 1)
  %31 = load i32, i32* @NPAD, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %159, %5
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @NPAD, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %162

38:                                               ; preds = %32
  %39 = load float*, float** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 2, %40
  %42 = sub nsw i32 %41, 14
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %39, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float*, float** @analysis_low, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %45, %48
  store float %49, float* %12, align 4
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 2, %51
  %53 = sub nsw i32 %52, 13
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %50, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** @analysis_low, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = fmul float %56, %59
  store float %60, float* %13, align 4
  %61 = load float*, float** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 2, %62
  %64 = sub nsw i32 %63, 12
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** @analysis_low, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = fmul float %67, %70
  store float %71, float* %14, align 4
  %72 = load float*, float** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 2, %73
  %75 = sub nsw i32 %74, 11
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %72, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float*, float** @analysis_low, align 8
  %80 = getelementptr inbounds float, float* %79, i64 3
  %81 = load float, float* %80, align 4
  %82 = fmul float %78, %81
  store float %82, float* %15, align 4
  %83 = load float*, float** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 2, %84
  %86 = sub nsw i32 %85, 10
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %83, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float*, float** @analysis_low, align 8
  %91 = getelementptr inbounds float, float* %90, i64 4
  %92 = load float, float* %91, align 4
  %93 = fmul float %89, %92
  store float %93, float* %16, align 4
  %94 = load float*, float** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 2, %95
  %97 = sub nsw i32 %96, 9
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %94, i64 %98
  %100 = load float, float* %99, align 4
  %101 = load float*, float** @analysis_low, align 8
  %102 = getelementptr inbounds float, float* %101, i64 3
  %103 = load float, float* %102, align 4
  %104 = fmul float %100, %103
  store float %104, float* %17, align 4
  %105 = load float*, float** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = mul nsw i32 2, %106
  %108 = sub nsw i32 %107, 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %105, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load float*, float** @analysis_low, align 8
  %113 = getelementptr inbounds float, float* %112, i64 2
  %114 = load float, float* %113, align 4
  %115 = fmul float %111, %114
  store float %115, float* %18, align 4
  %116 = load float*, float** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 2, %117
  %119 = sub nsw i32 %118, 7
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %116, i64 %120
  %122 = load float, float* %121, align 4
  %123 = load float*, float** @analysis_low, align 8
  %124 = getelementptr inbounds float, float* %123, i64 1
  %125 = load float, float* %124, align 4
  %126 = fmul float %122, %125
  store float %126, float* %19, align 4
  %127 = load float*, float** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 2, %128
  %130 = sub nsw i32 %129, 6
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %127, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float*, float** @analysis_low, align 8
  %135 = getelementptr inbounds float, float* %134, i64 0
  %136 = load float, float* %135, align 4
  %137 = fmul float %133, %136
  store float %137, float* %20, align 4
  %138 = load float, float* %12, align 4
  %139 = load float, float* %13, align 4
  %140 = fadd float %138, %139
  %141 = load float, float* %14, align 4
  %142 = fadd float %140, %141
  %143 = load float, float* %15, align 4
  %144 = fadd float %142, %143
  %145 = load float, float* %16, align 4
  %146 = fadd float %144, %145
  %147 = load float, float* %17, align 4
  %148 = fadd float %146, %147
  %149 = load float, float* %18, align 4
  %150 = fadd float %148, %149
  %151 = load float, float* %19, align 4
  %152 = fadd float %150, %151
  %153 = load float, float* %20, align 4
  %154 = fadd float %152, %153
  %155 = load float*, float** %7, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  store float %154, float* %158, align 4
  br label %159

159:                                              ; preds = %38
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %32

162:                                              ; preds = %32
  %163 = load i32, i32* @NPAD, align 4
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %267, %162
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @NPAD, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %166, %167
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %270

170:                                              ; preds = %164
  %171 = load float*, float** %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = mul nsw i32 2, %172
  %174 = sub nsw i32 %173, 12
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %171, i64 %175
  %177 = load float, float* %176, align 4
  %178 = load float*, float** @analysis_high, align 8
  %179 = getelementptr inbounds float, float* %178, i64 0
  %180 = load float, float* %179, align 4
  %181 = fmul float %177, %180
  store float %181, float* %21, align 4
  %182 = load float*, float** %6, align 8
  %183 = load i32, i32* %11, align 4
  %184 = mul nsw i32 2, %183
  %185 = sub nsw i32 %184, 11
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %182, i64 %186
  %188 = load float, float* %187, align 4
  %189 = load float*, float** @analysis_high, align 8
  %190 = getelementptr inbounds float, float* %189, i64 1
  %191 = load float, float* %190, align 4
  %192 = fmul float %188, %191
  store float %192, float* %22, align 4
  %193 = load float*, float** %6, align 8
  %194 = load i32, i32* %11, align 4
  %195 = mul nsw i32 2, %194
  %196 = sub nsw i32 %195, 10
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %193, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float*, float** @analysis_high, align 8
  %201 = getelementptr inbounds float, float* %200, i64 2
  %202 = load float, float* %201, align 4
  %203 = fmul float %199, %202
  store float %203, float* %23, align 4
  %204 = load float*, float** %6, align 8
  %205 = load i32, i32* %11, align 4
  %206 = mul nsw i32 2, %205
  %207 = sub nsw i32 %206, 9
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %204, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** @analysis_high, align 8
  %212 = getelementptr inbounds float, float* %211, i64 3
  %213 = load float, float* %212, align 4
  %214 = fmul float %210, %213
  store float %214, float* %24, align 4
  %215 = load float*, float** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 2, %216
  %218 = sub nsw i32 %217, 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %215, i64 %219
  %221 = load float, float* %220, align 4
  %222 = load float*, float** @analysis_high, align 8
  %223 = getelementptr inbounds float, float* %222, i64 2
  %224 = load float, float* %223, align 4
  %225 = fmul float %221, %224
  store float %225, float* %25, align 4
  %226 = load float*, float** %6, align 8
  %227 = load i32, i32* %11, align 4
  %228 = mul nsw i32 2, %227
  %229 = sub nsw i32 %228, 7
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %226, i64 %230
  %232 = load float, float* %231, align 4
  %233 = load float*, float** @analysis_high, align 8
  %234 = getelementptr inbounds float, float* %233, i64 1
  %235 = load float, float* %234, align 4
  %236 = fmul float %232, %235
  store float %236, float* %26, align 4
  %237 = load float*, float** %6, align 8
  %238 = load i32, i32* %11, align 4
  %239 = mul nsw i32 2, %238
  %240 = sub nsw i32 %239, 6
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %237, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load float*, float** @analysis_high, align 8
  %245 = getelementptr inbounds float, float* %244, i64 0
  %246 = load float, float* %245, align 4
  %247 = fmul float %243, %246
  store float %247, float* %27, align 4
  %248 = load float, float* %21, align 4
  %249 = load float, float* %22, align 4
  %250 = fadd float %248, %249
  %251 = load float, float* %23, align 4
  %252 = fadd float %250, %251
  %253 = load float, float* %24, align 4
  %254 = fadd float %252, %253
  %255 = load float, float* %25, align 4
  %256 = fadd float %254, %255
  %257 = load float, float* %26, align 4
  %258 = fadd float %256, %257
  %259 = load float, float* %27, align 4
  %260 = fadd float %258, %259
  %261 = load float*, float** %7, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %261, i64 %265
  store float %260, float* %266, align 4
  br label %267

267:                                              ; preds = %170
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %164

270:                                              ; preds = %164
  ret void
}

declare dso_local i32 @symmetric_extension(float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
