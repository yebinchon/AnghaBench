; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_postmul_shear.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_postmul_shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_postmul_shear(%struct.TYPE_3__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load float**, float*** %11, align 8
  %13 = getelementptr inbounds float*, float** %12, i64 0
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load float, float* %15, align 4
  store float %16, float* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load float**, float*** %18, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 1
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  store float %23, float* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 2
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  store float %30, float* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load float**, float*** %32, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = load float, float* %36, align 4
  %38 = load float, float* %6, align 4
  %39 = fmul float %37, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load float**, float*** %41, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 0
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = fadd float %46, %39
  store float %47, float* %45, align 4
  %48 = load float, float* %7, align 4
  %49 = load float, float* %5, align 4
  %50 = fmul float %48, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load float**, float*** %52, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %50
  store float %58, float* %56, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load float**, float*** %60, align 8
  %62 = getelementptr inbounds float*, float** %61, i64 1
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 1
  %65 = load float, float* %64, align 4
  %66 = load float, float* %6, align 4
  %67 = fmul float %65, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load float**, float*** %69, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 1
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  %74 = load float, float* %73, align 4
  %75 = fadd float %74, %67
  store float %75, float* %73, align 4
  %76 = load float, float* %8, align 4
  %77 = load float, float* %5, align 4
  %78 = fmul float %76, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load float**, float*** %80, align 8
  %82 = getelementptr inbounds float*, float** %81, i64 1
  %83 = load float*, float** %82, align 8
  %84 = getelementptr inbounds float, float* %83, i64 1
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %78
  store float %86, float* %84, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load float**, float*** %88, align 8
  %90 = getelementptr inbounds float*, float** %89, i64 2
  %91 = load float*, float** %90, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = load float, float* %6, align 4
  %95 = fmul float %93, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load float**, float*** %97, align 8
  %99 = getelementptr inbounds float*, float** %98, i64 2
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  %102 = load float, float* %101, align 4
  %103 = fadd float %102, %95
  store float %103, float* %101, align 4
  %104 = load float, float* %9, align 4
  %105 = load float, float* %5, align 4
  %106 = fmul float %104, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load float**, float*** %108, align 8
  %110 = getelementptr inbounds float*, float** %109, i64 2
  %111 = load float*, float** %110, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  %113 = load float, float* %112, align 4
  %114 = fadd float %113, %106
  store float %114, float* %112, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
