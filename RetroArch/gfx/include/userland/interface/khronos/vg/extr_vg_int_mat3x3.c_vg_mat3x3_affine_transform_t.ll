; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_affine_transform_t.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_affine_transform_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_affine_transform_t(%struct.TYPE_3__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float**, float*** %10, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 0
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %5, align 8
  %17 = load float, float* %16, align 4
  %18 = fmul float %15, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float**, float*** %20, align 8
  %22 = getelementptr inbounds float*, float** %21, i64 0
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %6, align 8
  %27 = load float, float* %26, align 4
  %28 = fmul float %25, %27
  %29 = fadd float %18, %28
  store float %29, float* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load float**, float*** %31, align 8
  %33 = getelementptr inbounds float*, float** %32, i64 1
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %5, align 8
  %38 = load float, float* %37, align 4
  %39 = fmul float %36, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load float**, float*** %41, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 1
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %6, align 8
  %48 = load float, float* %47, align 4
  %49 = fmul float %46, %48
  %50 = fadd float %39, %49
  store float %50, float* %8, align 4
  %51 = load float, float* %7, align 4
  %52 = load float*, float** %5, align 8
  store float %51, float* %52, align 4
  %53 = load float, float* %8, align 4
  %54 = load float*, float** %6, align 8
  store float %53, float* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
