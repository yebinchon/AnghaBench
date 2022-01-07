; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_window.c_translateKey.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_window.c_translateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }

@VK_CONTROL = common dso_local global i64 0, align 8
@GLFW_KEY_RIGHT_CONTROL = common dso_local global i32 0, align 4
@PM_NOREMOVE = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i64 0, align 8
@WM_SYSKEYDOWN = common dso_local global i64 0, align 8
@WM_KEYUP = common dso_local global i64 0, align 8
@WM_SYSKEYUP = common dso_local global i64 0, align 8
@VK_MENU = common dso_local global i64 0, align 8
@_GLFW_KEY_INVALID = common dso_local global i32 0, align 4
@GLFW_KEY_LEFT_CONTROL = common dso_local global i32 0, align 4
@VK_PROCESSKEY = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @translateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translateKey(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @VK_CONTROL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16777216
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @GLFW_KEY_RIGHT_CONTROL, align 4
  store i32 %16, i32* %3, align 4
  br label %77

17:                                               ; preds = %11
  %18 = call i64 (...) @GetMessageTime()
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @PM_NOREMOVE, align 4
  %20 = call i64 @PeekMessageW(%struct.TYPE_6__* %6, i32* null, i32 0, i32 0, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WM_KEYDOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WM_SYSKEYDOWN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WM_KEYUP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WM_SYSKEYUP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37, %32, %27, %22
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VK_MENU, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 16777216
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @_GLFW_KEY_INVALID, align 4
  store i32 %58, i32* %3, align 4
  br label %77

59:                                               ; preds = %52, %47, %42
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i32, i32* @GLFW_KEY_LEFT_CONTROL, align 4
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %2
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @VK_PROCESSKEY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @_GLFW_KEY_INVALID, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %63
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @HIWORD(i32 %71)
  %73 = and i32 %72, 511
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %67, %61, %57, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @GetMessageTime(...) #1

declare dso_local i64 @PeekMessageW(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
