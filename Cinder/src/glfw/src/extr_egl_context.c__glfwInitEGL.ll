; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_egl_context.c__glfwInitEGL.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_egl_context.c__glfwInitEGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i8*, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"libEGL.so.1\00", align 1
@__const._glfwInitEGL.sonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EGL: Library not found\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"eglGetConfigAttrib\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"eglGetConfigs\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"eglGetDisplay\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"eglGetError\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"eglInitialize\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"eglTerminate\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"eglBindAPI\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"eglCreateContext\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"eglDestroySurface\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"eglDestroyContext\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"eglCreateWindowSurface\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"eglMakeCurrent\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"eglSwapBuffers\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"eglSwapInterval\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"eglQueryString\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"eglGetProcAddress\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [42 x i8] c"EGL: Failed to load required entry points\00", align 1
@_GLFW_EGL_NATIVE_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [35 x i8] c"EGL: Failed to get EGL display: %s\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"EGL: Failed to initialize EGL: %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"EGL_KHR_create_context\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"EGL_KHR_create_context_no_error\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"EGL_KHR_gl_colorspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitEGL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8*], align 16
  %4 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i8*]* @__const._glfwInitEGL.sonames to i8*), i64 16, i1 false)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %8, i32* %1, align 4
  br label %157

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
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
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
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %35, i32* %1, align 4
  br label %157

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %45 = call i64 @_glfw_dlsym(i64 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 22), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %47 = call i64 @_glfw_dlsym(i64 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 21), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %49 = call i64 @_glfw_dlsym(i64 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 20), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %51 = call i64 @_glfw_dlsym(i64 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 19), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %53 = call i64 @_glfw_dlsym(i64 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 18), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %55 = call i64 @_glfw_dlsym(i64 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 17), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %57 = call i64 @_glfw_dlsym(i64 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 16), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %59 = call i64 @_glfw_dlsym(i64 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 15), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %61 = call i64 @_glfw_dlsym(i64 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 14), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %63 = call i64 @_glfw_dlsym(i64 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %65 = call i64 @_glfw_dlsym(i64 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %67 = call i64 @_glfw_dlsym(i64 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %69 = call i64 @_glfw_dlsym(i64 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %71 = call i64 @_glfw_dlsym(i64 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %73 = call i64 @_glfw_dlsym(i64 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 23), align 8
  %75 = call i64 @_glfw_dlsym(i64 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 22), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %36
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 21), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 20), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %81
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 19), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 18), align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 17), align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %90
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 16), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 15), align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 14), align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 13), align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 12), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 11), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 10), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 9), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 8), align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 7), align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %36
  %124 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %125 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  %126 = call i32 (...) @_glfwTerminateEGL()
  %127 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %127, i32* %1, align 4
  br label %157

128:                                              ; preds = %120
  %129 = load i32, i32* @_GLFW_EGL_NATIVE_DISPLAY, align 4
  %130 = call i64 @eglGetDisplay(i32 %129)
  store i64 %130, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %132 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %136 = call i32 (...) @eglGetError()
  %137 = call i32 @getEGLErrorString(i32 %136)
  %138 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i32 %137)
  %139 = call i32 (...) @_glfwTerminateEGL()
  %140 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %140, i32* %1, align 4
  br label %157

141:                                              ; preds = %128
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  %143 = call i32 @eglInitialize(i64 %142, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 6), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 5))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %147 = call i32 (...) @eglGetError()
  %148 = call i32 @getEGLErrorString(i32 %147)
  %149 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %148)
  %150 = call i32 (...) @_glfwTerminateEGL()
  %151 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %151, i32* %1, align 4
  br label %157

152:                                              ; preds = %141
  %153 = call i8* @extensionSupportedEGL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 4), align 8
  %154 = call i8* @extensionSupportedEGL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), align 8
  %155 = call i8* @extensionSupportedEGL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  store i8* %155, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %156 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %152, %145, %134, %123, %32, %7
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @_glfw_dlopen(i8*) #2

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @_glfw_dlsym(i64, i8*) #2

declare dso_local i32 @_glfwTerminateEGL(...) #2

declare dso_local i64 @eglGetDisplay(i32) #2

declare dso_local i32 @getEGLErrorString(i32) #2

declare dso_local i32 @eglGetError(...) #2

declare dso_local i32 @eglInitialize(i64, i32*, i32*) #2

declare dso_local i8* @extensionSupportedEGL(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
