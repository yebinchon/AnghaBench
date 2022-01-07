; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_time_of_day.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_time_of_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }

@g = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @time_of_day() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = fcmp ole float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store float 5.000000e-01, float* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = call float (...) @glfwGetTime()
  store float %9, float* %2, align 4
  %10 = load float, float* %2, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = fdiv float %10, %13
  store float %14, float* %2, align 4
  %15 = load float, float* %2, align 4
  %16 = load float, float* %2, align 4
  %17 = fptosi float %16 to i32
  %18 = sitofp i32 %17 to float
  %19 = fsub float %15, %18
  store float %19, float* %2, align 4
  %20 = load float, float* %2, align 4
  store float %20, float* %1, align 4
  br label %21

21:                                               ; preds = %8, %7
  %22 = load float, float* %1, align 4
  ret float %22
}

declare dso_local float @glfwGetTime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
