; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_clipboard.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_clipboard.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Clipboard Test\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to open GLFW window\0A\00", align 1
@key_callback = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 104, label %15
  ]

15:                                               ; preds = %13
  %16 = call i32 (...) @usage()
  %17 = load i32, i32* @EXIT_SUCCESS, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %13
  %20 = call i32 (...) @usage()
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %8
  %24 = load i32, i32* @error_callback, align 4
  %25 = call i32 @glfwSetErrorCallback(i32 %24)
  %26 = call i32 (...) @glfwInit()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable

33:                                               ; preds = %23
  %34 = call i32* @glfwCreateWindow(i32 200, i32 200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = call i32 (...) @glfwTerminate()
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %33
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @glfwMakeContextCurrent(i32* %44)
  %46 = call i32 @glfwSwapInterval(i32 1)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @key_callback, align 4
  %49 = call i32 @glfwSetKeyCallback(i32* %47, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @framebuffer_size_callback, align 4
  %52 = call i32 @glfwSetFramebufferSizeCallback(i32* %50, i32 %51)
  %53 = load i32, i32* @GL_PROJECTION, align 4
  %54 = call i32 @glMatrixMode(i32 %53)
  %55 = call i32 @glOrtho(float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00)
  %56 = load i32, i32* @GL_MODELVIEW, align 4
  %57 = call i32 @glMatrixMode(i32 %56)
  %58 = call i32 @glClearColor(float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i32 0)
  br label %59

59:                                               ; preds = %64, %43
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @glfwWindowShouldClose(i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %66 = call i32 @glClear(i32 %65)
  %67 = call i32 @glColor3f(float 0x3FE99999A0000000, float 0x3FC99999A0000000, float 0x3FD99999A0000000)
  %68 = call i32 @glRectf(float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @glfwSwapBuffers(i32* %69)
  %71 = call i32 (...) @glfwWaitEvents()
  br label %59

72:                                               ; preds = %59
  %73 = call i32 (...) @glfwTerminate()
  %74 = load i32, i32* @EXIT_SUCCESS, align 4
  %75 = call i32 @exit(i32 %74) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glClearColor(float, float, float, i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glRectf(float, float, float, float) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
