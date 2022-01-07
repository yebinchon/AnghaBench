; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxReflect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxReflect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxReflect(float** %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca float**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float** %0, float*** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = fmul float -2.000000e+00, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  store float %18, float* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fmul float -2.000000e+00, %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  store float %26, float* %8, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = fmul float -2.000000e+00, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load float, float* %32, align 4
  %34 = fmul float %30, %33
  store float %34, float* %9, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = call float @c_guVecDotProduct(%struct.TYPE_6__* %35, %struct.TYPE_6__* %36)
  %38 = fmul float 2.000000e+00, %37
  store float %38, float* %10, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fmul float 2.000000e+00, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fmul float %42, %45
  %47 = fsub float 1.000000e+00, %46
  %48 = load float**, float*** %4, align 8
  %49 = getelementptr inbounds float*, float** %48, i64 0
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  store float %47, float* %51, align 4
  %52 = load float, float* %7, align 4
  %53 = load float**, float*** %4, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  store float %52, float* %56, align 4
  %57 = load float, float* %8, align 4
  %58 = load float**, float*** %4, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 0
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  store float %57, float* %61, align 4
  %62 = load float, float* %10, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = fmul float %62, %65
  %67 = load float**, float*** %4, align 8
  %68 = getelementptr inbounds float*, float** %67, i64 0
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 3
  store float %66, float* %70, align 4
  %71 = load float, float* %7, align 4
  %72 = load float**, float*** %4, align 8
  %73 = getelementptr inbounds float*, float** %72, i64 1
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  store float %71, float* %75, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = fmul float 2.000000e+00, %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = fmul float %79, %82
  %84 = fsub float 1.000000e+00, %83
  %85 = load float**, float*** %4, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 1
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  store float %84, float* %88, align 4
  %89 = load float, float* %9, align 4
  %90 = load float**, float*** %4, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 1
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 2
  store float %89, float* %93, align 4
  %94 = load float, float* %10, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %94, %97
  %99 = load float**, float*** %4, align 8
  %100 = getelementptr inbounds float*, float** %99, i64 1
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 3
  store float %98, float* %102, align 4
  %103 = load float, float* %8, align 4
  %104 = load float**, float*** %4, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 2
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  store float %103, float* %107, align 4
  %108 = load float, float* %9, align 4
  %109 = load float**, float*** %4, align 8
  %110 = getelementptr inbounds float*, float** %109, i64 2
  %111 = load float*, float** %110, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  store float %108, float* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load float, float* %114, align 4
  %116 = fmul float 2.000000e+00, %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = fmul float %116, %119
  %121 = fsub float 1.000000e+00, %120
  %122 = load float**, float*** %4, align 8
  %123 = getelementptr inbounds float*, float** %122, i64 2
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  store float %121, float* %125, align 4
  %126 = load float, float* %10, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load float, float* %128, align 4
  %130 = fmul float %126, %129
  %131 = load float**, float*** %4, align 8
  %132 = getelementptr inbounds float*, float** %131, i64 2
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 3
  store float %130, float* %134, align 4
  ret void
}

declare dso_local float @c_guVecDotProduct(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
