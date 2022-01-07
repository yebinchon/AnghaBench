; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_0_back.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_5_0_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_5_0_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_5_0_back(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %17, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to float*
  store float* %38, float** %24, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to float*
  store float* %46, float** %25, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 10
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to float*
  store float* %54, float** %23, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to float*
  store float* %62, float** %26, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 10
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to float*
  store float* %70, float** %27, align 8
  %71 = load float, float* %14, align 4
  %72 = call float @llvm.fabs.f32(float %71)
  %73 = fsub float 1.000000e+00, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call float @powf(float %73, i32 %76)
  %78 = load float, float* %15, align 4
  %79 = fadd float %78, 1.000000e+00
  %80 = fmul float %79, 5.000000e-01
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call float @powf(float %80, i32 %83)
  %85 = fmul float %77, %84
  %86 = load float, float* %13, align 4
  %87 = fmul float %85, %86
  store float %87, float* %22, align 4
  %88 = load float, float* %14, align 4
  %89 = fadd float %88, 1.000000e+00
  %90 = fmul float 5.000000e-01, %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = call float @powf(float %90, i32 %93)
  %95 = load float, float* %15, align 4
  %96 = fadd float %95, 1.000000e+00
  %97 = fmul float %96, 5.000000e-01
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call float @powf(float %97, i32 %100)
  %102 = fmul float %94, %101
  %103 = load float, float* %13, align 4
  %104 = fmul float %102, %103
  store float %104, float* %18, align 4
  %105 = load float, float* %14, align 4
  %106 = fneg float %105
  %107 = fadd float %106, 1.000000e+00
  %108 = fmul float 5.000000e-01, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call float @powf(float %108, i32 %111)
  %113 = load float, float* %15, align 4
  %114 = fadd float %113, 1.000000e+00
  %115 = fmul float %114, 5.000000e-01
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call float @powf(float %115, i32 %118)
  %120 = fmul float %112, %119
  %121 = load float, float* %13, align 4
  %122 = fmul float %120, %121
  store float %122, float* %19, align 4
  %123 = load float, float* %14, align 4
  %124 = fadd float %123, 1.000000e+00
  %125 = fmul float 5.000000e-01, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call float @powf(float %125, i32 %128)
  %130 = load float, float* %15, align 4
  %131 = fadd float %130, 1.000000e+00
  %132 = fmul float %131, 5.000000e-01
  %133 = fsub float 1.000000e+00, %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call float @powf(float %133, i32 %136)
  %138 = fmul float %129, %137
  %139 = load float, float* %13, align 4
  %140 = fmul float %138, %139
  store float %140, float* %20, align 4
  %141 = load float, float* %14, align 4
  %142 = fneg float %141
  %143 = fadd float %142, 1.000000e+00
  %144 = fmul float 5.000000e-01, %143
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call float @powf(float %144, i32 %147)
  %149 = load float, float* %15, align 4
  %150 = fadd float %149, 1.000000e+00
  %151 = fmul float %150, 5.000000e-01
  %152 = fsub float 1.000000e+00, %151
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call float @powf(float %152, i32 %155)
  %157 = fmul float %148, %156
  %158 = load float, float* %13, align 4
  %159 = fmul float %157, %158
  store float %159, float* %21, align 4
  %160 = load float, float* %18, align 4
  %161 = load float, float* %10, align 4
  %162 = call float @cosf(float %161) #4
  %163 = fmul float %160, %162
  %164 = load float*, float** %24, align 8
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 2, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %164, i64 %167
  store float %163, float* %168, align 4
  %169 = load float, float* %18, align 4
  %170 = load float, float* %10, align 4
  %171 = call float @sinf(float %170) #4
  %172 = fmul float %169, %171
  %173 = load float*, float** %24, align 8
  %174 = load i32, i32* %16, align 4
  %175 = mul nsw i32 2, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %173, i64 %177
  store float %172, float* %178, align 4
  %179 = load float, float* %19, align 4
  %180 = load float, float* %11, align 4
  %181 = call float @cosf(float %180) #4
  %182 = fmul float %179, %181
  %183 = load float*, float** %25, align 8
  %184 = load i32, i32* %16, align 4
  %185 = mul nsw i32 2, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  store float %182, float* %187, align 4
  %188 = load float, float* %19, align 4
  %189 = load float, float* %11, align 4
  %190 = call float @sinf(float %189) #4
  %191 = fmul float %188, %190
  %192 = load float*, float** %25, align 8
  %193 = load i32, i32* %16, align 4
  %194 = mul nsw i32 2, %193
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %192, i64 %196
  store float %191, float* %197, align 4
  %198 = load float, float* %22, align 4
  %199 = load float, float* %12, align 4
  %200 = call float @cosf(float %199) #4
  %201 = fmul float %198, %200
  %202 = load float*, float** %23, align 8
  %203 = load i32, i32* %16, align 4
  %204 = mul nsw i32 2, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %202, i64 %205
  store float %201, float* %206, align 4
  %207 = load float, float* %22, align 4
  %208 = load float, float* %12, align 4
  %209 = call float @sinf(float %208) #4
  %210 = fmul float %207, %209
  %211 = load float*, float** %23, align 8
  %212 = load i32, i32* %16, align 4
  %213 = mul nsw i32 2, %212
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %211, i64 %215
  store float %210, float* %216, align 4
  %217 = load float, float* %20, align 4
  %218 = load float, float* %10, align 4
  %219 = call float @cosf(float %218) #4
  %220 = fmul float %217, %219
  %221 = load float*, float** %26, align 8
  %222 = load i32, i32* %16, align 4
  %223 = mul nsw i32 2, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %221, i64 %224
  store float %220, float* %225, align 4
  %226 = load float, float* %20, align 4
  %227 = load float, float* %10, align 4
  %228 = call float @sinf(float %227) #4
  %229 = fmul float %226, %228
  %230 = load float*, float** %26, align 8
  %231 = load i32, i32* %16, align 4
  %232 = mul nsw i32 2, %231
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %230, i64 %234
  store float %229, float* %235, align 4
  %236 = load float, float* %21, align 4
  %237 = load float, float* %11, align 4
  %238 = call float @cosf(float %237) #4
  %239 = fmul float %236, %238
  %240 = load float*, float** %27, align 8
  %241 = load i32, i32* %16, align 4
  %242 = mul nsw i32 2, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %240, i64 %243
  store float %239, float* %244, align 4
  %245 = load float, float* %21, align 4
  %246 = load float, float* %11, align 4
  %247 = call float @sinf(float %246) #4
  %248 = fmul float %245, %247
  %249 = load float*, float** %27, align 8
  %250 = load i32, i32* %16, align 4
  %251 = mul nsw i32 2, %250
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %249, i64 %253
  store float %248, float* %254, align 4
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
