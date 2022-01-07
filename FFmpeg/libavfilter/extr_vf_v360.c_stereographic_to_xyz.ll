; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_stereographic_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_stereographic_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, float*)* @stereographic_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stereographic_to_xyz(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sitofp i32 %16 to float
  %18 = fmul float 2.000000e+00, %17
  %19 = load i32, i32* %10, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %18, %20
  %22 = fsub float %21, 1.000000e+00
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = fmul float %22, %27
  store float %28, float* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sitofp i32 %29 to float
  %31 = fmul float 2.000000e+00, %30
  %32 = load i32, i32* %11, align 4
  %33 = sitofp i32 %32 to float
  %34 = fdiv float %31, %33
  %35 = fsub float %34, 1.000000e+00
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = fmul float %35, %40
  store float %41, float* %14, align 4
  %42 = load float, float* %13, align 4
  %43 = load float, float* %13, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %14, align 4
  %46 = load float, float* %14, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %44, %47
  store float %48, float* %15, align 4
  %49 = load float, float* %13, align 4
  %50 = fmul float 2.000000e+00, %49
  %51 = load float, float* %15, align 4
  %52 = fadd float 1.000000e+00, %51
  %53 = fdiv float %50, %52
  %54 = load float*, float** %12, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  store float %53, float* %55, align 4
  %56 = load float, float* %15, align 4
  %57 = fadd float -1.000000e+00, %56
  %58 = load float, float* %15, align 4
  %59 = fadd float 1.000000e+00, %58
  %60 = fdiv float %57, %59
  %61 = load float*, float** %12, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  store float %60, float* %62, align 4
  %63 = load float, float* %14, align 4
  %64 = fmul float 2.000000e+00, %63
  %65 = load float, float* %15, align 4
  %66 = fadd float 1.000000e+00, %65
  %67 = fdiv float %64, %66
  %68 = load float*, float** %12, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  store float %67, float* %69, align 4
  %70 = load float*, float** %12, align 8
  %71 = call i32 @normalize_vector(float* %70)
  ret void
}

declare dso_local i32 @normalize_vector(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
