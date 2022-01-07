; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c__glfwInitContextAPI.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c__glfwInitContextAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GLX: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"glXGetFBConfigs\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"glXGetFBConfigAttrib\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"glXGetClientString\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"glXQueryExtension\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"glXQueryVersion\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"glXDestroyContext\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"glXMakeCurrent\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"glXSwapBuffers\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"glXQueryExtensionsString\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"glXCreateNewContext\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"glXGetVisualFromFBConfig\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"glXGetProcAddress\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"glXGetProcAddressARB\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"GLX: GLX extension not found\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"GLX: Failed to query GLX version\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"GLX: GLX version 1.3 is required\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"GLX_EXT_swap_control\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalEXT\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"GLX_SGI_swap_control\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalSGI\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"GLX_MESA_swap_control\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"glXSwapIntervalMESA\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"GLX_ARB_multisample\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"GLX_ARB_framebuffer_sRGB\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"GLX_EXT_framebuffer_sRGB\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"GLX_ARB_create_context\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"glXCreateContextAttribsARB\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"GLX_ARB_create_context_robustness\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"GLX_ARB_create_context_profile\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"GLX_EXT_create_context_es2_profile\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"GLX_ARB_context_flush_control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitContextAPI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = call i32 (...) @_glfwCreateContextTLS()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GL_FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %149

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @RTLD_LAZY, align 4
  %10 = load i32, i32* @RTLD_GLOBAL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @dlopen(i8* %8, i32 %11)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %17 = call i32 (...) @dlerror()
  %18 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GL_FALSE, align 4
  store i32 %19, i32* %1, align 4
  br label %149

20:                                               ; preds = %7
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %22 = call i8* @dlsym(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 32), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %24 = call i8* @dlsym(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 31), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %26 = call i8* @dlsym(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 30), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %28 = call i8* @dlsym(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 29), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %30 = call i8* @dlsym(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 28), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %32 = call i8* @dlsym(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 27), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %34 = call i8* @dlsym(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 26), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %36 = call i8* @dlsym(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 25), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %38 = call i8* @dlsym(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 24), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %40 = call i8* @dlsym(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 23), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %42 = call i8* @dlsym(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 22), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %44 = call i8* @dlsym(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 21), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %46 = call i8* @dlsym(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 20), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %48 = call i32 @_glfw_glXQueryExtension(i32 %47, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 18), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 17))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %20
  %51 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %52 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %53 = load i32, i32* @GL_FALSE, align 4
  store i32 %53, i32* %1, align 4
  br label %149

54:                                               ; preds = %20
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %56 = call i32 @_glfw_glXQueryVersion(i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %60 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %61 = load i32, i32* @GL_FALSE, align 4
  store i32 %61, i32* %1, align 4
  br label %149

62:                                               ; preds = %54
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %70 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %71 = load i32, i32* @GL_FALSE, align 4
  store i32 %71, i32* %1, align 4
  br label %149

72:                                               ; preds = %65, %62
  %73 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = call i64 @_glfwPlatformGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 16), align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 16), align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @GL_TRUE, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %72
  %83 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = call i64 @_glfwPlatformGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 15), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 15), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @GL_TRUE, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 4
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = call i64 @_glfwPlatformGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 14), align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 14), align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @GL_TRUE, align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %92
  %103 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @GL_TRUE, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @GL_TRUE, align 4
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %112

112:                                              ; preds = %110, %107
  %113 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @GL_TRUE, align 4
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = call i64 @_glfwPlatformGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  store i64 %121, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 13), align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 13), align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @GL_TRUE, align 4
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8), align 8
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126, %117
  %128 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @GL_TRUE, align 4
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @GL_TRUE, align 4
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 10), align 8
  br label %137

137:                                              ; preds = %135, %132
  %138 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @GL_TRUE, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 11), align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = call i64 @_glfwPlatformExtensionSupported(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @GL_TRUE, align 4
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 12), align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i32, i32* @GL_TRUE, align 4
  store i32 %148, i32* %1, align 4
  br label %149

149:                                              ; preds = %147, %68, %58, %50, %15, %5
  %150 = load i32, i32* %1, align 4
  ret i32 %150
}

declare dso_local i32 @_glfwCreateContextTLS(...) #1

declare dso_local i32 @dlopen(i8*, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @dlerror(...) #1

declare dso_local i8* @dlsym(i32, i8*) #1

declare dso_local i32 @_glfw_glXQueryExtension(i32, i32*, i32*) #1

declare dso_local i32 @_glfw_glXQueryVersion(i32, i32*, i32*) #1

declare dso_local i64 @_glfwPlatformExtensionSupported(i8*) #1

declare dso_local i64 @_glfwPlatformGetProcAddress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
