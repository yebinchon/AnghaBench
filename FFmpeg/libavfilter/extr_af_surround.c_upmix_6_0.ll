; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_6_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_6_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_6_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_6_0(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 12
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  store float* %40, float** %26, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 12
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to float*
  store float* %48, float** %27, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 12
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to float*
  store float* %56, float** %24, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 12
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to float*
  store float* %64, float** %25, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 12
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to float*
  store float* %72, float** %28, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 12
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 5
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to float*
  store float* %80, float** %29, align 8
  %81 = load float, float* %14, align 4
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fsub float 1.000000e+00, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = call float @powf(float %83, i32 %86)
  %88 = load float, float* %15, align 4
  %89 = fadd float %88, 1.000000e+00
  %90 = fmul float %89, 5.000000e-01
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call float @powf(float %90, i32 %93)
  %95 = fmul float %87, %94
  %96 = load float, float* %13, align 4
  %97 = fmul float %95, %96
  store float %97, float* %22, align 4
  %98 = load float, float* %14, align 4
  %99 = call float @llvm.fabs.f32(float %98)
  %100 = fsub float 1.000000e+00, %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call float @powf(float %100, i32 %103)
  %105 = load float, float* %15, align 4
  %106 = fsub float 1.000000e+00, %105
  %107 = fmul float %106, 5.000000e-01
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = call float @powf(float %107, i32 %110)
  %112 = fmul float %104, %111
  %113 = load float, float* %13, align 4
  %114 = fmul float %112, %113
  store float %114, float* %23, align 4
  %115 = load float, float* %14, align 4
  %116 = fadd float %115, 1.000000e+00
  %117 = fmul float 5.000000e-01, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = call float @powf(float %117, i32 %120)
  %122 = load float, float* %15, align 4
  %123 = fadd float %122, 1.000000e+00
  %124 = fmul float %123, 5.000000e-01
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call float @powf(float %124, i32 %127)
  %129 = fmul float %121, %128
  %130 = load float, float* %13, align 4
  %131 = fmul float %129, %130
  store float %131, float* %18, align 4
  %132 = load float, float* %14, align 4
  %133 = fneg float %132
  %134 = fadd float %133, 1.000000e+00
  %135 = fmul float 5.000000e-01, %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call float @powf(float %135, i32 %138)
  %140 = load float, float* %15, align 4
  %141 = fadd float %140, 1.000000e+00
  %142 = fmul float %141, 5.000000e-01
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call float @powf(float %142, i32 %145)
  %147 = fmul float %139, %146
  %148 = load float, float* %13, align 4
  %149 = fmul float %147, %148
  store float %149, float* %19, align 4
  %150 = load float, float* %14, align 4
  %151 = fadd float %150, 1.000000e+00
  %152 = fmul float 5.000000e-01, %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call float @powf(float %152, i32 %155)
  %157 = load float, float* %15, align 4
  %158 = fadd float %157, 1.000000e+00
  %159 = fmul float %158, 5.000000e-01
  %160 = fsub float 1.000000e+00, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call float @powf(float %160, i32 %163)
  %165 = fmul float %156, %164
  %166 = load float, float* %13, align 4
  %167 = fmul float %165, %166
  store float %167, float* %20, align 4
  %168 = load float, float* %14, align 4
  %169 = fneg float %168
  %170 = fadd float %169, 1.000000e+00
  %171 = fmul float 5.000000e-01, %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call float @powf(float %171, i32 %174)
  %176 = load float, float* %15, align 4
  %177 = fadd float %176, 1.000000e+00
  %178 = fmul float %177, 5.000000e-01
  %179 = fsub float 1.000000e+00, %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call float @powf(float %179, i32 %182)
  %184 = fmul float %175, %183
  %185 = load float, float* %13, align 4
  %186 = fmul float %184, %185
  store float %186, float* %21, align 4
  %187 = load float, float* %18, align 4
  %188 = load float, float* %10, align 4
  %189 = call float @cosf(float %188) #4
  %190 = fmul float %187, %189
  %191 = load float*, float** %26, align 8
  %192 = load i32, i32* %16, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  store float %190, float* %195, align 4
  %196 = load float, float* %18, align 4
  %197 = load float, float* %10, align 4
  %198 = call float @sinf(float %197) #4
  %199 = fmul float %196, %198
  %200 = load float*, float** %26, align 8
  %201 = load i32, i32* %16, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %200, i64 %204
  store float %199, float* %205, align 4
  %206 = load float, float* %19, align 4
  %207 = load float, float* %11, align 4
  %208 = call float @cosf(float %207) #4
  %209 = fmul float %206, %208
  %210 = load float*, float** %27, align 8
  %211 = load i32, i32* %16, align 4
  %212 = mul nsw i32 2, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %210, i64 %213
  store float %209, float* %214, align 4
  %215 = load float, float* %19, align 4
  %216 = load float, float* %11, align 4
  %217 = call float @sinf(float %216) #4
  %218 = fmul float %215, %217
  %219 = load float*, float** %27, align 8
  %220 = load i32, i32* %16, align 4
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %219, i64 %223
  store float %218, float* %224, align 4
  %225 = load float, float* %22, align 4
  %226 = load float, float* %12, align 4
  %227 = call float @cosf(float %226) #4
  %228 = fmul float %225, %227
  %229 = load float*, float** %24, align 8
  %230 = load i32, i32* %16, align 4
  %231 = mul nsw i32 2, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %229, i64 %232
  store float %228, float* %233, align 4
  %234 = load float, float* %22, align 4
  %235 = load float, float* %12, align 4
  %236 = call float @sinf(float %235) #4
  %237 = fmul float %234, %236
  %238 = load float*, float** %24, align 8
  %239 = load i32, i32* %16, align 4
  %240 = mul nsw i32 2, %239
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %238, i64 %242
  store float %237, float* %243, align 4
  %244 = load float, float* %20, align 4
  %245 = load float, float* %10, align 4
  %246 = call float @cosf(float %245) #4
  %247 = fmul float %244, %246
  %248 = load float*, float** %28, align 8
  %249 = load i32, i32* %16, align 4
  %250 = mul nsw i32 2, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %248, i64 %251
  store float %247, float* %252, align 4
  %253 = load float, float* %20, align 4
  %254 = load float, float* %10, align 4
  %255 = call float @sinf(float %254) #4
  %256 = fmul float %253, %255
  %257 = load float*, float** %28, align 8
  %258 = load i32, i32* %16, align 4
  %259 = mul nsw i32 2, %258
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %257, i64 %261
  store float %256, float* %262, align 4
  %263 = load float, float* %21, align 4
  %264 = load float, float* %11, align 4
  %265 = call float @cosf(float %264) #4
  %266 = fmul float %263, %265
  %267 = load float*, float** %29, align 8
  %268 = load i32, i32* %16, align 4
  %269 = mul nsw i32 2, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  store float %266, float* %271, align 4
  %272 = load float, float* %21, align 4
  %273 = load float, float* %11, align 4
  %274 = call float @sinf(float %273) #4
  %275 = fmul float %272, %274
  %276 = load float*, float** %29, align 8
  %277 = load i32, i32* %16, align 4
  %278 = mul nsw i32 2, %277
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %276, i64 %280
  store float %275, float* %281, align 4
  %282 = load float, float* %23, align 4
  %283 = load float, float* %12, align 4
  %284 = call float @cosf(float %283) #4
  %285 = fmul float %282, %284
  %286 = load float*, float** %25, align 8
  %287 = load i32, i32* %16, align 4
  %288 = mul nsw i32 2, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %286, i64 %289
  store float %285, float* %290, align 4
  %291 = load float, float* %23, align 4
  %292 = load float, float* %12, align 4
  %293 = call float @sinf(float %292) #4
  %294 = fmul float %291, %293
  %295 = load float*, float** %25, align 8
  %296 = load i32, i32* %16, align 4
  %297 = mul nsw i32 2, %296
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %295, i64 %299
  store float %294, float* %300, align 4
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
