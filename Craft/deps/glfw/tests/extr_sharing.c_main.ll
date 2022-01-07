; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"First\00", align 1
@OFFSET = common dso_local global i32 0, align 4
@windows = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @error_callback, align 4
  %11 = call i32 @glfwSetErrorCallback(i32 %10)
  %12 = call i32 (...) @glfwInit()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* @OFFSET, align 4
  %19 = load i32, i32* @OFFSET, align 4
  %20 = call i32* @open_window(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %18, i32 %19)
  %21 = load i32**, i32*** @windows, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  store i32* %20, i32** %22, align 8
  %23 = load i32**, i32*** @windows, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = call i32 (...) @glfwTerminate()
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %17
  %32 = call i32 (...) @create_texture()
  store i32 %32, i32* %9, align 4
  %33 = load i32**, i32*** @windows, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @glfwGetWindowPos(i32* %35, i32* %6, i32* %7)
  %37 = load i32**, i32*** @windows, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @glfwGetWindowSize(i32* %39, i32* %8, i32* null)
  %41 = load i32**, i32*** @windows, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @OFFSET, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @open_window(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %43, i32 %48, i32 %49)
  %51 = load i32**, i32*** @windows, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* %50, i32** %52, align 8
  %53 = load i32**, i32*** @windows, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %31
  %58 = call i32 (...) @glfwTerminate()
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @exit(i32 %59) #3
  unreachable

61:                                               ; preds = %31
  %62 = load i32**, i32*** @windows, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @glfwMakeContextCurrent(i32* %64)
  %66 = call i32 @glColor3f(float 0x3FE3333340000000, float 0.000000e+00, float 0x3FE3333340000000)
  %67 = load i32**, i32*** @windows, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @glfwMakeContextCurrent(i32* %69)
  %71 = call i32 @glColor3f(float 0x3FE3333340000000, float 0x3FE3333340000000, float 0.000000e+00)
  %72 = load i32**, i32*** @windows, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @glfwMakeContextCurrent(i32* %74)
  br label %76

76:                                               ; preds = %91, %61
  %77 = load i32**, i32*** @windows, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @glfwWindowShouldClose(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = load i32**, i32*** @windows, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @glfwWindowShouldClose(i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi i1 [ false, %76 ], [ %88, %82 ]
  br i1 %90, label %91, label %113

91:                                               ; preds = %89
  %92 = load i32**, i32*** @windows, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @glfwMakeContextCurrent(i32* %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @draw_quad(i32 %96)
  %98 = load i32**, i32*** @windows, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @glfwMakeContextCurrent(i32* %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @draw_quad(i32 %102)
  %104 = load i32**, i32*** @windows, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @glfwSwapBuffers(i32* %106)
  %108 = load i32**, i32*** @windows, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @glfwSwapBuffers(i32* %110)
  %112 = call i32 (...) @glfwWaitEvents()
  br label %76

113:                                              ; preds = %89
  %114 = call i32 (...) @glfwTerminate()
  %115 = load i32, i32* @EXIT_SUCCESS, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @open_window(i8*, i32*, i32, i32) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @create_texture(...) #1

declare dso_local i32 @glfwGetWindowPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @draw_quad(i32) #1

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
