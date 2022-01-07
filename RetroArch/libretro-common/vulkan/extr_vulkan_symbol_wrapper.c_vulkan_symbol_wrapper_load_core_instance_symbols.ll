; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/vulkan/extr_vulkan_symbol_wrapper.c_vulkan_symbol_wrapper_load_core_instance_symbols.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/vulkan/extr_vulkan_symbol_wrapper.c_vulkan_symbol_wrapper_load_core_instance_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"vkDestroyInstance\00", align 1
@vkDestroyInstance = common dso_local global i32 0, align 4
@VK_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"vkEnumeratePhysicalDevices\00", align 1
@vkEnumeratePhysicalDevices = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"vkGetPhysicalDeviceFeatures\00", align 1
@vkGetPhysicalDeviceFeatures = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"vkGetPhysicalDeviceFormatProperties\00", align 1
@vkGetPhysicalDeviceFormatProperties = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"vkGetPhysicalDeviceImageFormatProperties\00", align 1
@vkGetPhysicalDeviceImageFormatProperties = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"vkGetPhysicalDeviceProperties\00", align 1
@vkGetPhysicalDeviceProperties = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"vkGetPhysicalDeviceQueueFamilyProperties\00", align 1
@vkGetPhysicalDeviceQueueFamilyProperties = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"vkGetPhysicalDeviceMemoryProperties\00", align 1
@vkGetPhysicalDeviceMemoryProperties = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"vkGetDeviceProcAddr\00", align 1
@vkGetDeviceProcAddr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"vkCreateDevice\00", align 1
@vkCreateDevice = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"vkEnumerateDeviceExtensionProperties\00", align 1
@vkEnumerateDeviceExtensionProperties = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"vkEnumerateDeviceLayerProperties\00", align 1
@vkEnumerateDeviceLayerProperties = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"vkGetPhysicalDeviceSparseImageFormatProperties\00", align 1
@vkGetPhysicalDeviceSparseImageFormatProperties = common dso_local global i32 0, align 4
@VK_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vulkan_symbol_wrapper_load_core_instance_symbols(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @vkDestroyInstance, align 4
  %6 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @VK_FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %96

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @vkEnumeratePhysicalDevices, align 4
  %13 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @VK_FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @vkGetPhysicalDeviceFeatures, align 4
  %20 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @VK_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @vkGetPhysicalDeviceFormatProperties, align 4
  %27 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @VK_FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %96

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @vkGetPhysicalDeviceImageFormatProperties, align 4
  %34 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @VK_FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %96

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @vkGetPhysicalDeviceProperties, align 4
  %41 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @VK_FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %96

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @vkGetPhysicalDeviceQueueFamilyProperties, align 4
  %48 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @VK_FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %96

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @vkGetPhysicalDeviceMemoryProperties, align 4
  %55 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @VK_FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @vkGetDeviceProcAddr, align 4
  %62 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @VK_FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %96

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @vkCreateDevice, align 4
  %69 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @VK_FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %96

73:                                               ; preds = %66
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @vkEnumerateDeviceExtensionProperties, align 4
  %76 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @VK_FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %96

80:                                               ; preds = %73
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @vkEnumerateDeviceLayerProperties, align 4
  %83 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @VK_FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @vkGetPhysicalDeviceSparseImageFormatProperties, align 4
  %90 = call i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @VK_FALSE, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @VK_TRUE, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
