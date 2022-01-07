; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_get(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load float**, float*** %6, align 8
  %8 = getelementptr inbounds float*, float** %7, i64 0
  %9 = load float*, float** %8, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  store float %11, float* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %4, align 8
  %22 = getelementptr inbounds float, float* %21, i64 3
  store float %20, float* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load float**, float*** %24, align 8
  %26 = getelementptr inbounds float*, float** %25, i64 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %4, align 8
  %31 = getelementptr inbounds float, float* %30, i64 6
  store float %29, float* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load float**, float*** %33, align 8
  %35 = getelementptr inbounds float*, float** %34, i64 1
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  store float %38, float* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load float**, float*** %42, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 1
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 4
  store float %47, float* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load float**, float*** %51, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 1
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %4, align 8
  %58 = getelementptr inbounds float, float* %57, i64 7
  store float %56, float* %58, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load float**, float*** %60, align 8
  %62 = getelementptr inbounds float*, float** %61, i64 2
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  store float %65, float* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load float**, float*** %69, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 2
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 1
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %4, align 8
  %76 = getelementptr inbounds float, float* %75, i64 5
  store float %74, float* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load float**, float*** %78, align 8
  %80 = getelementptr inbounds float*, float** %79, i64 2
  %81 = load float*, float** %80, align 8
  %82 = getelementptr inbounds float, float* %81, i64 2
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %4, align 8
  %85 = getelementptr inbounds float, float* %84, i64 8
  store float %83, float* %85, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
