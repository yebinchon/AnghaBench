; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_perspective.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_perspective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_perspective(float* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %13 = load float, float* %9, align 4
  %14 = load float, float* %7, align 4
  %15 = load float, float* @PI, align 4
  %16 = fmul float %14, %15
  %17 = fpext float %16 to double
  %18 = fdiv double %17, 3.600000e+02
  %19 = fptrunc double %18 to float
  %20 = call float @tanf(float %19) #3
  %21 = fmul float %13, %20
  store float %21, float* %11, align 4
  %22 = load float, float* %11, align 4
  %23 = load float, float* %8, align 4
  %24 = fmul float %22, %23
  store float %24, float* %12, align 4
  %25 = load float*, float** %6, align 8
  %26 = load float, float* %12, align 4
  %27 = fneg float %26
  %28 = load float, float* %12, align 4
  %29 = load float, float* %11, align 4
  %30 = fneg float %29
  %31 = load float, float* %11, align 4
  %32 = load float, float* %9, align 4
  %33 = load float, float* %10, align 4
  %34 = call i32 @mat_frustum(float* %25, float %27, float %28, float %30, float %31, float %32, float %33)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @tanf(float) #1

declare dso_local i32 @mat_frustum(float*, float, float, float, float, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
