; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwInitGLX.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwInitGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, i8*, i64, i8*, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"libGL.so\00", align 1
@__const._glfwInitGLX.sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@RTLD_LAZY = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GLX: Failed to load GLX\00", align 1
@GLFW_FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glXGetFBConfigs\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"glXGetFBConfigAttrib\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"glXGetClientString\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"glXQueryExtension\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"glXQueryVersion\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"glXDestroyContext\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"glXMakeCurrent\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"glXSwapBuffers\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"glXQueryExtensionsString\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"glXCreateNewContext\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"glXCreateWindow\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"glXDestroyWindow\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"glXGetProcAddress\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"glXGetProcAddressARB\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"glXGetVisualFromFBConfig\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"GLX: Failed to load required entry points\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"GLX: GLX extension not found\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"GLX: Failed to query GLX version\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"GLX: GLX version 1.3 is required\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"GLX_EXT_swap_control\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalEXT\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"GLX_SGI_swap_control\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"glXSwapIntervalSGI\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"GLX_MESA_swap_control\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"glXSwapIntervalMESA\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"GLX_ARB_multisample\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"GLX_ARB_framebuffer_sRGB\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"GLX_EXT_framebuffer_sRGB\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"GLX_ARB_create_context\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"glXCreateContextAttribsARB\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"GLX_ARB_create_context_robustness\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"GLX_ARB_create_context_profile\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"GLX_EXT_create_context_es2_profile\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"GLX_ARB_context_flush_control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwInitGLX() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8*], align 16
  %4 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x i8*]* @__const._glfwInitGLX.sonames to i8*), i64 24, i1 false)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %8, i8** %1, align 8
  br label %221

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @RTLD_LAZY, align 4
  %22 = load i32, i32* @RTLD_GLOBAL, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @dlopen(i8* %20, i32 %23)
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %10

32:                                               ; preds = %27, %10
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %37 = call i32 @_glfwInputError(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %38, i8** %1, align 8
  br label %221

39:                                               ; preds = %32
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %41 = call i8* @dlsym(i64 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 33), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %43 = call i8* @dlsym(i64 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 32), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %45 = call i8* @dlsym(i64 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 31), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %47 = call i8* @dlsym(i64 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 30), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %49 = call i8* @dlsym(i64 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 29), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %51 = call i8* @dlsym(i64 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 28), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %53 = call i8* @dlsym(i64 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 27), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %55 = call i8* @dlsym(i64 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 26), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %57 = call i8* @dlsym(i64 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 25), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %59 = call i8* @dlsym(i64 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 24), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %61 = call i8* @dlsym(i64 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 23), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %63 = call i8* @dlsym(i64 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 22), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %65 = call i8* @dlsym(i64 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 21), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %67 = call i8* @dlsym(i64 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 20), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 34), align 8
  %69 = call i8* @dlsym(i64 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 33), align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %114

72:                                               ; preds = %39
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 32), align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %114

75:                                               ; preds = %72
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 31), align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 30), align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 29), align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 28), align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 27), align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 26), align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 25), align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 24), align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 23), align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 22), align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 21), align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 20), align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 19), align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %39
  %115 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %116 = call i32 @_glfwInputError(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %117 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %117, i8** %1, align 8
  br label %221

118:                                              ; preds = %111
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %120 = call i32 @glXQueryExtension(i32 %119, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 18), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 17))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %124 = call i32 @_glfwInputError(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %125 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %125, i8** %1, align 8
  br label %221

126:                                              ; preds = %118
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 8
  %128 = call i32 @glXQueryVersion(i32 %127, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %132 = call i32 @_glfwInputError(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %133 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %133, i8** %1, align 8
  br label %221

134:                                              ; preds = %126
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %139 = icmp slt i32 %138, 3
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %142 = call i32 @_glfwInputError(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %143 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %143, i8** %1, align 8
  br label %221

144:                                              ; preds = %137, %134
  %145 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  store i64 %148, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 16), align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 16), align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %152, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 15), align 8
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %144
  %155 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  store i64 %158, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 14), align 8
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 14), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %162, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 13), align 8
  br label %163

163:                                              ; preds = %161, %157
  br label %164

164:                                              ; preds = %163, %154
  %165 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  store i64 %168, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 12), align 8
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 12), align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %172, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 11), align 8
  br label %173

173:                                              ; preds = %171, %167
  br label %174

174:                                              ; preds = %173, %164
  %175 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %178, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 10), align 8
  br label %179

179:                                              ; preds = %177, %174
  %180 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %183, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 8
  br label %184

184:                                              ; preds = %182, %179
  %185 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %188, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8), align 8
  br label %189

189:                                              ; preds = %187, %184
  %190 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = call i64 @getProcAddressGLX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  store i64 %193, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %194 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %197, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %198

198:                                              ; preds = %196, %192
  br label %199

199:                                              ; preds = %198, %189
  %200 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %203, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 8
  br label %204

204:                                              ; preds = %202, %199
  %205 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0))
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %208, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %209

209:                                              ; preds = %207, %204
  %210 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %213, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 8
  br label %214

214:                                              ; preds = %212, %209
  %215 = call i64 @extensionSupportedGLX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %218, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %219

219:                                              ; preds = %217, %214
  %220 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %220, i8** %1, align 8
  br label %221

221:                                              ; preds = %219, %140, %130, %122, %114, %35, %7
  %222 = load i8*, i8** %1, align 8
  ret i8* %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dlopen(i8*, i32) #2

declare dso_local i32 @_glfwInputError(i32, i8*) #2

declare dso_local i8* @dlsym(i64, i8*) #2

declare dso_local i32 @glXQueryExtension(i32, i32*, i32*) #2

declare dso_local i32 @glXQueryVersion(i32, i32*, i32*) #2

declare dso_local i64 @extensionSupportedGLX(i8*) #2

declare dso_local i64 @getProcAddressGLX(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
