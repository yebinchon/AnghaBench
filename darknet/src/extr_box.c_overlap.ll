; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_overlap.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @overlap(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %15 = load float, float* %5, align 4
  %16 = load float, float* %6, align 4
  %17 = fdiv float %16, 2.000000e+00
  %18 = fsub float %15, %17
  store float %18, float* %9, align 4
  %19 = load float, float* %7, align 4
  %20 = load float, float* %8, align 4
  %21 = fdiv float %20, 2.000000e+00
  %22 = fsub float %19, %21
  store float %22, float* %10, align 4
  %23 = load float, float* %9, align 4
  %24 = load float, float* %10, align 4
  %25 = fcmp ogt float %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load float, float* %9, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load float, float* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi float [ %27, %26 ], [ %29, %28 ]
  store float %31, float* %11, align 4
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = fdiv float %33, 2.000000e+00
  %35 = fadd float %32, %34
  store float %35, float* %12, align 4
  %36 = load float, float* %7, align 4
  %37 = load float, float* %8, align 4
  %38 = fdiv float %37, 2.000000e+00
  %39 = fadd float %36, %38
  store float %39, float* %13, align 4
  %40 = load float, float* %12, align 4
  %41 = load float, float* %13, align 4
  %42 = fcmp olt float %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load float, float* %12, align 4
  br label %47

45:                                               ; preds = %30
  %46 = load float, float* %13, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi float [ %44, %43 ], [ %46, %45 ]
  store float %48, float* %14, align 4
  %49 = load float, float* %14, align 4
  %50 = load float, float* %11, align 4
  %51 = fsub float %49, %50
  ret float %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
