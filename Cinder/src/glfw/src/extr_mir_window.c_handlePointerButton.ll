; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_handlePointerButton.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_handlePointerButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handlePointerButton.oldButtonStates = internal global i32 0, align 4
@GLFW_MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_RIGHT = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_MIDDLE = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_4 = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @handlePointerButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlePointerButton(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @mir_pointer_event_modifiers(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mirModToGLFWMod(i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 130, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @mir_pointer_event_buttons(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @GLFW_MOUSE_BUTTON_LEFT, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @handlePointerButton.oldButtonStates, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %33 [
    i32 130, label %23
    i32 129, label %25
    i32 128, label %27
    i32 131, label %29
    i32 132, label %31
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* @GLFW_MOUSE_BUTTON_LEFT, align 4
  store i32 %24, i32* %11, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i32, i32* @GLFW_MOUSE_BUTTON_RIGHT, align 4
  store i32 %26, i32* %11, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @GLFW_MOUSE_BUTTON_MIDDLE, align 4
  store i32 %28, i32* %11, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @GLFW_MOUSE_BUTTON_4, align 4
  store i32 %30, i32* %11, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @GLFW_MOUSE_BUTTON_5, align 4
  store i32 %32, i32* %11, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %31, %29, %27, %25, %23
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* @handlePointerButton.oldButtonStates, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @_glfwInputMouseClick(i32* %36, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @mir_pointer_event_modifiers(i32*) #1

declare dso_local i32 @mirModToGLFWMod(i32) #1

declare dso_local i32 @mir_pointer_event_buttons(i32*) #1

declare dso_local i32 @_glfwInputMouseClick(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
