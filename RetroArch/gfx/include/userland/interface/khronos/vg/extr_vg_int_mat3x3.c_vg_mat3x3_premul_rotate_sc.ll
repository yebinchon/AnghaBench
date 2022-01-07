; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_premul_rotate_sc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_premul_rotate_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_premul_rotate_sc(%struct.TYPE_3__* %0, float %1, float %2) #0 {
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
  %20 = getelementptr inbounds float*, float** %19, i64 0
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  store float %23, float* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 0
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 2
  %30 = load float, float* %29, align 4
  store float %30, float* %9, align 4
  %31 = load float, float* %7, align 4
  %32 = load float, float* %6, align 4
  %33 = fmul float %31, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load float**, float*** %35, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 1
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = fmul float %40, %41
  %43 = fsub float %33, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load float**, float*** %45, align 8
  %47 = getelementptr inbounds float*, float** %46, i64 0
  %48 = load float*, float** %47, align 8
  %49 = getelementptr inbounds float, float* %48, i64 0
  store float %43, float* %49, align 4
  %50 = load float, float* %8, align 4
  %51 = load float, float* %6, align 4
  %52 = fmul float %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load float**, float*** %54, align 8
  %56 = getelementptr inbounds float*, float** %55, i64 1
  %57 = load float*, float** %56, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float, float* %5, align 4
  %61 = fmul float %59, %60
  %62 = fsub float %52, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load float**, float*** %64, align 8
  %66 = getelementptr inbounds float*, float** %65, i64 0
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  store float %62, float* %68, align 4
  %69 = load float, float* %9, align 4
  %70 = load float, float* %6, align 4
  %71 = fmul float %69, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load float**, float*** %73, align 8
  %75 = getelementptr inbounds float*, float** %74, i64 1
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = load float, float* %5, align 4
  %80 = fmul float %78, %79
  %81 = fsub float %71, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load float**, float*** %83, align 8
  %85 = getelementptr inbounds float*, float** %84, i64 0
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  store float %81, float* %87, align 4
  %88 = load float, float* %7, align 4
  %89 = load float, float* %5, align 4
  %90 = fmul float %88, %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load float**, float*** %92, align 8
  %94 = getelementptr inbounds float*, float** %93, i64 1
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = load float, float* %6, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %90, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load float**, float*** %102, align 8
  %104 = getelementptr inbounds float*, float** %103, i64 1
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds float, float* %105, i64 0
  store float %100, float* %106, align 4
  %107 = load float, float* %8, align 4
  %108 = load float, float* %5, align 4
  %109 = fmul float %107, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load float**, float*** %111, align 8
  %113 = getelementptr inbounds float*, float** %112, i64 1
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  %116 = load float, float* %115, align 4
  %117 = load float, float* %6, align 4
  %118 = fmul float %116, %117
  %119 = fadd float %109, %118
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load float**, float*** %121, align 8
  %123 = getelementptr inbounds float*, float** %122, i64 1
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  store float %119, float* %125, align 4
  %126 = load float, float* %9, align 4
  %127 = load float, float* %5, align 4
  %128 = fmul float %126, %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load float**, float*** %130, align 8
  %132 = getelementptr inbounds float*, float** %131, i64 1
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 2
  %135 = load float, float* %134, align 4
  %136 = load float, float* %6, align 4
  %137 = fmul float %135, %136
  %138 = fadd float %128, %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load float**, float*** %140, align 8
  %142 = getelementptr inbounds float*, float** %141, i64 1
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 2
  store float %138, float* %144, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
