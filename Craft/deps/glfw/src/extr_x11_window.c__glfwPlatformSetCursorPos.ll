; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformSetCursorPos.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformSetCursorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@None = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetCursorPos(%struct.TYPE_8__* %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = fptosi double %7 to i32
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load double, double* %6, align 8
  %13 = fptosi double %12 to i32
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 4
  %18 = load i32, i32* @None, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load double, double* %5, align 8
  %24 = fptosi double %23 to i32
  %25 = load double, double* %6, align 8
  %26 = fptosi double %25 to i32
  %27 = call i32 @XWarpPointer(i32 %17, i32 %18, i32 %22, i32 0, i32 0, i32 0, i32 0, i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @XWarpPointer(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
