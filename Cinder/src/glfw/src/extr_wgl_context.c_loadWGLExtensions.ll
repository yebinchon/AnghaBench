; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c_loadWGLExtensions.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c_loadWGLExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i32 0, align 4
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WGL: Failed to set pixel format for dummy context\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WGL: Failed to create dummy context\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WGL: Failed to make dummy context current\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringEXT\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringARB\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"wglCreateContextAttribsARB\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"wglSwapIntervalEXT\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"wglGetPixelFormatAttribivARB\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"WGL_ARB_multisample\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"WGL_ARB_framebuffer_sRGB\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"WGL_EXT_framebuffer_sRGB\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"WGL_ARB_create_context\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"WGL_ARB_create_context_profile\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"WGL_EXT_create_context_es2_profile\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"WGL_ARB_create_context_robustness\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"WGL_EXT_swap_control\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"WGL_ARB_pixel_format\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"WGL_ARB_context_flush_control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loadWGLExtensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadWGLExtensions() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 0), align 8
  %5 = call i32 @GetDC(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 15), align 8
  %7 = call i32 @ZeroMemory(%struct.TYPE_10__* %1, i32 20)
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 20, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %11 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i32 24, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ChoosePixelFormat(i32 %20, %struct.TYPE_10__* %1)
  %22 = call i32 @SetPixelFormat(i32 %19, i32 %21, %struct.TYPE_10__* %1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %26 = call i32 @_glfwInputError(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %65

27:                                               ; preds = %0
  %28 = load i32, i32* %3, align 4
  %29 = call i32* @wglCreateContext(i32 %28)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %34 = call i32 @_glfwInputError(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %65

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @wglMakeCurrent(i32 %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @wglDeleteContext(i32* %41)
  %43 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %44 = call i32 @_glfwInputError(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %65

45:                                               ; preds = %35
  %46 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 14), align 8
  %47 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 13), align 8
  %48 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 12), align 8
  %49 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 11), align 8
  %50 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 10), align 8
  %51 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 9), align 8
  %52 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 8), align 8
  %53 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 7), align 8
  %54 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 6), align 8
  %55 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 5), align 8
  %56 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 4), align 8
  %57 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 3), align 8
  %58 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %59 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %60 = call i8* @extensionSupportedWGL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @wglMakeCurrent(i32 %61, i32* null)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @wglDeleteContext(i32* %63)
  br label %65

65:                                               ; preds = %45, %40, %32, %24
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SetPixelFormat(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ChoosePixelFormat(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32* @wglCreateContext(i32) #1

declare dso_local i32 @wglMakeCurrent(i32, i32*) #1

declare dso_local i32 @wglDeleteContext(i32*) #1

declare dso_local i64 @wglGetProcAddress(i8*) #1

declare dso_local i8* @extensionSupportedWGL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
