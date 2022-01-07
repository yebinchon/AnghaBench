; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_4_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_4_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_4_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_4_0(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %17, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to float*
  store float* %36, float** %23, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %24, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to float*
  store float* %52, float** %22, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to float*
  store float* %60, float** %25, align 8
  %61 = load float, float* %14, align 4
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fsub float 1.000000e+00, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call float @powf(float %63, i32 %66)
  %68 = load float, float* %15, align 4
  %69 = fadd float %68, 1.000000e+00
  %70 = fmul float %69, 5.000000e-01
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call float @powf(float %70, i32 %73)
  %75 = fmul float %67, %74
  %76 = load float, float* %13, align 4
  %77 = fmul float %75, %76
  store float %77, float* %21, align 4
  %78 = load float, float* %14, align 4
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = fsub float 1.000000e+00, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call float @powf(float %80, i32 %83)
  %85 = load float, float* %15, align 4
  %86 = fsub float 1.000000e+00, %85
  %87 = fmul float %86, 5.000000e-01
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call float @powf(float %87, i32 %90)
  %92 = fmul float %84, %91
  %93 = load float, float* %13, align 4
  %94 = fmul float %92, %93
  store float %94, float* %18, align 4
  %95 = load float, float* %14, align 4
  %96 = fadd float %95, 1.000000e+00
  %97 = fmul float 5.000000e-01, %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call float @powf(float %97, i32 %100)
  %102 = load float, float* %15, align 4
  %103 = fadd float %102, 1.000000e+00
  %104 = fmul float %103, 5.000000e-01
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call float @powf(float %104, i32 %107)
  %109 = fmul float %101, %108
  %110 = load float, float* %13, align 4
  %111 = fmul float %109, %110
  store float %111, float* %19, align 4
  %112 = load float, float* %14, align 4
  %113 = fneg float %112
  %114 = fadd float %113, 1.000000e+00
  %115 = fmul float 5.000000e-01, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call float @powf(float %115, i32 %118)
  %120 = load float, float* %15, align 4
  %121 = fadd float %120, 1.000000e+00
  %122 = fmul float %121, 5.000000e-01
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call float @powf(float %122, i32 %125)
  %127 = fmul float %119, %126
  %128 = load float, float* %13, align 4
  %129 = fmul float %127, %128
  store float %129, float* %20, align 4
  %130 = load float, float* %19, align 4
  %131 = load float, float* %10, align 4
  %132 = call float @cosf(float %131) #4
  %133 = fmul float %130, %132
  %134 = load float*, float** %23, align 8
  %135 = load i32, i32* %16, align 4
  %136 = mul nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %134, i64 %137
  store float %133, float* %138, align 4
  %139 = load float, float* %19, align 4
  %140 = load float, float* %10, align 4
  %141 = call float @sinf(float %140) #4
  %142 = fmul float %139, %141
  %143 = load float*, float** %23, align 8
  %144 = load i32, i32* %16, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %143, i64 %147
  store float %142, float* %148, align 4
  %149 = load float, float* %20, align 4
  %150 = load float, float* %11, align 4
  %151 = call float @cosf(float %150) #4
  %152 = fmul float %149, %151
  %153 = load float*, float** %24, align 8
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 2, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  store float %152, float* %157, align 4
  %158 = load float, float* %20, align 4
  %159 = load float, float* %11, align 4
  %160 = call float @sinf(float %159) #4
  %161 = fmul float %158, %160
  %162 = load float*, float** %24, align 8
  %163 = load i32, i32* %16, align 4
  %164 = mul nsw i32 2, %163
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %162, i64 %166
  store float %161, float* %167, align 4
  %168 = load float, float* %21, align 4
  %169 = load float, float* %12, align 4
  %170 = call float @cosf(float %169) #4
  %171 = fmul float %168, %170
  %172 = load float*, float** %22, align 8
  %173 = load i32, i32* %16, align 4
  %174 = mul nsw i32 2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %172, i64 %175
  store float %171, float* %176, align 4
  %177 = load float, float* %21, align 4
  %178 = load float, float* %12, align 4
  %179 = call float @sinf(float %178) #4
  %180 = fmul float %177, %179
  %181 = load float*, float** %22, align 8
  %182 = load i32, i32* %16, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  store float %180, float* %186, align 4
  %187 = load float, float* %18, align 4
  %188 = load float, float* %12, align 4
  %189 = call float @cosf(float %188) #4
  %190 = fmul float %187, %189
  %191 = load float*, float** %25, align 8
  %192 = load i32, i32* %16, align 4
  %193 = mul nsw i32 2, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  store float %190, float* %195, align 4
  %196 = load float, float* %18, align 4
  %197 = load float, float* %12, align 4
  %198 = call float @sinf(float %197) #4
  %199 = fmul float %196, %198
  %200 = load float*, float** %25, align 8
  %201 = load i32, i32* %16, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %200, i64 %204
  store float %199, float* %205, align 4
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
