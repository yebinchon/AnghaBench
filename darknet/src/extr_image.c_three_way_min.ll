; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_three_way_min.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_three_way_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @three_way_min(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp olt float %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load float, float* %4, align 4
  %12 = load float, float* %6, align 4
  %13 = fcmp olt float %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load float, float* %4, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load float, float* %6, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi float [ %15, %14 ], [ %17, %16 ]
  br label %30

20:                                               ; preds = %3
  %21 = load float, float* %5, align 4
  %22 = load float, float* %6, align 4
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load float, float* %5, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load float, float* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi float [ %25, %24 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi float [ %19, %18 ], [ %29, %28 ]
  ret float %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
