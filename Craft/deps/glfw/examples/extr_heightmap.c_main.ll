; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@GLFW_RESIZABLE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_OPENGL_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_FORWARD_COMPAT = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GLFW OpenGL3 Heightmap demo\00", align 1
@key_callback = common dso_local global i32 0, align 4
@glfwGetProcAddress = common dso_local global i64 0, align 8
@vertex_shader_text = common dso_local global i32 0, align 4
@fragment_shader_text = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"project\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"modelview\00", align 1
@view_angle = common dso_local global float 0.000000e+00, align 4
@aspect_ratio = common dso_local global float 0.000000e+00, align 4
@projection_matrix = common dso_local global float* null, align 8
@z_far = common dso_local global float 0.000000e+00, align 4
@z_near = common dso_local global float 0.000000e+00, align 4
@modelview_matrix = common dso_local global float* null, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINES = common dso_local global i32 0, align 4
@MAP_NUM_LINES = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@MAX_ITER = common dso_local global i32 0, align 4
@NUM_ITER_AT_A_TIME = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @error_callback, align 4
  %16 = call i32 @glfwSetErrorCallback(i32 %15)
  %17 = call i32 (...) @glfwInit()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @exit(i32 %20) #4
  unreachable

22:                                               ; preds = %2
  %23 = load i32, i32* @GLFW_RESIZABLE, align 4
  %24 = load i32, i32* @GL_FALSE, align 4
  %25 = call i32 @glfwWindowHint(i32 %23, i32 %24)
  %26 = load i32, i32* @GLFW_CONTEXT_VERSION_MAJOR, align 4
  %27 = call i32 @glfwWindowHint(i32 %26, i32 3)
  %28 = load i32, i32* @GLFW_CONTEXT_VERSION_MINOR, align 4
  %29 = call i32 @glfwWindowHint(i32 %28, i32 2)
  %30 = load i32, i32* @GLFW_OPENGL_PROFILE, align 4
  %31 = load i32, i32* @GLFW_OPENGL_CORE_PROFILE, align 4
  %32 = call i32 @glfwWindowHint(i32 %30, i32 %31)
  %33 = load i32, i32* @GLFW_OPENGL_FORWARD_COMPAT, align 4
  %34 = load i32, i32* @GL_TRUE, align 4
  %35 = call i32 @glfwWindowHint(i32 %33, i32 %34)
  %36 = call i32* @glfwCreateWindow(i32 800, i32 600, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = call i32 (...) @glfwTerminate()
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #4
  unreachable

43:                                               ; preds = %22
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @key_callback, align 4
  %46 = call i32 @glfwSetKeyCallback(i32* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @glfwMakeContextCurrent(i32* %47)
  %49 = load i64, i64* @glfwGetProcAddress, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @gladLoadGLLoader(i32 %50)
  %52 = load i32, i32* @vertex_shader_text, align 4
  %53 = load i32, i32* @fragment_shader_text, align 4
  %54 = call i32 @make_shader_program(i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = call i32 (...) @glfwTerminate()
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @exit(i32 %59) #4
  unreachable

61:                                               ; preds = %43
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @glUseProgram(i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @glGetUniformLocation(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @glGetUniformLocation(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %12, align 4
  %68 = load float, float* @view_angle, align 4
  %69 = fdiv float %68, 2.000000e+00
  %70 = call float @tanf(float %69) #5
  %71 = fdiv float 1.000000e+00, %70
  store float %71, float* %11, align 4
  %72 = load float, float* %11, align 4
  %73 = load float, float* @aspect_ratio, align 4
  %74 = fdiv float %72, %73
  %75 = load float*, float** @projection_matrix, align 8
  %76 = getelementptr inbounds float, float* %75, i64 0
  store float %74, float* %76, align 4
  %77 = load float, float* %11, align 4
  %78 = load float*, float** @projection_matrix, align 8
  %79 = getelementptr inbounds float, float* %78, i64 5
  store float %77, float* %79, align 4
  %80 = load float, float* @z_far, align 4
  %81 = load float, float* @z_near, align 4
  %82 = fadd float %80, %81
  %83 = load float, float* @z_near, align 4
  %84 = load float, float* @z_far, align 4
  %85 = fsub float %83, %84
  %86 = fdiv float %82, %85
  %87 = load float*, float** @projection_matrix, align 8
  %88 = getelementptr inbounds float, float* %87, i64 10
  store float %86, float* %88, align 4
  %89 = load float*, float** @projection_matrix, align 8
  %90 = getelementptr inbounds float, float* %89, i64 11
  store float -1.000000e+00, float* %90, align 4
  %91 = load float, float* @z_far, align 4
  %92 = load float, float* @z_near, align 4
  %93 = fmul float %91, %92
  %94 = fmul float 2.000000e+00, %93
  %95 = load float, float* @z_near, align 4
  %96 = load float, float* @z_far, align 4
  %97 = fsub float %95, %96
  %98 = fdiv float %94, %97
  %99 = load float*, float** @projection_matrix, align 8
  %100 = getelementptr inbounds float, float* %99, i64 14
  store float %98, float* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @GL_FALSE, align 4
  %103 = load float*, float** @projection_matrix, align 8
  %104 = call i32 @glUniformMatrix4fv(i32 %101, i32 1, i32 %102, float* %103)
  %105 = load float*, float** @modelview_matrix, align 8
  %106 = getelementptr inbounds float, float* %105, i64 12
  store float -5.000000e+00, float* %106, align 4
  %107 = load float*, float** @modelview_matrix, align 8
  %108 = getelementptr inbounds float, float* %107, i64 13
  store float -5.000000e+00, float* %108, align 4
  %109 = load float*, float** @modelview_matrix, align 8
  %110 = getelementptr inbounds float, float* %109, i64 14
  store float -2.000000e+01, float* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @GL_FALSE, align 4
  %113 = load float*, float** @modelview_matrix, align 8
  %114 = call i32 @glUniformMatrix4fv(i32 %111, i32 1, i32 %112, float* %113)
  %115 = call i32 (...) @init_map()
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @make_mesh(i32 %116)
  %118 = call i32 @glViewport(i32 0, i32 0, i32 800, i32 600)
  %119 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  %120 = call double (...) @glfwGetTime()
  store double %120, double* %9, align 8
  br label %121

121:                                              ; preds = %159, %61
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @glfwWindowShouldClose(i32* %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  br i1 %125, label %126, label %160

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %130 = call i32 @glClear(i32 %129)
  %131 = load i32, i32* @GL_LINES, align 4
  %132 = load i32, i32* @MAP_NUM_LINES, align 4
  %133 = mul nsw i32 2, %132
  %134 = load i32, i32* @GL_UNSIGNED_INT, align 4
  %135 = call i32 @glDrawElements(i32 %131, i32 %133, i32 %134, i32 0)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @glfwSwapBuffers(i32* %136)
  %138 = call i32 (...) @glfwPollEvents()
  %139 = call double (...) @glfwGetTime()
  store double %139, double* %8, align 8
  %140 = load double, double* %8, align 8
  %141 = load double, double* %9, align 8
  %142 = fsub double %140, %141
  %143 = fcmp ogt double %142, 2.000000e-01
  br i1 %143, label %144, label %159

144:                                              ; preds = %126
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @MAX_ITER, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i64, i64* @NUM_ITER_AT_A_TIME, align 8
  %150 = call i32 @update_map(i64 %149)
  %151 = call i32 (...) @update_mesh()
  %152 = load i64, i64* @NUM_ITER_AT_A_TIME, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %148, %144
  %158 = load double, double* %8, align 8
  store double %158, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %157, %126
  br label %121

160:                                              ; preds = %121
  %161 = call i32 (...) @glfwTerminate()
  %162 = load i32, i32* @EXIT_SUCCESS, align 4
  %163 = call i32 @exit(i32 %162) #4
  unreachable
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @gladLoadGLLoader(i32) #1

declare dso_local i32 @make_shader_program(i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

; Function Attrs: nounwind
declare dso_local float @tanf(float) #3

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @init_map(...) #1

declare dso_local i32 @make_mesh(i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glDrawElements(i32, i32, i32, i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @update_map(i64) #1

declare dso_local i32 @update_mesh(...) #1

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
