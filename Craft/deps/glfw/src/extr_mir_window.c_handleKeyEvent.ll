; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_handleKeyEvent.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_handleKeyEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mir_keyboard_action_up = common dso_local global i32 0, align 4
@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @handleKeyEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleKeyEvent(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mir_keyboard_event_action(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @mir_keyboard_event_scan_code(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @mir_keyboard_event_key_code(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @mir_keyboard_event_modifiers(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @mir_keyboard_action_up, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GLFW_RELEASE, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @GLFW_PRESS, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mirModToGLFWMod(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @_glfwKeySym2Unicode(i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %36 = load i32, i32* @GLFW_MOD_ALT, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @toGLFWKeyCode(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @_glfwInputKey(i32* %42, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %28
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @_glfwInputChar(i32* %52, i64 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %28
  ret void
}

declare dso_local i32 @mir_keyboard_event_action(i32*) #1

declare dso_local i32 @mir_keyboard_event_scan_code(i32*) #1

declare dso_local i32 @mir_keyboard_event_key_code(i32*) #1

declare dso_local i32 @mir_keyboard_event_modifiers(i32*) #1

declare dso_local i32 @mirModToGLFWMod(i32) #1

declare dso_local i64 @_glfwKeySym2Unicode(i32) #1

declare dso_local i32 @_glfwInputKey(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @toGLFWKeyCode(i32) #1

declare dso_local i32 @_glfwInputChar(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
