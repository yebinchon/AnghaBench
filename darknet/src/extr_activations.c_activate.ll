; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.c_activate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @activate(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %49 [
    i32 137, label %7
    i32 135, label %10
    i32 136, label %13
    i32 131, label %16
    i32 141, label %19
    i32 130, label %22
    i32 132, label %25
    i32 133, label %28
    i32 139, label %31
    i32 128, label %34
    i32 134, label %37
    i32 129, label %40
    i32 140, label %43
    i32 138, label %46
  ]

7:                                                ; preds = %2
  %8 = load float, float* %4, align 4
  %9 = call float @linear_activate(float %8)
  store float %9, float* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  %12 = call float @logistic_activate(float %11)
  store float %12, float* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load float, float* %4, align 4
  %15 = call float @loggy_activate(float %14)
  store float %15, float* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load float, float* %4, align 4
  %18 = call float @relu_activate(float %17)
  store float %18, float* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load float, float* %4, align 4
  %21 = call float @elu_activate(float %20)
  store float %21, float* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load float, float* %4, align 4
  %24 = call float @selu_activate(float %23)
  store float %24, float* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load float, float* %4, align 4
  %27 = call float @relie_activate(float %26)
  store float %27, float* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load float, float* %4, align 4
  %30 = call float @ramp_activate(float %29)
  store float %30, float* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load float, float* %4, align 4
  %33 = call float @leaky_activate(float %32)
  store float %33, float* %3, align 4
  br label %50

34:                                               ; preds = %2
  %35 = load float, float* %4, align 4
  %36 = call float @tanh_activate(float %35)
  store float %36, float* %3, align 4
  br label %50

37:                                               ; preds = %2
  %38 = load float, float* %4, align 4
  %39 = call float @plse_activate(float %38)
  store float %39, float* %3, align 4
  br label %50

40:                                               ; preds = %2
  %41 = load float, float* %4, align 4
  %42 = call float @stair_activate(float %41)
  store float %42, float* %3, align 4
  br label %50

43:                                               ; preds = %2
  %44 = load float, float* %4, align 4
  %45 = call float @hardtan_activate(float %44)
  store float %45, float* %3, align 4
  br label %50

46:                                               ; preds = %2
  %47 = load float, float* %4, align 4
  %48 = call float @lhtan_activate(float %47)
  store float %48, float* %3, align 4
  br label %50

49:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %51 = load float, float* %3, align 4
  ret float %51
}

declare dso_local float @linear_activate(float) #1

declare dso_local float @logistic_activate(float) #1

declare dso_local float @loggy_activate(float) #1

declare dso_local float @relu_activate(float) #1

declare dso_local float @elu_activate(float) #1

declare dso_local float @selu_activate(float) #1

declare dso_local float @relie_activate(float) #1

declare dso_local float @ramp_activate(float) #1

declare dso_local float @leaky_activate(float) #1

declare dso_local float @tanh_activate(float) #1

declare dso_local float @plse_activate(float) #1

declare dso_local float @stair_activate(float) #1

declare dso_local float @hardtan_activate(float) #1

declare dso_local float @lhtan_activate(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
