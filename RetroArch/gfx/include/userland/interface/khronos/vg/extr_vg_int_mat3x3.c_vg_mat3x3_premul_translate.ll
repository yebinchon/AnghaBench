; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_premul_translate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_premul_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_premul_translate(%struct.TYPE_3__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load float**, float*** %8, align 8
  %10 = getelementptr inbounds float*, float** %9, i64 2
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = load float, float* %5, align 4
  %15 = fmul float %13, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load float**, float*** %17, align 8
  %19 = getelementptr inbounds float*, float** %18, i64 0
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  %22 = load float, float* %21, align 4
  %23 = fadd float %22, %15
  store float %23, float* %21, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 2
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 1
  %30 = load float, float* %29, align 4
  %31 = load float, float* %5, align 4
  %32 = fmul float %30, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load float**, float*** %34, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  %39 = load float, float* %38, align 4
  %40 = fadd float %39, %32
  store float %40, float* %38, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load float**, float*** %42, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 2
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = load float, float* %46, align 4
  %48 = load float, float* %5, align 4
  %49 = fmul float %47, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load float**, float*** %51, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 0
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = fadd float %56, %49
  store float %57, float* %55, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load float**, float*** %59, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 2
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = load float, float* %6, align 4
  %66 = fmul float %64, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load float**, float*** %68, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 1
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %66
  store float %74, float* %72, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load float**, float*** %76, align 8
  %78 = getelementptr inbounds float*, float** %77, i64 2
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %80, align 4
  %82 = load float, float* %6, align 4
  %83 = fmul float %81, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load float**, float*** %85, align 8
  %87 = getelementptr inbounds float*, float** %86, i64 1
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  %90 = load float, float* %89, align 4
  %91 = fadd float %90, %83
  store float %91, float* %89, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load float**, float*** %93, align 8
  %95 = getelementptr inbounds float*, float** %94, i64 2
  %96 = load float*, float** %95, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  %98 = load float, float* %97, align 4
  %99 = load float, float* %6, align 4
  %100 = fmul float %98, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load float**, float*** %102, align 8
  %104 = getelementptr inbounds float*, float** %103, i64 1
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds float, float* %105, i64 2
  %107 = load float, float* %106, align 4
  %108 = fadd float %107, %100
  store float %108, float* %106, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
