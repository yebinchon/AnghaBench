; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleKey.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl_keyboard = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WL_KEYBOARD_KEY_STATE_PRESSED = common dso_local global i64 0, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i64, i64, i64)* @keyboardHandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleKey(i8* %0, %struct.wl_keyboard* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_keyboard*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i32* %22, i32** %19, align 8
  %23 = load i32*, i32** %19, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %74

26:                                               ; preds = %6
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @toGLFWKeyCode(i64 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @WL_KEYBOARD_KEY_STATE_PRESSED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @GLFW_PRESS, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @GLFW_RELEASE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %19, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %43 = call i32 @_glfwInputKey(i32* %38, i32 %39, i64 %40, i32 %41, i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 8
  store i64 %45, i64* %13, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i64 @xkb_key_get_syms(i32 %46, i64 %47, i32** %18)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %74

51:                                               ; preds = %36
  %52 = load i32*, i32** %18, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @_glfwKeySym2Unicode(i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %56, -1
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %62 = load i32, i32* @GLFW_MOD_ALT, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %21, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @_glfwInputChar(i32* %68, i64 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %58, %51
  br label %74

74:                                               ; preds = %25, %73, %36
  ret void
}

declare dso_local i32 @toGLFWKeyCode(i64) #1

declare dso_local i32 @_glfwInputKey(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @xkb_key_get_syms(i32, i64, i32**) #1

declare dso_local i64 @_glfwKeySym2Unicode(i32) #1

declare dso_local i32 @_glfwInputChar(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
