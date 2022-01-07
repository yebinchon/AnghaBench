; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@gamma_value = common dso_local global float 0.000000e+00, align 4
@STEP_SIZE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @GLFW_PRESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %39

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %39 [
    i32 132, label %17
    i32 131, label %21
    i32 129, label %21
    i32 130, label %27
    i32 128, label %27
  ]

17:                                               ; preds = %15
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @GL_TRUE, align 4
  %20 = call i32 @glfwSetWindowShouldClose(i32* %18, i32 %19)
  br label %39

21:                                               ; preds = %15, %15
  %22 = load i32*, i32** %6, align 8
  %23 = load float, float* @gamma_value, align 4
  %24 = load float, float* @STEP_SIZE, align 4
  %25 = fadd float %23, %24
  %26 = call i32 @set_gamma(i32* %22, float %25)
  br label %39

27:                                               ; preds = %15, %15
  %28 = load float, float* @gamma_value, align 4
  %29 = load float, float* @STEP_SIZE, align 4
  %30 = fsub float %28, %29
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load float, float* @gamma_value, align 4
  %35 = load float, float* @STEP_SIZE, align 4
  %36 = fsub float %34, %35
  %37 = call i32 @set_gamma(i32* %33, float %36)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %14, %15, %38, %21, %17
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @set_gamma(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
