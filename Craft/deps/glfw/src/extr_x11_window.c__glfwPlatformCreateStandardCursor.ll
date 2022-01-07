; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformCreateStandardCursor.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformCreateStandardCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"X11: Failed to create standard cursor\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateStandardCursor(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @translateCursorShape(i32 %7)
  %9 = call i32 @XCreateFontCursor(i32 %6, i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %20 = call i32 @_glfwInputError(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @GL_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @GL_TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @XCreateFontCursor(i32, i32) #1

declare dso_local i32 @translateCursorShape(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
