; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_affine_invert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/vg/extr_vg_int_mat3x3.c_vg_mat3x3_affine_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vg_mat3x3_affine_invert(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i32 @vg_mat3x3_affine_is_invertible(%struct.TYPE_5__* %8)
  %10 = call i32 @vcos_assert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @vg_mat3x3_affine_det(%struct.TYPE_5__* %11)
  %13 = call float @recip_(i32 %12)
  store float %13, float* %3, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 0
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  store float %20, float* %4, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load float**, float*** %22, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  %27 = load float, float* %26, align 4
  store float %27, float* %5, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load float**, float*** %29, align 8
  %31 = getelementptr inbounds float*, float** %30, i64 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  store float %34, float* %6, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load float**, float*** %36, align 8
  %38 = getelementptr inbounds float*, float** %37, i64 1
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = load float, float* %40, align 4
  store float %41, float* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load float**, float*** %43, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 1
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = load float, float* %3, align 4
  %50 = fmul float %48, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load float**, float*** %52, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  store float %50, float* %56, align 4
  %57 = load float, float* %5, align 4
  %58 = fneg float %57
  %59 = load float, float* %3, align 4
  %60 = fmul float %58, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load float**, float*** %62, align 8
  %64 = getelementptr inbounds float*, float** %63, i64 0
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  store float %60, float* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load float**, float*** %68, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 1
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  %73 = load float, float* %72, align 4
  %74 = load float, float* %5, align 4
  %75 = fmul float %73, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load float**, float*** %77, align 8
  %79 = getelementptr inbounds float*, float** %78, i64 1
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 1
  %82 = load float, float* %81, align 4
  %83 = load float, float* %6, align 4
  %84 = fmul float %82, %83
  %85 = fsub float %75, %84
  %86 = load float, float* %3, align 4
  %87 = fmul float %85, %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load float**, float*** %89, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 0
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 2
  store float %87, float* %93, align 4
  %94 = load float, float* %7, align 4
  %95 = fneg float %94
  %96 = load float, float* %3, align 4
  %97 = fmul float %95, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load float**, float*** %99, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 1
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 0
  store float %97, float* %103, align 4
  %104 = load float, float* %4, align 4
  %105 = load float, float* %3, align 4
  %106 = fmul float %104, %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load float**, float*** %108, align 8
  %110 = getelementptr inbounds float*, float** %109, i64 1
  %111 = load float*, float** %110, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  store float %106, float* %112, align 4
  %113 = load float, float* %7, align 4
  %114 = load float, float* %6, align 4
  %115 = fmul float %113, %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load float**, float*** %117, align 8
  %119 = getelementptr inbounds float*, float** %118, i64 1
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 2
  %122 = load float, float* %121, align 4
  %123 = load float, float* %4, align 4
  %124 = fmul float %122, %123
  %125 = fsub float %115, %124
  %126 = load float, float* %3, align 4
  %127 = fmul float %125, %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load float**, float*** %129, align 8
  %131 = getelementptr inbounds float*, float** %130, i64 1
  %132 = load float*, float** %131, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  store float %127, float* %133, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load float**, float*** %135, align 8
  %137 = getelementptr inbounds float*, float** %136, i64 2
  %138 = load float*, float** %137, align 8
  %139 = getelementptr inbounds float, float* %138, i64 0
  store float 0.000000e+00, float* %139, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load float**, float*** %141, align 8
  %143 = getelementptr inbounds float*, float** %142, i64 2
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 1
  store float 0.000000e+00, float* %145, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load float**, float*** %147, align 8
  %149 = getelementptr inbounds float*, float** %148, i64 2
  %150 = load float*, float** %149, align 8
  %151 = getelementptr inbounds float, float* %150, i64 2
  store float 1.000000e+00, float* %151, align 4
  ret void
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vg_mat3x3_affine_is_invertible(%struct.TYPE_5__*) #1

declare dso_local float @recip_(i32) #1

declare dso_local i32 @vg_mat3x3_affine_det(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
