; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_mouse_button_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_mouse_button_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@override_pos = common dso_local global i32 0, align 4
@cursor_x = common dso_local global i32 0, align 4
@cursor_y = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mouse_button_callback(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GLFW_MOUSE_BUTTON_LEFT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %24

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GLFW_PRESS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @GL_TRUE, align 4
  store i32 %18, i32* @override_pos, align 4
  %19 = load i32, i32* @cursor_x, align 4
  %20 = load i32, i32* @cursor_y, align 4
  %21 = call i32 @set_ball_pos(i32 %19, i32 %20)
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @GL_FALSE, align 4
  store i32 %23, i32* @override_pos, align 4
  br label %24

24:                                               ; preds = %12, %22, %17
  ret void
}

declare dso_local i32 @set_ball_pos(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
