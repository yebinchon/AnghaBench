; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@alpha = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@zoom = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  br label %46

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %45 [
    i32 134, label %17
    i32 129, label %21
    i32 133, label %23
    i32 130, label %26
    i32 128, label %29
    i32 135, label %32
    i32 131, label %35
    i32 132, label %42
  ]

17:                                               ; preds = %15
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @GL_TRUE, align 4
  %20 = call i32 @glfwSetWindowShouldClose(i32* %18, i32 %19)
  br label %46

21:                                               ; preds = %15
  %22 = call i32 (...) @init_grid()
  br label %46

23:                                               ; preds = %15
  %24 = load i32, i32* @alpha, align 4
  %25 = add nsw i32 %24, 5
  store i32 %25, i32* @alpha, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load i32, i32* @alpha, align 4
  %28 = sub nsw i32 %27, 5
  store i32 %28, i32* @alpha, align 4
  br label %46

29:                                               ; preds = %15
  %30 = load i32, i32* @beta, align 4
  %31 = sub nsw i32 %30, 5
  store i32 %31, i32* @beta, align 4
  br label %46

32:                                               ; preds = %15
  %33 = load i32, i32* @beta, align 4
  %34 = add nsw i32 %33, 5
  store i32 %34, i32* @beta, align 4
  br label %46

35:                                               ; preds = %15
  %36 = load float, float* @zoom, align 4
  %37 = fsub float %36, 2.500000e-01
  store float %37, float* @zoom, align 4
  %38 = load float, float* @zoom, align 4
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store float 0.000000e+00, float* @zoom, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %46

42:                                               ; preds = %15
  %43 = load float, float* @zoom, align 4
  %44 = fadd float %43, 2.500000e-01
  store float %44, float* @zoom, align 4
  br label %46

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %14, %45, %42, %41, %32, %29, %26, %23, %21, %17
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @init_grid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
