; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformCreateWindowSurface.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformCreateWindowSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"vkCreateMirSurfaceKHR\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Mir: Vulkan instance missing VK_KHR_mir_surface extension\00", align 1
@VK_ERROR_EXTENSION_NOT_PRESENT = common dso_local global i64 0, align 8
@VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Mir: Failed to create Vulkan surface: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_glfwPlatformCreateWindowSurface(i32 %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca i64 (i32, %struct.TYPE_12__*, i32*, i32*)*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @vkGetInstanceProcAddr(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i64 (i32, %struct.TYPE_12__*, i32*, i32*)*
  store i64 (i32, %struct.TYPE_12__*, i32*, i32*)* %15, i64 (i32, %struct.TYPE_12__*, i32*, i32*)** %12, align 8
  %16 = load i64 (i32, %struct.TYPE_12__*, i32*, i32*)*, i64 (i32, %struct.TYPE_12__*, i32*, i32*)** %12, align 8
  %17 = icmp ne i64 (i32, %struct.TYPE_12__*, i32*, i32*)* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %20 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %19, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @VK_ERROR_EXTENSION_NOT_PRESENT, align 8
  store i64 %21, i64* %5, align 8
  br label %47

22:                                               ; preds = %4
  %23 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 12)
  %24 = load i32, i32* @VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i64 (i32, %struct.TYPE_12__*, i32*, i32*)*, i64 (i32, %struct.TYPE_12__*, i32*, i32*)** %12, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 %33(i32 %34, %struct.TYPE_12__* %11, i32* %35, i32* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @_glfwGetVulkanResultString(i64 %42)
  %44 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %22
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %18
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @vkGetInstanceProcAddr(i32, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @_glfwGetVulkanResultString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
