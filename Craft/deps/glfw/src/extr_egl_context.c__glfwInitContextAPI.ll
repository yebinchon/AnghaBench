; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c__glfwInitContextAPI.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c__glfwInitContextAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"libEGL.so.1\00", align 1
@__const._glfwInitContextAPI.sonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@GL_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"EGL: Failed to load EGL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"eglGetConfigAttrib\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"eglGetConfigs\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"eglGetDisplay\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"eglGetError\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"eglInitialize\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"eglTerminate\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"eglBindAPI\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"eglCreateContext\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"eglDestroySurface\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"eglDestroyContext\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"eglCreateWindowSurface\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"eglMakeCurrent\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"eglSwapBuffers\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"eglSwapInterval\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"eglQueryString\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"eglGetProcAddress\00", align 1
@_GLFW_EGL_NATIVE_DISPLAY = common dso_local global i64 0, align 8
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [35 x i8] c"EGL: Failed to get EGL display: %s\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"EGL: Failed to initialize EGL: %s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"EGL_KHR_create_context\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitContextAPI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8*], align 16
  %4 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i8*]* @__const._glfwInitContextAPI.sonames to i8*), i64 16, i1 false)
  %5 = call i32 (...) @_glfwCreateContextTLS()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @GL_FALSE, align 4
  store i32 %8, i32* %1, align 4
  br label %94

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @_glfw_dlopen(i8* %20)
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @GL_FALSE, align 4
  store i32 %35, i32* %1, align 4
  br label %94

36:                                               ; preds = %29
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %38 = call i8* @_glfw_dlsym(i64 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 20), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %40 = call i8* @_glfw_dlsym(i64 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 19), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %42 = call i8* @_glfw_dlsym(i64 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 18), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %44 = call i8* @_glfw_dlsym(i64 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 17), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %46 = call i8* @_glfw_dlsym(i64 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 16), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %48 = call i8* @_glfw_dlsym(i64 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 15), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %50 = call i8* @_glfw_dlsym(i64 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 14), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %52 = call i8* @_glfw_dlsym(i64 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %54 = call i8* @_glfw_dlsym(i64 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %56 = call i8* @_glfw_dlsym(i64 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %58 = call i8* @_glfw_dlsym(i64 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %60 = call i8* @_glfw_dlsym(i64 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %62 = call i8* @_glfw_dlsym(i64 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %64 = call i8* @_glfw_dlsym(i64 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %66 = call i8* @_glfw_dlsym(i64 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %68 = call i8* @_glfw_dlsym(i64 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5), align 8
  %69 = load i64, i64* @_GLFW_EGL_NATIVE_DISPLAY, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @_glfw_eglGetDisplay(i32 %70)
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %73 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %36
  %76 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %77 = call i32 (...) @_glfw_eglGetError()
  %78 = call i32 @getErrorString(i32 %77)
  %79 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @GL_FALSE, align 4
  store i32 %80, i32* %1, align 4
  br label %94

81:                                               ; preds = %36
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %83 = call i32 @_glfw_eglInitialize(i64 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %87 = call i32 (...) @_glfw_eglGetError()
  %88 = call i32 @getErrorString(i32 %87)
  %89 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @GL_FALSE, align 4
  store i32 %90, i32* %1, align 4
  br label %94

91:                                               ; preds = %81
  %92 = call i32 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %93 = load i32, i32* @GL_TRUE, align 4
  store i32 %93, i32* %1, align 4
  br label %94

94:                                               ; preds = %91, %85, %75, %32, %7
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_glfwCreateContextTLS(...) #2

declare dso_local i64 @_glfw_dlopen(i8*) #2

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #2

declare dso_local i8* @_glfw_dlsym(i64, i8*) #2

declare dso_local i64 @_glfw_eglGetDisplay(i32) #2

declare dso_local i32 @getErrorString(i32) #2

declare dso_local i32 @_glfw_eglGetError(...) #2

declare dso_local i32 @_glfw_eglInitialize(i64, i32*, i32*) #2

declare dso_local i32 @_glfwPlatformExtensionSupported(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
