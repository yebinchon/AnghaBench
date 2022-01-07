; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_iconify.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_iconify.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%0.2f Key %s\0A\00", align 1
@GLFW_PRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
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
  %11 = call double (...) @glfwGetTime()
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @GLFW_PRESS, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %11, i8* %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GLFW_PRESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %31

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %31 [
    i32 128, label %24
    i32 129, label %27
  ]

24:                                               ; preds = %22
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @glfwIconifyWindow(i32* %25)
  br label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @GL_TRUE, align 4
  %30 = call i32 @glfwSetWindowShouldClose(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %22, %27, %24
  ret void
}

declare dso_local i32 @printf(i8*, double, i8*) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glfwIconifyWindow(i32*) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
