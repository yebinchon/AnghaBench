; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c_setCursorMode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c_setCursorMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@GLFW_CURSOR_HIDDEN = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid cursor mode\00", align 1
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @setCursorMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setCursorMode(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GLFW_CURSOR_HIDDEN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %24 = call i32 @_glfwInputError(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %71

25:                                               ; preds = %18, %14, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %71

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 2), align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = icmp eq %struct.TYPE_8__* %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 1), align 4
  %45 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_8__* %42, i32 %43, i32 %44)
  br label %68

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i32 @_glfwPlatformGetCursorPos(%struct.TYPE_8__* %51, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 1))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0), align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 1), align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_8__* %59, i32* %6, i32* %7)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* %7, align 4
  %65 = sdiv i32 %64, 2
  %66 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_8__* %61, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %50, %46
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = call i32 @_glfwPlatformApplyCursorMode(%struct.TYPE_8__* %69)
  br label %71

71:                                               ; preds = %22, %29, %68, %30
  ret void
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_glfwPlatformGetCursorPos(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformApplyCursorMode(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
