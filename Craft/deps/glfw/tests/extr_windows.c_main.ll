; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_windows.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_windows.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@GL_TRUE = common dso_local global i64 0, align 8
@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_DECORATED = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i64 0, align 8
@GLFW_VISIBLE = common dso_local global i32 0, align 4
@titles = common dso_local global i32* null, align 8
@key_callback = common dso_local global i32 0, align 4
@colors = common dso_local global %struct.TYPE_2__* null, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i64, i64* @GL_TRUE, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @error_callback, align 4
  %15 = call i32 @glfwSetErrorCallback(i32 %14)
  %16 = call i32 (...) @glfwInit()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i32, i32* @GLFW_DECORATED, align 4
  %23 = load i64, i64* @GL_FALSE, align 8
  %24 = call i32 @glfwWindowHint(i32 %22, i64 %23)
  %25 = load i32, i32* @GLFW_VISIBLE, align 4
  %26 = load i64, i64* @GL_FALSE, align 8
  %27 = call i32 @glfwWindowHint(i32 %25, i64 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %107, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %110

31:                                               ; preds = %28
  %32 = load i32*, i32** @titles, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @glfwCreateWindow(i32 200, i32 200, i32 %36, i32* null, i32* null)
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %39
  store i32* %37, i32** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %31
  %47 = call i32 (...) @glfwTerminate()
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @key_callback, align 4
  %56 = call i32 @glfwSetKeyCallback(i32* %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @glfwMakeContextCurrent(i32* %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @colors, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @glClearColor(i32 %67, i32 %73, i32 %79, float 1.000000e+00)
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @glfwGetWindowFrameSize(i32* %84, i32* %9, i32* %10, i32* %11, i32* %12)
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 1
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 200, %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = mul nsw i32 %91, %95
  %97 = add nsw i32 100, %96
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %98, 1
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 200, %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = mul nsw i32 %99, %103
  %105 = add nsw i32 100, %104
  %106 = call i32 @glfwSetWindowPos(i32* %89, i32 %97, i32 %105)
  br label %107

107:                                              ; preds = %50
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %28

110:                                              ; preds = %28
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %120, %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @glfwShowWindow(i32* %118)
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %111

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %156, %123
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %153, %127
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @glfwMakeContextCurrent(i32* %135)
  %137 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %138 = call i32 @glClear(i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @glfwSwapBuffers(i32* %142)
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @glfwWindowShouldClose(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i64, i64* @GL_FALSE, align 8
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %150, %131
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %128

156:                                              ; preds = %128
  %157 = call i32 (...) @glfwPollEvents()
  br label %124

158:                                              ; preds = %124
  %159 = call i32 (...) @glfwTerminate()
  %160 = load i32, i32* @EXIT_SUCCESS, align 4
  %161 = call i32 @exit(i32 %160) #3
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i64) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glClearColor(i32, i32, i32, float) #1

declare dso_local i32 @glfwGetWindowFrameSize(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @glfwSetWindowPos(i32*, i32, i32) #1

declare dso_local i32 @glfwShowWindow(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
