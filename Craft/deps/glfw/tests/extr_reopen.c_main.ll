; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_reopen.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_reopen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"User closed window\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Closing window\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = call i64 @time(i32* null)
  %15 = trunc i64 %14 to i32
  %16 = call i32 @srand(i32 %15)
  %17 = load i32, i32* @error_callback, align 4
  %18 = call i32 @glfwSetErrorCallback(i32 %17)
  %19 = call i32 (...) @glfwInit()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %96, %24
  store i32* null, i32** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = call i32** @glfwGetMonitors(i32* %11)
  store i32** %30, i32*** %12, align 8
  %31 = load i32**, i32*** %12, align 8
  %32 = call i32 (...) @rand()
  %33 = load i32, i32* %11, align 4
  %34 = srem i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %31, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %29, %25
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %13, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %51

50:                                               ; preds = %38
  store i32 640, i32* %8, align 4
  store i32 480, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32* @open_window(i32 %52, i32 %53, i32* %54)
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = call i32 (...) @glfwTerminate()
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable

62:                                               ; preds = %51
  %63 = load i32, i32* @GL_PROJECTION, align 4
  %64 = call i32 @glMatrixMode(i32 %63)
  %65 = call i32 @glOrtho(float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00)
  %66 = load i32, i32* @GL_MODELVIEW, align 4
  %67 = call i32 @glMatrixMode(i32 %66)
  %68 = call i32 @glfwSetTime(double 0.000000e+00)
  br label %69

69:                                               ; preds = %95, %62
  %70 = call double (...) @glfwGetTime()
  %71 = fcmp olt double %70, 5.000000e+00
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %74 = call i32 @glClear(i32 %73)
  %75 = call i32 (...) @glPushMatrix()
  %76 = call double (...) @glfwGetTime()
  %77 = fptrunc double %76 to float
  %78 = fmul float %77, 1.000000e+02
  %79 = call i32 @glRotatef(float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %80 = call i32 @glRectf(float -5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 1.000000e+00)
  %81 = call i32 (...) @glPopMatrix()
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @glfwSwapBuffers(i32* %82)
  %84 = call i32 (...) @glfwPollEvents()
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @glfwWindowShouldClose(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %72
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @close_window(i32* %89)
  %91 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 (...) @glfwTerminate()
  %93 = load i32, i32* @EXIT_SUCCESS, align 4
  %94 = call i32 @exit(i32 %93) #3
  unreachable

95:                                               ; preds = %72
  br label %69

96:                                               ; preds = %69
  %97 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @close_window(i32* %98)
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %25
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32** @glfwGetMonitors(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32* @open_window(i32, i32, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glfwSetTime(double) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glRectf(float, float, float, float) #1

declare dso_local i32 @glPopMatrix(...) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @close_window(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
