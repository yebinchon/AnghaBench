; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_gamma.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Gamma Test\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* @error_callback, align 4
  %13 = call i32 @glfwSetErrorCallback(i32 %12)
  %14 = call i32 (...) @glfwInit()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %33 [
    i32 104, label %27
    i32 102, label %31
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @usage()
  %29 = load i32, i32* @EXIT_SUCCESS, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %25
  %32 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %32, i32** %9, align 8
  br label %37

33:                                               ; preds = %25
  %34 = call i32 (...) @usage()
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %31
  br label %20

38:                                               ; preds = %20
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %11, align 8
  %44 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @glfwWindowHint(i32 %44, i32 %47)
  %49 = load i32, i32* @GLFW_RED_BITS, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @glfwWindowHint(i32 %49, i32 %52)
  %54 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @glfwWindowHint(i32 %54, i32 %57)
  %59 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @glfwWindowHint(i32 %59, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %38
  store i32 200, i32* %6, align 4
  store i32 200, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32* @glfwCreateWindow(i32 %72, i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %74, i32* null)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = call i32 (...) @glfwTerminate()
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @exit(i32 %80) #3
  unreachable

82:                                               ; preds = %71
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @set_gamma(i32* %83, float 1.000000e+00)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @glfwMakeContextCurrent(i32* %85)
  %87 = call i32 @glfwSwapInterval(i32 1)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @key_callback, align 4
  %90 = call i32 @glfwSetKeyCallback(i32* %88, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* @framebuffer_size_callback, align 4
  %93 = call i32 @glfwSetFramebufferSizeCallback(i32* %91, i32 %92)
  %94 = load i32, i32* @GL_PROJECTION, align 4
  %95 = call i32 @glMatrixMode(i32 %94)
  %96 = call i32 @glOrtho(float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00)
  %97 = load i32, i32* @GL_MODELVIEW, align 4
  %98 = call i32 @glMatrixMode(i32 %97)
  %99 = call i32 @glClearColor(float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, i32 0)
  br label %100

100:                                              ; preds = %105, %82
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @glfwWindowShouldClose(i32* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %107 = call i32 @glClear(i32 %106)
  %108 = call i32 @glColor3f(float 0x3FE99999A0000000, float 0x3FC99999A0000000, float 0x3FD99999A0000000)
  %109 = call i32 @glRectf(float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01)
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @glfwSwapBuffers(i32* %110)
  %112 = call i32 (...) @glfwWaitEvents()
  br label %100

113:                                              ; preds = %100
  %114 = call i32 (...) @glfwTerminate()
  %115 = load i32, i32* @EXIT_SUCCESS, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @set_gamma(i32*, float) #1

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
