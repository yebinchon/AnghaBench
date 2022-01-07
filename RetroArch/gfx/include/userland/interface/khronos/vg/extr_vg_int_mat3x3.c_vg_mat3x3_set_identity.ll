; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_set_identity.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_set_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_set_identity(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load float**, float*** %4, align 8
  %6 = getelementptr inbounds float*, float** %5, i64 0
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  store float 1.000000e+00, float* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float**, float*** %10, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 0
  %13 = load float*, float** %12, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  store float 0.000000e+00, float* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load float**, float*** %16, align 8
  %18 = getelementptr inbounds float*, float** %17, i64 0
  %19 = load float*, float** %18, align 8
  %20 = getelementptr inbounds float, float* %19, i64 2
  store float 0.000000e+00, float* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load float**, float*** %22, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 1
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  store float 0.000000e+00, float* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load float**, float*** %28, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 1
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float 1.000000e+00, float* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load float**, float*** %34, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 1
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  store float 0.000000e+00, float* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load float**, float*** %40, align 8
  %42 = getelementptr inbounds float*, float** %41, i64 2
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  store float 0.000000e+00, float* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load float**, float*** %46, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 2
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  store float 0.000000e+00, float* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load float**, float*** %52, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 2
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float 1.000000e+00, float* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
