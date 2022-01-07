; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwChooseVisualGLX.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwChooseVisualGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GLX: Failed to find a suitable GLXFBConfig\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"GLX: Failed to retrieve Visual for GLXFBConfig\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwChooseVisualGLX(i32* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @chooseGLXFBConfig(i32* %12, i32* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %17 = call i32 @_glfwInputError(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %41

19:                                               ; preds = %4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @_glfw, i32 0, i32 0, i32 0), align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.TYPE_7__* @glXGetVisualFromFBConfig(i32 %20, i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %27 = call i32 @_glfwInputError(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* %32, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = call i32 @XFree(%struct.TYPE_7__* %38)
  %40 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %29, %25, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @chooseGLXFBConfig(i32*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @glXGetVisualFromFBConfig(i32, i32) #1

declare dso_local i32 @XFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
