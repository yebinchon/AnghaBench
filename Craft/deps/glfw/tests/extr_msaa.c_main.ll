; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_msaa.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_msaa.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"hs:\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@error_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Requesting MSAA with %i samples\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Requesting that MSAA not be available\0A\00", align 1
@GLFW_SAMPLES = common dso_local global i32 0, align 4
@GLFW_VISIBLE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Aliasing Detector\00", align 1
@key_callback = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"GL_ARB_multisample\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"GL_ARB_multisample extension not supported\0A\00", align 1
@GL_SAMPLES_ARB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Context reports MSAA is available with %i samples\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Context reports MSAA is unavailable\0A\00", align 1
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_MULTISAMPLE_ARB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %24 [
    i32 104, label %17
    i32 115, label %21
  ]

17:                                               ; preds = %15
  %18 = call i32 (...) @usage()
  %19 = load i32, i32* @EXIT_SUCCESS, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %15
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @atoi(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %15
  %25 = call i32 (...) @usage()
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %21
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* @error_callback, align 4
  %31 = call i32 @glfwSetErrorCallback(i32 %30)
  %32 = call i32 (...) @glfwInit()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* @GLFW_SAMPLES, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @glfwWindowHint(i32 %46, i32 %47)
  %49 = load i32, i32* @GLFW_VISIBLE, align 4
  %50 = load i32, i32* @GL_FALSE, align 4
  %51 = call i32 @glfwWindowHint(i32 %49, i32 %50)
  %52 = call i32* @glfwCreateWindow(i32 800, i32 400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = call i32 (...) @glfwTerminate()
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @exit(i32 %57) #3
  unreachable

59:                                               ; preds = %45
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @key_callback, align 4
  %62 = call i32 @glfwSetKeyCallback(i32* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @framebuffer_size_callback, align 4
  %65 = call i32 @glfwSetFramebufferSizeCallback(i32* %63, i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @glfwMakeContextCurrent(i32* %66)
  %68 = call i32 @glfwSwapInterval(i32 1)
  %69 = call i32 @glfwExtensionSupported(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %73 = call i32 (...) @glfwTerminate()
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = call i32 @exit(i32 %74) #3
  unreachable

76:                                               ; preds = %59
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @glfwShowWindow(i32* %77)
  %79 = load i32, i32* @GL_SAMPLES_ARB, align 4
  %80 = call i32 @glGetIntegerv(i32 %79, i32* %7)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %88

86:                                               ; preds = %76
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* @GL_PROJECTION, align 4
  %90 = call i32 @glMatrixMode(i32 %89)
  %91 = call i32 @glOrtho(float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00)
  %92 = load i32, i32* @GL_MODELVIEW, align 4
  %93 = call i32 @glMatrixMode(i32 %92)
  br label %94

94:                                               ; preds = %99, %88
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @glfwWindowShouldClose(i32* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = call i32 (...) @glfwGetTime()
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %102 = call i32 @glClear(i32 %101)
  %103 = call i32 (...) @glLoadIdentity()
  %104 = call i32 @glTranslatef(float 2.500000e-01, float 2.500000e-01, float 0.000000e+00)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @glRotatef(i32 %105, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %107 = load i32, i32* @GL_MULTISAMPLE_ARB, align 4
  %108 = call i32 @glDisable(i32 %107)
  %109 = call i32 @glRectf(float 0xBFC3333340000000, float 0xBFC3333340000000, float 0x3FC3333340000000, float 0x3FC3333340000000)
  %110 = call i32 (...) @glLoadIdentity()
  %111 = call i32 @glTranslatef(float 7.500000e-01, float 2.500000e-01, float 0.000000e+00)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @glRotatef(i32 %112, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %114 = load i32, i32* @GL_MULTISAMPLE_ARB, align 4
  %115 = call i32 @glEnable(i32 %114)
  %116 = call i32 @glRectf(float 0xBFC3333340000000, float 0xBFC3333340000000, float 0x3FC3333340000000, float 0x3FC3333340000000)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @glfwSwapBuffers(i32* %117)
  %119 = call i32 (...) @glfwPollEvents()
  br label %94

120:                                              ; preds = %94
  %121 = call i32 (...) @glfwTerminate()
  %122 = load i32, i32* @EXIT_SUCCESS, align 4
  %123 = call i32 @exit(i32 %122) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwExtensionSupported(i8*) #1

declare dso_local i32 @glfwShowWindow(i32*) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwGetTime(...) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glTranslatef(float, float, float) #1

declare dso_local i32 @glRotatef(i32, float, float, float) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glRectf(float, float, float, float) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
