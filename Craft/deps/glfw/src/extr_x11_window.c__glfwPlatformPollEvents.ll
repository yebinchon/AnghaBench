; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformPollEvents.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformPollEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformPollEvents() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1, i32 0), align 8
  %7 = call i32 @XPending(i32 %6)
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %1, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 1, i32 0), align 8
  %14 = call i32 @XNextEvent(i32 %13, i32* %2)
  %15 = call i32 @processEvent(i32* %2)
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_7__* %27, i32* %4, i32* %5)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %30, 2
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 2
  %34 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_7__* %29, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %26, %20, %16
  ret void
}

declare dso_local i32 @XPending(i32) #1

declare dso_local i32 @XNextEvent(i32, i32*) #1

declare dso_local i32 @processEvent(i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
