; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_rotate.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_rotate(float* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = call i32 @normalize(float* %7, float* %8, float* %9)
  %15 = load float, float* %10, align 4
  %16 = call float @sinf(float %15) #3
  store float %16, float* %11, align 4
  %17 = load float, float* %10, align 4
  %18 = call float @cosf(float %17) #3
  store float %18, float* %12, align 4
  %19 = load float, float* %12, align 4
  %20 = fsub float 1.000000e+00, %19
  store float %20, float* %13, align 4
  %21 = load float, float* %13, align 4
  %22 = load float, float* %7, align 4
  %23 = fmul float %21, %22
  %24 = load float, float* %7, align 4
  %25 = fmul float %23, %24
  %26 = load float, float* %12, align 4
  %27 = fadd float %25, %26
  %28 = load float*, float** %6, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  store float %27, float* %29, align 4
  %30 = load float, float* %13, align 4
  %31 = load float, float* %7, align 4
  %32 = fmul float %30, %31
  %33 = load float, float* %8, align 4
  %34 = fmul float %32, %33
  %35 = load float, float* %9, align 4
  %36 = load float, float* %11, align 4
  %37 = fmul float %35, %36
  %38 = fsub float %34, %37
  %39 = load float*, float** %6, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  store float %38, float* %40, align 4
  %41 = load float, float* %13, align 4
  %42 = load float, float* %9, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %7, align 4
  %45 = fmul float %43, %44
  %46 = load float, float* %8, align 4
  %47 = load float, float* %11, align 4
  %48 = fmul float %46, %47
  %49 = fadd float %45, %48
  %50 = load float*, float** %6, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  store float %49, float* %51, align 4
  %52 = load float*, float** %6, align 8
  %53 = getelementptr inbounds float, float* %52, i64 3
  store float 0.000000e+00, float* %53, align 4
  %54 = load float, float* %13, align 4
  %55 = load float, float* %7, align 4
  %56 = fmul float %54, %55
  %57 = load float, float* %8, align 4
  %58 = fmul float %56, %57
  %59 = load float, float* %9, align 4
  %60 = load float, float* %11, align 4
  %61 = fmul float %59, %60
  %62 = fadd float %58, %61
  %63 = load float*, float** %6, align 8
  %64 = getelementptr inbounds float, float* %63, i64 4
  store float %62, float* %64, align 4
  %65 = load float, float* %13, align 4
  %66 = load float, float* %8, align 4
  %67 = fmul float %65, %66
  %68 = load float, float* %8, align 4
  %69 = fmul float %67, %68
  %70 = load float, float* %12, align 4
  %71 = fadd float %69, %70
  %72 = load float*, float** %6, align 8
  %73 = getelementptr inbounds float, float* %72, i64 5
  store float %71, float* %73, align 4
  %74 = load float, float* %13, align 4
  %75 = load float, float* %8, align 4
  %76 = fmul float %74, %75
  %77 = load float, float* %9, align 4
  %78 = fmul float %76, %77
  %79 = load float, float* %7, align 4
  %80 = load float, float* %11, align 4
  %81 = fmul float %79, %80
  %82 = fsub float %78, %81
  %83 = load float*, float** %6, align 8
  %84 = getelementptr inbounds float, float* %83, i64 6
  store float %82, float* %84, align 4
  %85 = load float*, float** %6, align 8
  %86 = getelementptr inbounds float, float* %85, i64 7
  store float 0.000000e+00, float* %86, align 4
  %87 = load float, float* %13, align 4
  %88 = load float, float* %9, align 4
  %89 = fmul float %87, %88
  %90 = load float, float* %7, align 4
  %91 = fmul float %89, %90
  %92 = load float, float* %8, align 4
  %93 = load float, float* %11, align 4
  %94 = fmul float %92, %93
  %95 = fsub float %91, %94
  %96 = load float*, float** %6, align 8
  %97 = getelementptr inbounds float, float* %96, i64 8
  store float %95, float* %97, align 4
  %98 = load float, float* %13, align 4
  %99 = load float, float* %8, align 4
  %100 = fmul float %98, %99
  %101 = load float, float* %9, align 4
  %102 = fmul float %100, %101
  %103 = load float, float* %7, align 4
  %104 = load float, float* %11, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %102, %105
  %107 = load float*, float** %6, align 8
  %108 = getelementptr inbounds float, float* %107, i64 9
  store float %106, float* %108, align 4
  %109 = load float, float* %13, align 4
  %110 = load float, float* %9, align 4
  %111 = fmul float %109, %110
  %112 = load float, float* %9, align 4
  %113 = fmul float %111, %112
  %114 = load float, float* %12, align 4
  %115 = fadd float %113, %114
  %116 = load float*, float** %6, align 8
  %117 = getelementptr inbounds float, float* %116, i64 10
  store float %115, float* %117, align 4
  %118 = load float*, float** %6, align 8
  %119 = getelementptr inbounds float, float* %118, i64 11
  store float 0.000000e+00, float* %119, align 4
  %120 = load float*, float** %6, align 8
  %121 = getelementptr inbounds float, float* %120, i64 12
  store float 0.000000e+00, float* %121, align 4
  %122 = load float*, float** %6, align 8
  %123 = getelementptr inbounds float, float* %122, i64 13
  store float 0.000000e+00, float* %123, align 4
  %124 = load float*, float** %6, align 8
  %125 = getelementptr inbounds float, float* %124, i64 14
  store float 0.000000e+00, float* %125, align 4
  %126 = load float*, float** %6, align 8
  %127 = getelementptr inbounds float, float* %126, i64 15
  store float 1.000000e+00, float* %127, align 4
  ret void
}

declare dso_local i32 @normalize(float*, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
