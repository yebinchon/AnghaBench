; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_empty.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_empty.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Empty Event Test\00", align 1
@key_callback = common dso_local global i32 0, align 4
@thread_main = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create secondary thread\0A\00", align 1
@running = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %11 = call i64 @time(i32* null)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @srand(i32 %12)
  %14 = load i32, i32* @error_callback, align 4
  %15 = call i32 @glfwSetErrorCallback(i32 %14)
  %16 = call i32 (...) @glfwInit()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %0
  %22 = call i32* @glfwCreateWindow(i32 640, i32 480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @glfwTerminate()
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @glfwMakeContextCurrent(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @key_callback, align 4
  %34 = call i32 @glfwSetKeyCallback(i32* %32, i32 %33)
  %35 = load i32, i32* @thread_main, align 4
  %36 = call i64 @thrd_create(i32* %3, i32 %35, i32* null)
  %37 = load i64, i64* @thrd_success, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (...) @glfwTerminate()
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %91, %45
  %47 = load i64, i64* @running, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = call float (...) @nrand()
  store float %50, float* %7, align 4
  %51 = call float (...) @nrand()
  store float %51, float* %8, align 4
  %52 = call float (...) @nrand()
  store float %52, float* %9, align 4
  %53 = load float, float* %7, align 4
  %54 = load float, float* %7, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %8, align 4
  %57 = load float, float* %8, align 4
  %58 = fmul float %56, %57
  %59 = fadd float %55, %58
  %60 = load float, float* %9, align 4
  %61 = load float, float* %9, align 4
  %62 = fmul float %60, %61
  %63 = fadd float %59, %62
  %64 = call i64 @sqrt(float %63)
  %65 = sitofp i64 %64 to float
  store float %65, float* %10, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @glfwGetFramebufferSize(i32* %66, i32* %5, i32* %6)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @glViewport(i32 0, i32 0, i32 %68, i32 %69)
  %71 = load float, float* %7, align 4
  %72 = load float, float* %10, align 4
  %73 = fdiv float %71, %72
  %74 = load float, float* %8, align 4
  %75 = load float, float* %10, align 4
  %76 = fdiv float %74, %75
  %77 = load float, float* %9, align 4
  %78 = load float, float* %10, align 4
  %79 = fdiv float %77, %78
  %80 = call i32 @glClearColor(float %73, float %76, float %79, float 1.000000e+00)
  %81 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %82 = call i32 @glClear(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @glfwSwapBuffers(i32* %83)
  %85 = call i32 (...) @glfwWaitEvents()
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @glfwWindowShouldClose(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %49
  %90 = load i64, i64* @GL_FALSE, align 8
  store i64 %90, i64* @running, align 8
  br label %91

91:                                               ; preds = %89, %49
  br label %46

92:                                               ; preds = %46
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @glfwHideWindow(i32* %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @thrd_join(i32 %95, i32* %2)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @glfwDestroyWindow(i32* %97)
  %99 = call i32 (...) @glfwTerminate()
  %100 = load i32, i32* @EXIT_SUCCESS, align 4
  %101 = call i32 @exit(i32 %100) #3
  unreachable
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i64 @thrd_create(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local float @nrand(...) #1

declare dso_local i64 @sqrt(float) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwHideWindow(i32*) #1

declare dso_local i32 @thrd_join(i32, i32*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
