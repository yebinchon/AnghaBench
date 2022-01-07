; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_reopen.c_open_window.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_reopen.c_open_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Window Re-opener\00", align 1
@framebuffer_size_callback = common dso_local global i32 0, align 4
@window_close_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Opening full screen window on monitor %s took %0.3f seconds\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Opening regular window took %0.3f seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*)* @open_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_window(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call double (...) @glfwGetTime()
  store double %10, double* %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @glfwCreateWindow(i32 %11, i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %13, i32* null)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @glfwMakeContextCurrent(i32* %19)
  %21 = call i32 @glfwSwapInterval(i32 1)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @framebuffer_size_callback, align 4
  %24 = call i32 @glfwSetFramebufferSizeCallback(i32* %22, i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @window_close_callback, align 4
  %27 = call i32 @glfwSetWindowCloseCallback(i32* %25, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @key_callback, align 4
  %30 = call i32 @glfwSetKeyCallback(i32* %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @glfwGetMonitorName(i32* %34)
  %36 = call double (...) @glfwGetTime()
  %37 = load double, double* %8, align 8
  %38 = fsub double %36, %37
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %35, double %38)
  br label %45

40:                                               ; preds = %18
  %41 = call double (...) @glfwGetTime()
  %42 = load double, double* %8, align 8
  %43 = fsub double %41, %42
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), double %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %45, %17
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetWindowCloseCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
