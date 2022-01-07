; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_postmul_translate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_postmul_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_postmul_translate(%struct.TYPE_3__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load float**, float*** %8, align 8
  %10 = getelementptr inbounds float*, float** %9, i64 0
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
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = load float, float* %6, align 4
  %24 = fmul float %22, %23
  %25 = fadd float %15, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load float**, float*** %27, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  %32 = load float, float* %31, align 4
  %33 = fadd float %32, %25
  store float %33, float* %31, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load float**, float*** %35, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 1
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = fmul float %40, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load float**, float*** %44, align 8
  %46 = getelementptr inbounds float*, float** %45, i64 1
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  %50 = load float, float* %6, align 4
  %51 = fmul float %49, %50
  %52 = fadd float %42, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load float**, float*** %54, align 8
  %56 = getelementptr inbounds float*, float** %55, i64 1
  %57 = load float*, float** %56, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = fadd float %59, %52
  store float %60, float* %58, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load float**, float*** %62, align 8
  %64 = getelementptr inbounds float*, float** %63, i64 2
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds float, float* %65, i64 0
  %67 = load float, float* %66, align 4
  %68 = load float, float* %5, align 4
  %69 = fmul float %67, %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load float**, float*** %71, align 8
  %73 = getelementptr inbounds float*, float** %72, i64 2
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 1
  %76 = load float, float* %75, align 4
  %77 = load float, float* %6, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %69, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load float**, float*** %81, align 8
  %83 = getelementptr inbounds float*, float** %82, i64 2
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 2
  %86 = load float, float* %85, align 4
  %87 = fadd float %86, %79
  store float %87, float* %85, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
