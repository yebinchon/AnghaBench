; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformCreateWindowSurface.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformCreateWindowSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* (i32)*, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32* }

@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"X11: Failed to retrieve XCB connection\00", align 1
@VK_ERROR_EXTENSION_NOT_PRESENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vkCreateXcbSurfaceKHR\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"X11: Vulkan instance missing VK_KHR_xcb_surface extension\00", align 1
@VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"X11: Failed to create Vulkan XCB surface: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vkCreateXlibSurfaceKHR\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"X11: Vulkan instance missing VK_KHR_xlib_surface extension\00", align 1
@VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"X11: Failed to create Vulkan X11 surface: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_glfwPlatformCreateWindowSurface(i32 %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 1, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1, i32 1), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %25 = call i32* %23(i32 %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %30 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %31, i64* %5, align 8
  br label %102

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @vkGetInstanceProcAddr(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i64 (i32, %struct.TYPE_19__*, i32*, i32*)*
  store i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %35, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %36 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %37 = icmp ne i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %40 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %41, i64* %5, align 8
  br label %102

42:                                               ; preds = %32
  %43 = call i32 @memset(%struct.TYPE_19__* %11, i32 0, i32 24)
  %44 = load i32, i32* @VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR, align 4
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32* %46, i32** %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %12, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 %53(i32 %54, %struct.TYPE_19__* %11, i32* %55, i32* %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @_glfwGetVulkanResultString(i64 %62)
  %64 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %42
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %5, align 8
  br label %102

67:                                               ; preds = %19, %4
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @vkGetInstanceProcAddr(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %70 = inttoptr i64 %69 to i64 (i32, %struct.TYPE_19__*, i32*, i32*)*
  store i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %70, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %71 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %72 = icmp ne i64 (i32, %struct.TYPE_19__*, i32*, i32*)* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %75 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %76, i64* %5, align 8
  br label %102

77:                                               ; preds = %67
  %78 = call i32 @memset(%struct.TYPE_19__* %15, i32 0, i32 24)
  %79 = load i32, i32* @VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR, align 4
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i64 (i32, %struct.TYPE_19__*, i32*, i32*)*, i64 (i32, %struct.TYPE_19__*, i32*, i32*)** %16, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 %88(i32 %89, %struct.TYPE_19__* %15, i32* %90, i32* %91)
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @_glfwGetVulkanResultString(i64 %97)
  %99 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %77
  %101 = load i64, i64* %14, align 8
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %100, %73, %65, %38, %28
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i64 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @_glfwGetVulkanResultString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
