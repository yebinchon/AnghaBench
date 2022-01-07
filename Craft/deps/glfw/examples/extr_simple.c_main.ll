; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_simple.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_simple.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Simple example\00", align 1
@key_callback = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @error_callback, align 4
  %7 = call i32 @glfwSetErrorCallback(i32 %6)
  %8 = call i32 (...) @glfwInit()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i32* @glfwCreateWindow(i32 640, i32 480, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = call i32 (...) @glfwTerminate()
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @glfwMakeContextCurrent(i32* %22)
  %24 = call i32 @glfwSwapInterval(i32 1)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @key_callback, align 4
  %27 = call i32 @glfwSetKeyCallback(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %33, %21
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @glfwWindowShouldClose(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @glfwGetFramebufferSize(i32* %34, i32* %4, i32* %5)
  %36 = load i32, i32* %4, align 4
  %37 = sitofp i32 %36 to float
  %38 = load i32, i32* %5, align 4
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %37, %39
  store float %40, float* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @glViewport(i32 0, i32 0, i32 %41, i32 %42)
  %44 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %45 = call i32 @glClear(i32 %44)
  %46 = load i32, i32* @GL_PROJECTION, align 4
  %47 = call i32 @glMatrixMode(i32 %46)
  %48 = call i32 (...) @glLoadIdentity()
  %49 = load float, float* %3, align 4
  %50 = fneg float %49
  %51 = load float, float* %3, align 4
  %52 = call i32 @glOrtho(float %50, float %51, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00)
  %53 = load i32, i32* @GL_MODELVIEW, align 4
  %54 = call i32 @glMatrixMode(i32 %53)
  %55 = call i32 (...) @glLoadIdentity()
  %56 = call i64 (...) @glfwGetTime()
  %57 = sitofp i64 %56 to float
  %58 = fmul float %57, 5.000000e+01
  %59 = call i32 @glRotatef(float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %60 = load i32, i32* @GL_TRIANGLES, align 4
  %61 = call i32 @glBegin(i32 %60)
  %62 = call i32 @glColor3f(float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %63 = call i32 @glVertex3f(float 0xBFE3333340000000, float 0xBFD99999A0000000, float 0.000000e+00)
  %64 = call i32 @glColor3f(float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %65 = call i32 @glVertex3f(float 0x3FE3333340000000, float 0xBFD99999A0000000, float 0.000000e+00)
  %66 = call i32 @glColor3f(float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %67 = call i32 @glVertex3f(float 0.000000e+00, float 0x3FE3333340000000, float 0.000000e+00)
  %68 = call i32 (...) @glEnd()
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @glfwSwapBuffers(i32* %69)
  %71 = call i32 (...) @glfwPollEvents()
  br label %28

72:                                               ; preds = %28
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @glfwDestroyWindow(i32* %73)
  %75 = call i32 (...) @glfwTerminate()
  %76 = load i32, i32* @EXIT_SUCCESS, align 4
  %77 = call i32 @exit(i32 %76) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i64 @glfwGetTime(...) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
