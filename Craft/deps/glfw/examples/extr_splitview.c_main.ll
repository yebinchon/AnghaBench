; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_SAMPLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Split view demo\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to open GLFW window\0A\00", align 1
@cursorPosFun = common dso_local global i32 0, align 4
@mouseButtonFun = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"GL_ARB_multisample\00", align 1
@GLFW_CONTEXT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MINOR = common dso_local global i32 0, align 4
@GL_MULTISAMPLE_ARB = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@do_redraw = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @glfwInit()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* @GLFW_SAMPLES, align 4
  %12 = call i32 @glfwWindowHint(i32 %11, i32 4)
  %13 = call i32* @glfwCreateWindow(i32 500, i32 500, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (...) @glfwTerminate()
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %10
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @glfwSetFramebufferSizeCallback(i32* %23, i32 (i32*, i32, i32)* @framebufferSizeFun)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @glfwSetWindowRefreshCallback(i32* %25, i32 (i32*)* @windowRefreshFun)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @cursorPosFun, align 4
  %29 = call i32 @glfwSetCursorPosCallback(i32* %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @mouseButtonFun, align 4
  %32 = call i32 @glfwSetMouseButtonCallback(i32* %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @key_callback, align 4
  %35 = call i32 @glfwSetKeyCallback(i32* %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @glfwMakeContextCurrent(i32* %36)
  %38 = call i32 @glfwSwapInterval(i32 1)
  %39 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %22
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @GLFW_CONTEXT_VERSION_MAJOR, align 4
  %44 = call i32 @glfwGetWindowAttrib(i32* %42, i32 %43)
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @GLFW_CONTEXT_VERSION_MINOR, align 4
  %49 = call i32 @glfwGetWindowAttrib(i32* %47, i32 %48)
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41, %22
  %52 = load i32, i32* @GL_MULTISAMPLE_ARB, align 4
  %53 = call i32 @glEnable(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @glfwGetFramebufferSize(i32* %55, i32* @width, i32* @height)
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @width, align 4
  %59 = load i32, i32* @height, align 4
  %60 = call i32 @framebufferSizeFun(i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %73, %54
  %62 = load i64, i64* @do_redraw, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @windowRefreshFun(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = call i32 (...) @glfwWaitEvents()
  %69 = load i32*, i32** %2, align 8
  %70 = call i64 @glfwWindowShouldClose(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %74

73:                                               ; preds = %67
  br label %61

74:                                               ; preds = %72
  %75 = call i32 (...) @glfwTerminate()
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  %77 = call i32 @exit(i32 %76) #3
  unreachable
}

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32 (i32*, i32, i32)*) #1

declare dso_local i32 @framebufferSizeFun(i32*, i32, i32) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32*, i32 (i32*)*) #1

declare dso_local i32 @windowRefreshFun(i32*) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32*, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i64 @glfwExtensionSupported(i8*) #1

declare dso_local i32 @glfwGetWindowAttrib(i32*, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
