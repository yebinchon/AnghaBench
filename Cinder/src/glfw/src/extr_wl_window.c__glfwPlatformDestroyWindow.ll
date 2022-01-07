; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformDestroyWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*)* }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformDestroyWindow(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %5 = icmp eq %struct.TYPE_13__* %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* @GLFW_FALSE, align 4
  %9 = call i32 @_glfwInputCursorEnter(%struct.TYPE_13__* %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = icmp eq %struct.TYPE_13__* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  store %struct.TYPE_13__* null, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = load i32, i32* @GLFW_FALSE, align 4
  %17 = call i32 @_glfwInputWindowFocus(%struct.TYPE_13__* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_13__*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call i32 %28(%struct.TYPE_13__* %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @wl_egl_window_destroy(i64 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @wl_shell_surface_destroy(i64 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @wl_surface_destroy(i64 %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free(i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @free(i32 %76)
  ret void
}

declare dso_local i32 @_glfwInputCursorEnter(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @_glfwInputWindowFocus(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @wl_egl_window_destroy(i64) #1

declare dso_local i32 @wl_shell_surface_destroy(i64) #1

declare dso_local i32 @wl_surface_destroy(i64) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
