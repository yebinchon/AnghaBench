; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_5_1_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_5_1_back(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %17, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 14
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  store float* %40, float** %25, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 14
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to float*
  store float* %48, float** %26, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 14
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to float*
  store float* %56, float** %24, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 14
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to float*
  store float* %64, float** %29, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 14
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to float*
  store float* %72, float** %27, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 14
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 5
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to float*
  store float* %80, float** %28, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @get_lfe(i32 %83, i32 %84, i32 %87, i32 %90, float* %18, float* %13, i32 %93)
  %95 = load float, float* %14, align 4
  %96 = call float @llvm.fabs.f32(float %95)
  %97 = fsub float 1.000000e+00, %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = call float @powf(float %97, i32 %100)
  %102 = load float, float* %15, align 4
  %103 = fadd float %102, 1.000000e+00
  %104 = fmul float %103, 5.000000e-01
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = call float @powf(float %104, i32 %107)
  %109 = fmul float %101, %108
  %110 = load float, float* %13, align 4
  %111 = fmul float %109, %110
  store float %111, float* %23, align 4
  %112 = load float, float* %14, align 4
  %113 = fadd float %112, 1.000000e+00
  %114 = fmul float 5.000000e-01, %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call float @powf(float %114, i32 %117)
  %119 = load float, float* %15, align 4
  %120 = fadd float %119, 1.000000e+00
  %121 = fmul float %120, 5.000000e-01
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call float @powf(float %121, i32 %124)
  %126 = fmul float %118, %125
  %127 = load float, float* %13, align 4
  %128 = fmul float %126, %127
  store float %128, float* %19, align 4
  %129 = load float, float* %14, align 4
  %130 = fneg float %129
  %131 = fadd float %130, 1.000000e+00
  %132 = fmul float 5.000000e-01, %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call float @powf(float %132, i32 %135)
  %137 = load float, float* %15, align 4
  %138 = fadd float %137, 1.000000e+00
  %139 = fmul float %138, 5.000000e-01
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call float @powf(float %139, i32 %142)
  %144 = fmul float %136, %143
  %145 = load float, float* %13, align 4
  %146 = fmul float %144, %145
  store float %146, float* %20, align 4
  %147 = load float, float* %14, align 4
  %148 = fadd float %147, 1.000000e+00
  %149 = fmul float 5.000000e-01, %148
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call float @powf(float %149, i32 %152)
  %154 = load float, float* %15, align 4
  %155 = fadd float %154, 1.000000e+00
  %156 = fmul float %155, 5.000000e-01
  %157 = fsub float 1.000000e+00, %156
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call float @powf(float %157, i32 %160)
  %162 = fmul float %153, %161
  %163 = load float, float* %13, align 4
  %164 = fmul float %162, %163
  store float %164, float* %21, align 4
  %165 = load float, float* %14, align 4
  %166 = fneg float %165
  %167 = fadd float %166, 1.000000e+00
  %168 = fmul float 5.000000e-01, %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call float @powf(float %168, i32 %171)
  %173 = load float, float* %15, align 4
  %174 = fadd float %173, 1.000000e+00
  %175 = fmul float %174, 5.000000e-01
  %176 = fsub float 1.000000e+00, %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call float @powf(float %176, i32 %179)
  %181 = fmul float %172, %180
  %182 = load float, float* %13, align 4
  %183 = fmul float %181, %182
  store float %183, float* %22, align 4
  %184 = load float, float* %19, align 4
  %185 = load float, float* %10, align 4
  %186 = call float @cosf(float %185) #4
  %187 = fmul float %184, %186
  %188 = load float*, float** %25, align 8
  %189 = load i32, i32* %16, align 4
  %190 = mul nsw i32 2, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %188, i64 %191
  store float %187, float* %192, align 4
  %193 = load float, float* %19, align 4
  %194 = load float, float* %10, align 4
  %195 = call float @sinf(float %194) #4
  %196 = fmul float %193, %195
  %197 = load float*, float** %25, align 8
  %198 = load i32, i32* %16, align 4
  %199 = mul nsw i32 2, %198
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %197, i64 %201
  store float %196, float* %202, align 4
  %203 = load float, float* %20, align 4
  %204 = load float, float* %11, align 4
  %205 = call float @cosf(float %204) #4
  %206 = fmul float %203, %205
  %207 = load float*, float** %26, align 8
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 2, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %207, i64 %210
  store float %206, float* %211, align 4
  %212 = load float, float* %20, align 4
  %213 = load float, float* %11, align 4
  %214 = call float @sinf(float %213) #4
  %215 = fmul float %212, %214
  %216 = load float*, float** %26, align 8
  %217 = load i32, i32* %16, align 4
  %218 = mul nsw i32 2, %217
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %216, i64 %220
  store float %215, float* %221, align 4
  %222 = load float, float* %23, align 4
  %223 = load float, float* %12, align 4
  %224 = call float @cosf(float %223) #4
  %225 = fmul float %222, %224
  %226 = load float*, float** %24, align 8
  %227 = load i32, i32* %16, align 4
  %228 = mul nsw i32 2, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %226, i64 %229
  store float %225, float* %230, align 4
  %231 = load float, float* %23, align 4
  %232 = load float, float* %12, align 4
  %233 = call float @sinf(float %232) #4
  %234 = fmul float %231, %233
  %235 = load float*, float** %24, align 8
  %236 = load i32, i32* %16, align 4
  %237 = mul nsw i32 2, %236
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %235, i64 %239
  store float %234, float* %240, align 4
  %241 = load float, float* %18, align 4
  %242 = load float, float* %12, align 4
  %243 = call float @cosf(float %242) #4
  %244 = fmul float %241, %243
  %245 = load float*, float** %29, align 8
  %246 = load i32, i32* %16, align 4
  %247 = mul nsw i32 2, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %245, i64 %248
  store float %244, float* %249, align 4
  %250 = load float, float* %18, align 4
  %251 = load float, float* %12, align 4
  %252 = call float @sinf(float %251) #4
  %253 = fmul float %250, %252
  %254 = load float*, float** %29, align 8
  %255 = load i32, i32* %16, align 4
  %256 = mul nsw i32 2, %255
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %254, i64 %258
  store float %253, float* %259, align 4
  %260 = load float, float* %21, align 4
  %261 = load float, float* %10, align 4
  %262 = call float @cosf(float %261) #4
  %263 = fmul float %260, %262
  %264 = load float*, float** %27, align 8
  %265 = load i32, i32* %16, align 4
  %266 = mul nsw i32 2, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %264, i64 %267
  store float %263, float* %268, align 4
  %269 = load float, float* %21, align 4
  %270 = load float, float* %10, align 4
  %271 = call float @sinf(float %270) #4
  %272 = fmul float %269, %271
  %273 = load float*, float** %27, align 8
  %274 = load i32, i32* %16, align 4
  %275 = mul nsw i32 2, %274
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %273, i64 %277
  store float %272, float* %278, align 4
  %279 = load float, float* %22, align 4
  %280 = load float, float* %11, align 4
  %281 = call float @cosf(float %280) #4
  %282 = fmul float %279, %281
  %283 = load float*, float** %28, align 8
  %284 = load i32, i32* %16, align 4
  %285 = mul nsw i32 2, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %283, i64 %286
  store float %282, float* %287, align 4
  %288 = load float, float* %22, align 4
  %289 = load float, float* %11, align 4
  %290 = call float @sinf(float %289) #4
  %291 = fmul float %288, %290
  %292 = load float*, float** %28, align 8
  %293 = load i32, i32* %16, align 4
  %294 = mul nsw i32 2, %293
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %292, i64 %296
  store float %291, float* %297, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

; Function Attrs: nounwind
declare dso_local float @sinf(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
