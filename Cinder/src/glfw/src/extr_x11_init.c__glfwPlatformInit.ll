; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"X11: Failed to open display %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"X11: The DISPLAY environment variable is missing\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @LC_CTYPE, align 4
  %4 = call i32 @setlocale(i32 %3, i8* null)
  %5 = call i64 @strcmp(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @LC_CTYPE, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @XInitThreads()
  %12 = call i32 @XOpenDisplay(i32* null)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %25 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %27, i32* %1, align 4
  br label %70

28:                                               ; preds = %10
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %30 = call i32 @DefaultScreen(i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 4
  %33 = call i32 @RootWindow(i32 %31, i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %34 = call i32 (...) @XUniqueContext()
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %35 = call i32 (...) @initExtensions()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %38, i32* %1, align 4
  br label %70

39:                                               ; preds = %28
  %40 = call i32 (...) @createHiddenCursor()
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 4
  %41 = call i64 (...) @XSupportsLocale()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = call i32 @XSetLocaleModifiers(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %46 = call i32* @XOpenIM(i32 %45, i32 0, i32* null, i32* null)
  store i32* %46, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = call i32 (...) @hasUsableInputMethodStyle()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %54 = call i32 @XCloseIM(i32* %53)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %39
  %58 = call i32 (...) @_glfwInitThreadLocalStoragePOSIX()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %61, i32* %1, align 4
  br label %70

62:                                               ; preds = %57
  %63 = call i32 (...) @_glfwInitJoysticksLinux()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %66, i32* %1, align 4
  br label %70

67:                                               ; preds = %62
  %68 = call i32 (...) @_glfwInitTimerPOSIX()
  %69 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %67, %65, %60, %37, %26
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @XInitThreads(...) #1

declare dso_local i32 @XOpenDisplay(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @RootWindow(i32, i32) #1

declare dso_local i32 @XUniqueContext(...) #1

declare dso_local i32 @initExtensions(...) #1

declare dso_local i32 @createHiddenCursor(...) #1

declare dso_local i64 @XSupportsLocale(...) #1

declare dso_local i32 @XSetLocaleModifiers(i8*) #1

declare dso_local i32* @XOpenIM(i32, i32, i32*, i32*) #1

declare dso_local i32 @hasUsableInputMethodStyle(...) #1

declare dso_local i32 @XCloseIM(i32*) #1

declare dso_local i32 @_glfwInitThreadLocalStoragePOSIX(...) #1

declare dso_local i32 @_glfwInitJoysticksLinux(...) #1

declare dso_local i32 @_glfwInitTimerPOSIX(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
