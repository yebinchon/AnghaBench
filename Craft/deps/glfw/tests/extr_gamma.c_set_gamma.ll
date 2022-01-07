; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gamma_value = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [11 x i8] c"Gamma: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gamma(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @glfwGetWindowMonitor(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  store double %14, double* @gamma_value, align 8
  %15 = load double, double* @gamma_value, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load double, double* @gamma_value, align 8
  %19 = call i32 @glfwSetGamma(i32* %17, double %18)
  ret void
}

declare dso_local i32* @glfwGetWindowMonitor(i32*) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local i32 @glfwSetGamma(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
