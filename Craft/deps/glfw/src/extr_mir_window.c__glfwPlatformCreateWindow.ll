; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c__glfwPlatformCreateWindow.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c__glfwPlatformCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@GL_FALSE = common dso_local global i32 0, align 4
@mir_surface_state_fullscreen = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Mir: Requested surface size too large: %ix%i\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @_glfwCreateContext(%struct.TYPE_12__* %11, i32* %12, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @GL_FALSE, align 4
  store i32 %17, i32* %5, align 4
  br label %87

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @_glfwPlatformGetVideoMode(i64 %26, %struct.TYPE_13__* %10)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @mir_surface_state_fullscreen, align 4
  %33 = call i32 @mir_surface_set_state(i32 %31, i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %23
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40, %23
  %48 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @_glfwInputError(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54)
  %56 = load i32, i32* @GL_FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %87

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i64 %67, i64* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = call i32 @createSurface(%struct.TYPE_12__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* @GL_FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %87

76:                                               ; preds = %58
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @mir_surface_get_buffer_stream(i32 %80)
  %82 = call i32 @mir_buffer_stream_get_egl_native_window(i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @GL_TRUE, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %76, %74, %47, %16
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @_glfwCreateContext(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @mir_surface_set_state(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, i64, i64) #1

declare dso_local i32 @createSurface(%struct.TYPE_12__*) #1

declare dso_local i32 @mir_buffer_stream_get_egl_native_window(i32) #1

declare dso_local i32 @mir_surface_get_buffer_stream(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
