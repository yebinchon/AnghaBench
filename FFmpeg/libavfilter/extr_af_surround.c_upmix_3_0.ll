; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_3_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_3_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_3_0(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %17, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to float*
  store float* %34, float** %22, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %23, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to float*
  store float* %50, float** %21, align 8
  %51 = load float, float* %14, align 4
  %52 = call float @llvm.fabs.f32(float %51)
  %53 = fsub float 1.000000e+00, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call float @powf(float %53, i32 %56)
  %58 = load float, float* %15, align 4
  %59 = fadd float %58, 1.000000e+00
  %60 = fmul float %59, 5.000000e-01
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call float @powf(float %60, i32 %63)
  %65 = fmul float %57, %64
  %66 = load float, float* %13, align 4
  %67 = fmul float %65, %66
  store float %67, float* %20, align 4
  %68 = load float, float* %14, align 4
  %69 = fadd float %68, 1.000000e+00
  %70 = fmul float 5.000000e-01, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call float @powf(float %70, i32 %73)
  %75 = load float, float* %15, align 4
  %76 = fadd float %75, 1.000000e+00
  %77 = fmul float %76, 5.000000e-01
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call float @powf(float %77, i32 %80)
  %82 = fmul float %74, %81
  %83 = load float, float* %13, align 4
  %84 = fmul float %82, %83
  store float %84, float* %18, align 4
  %85 = load float, float* %14, align 4
  %86 = fneg float %85
  %87 = fadd float %86, 1.000000e+00
  %88 = fmul float 5.000000e-01, %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call float @powf(float %88, i32 %91)
  %93 = load float, float* %15, align 4
  %94 = fadd float %93, 1.000000e+00
  %95 = fmul float %94, 5.000000e-01
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call float @powf(float %95, i32 %98)
  %100 = fmul float %92, %99
  %101 = load float, float* %13, align 4
  %102 = fmul float %100, %101
  store float %102, float* %19, align 4
  %103 = load float, float* %18, align 4
  %104 = load float, float* %10, align 4
  %105 = call float @cosf(float %104) #4
  %106 = fmul float %103, %105
  %107 = load float*, float** %22, align 8
  %108 = load i32, i32* %16, align 4
  %109 = mul nsw i32 2, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %107, i64 %110
  store float %106, float* %111, align 4
  %112 = load float, float* %18, align 4
  %113 = load float, float* %10, align 4
  %114 = call float @sinf(float %113) #4
  %115 = fmul float %112, %114
  %116 = load float*, float** %22, align 8
  %117 = load i32, i32* %16, align 4
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %116, i64 %120
  store float %115, float* %121, align 4
  %122 = load float, float* %19, align 4
  %123 = load float, float* %11, align 4
  %124 = call float @cosf(float %123) #4
  %125 = fmul float %122, %124
  %126 = load float*, float** %23, align 8
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 2, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %126, i64 %129
  store float %125, float* %130, align 4
  %131 = load float, float* %19, align 4
  %132 = load float, float* %11, align 4
  %133 = call float @sinf(float %132) #4
  %134 = fmul float %131, %133
  %135 = load float*, float** %23, align 8
  %136 = load i32, i32* %16, align 4
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %135, i64 %139
  store float %134, float* %140, align 4
  %141 = load float, float* %20, align 4
  %142 = load float, float* %12, align 4
  %143 = call float @cosf(float %142) #4
  %144 = fmul float %141, %143
  %145 = load float*, float** %21, align 8
  %146 = load i32, i32* %16, align 4
  %147 = mul nsw i32 2, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %145, i64 %148
  store float %144, float* %149, align 4
  %150 = load float, float* %20, align 4
  %151 = load float, float* %12, align 4
  %152 = call float @sinf(float %151) #4
  %153 = fmul float %150, %152
  %154 = load float*, float** %21, align 8
  %155 = load i32, i32* %16, align 4
  %156 = mul nsw i32 2, %155
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %154, i64 %158
  store float %153, float* %159, align 4
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
