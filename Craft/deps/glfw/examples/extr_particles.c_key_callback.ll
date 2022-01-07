; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@wireframe = common dso_local global i32 0, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_LINE = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
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
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 128, label %20
  ]

16:                                               ; preds = %14
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @GL_TRUE, align 4
  %19 = call i32 @glfwSetWindowShouldClose(i32* %17, i32 %18)
  br label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @wireframe, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @wireframe, align 4
  %25 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %26 = load i32, i32* @wireframe, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @GL_LINE, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @GL_FILL, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @glPolygonMode(i32 %25, i32 %33)
  br label %36

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35, %32, %16
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @glPolygonMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
