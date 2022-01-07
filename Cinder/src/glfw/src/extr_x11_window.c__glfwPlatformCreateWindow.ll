; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformCreateWindow.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64 }

@GLFW_NO_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_20__* %0, i32* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GLFW_NO_API, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 4
  %20 = call i32* @DefaultVisual(i32 %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 4
  %23 = call i32 @DefaultDepth(i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = call i32 (...) @_glfwInitGLX()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %119

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @_glfwChooseVisualGLX(%struct.TYPE_21__* %36, i32* %37, i32** %10, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %119

42:                                               ; preds = %35
  br label %56

43:                                               ; preds = %24
  %44 = call i32 (...) @_glfwInitEGL()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %119

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @_glfwChooseVisualEGL(%struct.TYPE_21__* %49, i32* %50, i32** %10, i32* %11)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %54, i32* %5, align 4
  br label %119

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @createNativeWindow(%struct.TYPE_20__* %58, i32* %59, i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %119

66:                                               ; preds = %57
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GLFW_NO_API, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @_glfwCreateContextGLX(%struct.TYPE_20__* %79, %struct.TYPE_21__* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %85, i32* %5, align 4
  br label %119

86:                                               ; preds = %78
  br label %96

87:                                               ; preds = %72
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @_glfwCreateContextEGL(%struct.TYPE_20__* %88, %struct.TYPE_21__* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %94, i32* %5, align 4
  br label %119

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = call i32 @_glfwPlatformShowWindow(%struct.TYPE_20__* %103)
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = call i32 @updateWindowMode(%struct.TYPE_20__* %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = call i32 @acquireMonitor(%struct.TYPE_20__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %119

112:                                              ; preds = %102
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = call i32 @centerCursor(%struct.TYPE_20__* %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 4
  %117 = call i32 @XFlush(i32 %116)
  %118 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %110, %93, %84, %64, %53, %46, %40, %33
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32* @DefaultVisual(i32, i32) #1

declare dso_local i32 @DefaultDepth(i32, i32) #1

declare dso_local i32 @_glfwInitGLX(...) #1

declare dso_local i32 @_glfwChooseVisualGLX(%struct.TYPE_21__*, i32*, i32**, i32*) #1

declare dso_local i32 @_glfwInitEGL(...) #1

declare dso_local i32 @_glfwChooseVisualEGL(%struct.TYPE_21__*, i32*, i32**, i32*) #1

declare dso_local i32 @createNativeWindow(%struct.TYPE_20__*, i32*, i32*, i32) #1

declare dso_local i32 @_glfwCreateContextGLX(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @_glfwCreateContextEGL(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @_glfwPlatformShowWindow(%struct.TYPE_20__*) #1

declare dso_local i32 @updateWindowMode(%struct.TYPE_20__*) #1

declare dso_local i32 @acquireMonitor(%struct.TYPE_20__*) #1

declare dso_local i32 @centerCursor(%struct.TYPE_20__*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
