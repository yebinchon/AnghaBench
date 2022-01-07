; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformDestroyWindow(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 8
  %5 = icmp eq %struct.TYPE_11__* %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @GL_FALSE, align 4
  %9 = call i32 @_glfwInputCursorEnter(%struct.TYPE_11__* %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = icmp eq %struct.TYPE_11__* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  store %struct.TYPE_11__* null, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load i32, i32* @GL_FALSE, align 4
  %17 = call i32 @_glfwInputWindowFocus(%struct.TYPE_11__* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = call i32 @_glfwDestroyContext(%struct.TYPE_11__* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wl_egl_window_destroy(i64 %30)
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @wl_shell_surface_destroy(i64 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wl_surface_destroy(i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @_glfwInputCursorEnter(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_glfwInputWindowFocus(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_glfwDestroyContext(%struct.TYPE_11__*) #1

declare dso_local i32 @wl_egl_window_destroy(i64) #1

declare dso_local i32 @wl_shell_surface_destroy(i64) #1

declare dso_local i32 @wl_surface_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
