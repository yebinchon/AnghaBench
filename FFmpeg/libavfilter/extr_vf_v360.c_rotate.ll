; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_rotate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x float]*, float*)* @rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate([3 x float]* %0, float* %1) #0 {
  %3 = alloca [3 x float]*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store [3 x float]* %0, [3 x float]** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = load [3 x float]*, [3 x float]** %3, align 8
  %12 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0
  %13 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %14 = load float, float* %13, align 4
  %15 = fmul float %10, %14
  %16 = load float*, float** %4, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = load [3 x float]*, [3 x float]** %3, align 8
  %20 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0
  %21 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 1
  %22 = load float, float* %21, align 4
  %23 = fmul float %18, %22
  %24 = fadd float %15, %23
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = load [3 x float]*, [3 x float]** %3, align 8
  %29 = getelementptr inbounds [3 x float], [3 x float]* %28, i64 0
  %30 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 2
  %31 = load float, float* %30, align 4
  %32 = fmul float %27, %31
  %33 = fadd float %24, %32
  store float %33, float* %5, align 4
  %34 = load float*, float** %4, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = load [3 x float]*, [3 x float]** %3, align 8
  %38 = getelementptr inbounds [3 x float], [3 x float]* %37, i64 1
  %39 = getelementptr inbounds [3 x float], [3 x float]* %38, i64 0, i64 0
  %40 = load float, float* %39, align 4
  %41 = fmul float %36, %40
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load [3 x float]*, [3 x float]** %3, align 8
  %46 = getelementptr inbounds [3 x float], [3 x float]* %45, i64 1
  %47 = getelementptr inbounds [3 x float], [3 x float]* %46, i64 0, i64 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %44, %48
  %50 = fadd float %41, %49
  %51 = load float*, float** %4, align 8
  %52 = getelementptr inbounds float, float* %51, i64 2
  %53 = load float, float* %52, align 4
  %54 = load [3 x float]*, [3 x float]** %3, align 8
  %55 = getelementptr inbounds [3 x float], [3 x float]* %54, i64 1
  %56 = getelementptr inbounds [3 x float], [3 x float]* %55, i64 0, i64 2
  %57 = load float, float* %56, align 4
  %58 = fmul float %53, %57
  %59 = fadd float %50, %58
  store float %59, float* %6, align 4
  %60 = load float*, float** %4, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = load [3 x float]*, [3 x float]** %3, align 8
  %64 = getelementptr inbounds [3 x float], [3 x float]* %63, i64 2
  %65 = getelementptr inbounds [3 x float], [3 x float]* %64, i64 0, i64 0
  %66 = load float, float* %65, align 4
  %67 = fmul float %62, %66
  %68 = load float*, float** %4, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float, float* %69, align 4
  %71 = load [3 x float]*, [3 x float]** %3, align 8
  %72 = getelementptr inbounds [3 x float], [3 x float]* %71, i64 2
  %73 = getelementptr inbounds [3 x float], [3 x float]* %72, i64 0, i64 1
  %74 = load float, float* %73, align 4
  %75 = fmul float %70, %74
  %76 = fadd float %67, %75
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  %79 = load float, float* %78, align 4
  %80 = load [3 x float]*, [3 x float]** %3, align 8
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 2
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 2
  %83 = load float, float* %82, align 4
  %84 = fmul float %79, %83
  %85 = fadd float %76, %84
  store float %85, float* %7, align 4
  %86 = load float, float* %5, align 4
  %87 = load float*, float** %4, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  store float %86, float* %88, align 4
  %89 = load float, float* %6, align 4
  %90 = load float*, float** %4, align 8
  %91 = getelementptr inbounds float, float* %90, i64 1
  store float %89, float* %91, align 4
  %92 = load float, float* %7, align 4
  %93 = load float*, float** %4, align 8
  %94 = getelementptr inbounds float, float* %93, i64 2
  store float %92, float* %94, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
