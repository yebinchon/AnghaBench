; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_tearing.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_tearing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@GL_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@frame_rate = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"WGL_EXT_swap_control_tear\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GLX_EXT_swap_control_tear\00", align 1
@swap_tear = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
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
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %10, align 8
  %17 = load i64, i64* @GL_FALSE, align 8
  store i64 %17, i64* %13, align 8
  store i32* null, i32** %14, align 8
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %31 [
    i32 104, label %25
    i32 102, label %29
  ]

25:                                               ; preds = %23
  %26 = call i32 (...) @usage()
  %27 = load i32, i32* @EXIT_SUCCESS, align 4
  %28 = call i32 @exit(i32 %27) #4
  unreachable

29:                                               ; preds = %23
  %30 = load i64, i64* @GL_TRUE, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %23, %29
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* @error_callback, align 4
  %34 = call i32 @glfwSetErrorCallback(i32 %33)
  %35 = call i32 (...) @glfwInit()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @exit(i32 %38) #4
  unreachable

40:                                               ; preds = %32
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call %struct.TYPE_3__* @glfwGetVideoMode(i32* %45)
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %16, align 8
  %47 = load i32, i32* @GLFW_RED_BITS, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @glfwWindowHint(i32 %47, i32 %50)
  %52 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @glfwWindowHint(i32 %52, i32 %55)
  %57 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @glfwWindowHint(i32 %57, i32 %60)
  %62 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @glfwWindowHint(i32 %62, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %40
  store i32 640, i32* %7, align 4
  store i32 480, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = call i32* @glfwCreateWindow(i32 %75, i32 %76, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %77, i32* null)
  store i32* %78, i32** %15, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = call i32 (...) @glfwTerminate()
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = call i32 @exit(i32 %83) #4
  unreachable

85:                                               ; preds = %74
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @glfwMakeContextCurrent(i32* %86)
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @set_swap_interval(i32* %88, i32 0)
  %90 = call double (...) @glfwGetTime()
  store double %90, double* %11, align 8
  store double 0.000000e+00, double* @frame_rate, align 8
  %91 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %93, %85
  %97 = phi i1 [ true, %85 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* @swap_tear, align 4
  %99 = load i32*, i32** %15, align 8
  %100 = load i32, i32* @framebuffer_size_callback, align 4
  %101 = call i32 @glfwSetFramebufferSizeCallback(i32* %99, i32 %100)
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* @key_callback, align 4
  %104 = call i32 @glfwSetKeyCallback(i32* %102, i32 %103)
  %105 = load i32, i32* @GL_PROJECTION, align 4
  %106 = call i32 @glMatrixMode(i32 %105)
  %107 = call i32 @glOrtho(float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00)
  %108 = load i32, i32* @GL_MODELVIEW, align 4
  %109 = call i32 @glMatrixMode(i32 %108)
  br label %110

110:                                              ; preds = %148, %96
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @glfwWindowShouldClose(i32* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br i1 %114, label %115, label %149

115:                                              ; preds = %110
  %116 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %117 = call i32 @glClear(i32 %116)
  %118 = call double (...) @glfwGetTime()
  %119 = fptrunc double %118 to float
  %120 = fmul float %119, 4.000000e+00
  %121 = call float @cosf(float %120) #5
  %122 = fmul float %121, 7.500000e-01
  store float %122, float* %9, align 4
  %123 = load float, float* %9, align 4
  %124 = fsub float %123, 2.500000e-01
  %125 = load float, float* %9, align 4
  %126 = fadd float %125, 2.500000e-01
  %127 = call i32 @glRectf(float %124, float -1.000000e+00, float %126, float 1.000000e+00)
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @glfwSwapBuffers(i32* %128)
  %130 = call i32 (...) @glfwPollEvents()
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  %133 = call double (...) @glfwGetTime()
  store double %133, double* %12, align 8
  %134 = load double, double* %12, align 8
  %135 = load double, double* %11, align 8
  %136 = fsub double %134, %135
  %137 = fcmp ogt double %136, 1.000000e+00
  br i1 %137, label %138, label %148

138:                                              ; preds = %115
  %139 = load i64, i64* %10, align 8
  %140 = uitofp i64 %139 to double
  %141 = load double, double* %12, align 8
  %142 = load double, double* %11, align 8
  %143 = fsub double %141, %142
  %144 = fdiv double %140, %143
  store double %144, double* @frame_rate, align 8
  store i64 0, i64* %10, align 8
  %145 = load double, double* %12, align 8
  store double %145, double* %11, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @update_window_title(i32* %146)
  br label %148

148:                                              ; preds = %138, %115
  br label %110

149:                                              ; preds = %110
  %150 = call i32 (...) @glfwTerminate()
  %151 = load i32, i32* @EXIT_SUCCESS, align 4
  %152 = call i32 @exit(i32 %151) #4
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local %struct.TYPE_3__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @set_swap_interval(i32*, i32) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i64 @glfwExtensionSupported(i8*) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glClear(i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

declare dso_local i32 @glRectf(float, float, float, float) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @update_window_title(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
