; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_tearing.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_tearing.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@swap_interval = common dso_local global i32 0, align 4
@swap_tear = common dso_local global i32 0, align 4
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
  br label %56

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %56 [
    i32 128, label %17
    i32 130, label %28
    i32 129, label %53
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @swap_interval, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @swap_interval, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @swap_interval, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @set_swap_interval(i32* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  br label %56

28:                                               ; preds = %15
  %29 = load i32, i32* @swap_tear, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* @swap_interval, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @swap_interval, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @swap_interval, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @set_swap_interval(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %52

42:                                               ; preds = %28
  %43 = load i32, i32* @swap_interval, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @swap_interval, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @set_swap_interval(i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %41
  br label %56

53:                                               ; preds = %15
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @glfwSetWindowShouldClose(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %14, %15, %53, %52, %27
  ret void
}

declare dso_local i32 @set_swap_interval(i32*, i32) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
