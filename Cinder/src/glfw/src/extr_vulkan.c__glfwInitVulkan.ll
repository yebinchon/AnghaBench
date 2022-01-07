; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_vulkan.c__glfwInitVulkan.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_vulkan.c__glfwInitVulkan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"libvulkan.so.1\00", align 1
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_TRUE = common dso_local global i8* null, align 8
@GLFW_FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vkGetInstanceProcAddr\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Vulkan: Loader does not export vkGetInstanceProcAddr\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"vkEnumerateInstanceExtensionProperties\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Vulkan: Failed to retrieve vkEnumerateInstanceExtensionProperties\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Vulkan: Failed to query instance extension count: %s\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Vulkan: Failed to query instance extensions: %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"VK_KHR_surface\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"VK_KHR_win32_surface\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"VK_KHR_xlib_surface\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"VK_KHR_xcb_surface\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"VK_KHR_wayland_surface\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"VK_KHR_mir_surface\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwInitVulkan() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 3), align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %10, i8** %1, align 8
  br label %143

11:                                               ; preds = %0
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @_glfw_dlopen(i8* %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 11), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 11), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %17, i8** %1, align 8
  br label %143

18:                                               ; preds = %11
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 11), align 8
  %20 = call i64 @_glfw_dlsym(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 10), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 10), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %25 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @_glfwTerminateVulkan()
  %27 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %27, i8** %1, align 8
  br label %143

28:                                               ; preds = %18
  %29 = call i64 @vkGetInstanceProcAddr(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 9), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 9), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %34 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 (...) @_glfwTerminateVulkan()
  %36 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %36, i8** %1, align 8
  br label %143

37:                                               ; preds = %28
  %38 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i64* %5, %struct.TYPE_8__* null)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @_glfwGetVulkanResultString(i64 %43)
  %45 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @_glfwTerminateVulkan()
  %47 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %47, i8** %1, align 8
  br label %143

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = call %struct.TYPE_8__* @calloc(i64 %49, i32 4)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %3, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i64 @vkEnumerateInstanceExtensionProperties(i32* null, i64* %5, %struct.TYPE_8__* %51)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @_glfwGetVulkanResultString(i64 %57)
  %59 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @free(%struct.TYPE_8__* %60)
  %62 = call i32 (...) @_glfwTerminateVulkan()
  %63 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %63, i8** %1, align 8
  br label %143

64:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %65

65:                                               ; preds = %130, %64
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %79

79:                                               ; preds = %77, %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @strcmp(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %88, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 8), align 8
  br label %89

89:                                               ; preds = %87, %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @strcmp(i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 7), align 8
  br label %99

99:                                               ; preds = %97, %89
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @strcmp(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %108, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 6), align 8
  br label %109

109:                                              ; preds = %107, %99
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @strcmp(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %118, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 5), align 8
  br label %119

119:                                              ; preds = %117, %109
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @strcmp(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %128, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 4), align 8
  br label %129

129:                                              ; preds = %127, %119
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %65

133:                                              ; preds = %65
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = call i32 @free(%struct.TYPE_8__* %134)
  %136 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %136, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 3), align 8
  %137 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 2), align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 @_glfwPlatformGetRequiredInstanceExtensions(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0))
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 1), align 4
  br label %141

141:                                              ; preds = %139, %133
  %142 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %142, i8** %1, align 8
  br label %143

143:                                              ; preds = %141, %55, %41, %32, %23, %16, %9
  %144 = load i8*, i8** %1, align 8
  ret i8* %144
}

declare dso_local i32 @_glfw_dlopen(i8*) #1

declare dso_local i64 @_glfw_dlsym(i32, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @_glfwTerminateVulkan(...) #1

declare dso_local i64 @vkGetInstanceProcAddr(i32*, i8*) #1

declare dso_local i64 @vkEnumerateInstanceExtensionProperties(i32*, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @_glfwGetVulkanResultString(i64) #1

declare dso_local %struct.TYPE_8__* @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @_glfwPlatformGetRequiredInstanceExtensions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
