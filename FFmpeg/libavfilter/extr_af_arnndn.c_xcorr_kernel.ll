; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_xcorr_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_xcorr_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @xcorr_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcorr_kernel(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %12, align 4
  %18 = load float*, float** %6, align 8
  %19 = getelementptr inbounds float, float* %18, i32 1
  store float* %19, float** %6, align 8
  %20 = load float, float* %18, align 4
  store float %20, float* %9, align 4
  %21 = load float*, float** %6, align 8
  %22 = getelementptr inbounds float, float* %21, i32 1
  store float* %22, float** %6, align 8
  %23 = load float, float* %21, align 4
  store float %23, float* %10, align 4
  %24 = load float*, float** %6, align 8
  %25 = getelementptr inbounds float, float* %24, i32 1
  store float* %25, float** %6, align 8
  %26 = load float, float* %24, align 4
  store float %26, float* %11, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %169, %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 3
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %172

32:                                               ; preds = %27
  %33 = load float*, float** %5, align 8
  %34 = getelementptr inbounds float, float* %33, i32 1
  store float* %34, float** %5, align 8
  %35 = load float, float* %33, align 4
  store float %35, float* %14, align 4
  %36 = load float*, float** %6, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %6, align 8
  %38 = load float, float* %36, align 4
  store float %38, float* %12, align 4
  %39 = load float, float* %14, align 4
  %40 = load float, float* %9, align 4
  %41 = fmul float %39, %40
  %42 = load float*, float** %7, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, %41
  store float %45, float* %43, align 4
  %46 = load float, float* %14, align 4
  %47 = load float, float* %10, align 4
  %48 = fmul float %46, %47
  %49 = load float*, float** %7, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %48
  store float %52, float* %50, align 4
  %53 = load float, float* %14, align 4
  %54 = load float, float* %11, align 4
  %55 = fmul float %53, %54
  %56 = load float*, float** %7, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  %58 = load float, float* %57, align 4
  %59 = fadd float %58, %55
  store float %59, float* %57, align 4
  %60 = load float, float* %14, align 4
  %61 = load float, float* %12, align 4
  %62 = fmul float %60, %61
  %63 = load float*, float** %7, align 8
  %64 = getelementptr inbounds float, float* %63, i64 3
  %65 = load float, float* %64, align 4
  %66 = fadd float %65, %62
  store float %66, float* %64, align 4
  %67 = load float*, float** %5, align 8
  %68 = getelementptr inbounds float, float* %67, i32 1
  store float* %68, float** %5, align 8
  %69 = load float, float* %67, align 4
  store float %69, float* %14, align 4
  %70 = load float*, float** %6, align 8
  %71 = getelementptr inbounds float, float* %70, i32 1
  store float* %71, float** %6, align 8
  %72 = load float, float* %70, align 4
  store float %72, float* %9, align 4
  %73 = load float, float* %14, align 4
  %74 = load float, float* %10, align 4
  %75 = fmul float %73, %74
  %76 = load float*, float** %7, align 8
  %77 = getelementptr inbounds float, float* %76, i64 0
  %78 = load float, float* %77, align 4
  %79 = fadd float %78, %75
  store float %79, float* %77, align 4
  %80 = load float, float* %14, align 4
  %81 = load float, float* %11, align 4
  %82 = fmul float %80, %81
  %83 = load float*, float** %7, align 8
  %84 = getelementptr inbounds float, float* %83, i64 1
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %82
  store float %86, float* %84, align 4
  %87 = load float, float* %14, align 4
  %88 = load float, float* %12, align 4
  %89 = fmul float %87, %88
  %90 = load float*, float** %7, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  %92 = load float, float* %91, align 4
  %93 = fadd float %92, %89
  store float %93, float* %91, align 4
  %94 = load float, float* %14, align 4
  %95 = load float, float* %9, align 4
  %96 = fmul float %94, %95
  %97 = load float*, float** %7, align 8
  %98 = getelementptr inbounds float, float* %97, i64 3
  %99 = load float, float* %98, align 4
  %100 = fadd float %99, %96
  store float %100, float* %98, align 4
  %101 = load float*, float** %5, align 8
  %102 = getelementptr inbounds float, float* %101, i32 1
  store float* %102, float** %5, align 8
  %103 = load float, float* %101, align 4
  store float %103, float* %14, align 4
  %104 = load float*, float** %6, align 8
  %105 = getelementptr inbounds float, float* %104, i32 1
  store float* %105, float** %6, align 8
  %106 = load float, float* %104, align 4
  store float %106, float* %10, align 4
  %107 = load float, float* %14, align 4
  %108 = load float, float* %11, align 4
  %109 = fmul float %107, %108
  %110 = load float*, float** %7, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  %112 = load float, float* %111, align 4
  %113 = fadd float %112, %109
  store float %113, float* %111, align 4
  %114 = load float, float* %14, align 4
  %115 = load float, float* %12, align 4
  %116 = fmul float %114, %115
  %117 = load float*, float** %7, align 8
  %118 = getelementptr inbounds float, float* %117, i64 1
  %119 = load float, float* %118, align 4
  %120 = fadd float %119, %116
  store float %120, float* %118, align 4
  %121 = load float, float* %14, align 4
  %122 = load float, float* %9, align 4
  %123 = fmul float %121, %122
  %124 = load float*, float** %7, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  %126 = load float, float* %125, align 4
  %127 = fadd float %126, %123
  store float %127, float* %125, align 4
  %128 = load float, float* %14, align 4
  %129 = load float, float* %10, align 4
  %130 = fmul float %128, %129
  %131 = load float*, float** %7, align 8
  %132 = getelementptr inbounds float, float* %131, i64 3
  %133 = load float, float* %132, align 4
  %134 = fadd float %133, %130
  store float %134, float* %132, align 4
  %135 = load float*, float** %5, align 8
  %136 = getelementptr inbounds float, float* %135, i32 1
  store float* %136, float** %5, align 8
  %137 = load float, float* %135, align 4
  store float %137, float* %14, align 4
  %138 = load float*, float** %6, align 8
  %139 = getelementptr inbounds float, float* %138, i32 1
  store float* %139, float** %6, align 8
  %140 = load float, float* %138, align 4
  store float %140, float* %11, align 4
  %141 = load float, float* %14, align 4
  %142 = load float, float* %12, align 4
  %143 = fmul float %141, %142
  %144 = load float*, float** %7, align 8
  %145 = getelementptr inbounds float, float* %144, i64 0
  %146 = load float, float* %145, align 4
  %147 = fadd float %146, %143
  store float %147, float* %145, align 4
  %148 = load float, float* %14, align 4
  %149 = load float, float* %9, align 4
  %150 = fmul float %148, %149
  %151 = load float*, float** %7, align 8
  %152 = getelementptr inbounds float, float* %151, i64 1
  %153 = load float, float* %152, align 4
  %154 = fadd float %153, %150
  store float %154, float* %152, align 4
  %155 = load float, float* %14, align 4
  %156 = load float, float* %10, align 4
  %157 = fmul float %155, %156
  %158 = load float*, float** %7, align 8
  %159 = getelementptr inbounds float, float* %158, i64 2
  %160 = load float, float* %159, align 4
  %161 = fadd float %160, %157
  store float %161, float* %159, align 4
  %162 = load float, float* %14, align 4
  %163 = load float, float* %11, align 4
  %164 = fmul float %162, %163
  %165 = load float*, float** %7, align 8
  %166 = getelementptr inbounds float, float* %165, i64 3
  %167 = load float, float* %166, align 4
  %168 = fadd float %167, %164
  store float %168, float* %166, align 4
  br label %169

169:                                              ; preds = %32
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 4
  store i32 %171, i32* %13, align 4
  br label %27

172:                                              ; preds = %27
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %212

177:                                              ; preds = %172
  %178 = load float*, float** %5, align 8
  %179 = getelementptr inbounds float, float* %178, i32 1
  store float* %179, float** %5, align 8
  %180 = load float, float* %178, align 4
  store float %180, float* %15, align 4
  %181 = load float*, float** %6, align 8
  %182 = getelementptr inbounds float, float* %181, i32 1
  store float* %182, float** %6, align 8
  %183 = load float, float* %181, align 4
  store float %183, float* %12, align 4
  %184 = load float, float* %15, align 4
  %185 = load float, float* %9, align 4
  %186 = fmul float %184, %185
  %187 = load float*, float** %7, align 8
  %188 = getelementptr inbounds float, float* %187, i64 0
  %189 = load float, float* %188, align 4
  %190 = fadd float %189, %186
  store float %190, float* %188, align 4
  %191 = load float, float* %15, align 4
  %192 = load float, float* %10, align 4
  %193 = fmul float %191, %192
  %194 = load float*, float** %7, align 8
  %195 = getelementptr inbounds float, float* %194, i64 1
  %196 = load float, float* %195, align 4
  %197 = fadd float %196, %193
  store float %197, float* %195, align 4
  %198 = load float, float* %15, align 4
  %199 = load float, float* %11, align 4
  %200 = fmul float %198, %199
  %201 = load float*, float** %7, align 8
  %202 = getelementptr inbounds float, float* %201, i64 2
  %203 = load float, float* %202, align 4
  %204 = fadd float %203, %200
  store float %204, float* %202, align 4
  %205 = load float, float* %15, align 4
  %206 = load float, float* %12, align 4
  %207 = fmul float %205, %206
  %208 = load float*, float** %7, align 8
  %209 = getelementptr inbounds float, float* %208, i64 3
  %210 = load float, float* %209, align 4
  %211 = fadd float %210, %207
  store float %211, float* %209, align 4
  br label %212

212:                                              ; preds = %177, %172
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %212
  %218 = load float*, float** %5, align 8
  %219 = getelementptr inbounds float, float* %218, i32 1
  store float* %219, float** %5, align 8
  %220 = load float, float* %218, align 4
  store float %220, float* %16, align 4
  %221 = load float*, float** %6, align 8
  %222 = getelementptr inbounds float, float* %221, i32 1
  store float* %222, float** %6, align 8
  %223 = load float, float* %221, align 4
  store float %223, float* %9, align 4
  %224 = load float, float* %16, align 4
  %225 = load float, float* %10, align 4
  %226 = fmul float %224, %225
  %227 = load float*, float** %7, align 8
  %228 = getelementptr inbounds float, float* %227, i64 0
  %229 = load float, float* %228, align 4
  %230 = fadd float %229, %226
  store float %230, float* %228, align 4
  %231 = load float, float* %16, align 4
  %232 = load float, float* %11, align 4
  %233 = fmul float %231, %232
  %234 = load float*, float** %7, align 8
  %235 = getelementptr inbounds float, float* %234, i64 1
  %236 = load float, float* %235, align 4
  %237 = fadd float %236, %233
  store float %237, float* %235, align 4
  %238 = load float, float* %16, align 4
  %239 = load float, float* %12, align 4
  %240 = fmul float %238, %239
  %241 = load float*, float** %7, align 8
  %242 = getelementptr inbounds float, float* %241, i64 2
  %243 = load float, float* %242, align 4
  %244 = fadd float %243, %240
  store float %244, float* %242, align 4
  %245 = load float, float* %16, align 4
  %246 = load float, float* %9, align 4
  %247 = fmul float %245, %246
  %248 = load float*, float** %7, align 8
  %249 = getelementptr inbounds float, float* %248, i64 3
  %250 = load float, float* %249, align 4
  %251 = fadd float %250, %247
  store float %251, float* %249, align 4
  br label %252

252:                                              ; preds = %217, %212
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %291

256:                                              ; preds = %252
  %257 = load float*, float** %5, align 8
  %258 = getelementptr inbounds float, float* %257, i32 1
  store float* %258, float** %5, align 8
  %259 = load float, float* %257, align 4
  store float %259, float* %17, align 4
  %260 = load float*, float** %6, align 8
  %261 = getelementptr inbounds float, float* %260, i32 1
  store float* %261, float** %6, align 8
  %262 = load float, float* %260, align 4
  store float %262, float* %10, align 4
  %263 = load float, float* %17, align 4
  %264 = load float, float* %11, align 4
  %265 = fmul float %263, %264
  %266 = load float*, float** %7, align 8
  %267 = getelementptr inbounds float, float* %266, i64 0
  %268 = load float, float* %267, align 4
  %269 = fadd float %268, %265
  store float %269, float* %267, align 4
  %270 = load float, float* %17, align 4
  %271 = load float, float* %12, align 4
  %272 = fmul float %270, %271
  %273 = load float*, float** %7, align 8
  %274 = getelementptr inbounds float, float* %273, i64 1
  %275 = load float, float* %274, align 4
  %276 = fadd float %275, %272
  store float %276, float* %274, align 4
  %277 = load float, float* %17, align 4
  %278 = load float, float* %9, align 4
  %279 = fmul float %277, %278
  %280 = load float*, float** %7, align 8
  %281 = getelementptr inbounds float, float* %280, i64 2
  %282 = load float, float* %281, align 4
  %283 = fadd float %282, %279
  store float %283, float* %281, align 4
  %284 = load float, float* %17, align 4
  %285 = load float, float* %10, align 4
  %286 = fmul float %284, %285
  %287 = load float*, float** %7, align 8
  %288 = getelementptr inbounds float, float* %287, i64 3
  %289 = load float, float* %288, align 4
  %290 = fadd float %289, %286
  store float %290, float* %288, align 4
  br label %291

291:                                              ; preds = %256, %252
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
