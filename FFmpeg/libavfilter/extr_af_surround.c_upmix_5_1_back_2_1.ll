; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back_2_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back_2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, float, float, i32)* @upmix_5_1_back_2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_5_1_back_2_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store float %1, float* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store i32 %9, i32* %20, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %21, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 10
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to float*
  store float* %43, float** %26, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 10
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to float*
  store float* %51, float** %27, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to float*
  store float* %59, float** %25, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to float*
  store float* %67, float** %28, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 10
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to float*
  store float* %75, float** %31, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 10
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 5
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to float*
  store float* %83, float** %32, align 8
  %84 = load float, float* %18, align 4
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fsub float 1.000000e+00, %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call float @powf(float %86, i32 %89)
  %91 = load float, float* %19, align 4
  %92 = fadd float %91, 1.000000e+00
  %93 = fmul float %92, 5.000000e-01
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call float @powf(float %93, i32 %96)
  %98 = fmul float %90, %97
  %99 = load float, float* %15, align 4
  %100 = fmul float %98, %99
  store float %100, float* %22, align 4
  %101 = load float, float* %18, align 4
  %102 = fadd float %101, 1.000000e+00
  %103 = fmul float 5.000000e-01, %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call float @powf(float %103, i32 %106)
  %108 = load float, float* %19, align 4
  %109 = fadd float %108, 1.000000e+00
  %110 = fmul float %109, 5.000000e-01
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call float @powf(float %110, i32 %113)
  %115 = fmul float %107, %114
  %116 = load float, float* %15, align 4
  %117 = fmul float %115, %116
  store float %117, float* %23, align 4
  %118 = load float, float* %18, align 4
  %119 = fneg float %118
  %120 = fadd float %119, 1.000000e+00
  %121 = fmul float 5.000000e-01, %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call float @powf(float %121, i32 %124)
  %126 = load float, float* %19, align 4
  %127 = fadd float %126, 1.000000e+00
  %128 = fmul float %127, 5.000000e-01
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call float @powf(float %128, i32 %131)
  %133 = fmul float %125, %132
  %134 = load float, float* %15, align 4
  %135 = fmul float %133, %134
  store float %135, float* %24, align 4
  %136 = load float, float* %18, align 4
  %137 = fadd float %136, 1.000000e+00
  %138 = fmul float 5.000000e-01, %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call float @powf(float %138, i32 %141)
  %143 = load float, float* %19, align 4
  %144 = fadd float %143, 1.000000e+00
  %145 = fmul float %144, 5.000000e-01
  %146 = fsub float 1.000000e+00, %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call float @powf(float %146, i32 %149)
  %151 = fmul float %142, %150
  %152 = load float, float* %15, align 4
  %153 = fmul float %151, %152
  store float %153, float* %29, align 4
  %154 = load float, float* %18, align 4
  %155 = fneg float %154
  %156 = fadd float %155, 1.000000e+00
  %157 = fmul float 5.000000e-01, %156
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call float @powf(float %157, i32 %160)
  %162 = load float, float* %19, align 4
  %163 = fadd float %162, 1.000000e+00
  %164 = fmul float %163, 5.000000e-01
  %165 = fsub float 1.000000e+00, %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call float @powf(float %165, i32 %168)
  %170 = fmul float %161, %169
  %171 = load float, float* %15, align 4
  %172 = fmul float %170, %171
  store float %172, float* %30, align 4
  %173 = load float, float* %23, align 4
  %174 = load float, float* %12, align 4
  %175 = call float @cosf(float %174) #4
  %176 = fmul float %173, %175
  %177 = load float*, float** %26, align 8
  %178 = load i32, i32* %20, align 4
  %179 = mul nsw i32 2, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %177, i64 %180
  store float %176, float* %181, align 4
  %182 = load float, float* %23, align 4
  %183 = load float, float* %12, align 4
  %184 = call float @sinf(float %183) #4
  %185 = fmul float %182, %184
  %186 = load float*, float** %26, align 8
  %187 = load i32, i32* %20, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %186, i64 %190
  store float %185, float* %191, align 4
  %192 = load float, float* %24, align 4
  %193 = load float, float* %13, align 4
  %194 = call float @cosf(float %193) #4
  %195 = fmul float %192, %194
  %196 = load float*, float** %27, align 8
  %197 = load i32, i32* %20, align 4
  %198 = mul nsw i32 2, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %196, i64 %199
  store float %195, float* %200, align 4
  %201 = load float, float* %24, align 4
  %202 = load float, float* %13, align 4
  %203 = call float @sinf(float %202) #4
  %204 = fmul float %201, %203
  %205 = load float*, float** %27, align 8
  %206 = load i32, i32* %20, align 4
  %207 = mul nsw i32 2, %206
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %205, i64 %209
  store float %204, float* %210, align 4
  %211 = load float, float* %22, align 4
  %212 = load float, float* %14, align 4
  %213 = call float @cosf(float %212) #4
  %214 = fmul float %211, %213
  %215 = load float*, float** %25, align 8
  %216 = load i32, i32* %20, align 4
  %217 = mul nsw i32 2, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %215, i64 %218
  store float %214, float* %219, align 4
  %220 = load float, float* %22, align 4
  %221 = load float, float* %14, align 4
  %222 = call float @sinf(float %221) #4
  %223 = fmul float %220, %222
  %224 = load float*, float** %25, align 8
  %225 = load i32, i32* %20, align 4
  %226 = mul nsw i32 2, %225
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %224, i64 %228
  store float %223, float* %229, align 4
  %230 = load float, float* %16, align 4
  %231 = load float*, float** %28, align 8
  %232 = load i32, i32* %20, align 4
  %233 = mul nsw i32 2, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %231, i64 %234
  store float %230, float* %235, align 4
  %236 = load float, float* %17, align 4
  %237 = load float*, float** %28, align 8
  %238 = load i32, i32* %20, align 4
  %239 = mul nsw i32 2, %238
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %237, i64 %241
  store float %236, float* %242, align 4
  %243 = load float, float* %29, align 4
  %244 = load float, float* %12, align 4
  %245 = call float @cosf(float %244) #4
  %246 = fmul float %243, %245
  %247 = load float*, float** %31, align 8
  %248 = load i32, i32* %20, align 4
  %249 = mul nsw i32 2, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %247, i64 %250
  store float %246, float* %251, align 4
  %252 = load float, float* %29, align 4
  %253 = load float, float* %12, align 4
  %254 = call float @sinf(float %253) #4
  %255 = fmul float %252, %254
  %256 = load float*, float** %31, align 8
  %257 = load i32, i32* %20, align 4
  %258 = mul nsw i32 2, %257
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %256, i64 %260
  store float %255, float* %261, align 4
  %262 = load float, float* %30, align 4
  %263 = load float, float* %13, align 4
  %264 = call float @cosf(float %263) #4
  %265 = fmul float %262, %264
  %266 = load float*, float** %32, align 8
  %267 = load i32, i32* %20, align 4
  %268 = mul nsw i32 2, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %266, i64 %269
  store float %265, float* %270, align 4
  %271 = load float, float* %30, align 4
  %272 = load float, float* %13, align 4
  %273 = call float @sinf(float %272) #4
  %274 = fmul float %271, %273
  %275 = load float*, float** %32, align 8
  %276 = load i32, i32* %20, align 4
  %277 = mul nsw i32 2, %276
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %275, i64 %279
  store float %274, float* %280, align 4
  ret void
}

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
