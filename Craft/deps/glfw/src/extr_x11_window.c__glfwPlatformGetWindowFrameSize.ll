; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetWindowFrameSize.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetWindowFrameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.timeval = type { i64, i64 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@None = common dso_local global i64 0, align 8
@isFrameExtentsEvent = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"X11: The window manager has a broken _NET_REQUEST_FRAME_EXTENTS implementation; please report this issue\00", align 1
@XA_CARDINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetWindowFrameSize(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.timeval, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64* null, i64** %11, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %17 = load i64, i64* @None, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %111

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %30 = call i32 @sendEventToWM(%struct.TYPE_10__* %28, i64 %29, i32 0, i32 0, i32 0, i32 0, i32 0)
  %31 = call double (...) @_glfwPlatformGetTime()
  store double %31, double* %12, align 8
  br label %32

32:                                               ; preds = %50, %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %34 = load i32, i32* @isFrameExtentsEvent, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = ptrtoint %struct.TYPE_10__* %35 to i32
  %37 = call i32 @XCheckIfEvent(i32 %33, i32* %13, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load double, double* %12, align 8
  %42 = fadd double 5.000000e-01, %41
  %43 = call double (...) @_glfwPlatformGetTime()
  %44 = fsub double %42, %43
  store double %44, double* %14, align 8
  %45 = load double, double* %14, align 8
  %46 = fcmp ole double %45, 0.000000e+00
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %49 = call i32 @_glfwInputError(i32 %48, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  br label %111

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load double, double* %14, align 8
  %53 = fmul double %52, 1.000000e+06
  %54 = fptosi double %53 to i64
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = call i32 @selectDisplayConnection(%struct.timeval* %15)
  br label %32

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %24, %20
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %64 = load i32, i32* @XA_CARDINAL, align 4
  %65 = bitcast i64** %11 to i8**
  %66 = call i32 @_glfwGetWindowProperty(i32 %62, i64 %63, i32 %64, i8** %65)
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %105

68:                                               ; preds = %58
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64*, i64** %11, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64*, i64** %11, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64*, i64** %11, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64*, i64** %11, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 3
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %95
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i64*, i64** %11, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i64*, i64** %11, align 8
  %110 = call i32 @XFree(i64* %109)
  br label %111

111:                                              ; preds = %19, %47, %108, %105
  ret void
}

declare dso_local i32 @_glfwPlatformWindowVisible(%struct.TYPE_10__*) #1

declare dso_local i32 @sendEventToWM(%struct.TYPE_10__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local double @_glfwPlatformGetTime(...) #1

declare dso_local i32 @XCheckIfEvent(i32, i32*, i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @selectDisplayConnection(%struct.timeval*) #1

declare dso_local i32 @_glfwGetWindowProperty(i32, i64, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
