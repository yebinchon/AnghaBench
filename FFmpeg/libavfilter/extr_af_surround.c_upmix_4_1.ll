; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_4_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_4_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_4_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_4_1(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 12
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to float*
  store float* %38, float** %24, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 12
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to float*
  store float* %46, float** %25, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 12
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to float*
  store float* %54, float** %23, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 12
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to float*
  store float* %62, float** %27, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 12
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to float*
  store float* %70, float** %26, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @get_lfe(i32 %73, i32 %74, i32 %77, i32 %80, float* %18, float* %13, i32 %83)
  %85 = load float, float* %18, align 4
  %86 = load float, float* %12, align 4
  %87 = call float @cosf(float %86) #4
  %88 = fmul float %85, %87
  %89 = load float*, float** %27, align 8
  %90 = load i32, i32* %16, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %89, i64 %92
  store float %88, float* %93, align 4
  %94 = load float, float* %18, align 4
  %95 = load float, float* %12, align 4
  %96 = call float @sinf(float %95) #4
  %97 = fmul float %94, %96
  %98 = load float*, float** %27, align 8
  %99 = load i32, i32* %16, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %98, i64 %102
  store float %97, float* %103, align 4
  %104 = load float, float* %14, align 4
  %105 = call float @llvm.fabs.f32(float %104)
  %106 = fsub float 1.000000e+00, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call float @powf(float %106, i32 %109)
  %111 = load float, float* %15, align 4
  %112 = fadd float %111, 1.000000e+00
  %113 = fmul float %112, 5.000000e-01
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call float @powf(float %113, i32 %116)
  %118 = fmul float %110, %117
  %119 = load float, float* %13, align 4
  %120 = fmul float %118, %119
  store float %120, float* %22, align 4
  %121 = load float, float* %14, align 4
  %122 = call float @llvm.fabs.f32(float %121)
  %123 = fsub float 1.000000e+00, %122
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call float @powf(float %123, i32 %126)
  %128 = load float, float* %15, align 4
  %129 = fsub float 1.000000e+00, %128
  %130 = fmul float %129, 5.000000e-01
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call float @powf(float %130, i32 %133)
  %135 = fmul float %127, %134
  %136 = load float, float* %13, align 4
  %137 = fmul float %135, %136
  store float %137, float* %19, align 4
  %138 = load float, float* %14, align 4
  %139 = fadd float %138, 1.000000e+00
  %140 = fmul float 5.000000e-01, %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call float @powf(float %140, i32 %143)
  %145 = load float, float* %15, align 4
  %146 = fadd float %145, 1.000000e+00
  %147 = fmul float %146, 5.000000e-01
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call float @powf(float %147, i32 %150)
  %152 = fmul float %144, %151
  %153 = load float, float* %13, align 4
  %154 = fmul float %152, %153
  store float %154, float* %20, align 4
  %155 = load float, float* %14, align 4
  %156 = fneg float %155
  %157 = fadd float %156, 1.000000e+00
  %158 = fmul float 5.000000e-01, %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call float @powf(float %158, i32 %161)
  %163 = load float, float* %15, align 4
  %164 = fadd float %163, 1.000000e+00
  %165 = fmul float %164, 5.000000e-01
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call float @powf(float %165, i32 %168)
  %170 = fmul float %162, %169
  %171 = load float, float* %13, align 4
  %172 = fmul float %170, %171
  store float %172, float* %21, align 4
  %173 = load float, float* %20, align 4
  %174 = load float, float* %10, align 4
  %175 = call float @cosf(float %174) #4
  %176 = fmul float %173, %175
  %177 = load float*, float** %24, align 8
  %178 = load i32, i32* %16, align 4
  %179 = mul nsw i32 2, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %177, i64 %180
  store float %176, float* %181, align 4
  %182 = load float, float* %20, align 4
  %183 = load float, float* %10, align 4
  %184 = call float @sinf(float %183) #4
  %185 = fmul float %182, %184
  %186 = load float*, float** %24, align 8
  %187 = load i32, i32* %16, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %186, i64 %190
  store float %185, float* %191, align 4
  %192 = load float, float* %21, align 4
  %193 = load float, float* %11, align 4
  %194 = call float @cosf(float %193) #4
  %195 = fmul float %192, %194
  %196 = load float*, float** %25, align 8
  %197 = load i32, i32* %16, align 4
  %198 = mul nsw i32 2, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %196, i64 %199
  store float %195, float* %200, align 4
  %201 = load float, float* %21, align 4
  %202 = load float, float* %11, align 4
  %203 = call float @sinf(float %202) #4
  %204 = fmul float %201, %203
  %205 = load float*, float** %25, align 8
  %206 = load i32, i32* %16, align 4
  %207 = mul nsw i32 2, %206
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %205, i64 %209
  store float %204, float* %210, align 4
  %211 = load float, float* %22, align 4
  %212 = load float, float* %12, align 4
  %213 = call float @cosf(float %212) #4
  %214 = fmul float %211, %213
  %215 = load float*, float** %23, align 8
  %216 = load i32, i32* %16, align 4
  %217 = mul nsw i32 2, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %215, i64 %218
  store float %214, float* %219, align 4
  %220 = load float, float* %22, align 4
  %221 = load float, float* %12, align 4
  %222 = call float @sinf(float %221) #4
  %223 = fmul float %220, %222
  %224 = load float*, float** %23, align 8
  %225 = load i32, i32* %16, align 4
  %226 = mul nsw i32 2, %225
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %224, i64 %228
  store float %223, float* %229, align 4
  %230 = load float, float* %19, align 4
  %231 = load float, float* %12, align 4
  %232 = call float @cosf(float %231) #4
  %233 = fmul float %230, %232
  %234 = load float*, float** %26, align 8
  %235 = load i32, i32* %16, align 4
  %236 = mul nsw i32 2, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %234, i64 %237
  store float %233, float* %238, align 4
  %239 = load float, float* %19, align 4
  %240 = load float, float* %12, align 4
  %241 = call float @sinf(float %240) #4
  %242 = fmul float %239, %241
  %243 = load float*, float** %26, align 8
  %244 = load i32, i32* %16, align 4
  %245 = mul nsw i32 2, %244
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %243, i64 %247
  store float %242, float* %248, align 4
  ret void
}

declare dso_local i32 @get_lfe(i32, i32, i32, i32, float*, float*, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local float @powf(float, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
