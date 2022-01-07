; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back_surround.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_1_back_surround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, float, i32)* @upmix_5_1_back_surround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_5_1_back_surround(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %19, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 12
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to float*
  store float* %41, float** %24, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 12
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to float*
  store float* %49, float** %25, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to float*
  store float* %57, float** %23, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 12
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to float*
  store float* %65, float** %26, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 12
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 4
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to float*
  store float* %73, float** %29, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 12
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 5
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to float*
  store float* %81, float** %30, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @get_lfe(i32 %84, i32 %85, i32 %88, i32 %91, float* %20, float* %14, i32 %94)
  %96 = load float, float* %16, align 4
  %97 = fadd float %96, 1.000000e+00
  %98 = fmul float 5.000000e-01, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call float @powf(float %98, i32 %101)
  %103 = load float, float* %17, align 4
  %104 = fadd float %103, 1.000000e+00
  %105 = fmul float %104, 5.000000e-01
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call float @powf(float %105, i32 %108)
  %110 = fmul float %102, %109
  %111 = load float, float* %15, align 4
  %112 = fmul float %110, %111
  store float %112, float* %21, align 4
  %113 = load float, float* %16, align 4
  %114 = fneg float %113
  %115 = fadd float %114, 1.000000e+00
  %116 = fmul float 5.000000e-01, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call float @powf(float %116, i32 %119)
  %121 = load float, float* %17, align 4
  %122 = fadd float %121, 1.000000e+00
  %123 = fmul float %122, 5.000000e-01
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call float @powf(float %123, i32 %126)
  %128 = fmul float %120, %127
  %129 = load float, float* %15, align 4
  %130 = fmul float %128, %129
  store float %130, float* %22, align 4
  %131 = load float, float* %16, align 4
  %132 = fadd float %131, 1.000000e+00
  %133 = fmul float 5.000000e-01, %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call float @powf(float %133, i32 %136)
  %138 = load float, float* %17, align 4
  %139 = fadd float %138, 1.000000e+00
  %140 = fmul float %139, 5.000000e-01
  %141 = fsub float 1.000000e+00, %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call float @powf(float %141, i32 %144)
  %146 = fmul float %137, %145
  %147 = load float, float* %15, align 4
  %148 = fmul float %146, %147
  store float %148, float* %27, align 4
  %149 = load float, float* %16, align 4
  %150 = fneg float %149
  %151 = fadd float %150, 1.000000e+00
  %152 = fmul float 5.000000e-01, %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call float @powf(float %152, i32 %155)
  %157 = load float, float* %17, align 4
  %158 = fadd float %157, 1.000000e+00
  %159 = fmul float %158, 5.000000e-01
  %160 = fsub float 1.000000e+00, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call float @powf(float %160, i32 %163)
  %165 = fmul float %156, %164
  %166 = load float, float* %15, align 4
  %167 = fmul float %165, %166
  store float %167, float* %28, align 4
  %168 = load float, float* %21, align 4
  %169 = load float, float* %11, align 4
  %170 = call float @cosf(float %169) #3
  %171 = fmul float %168, %170
  %172 = load float*, float** %24, align 8
  %173 = load i32, i32* %18, align 4
  %174 = mul nsw i32 2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %172, i64 %175
  store float %171, float* %176, align 4
  %177 = load float, float* %21, align 4
  %178 = load float, float* %11, align 4
  %179 = call float @sinf(float %178) #3
  %180 = fmul float %177, %179
  %181 = load float*, float** %24, align 8
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  store float %180, float* %186, align 4
  %187 = load float, float* %22, align 4
  %188 = load float, float* %12, align 4
  %189 = call float @cosf(float %188) #3
  %190 = fmul float %187, %189
  %191 = load float*, float** %25, align 8
  %192 = load i32, i32* %18, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  store float %190, float* %195, align 4
  %196 = load float, float* %22, align 4
  %197 = load float, float* %12, align 4
  %198 = call float @sinf(float %197) #3
  %199 = fmul float %196, %198
  %200 = load float*, float** %25, align 8
  %201 = load i32, i32* %18, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %200, i64 %204
  store float %199, float* %205, align 4
  %206 = load float, float* %14, align 4
  %207 = load float, float* %13, align 4
  %208 = call float @cosf(float %207) #3
  %209 = fmul float %206, %208
  %210 = load float*, float** %23, align 8
  %211 = load i32, i32* %18, align 4
  %212 = mul nsw i32 2, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %210, i64 %213
  store float %209, float* %214, align 4
  %215 = load float, float* %14, align 4
  %216 = load float, float* %13, align 4
  %217 = call float @sinf(float %216) #3
  %218 = fmul float %215, %217
  %219 = load float*, float** %23, align 8
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %219, i64 %223
  store float %218, float* %224, align 4
  %225 = load float, float* %20, align 4
  %226 = load float, float* %13, align 4
  %227 = call float @cosf(float %226) #3
  %228 = fmul float %225, %227
  %229 = load float*, float** %26, align 8
  %230 = load i32, i32* %18, align 4
  %231 = mul nsw i32 2, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %229, i64 %232
  store float %228, float* %233, align 4
  %234 = load float, float* %20, align 4
  %235 = load float, float* %13, align 4
  %236 = call float @sinf(float %235) #3
  %237 = fmul float %234, %236
  %238 = load float*, float** %26, align 8
  %239 = load i32, i32* %18, align 4
  %240 = mul nsw i32 2, %239
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %238, i64 %242
  store float %237, float* %243, align 4
  %244 = load float, float* %27, align 4
  %245 = load float, float* %11, align 4
  %246 = call float @cosf(float %245) #3
  %247 = fmul float %244, %246
  %248 = load float*, float** %29, align 8
  %249 = load i32, i32* %18, align 4
  %250 = mul nsw i32 2, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %248, i64 %251
  store float %247, float* %252, align 4
  %253 = load float, float* %27, align 4
  %254 = load float, float* %11, align 4
  %255 = call float @sinf(float %254) #3
  %256 = fmul float %253, %255
  %257 = load float*, float** %29, align 8
  %258 = load i32, i32* %18, align 4
  %259 = mul nsw i32 2, %258
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %257, i64 %261
  store float %256, float* %262, align 4
  %263 = load float, float* %28, align 4
  %264 = load float, float* %12, align 4
  %265 = call float @cosf(float %264) #3
  %266 = fmul float %263, %265
  %267 = load float*, float** %30, align 8
  %268 = load i32, i32* %18, align 4
  %269 = mul nsw i32 2, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  store float %266, float* %271, align 4
  %272 = load float, float* %28, align 4
  %273 = load float, float* %12, align 4
  %274 = call float @sinf(float %273) #3
  %275 = fmul float %272, %274
  %276 = load float*, float** %30, align 8
  %277 = load i32, i32* %18, align 4
  %278 = mul nsw i32 2, %277
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %276, i64 %280
  store float %275, float* %281, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
