; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_upmix_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float, float, float, float, float, float, i32)* @upmix_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upmix_stereo(%struct.TYPE_7__* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7) #0 {
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
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %17, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to float*
  store float* %32, float** %20, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  store float* %40, float** %21, align 8
  %41 = load float, float* %14, align 4
  %42 = fadd float %41, 1.000000e+00
  %43 = fmul float 5.000000e-01, %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call float @powf(float %43, i32 %46)
  %48 = load float, float* %15, align 4
  %49 = fadd float %48, 1.000000e+00
  %50 = fmul float %49, 5.000000e-01
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call float @powf(float %50, i32 %53)
  %55 = fmul float %47, %54
  %56 = load float, float* %13, align 4
  %57 = fmul float %55, %56
  store float %57, float* %18, align 4
  %58 = load float, float* %14, align 4
  %59 = fneg float %58
  %60 = fadd float %59, 1.000000e+00
  %61 = fmul float 5.000000e-01, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call float @powf(float %61, i32 %64)
  %66 = load float, float* %15, align 4
  %67 = fadd float %66, 1.000000e+00
  %68 = fmul float %67, 5.000000e-01
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call float @powf(float %68, i32 %71)
  %73 = fmul float %65, %72
  %74 = load float, float* %13, align 4
  %75 = fmul float %73, %74
  store float %75, float* %19, align 4
  %76 = load float, float* %18, align 4
  %77 = load float, float* %10, align 4
  %78 = call float @cosf(float %77) #3
  %79 = fmul float %76, %78
  %80 = load float*, float** %20, align 8
  %81 = load i32, i32* %16, align 4
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %80, i64 %83
  store float %79, float* %84, align 4
  %85 = load float, float* %18, align 4
  %86 = load float, float* %10, align 4
  %87 = call float @sinf(float %86) #3
  %88 = fmul float %85, %87
  %89 = load float*, float** %20, align 8
  %90 = load i32, i32* %16, align 4
  %91 = mul nsw i32 2, %90
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %89, i64 %93
  store float %88, float* %94, align 4
  %95 = load float, float* %19, align 4
  %96 = load float, float* %11, align 4
  %97 = call float @cosf(float %96) #3
  %98 = fmul float %95, %97
  %99 = load float*, float** %21, align 8
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %99, i64 %102
  store float %98, float* %103, align 4
  %104 = load float, float* %19, align 4
  %105 = load float, float* %11, align 4
  %106 = call float @sinf(float %105) #3
  %107 = fmul float %104, %106
  %108 = load float*, float** %21, align 8
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 2, %109
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %108, i64 %112
  store float %107, float* %113, align 4
  ret void
}

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
