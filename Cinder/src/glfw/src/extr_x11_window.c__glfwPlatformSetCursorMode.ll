; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetCursorMode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetCursorMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@True = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@GrabModeAsync = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetCursorMode(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = call i32 @_glfwPlatformGetCursorPos(%struct.TYPE_12__* %10, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1))
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @centerCursor(%struct.TYPE_12__* %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @True, align 4
  %20 = load i32, i32* @ButtonPressMask, align 4
  %21 = load i32, i32* @ButtonReleaseMask, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PointerMotionMask, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GrabModeAsync, align 4
  %26 = load i32, i32* @GrabModeAsync, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 4), align 8
  %32 = load i32, i32* @CurrentTime, align 4
  %33 = call i32 @XGrabPointer(i32 %14, i32 %18, i32 %19, i32 %24, i32 %25, i32 %26, i32 %30, i32 %31, i32 %32)
  br label %47

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = icmp eq %struct.TYPE_12__* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  store %struct.TYPE_12__* null, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %40 = load i32, i32* @CurrentTime, align 4
  %41 = call i32 @XUngrabPointer(i32 %39, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %45 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_12__* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %34
  br label %47

47:                                               ; preds = %46, %8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @updateCursorImage(%struct.TYPE_12__* %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %51 = call i32 @XFlush(i32 %50)
  ret void
}

declare dso_local i32 @_glfwPlatformGetCursorPos(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @centerCursor(%struct.TYPE_12__*) #1

declare dso_local i32 @XGrabPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XUngrabPointer(i32, i32) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @updateCursorImage(%struct.TYPE_12__*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
