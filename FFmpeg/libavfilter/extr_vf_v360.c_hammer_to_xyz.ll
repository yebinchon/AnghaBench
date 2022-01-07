; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_hammer_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_hammer_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SQRT2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @hammer_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hammer_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sitofp i32 %23 to float
  %25 = fmul float 2.000000e+00, %24
  %26 = load i32, i32* %10, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = fsub float %28, 1.000000e+00
  store float %29, float* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sitofp i32 %30 to float
  %32 = fmul float 2.000000e+00, %31
  %33 = load i32, i32* %11, align 4
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %32, %34
  %36 = fsub float %35, 1.000000e+00
  store float %36, float* %14, align 4
  %37 = load float, float* %13, align 4
  %38 = load float, float* %13, align 4
  %39 = fmul float %37, %38
  store float %39, float* %15, align 4
  %40 = load float, float* %14, align 4
  %41 = load float, float* %14, align 4
  %42 = fmul float %40, %41
  store float %42, float* %16, align 4
  %43 = load float, float* %15, align 4
  %44 = fmul float %43, 5.000000e-01
  %45 = fsub float 1.000000e+00, %44
  %46 = load float, float* %16, align 4
  %47 = fmul float %46, 5.000000e-01
  %48 = fsub float %45, %47
  %49 = call float @sqrtf(float %48) #3
  store float %49, float* %17, align 4
  %50 = load float, float* @M_SQRT2, align 4
  %51 = load float, float* %13, align 4
  %52 = fmul float %50, %51
  %53 = load float, float* %17, align 4
  %54 = fmul float %52, %53
  store float %54, float* %18, align 4
  %55 = load float, float* %17, align 4
  %56 = fmul float 2.000000e+00, %55
  %57 = load float, float* %17, align 4
  %58 = fmul float %56, %57
  %59 = fsub float %58, 1.000000e+00
  store float %59, float* %19, align 4
  %60 = load float, float* %18, align 4
  %61 = load float, float* %18, align 4
  %62 = fmul float %60, %61
  store float %62, float* %20, align 4
  %63 = load float, float* %19, align 4
  %64 = load float, float* %19, align 4
  %65 = fmul float %63, %64
  store float %65, float* %21, align 4
  %66 = load float, float* %16, align 4
  %67 = fmul float 2.000000e+00, %66
  %68 = load float, float* %17, align 4
  %69 = fmul float %67, %68
  %70 = load float, float* %17, align 4
  %71 = fmul float %69, %70
  %72 = fsub float 1.000000e+00, %71
  %73 = call float @sqrtf(float %72) #3
  store float %73, float* %22, align 4
  %74 = load float, float* %22, align 4
  %75 = fmul float %74, 2.000000e+00
  %76 = load float, float* %18, align 4
  %77 = fmul float %75, %76
  %78 = load float, float* %19, align 4
  %79 = fmul float %77, %78
  %80 = load float, float* %20, align 4
  %81 = load float, float* %21, align 4
  %82 = fadd float %80, %81
  %83 = fdiv float %79, %82
  %84 = load float*, float** %12, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  store float %83, float* %85, align 4
  %86 = load float, float* @M_SQRT2, align 4
  %87 = fneg float %86
  %88 = load float, float* %14, align 4
  %89 = fmul float %87, %88
  %90 = load float, float* %17, align 4
  %91 = fmul float %89, %90
  %92 = load float*, float** %12, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  store float %91, float* %93, align 4
  %94 = load float, float* %22, align 4
  %95 = fneg float %94
  %96 = load float, float* %21, align 4
  %97 = load float, float* %20, align 4
  %98 = fsub float %96, %97
  %99 = fmul float %95, %98
  %100 = load float, float* %20, align 4
  %101 = load float, float* %21, align 4
  %102 = fadd float %100, %101
  %103 = fdiv float %99, %102
  %104 = load float*, float** %12, align 8
  %105 = getelementptr inbounds float, float* %104, i64 2
  store float %103, float* %105, align 4
  %106 = load float*, float** %12, align 8
  %107 = call i32 @normalize_vector(float* %106)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local i32 @normalize_vector(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
