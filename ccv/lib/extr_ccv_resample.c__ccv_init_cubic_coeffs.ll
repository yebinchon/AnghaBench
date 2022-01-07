; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_init_cubic_coeffs.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_init_cubic_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float, %struct.TYPE_3__*)* @_ccv_init_cubic_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_init_cubic_coeffs(i32 %0, i32 %1, float %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store float -7.500000e-01, float* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @ccv_max(i32 %12, i32 0)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i8* @ccv_min(i32 %24, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 2
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i8* @ccv_min(i32 %34, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  %43 = load float, float* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sitofp i32 %44 to float
  %46 = fsub float %43, %45
  store float %46, float* %10, align 4
  %47 = load float, float* %10, align 4
  %48 = fadd float %47, 1.000000e+00
  %49 = fmul float -7.500000e-01, %48
  %50 = fsub float %49, -3.750000e+00
  %51 = load float, float* %10, align 4
  %52 = fadd float %51, 1.000000e+00
  %53 = fmul float %50, %52
  %54 = fadd float %53, -6.000000e+00
  %55 = load float, float* %10, align 4
  %56 = fadd float %55, 1.000000e+00
  %57 = fmul float %54, %56
  %58 = fsub float %57, -3.000000e+00
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  store float %58, float* %62, align 4
  %63 = load float, float* %10, align 4
  %64 = fmul float 1.250000e+00, %63
  %65 = fsub float %64, 2.250000e+00
  %66 = load float, float* %10, align 4
  %67 = fmul float %65, %66
  %68 = load float, float* %10, align 4
  %69 = fmul float %67, %68
  %70 = fadd float %69, 1.000000e+00
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float %70, float* %74, align 4
  %75 = load float, float* %10, align 4
  %76 = fsub float 1.000000e+00, %75
  %77 = fmul float 1.250000e+00, %76
  %78 = fsub float %77, 2.250000e+00
  %79 = load float, float* %10, align 4
  %80 = fsub float 1.000000e+00, %79
  %81 = fmul float %78, %80
  %82 = load float, float* %10, align 4
  %83 = fsub float 1.000000e+00, %82
  %84 = fmul float %81, %83
  %85 = fadd float %84, 1.000000e+00
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 2
  store float %85, float* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  %94 = load float, float* %93, align 4
  %95 = fsub float 1.000000e+00, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  %100 = load float, float* %99, align 4
  %101 = fsub float %95, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load float*, float** %103, align 8
  %105 = getelementptr inbounds float, float* %104, i64 2
  %106 = load float, float* %105, align 4
  %107 = fsub float %101, %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load float*, float** %109, align 8
  %111 = getelementptr inbounds float, float* %110, i64 3
  store float %107, float* %111, align 4
  ret void
}

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i8* @ccv_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
