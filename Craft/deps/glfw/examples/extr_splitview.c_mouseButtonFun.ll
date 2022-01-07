; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_mouseButtonFun.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_mouseButtonFun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i32 0, align 4
@active_view = common dso_local global i32 0, align 4
@xpos = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@ypos = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@do_redraw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @mouseButtonFun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouseButtonFun(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GLFW_PRESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  store i32 1, i32* @active_view, align 4
  %17 = load i32, i32* @xpos, align 4
  %18 = load i32, i32* @width, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @active_view, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @active_view, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @ypos, align 4
  %26 = load i32, i32* @height, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @active_view, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* @active_view, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %39

33:                                               ; preds = %12, %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GLFW_MOUSE_BUTTON_LEFT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* @active_view, align 4
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %32
  store i32 1, i32* @do_redraw, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
