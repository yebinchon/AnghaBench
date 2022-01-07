; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_buffer = type { i64, i32, i32, i32 }
%struct.vulkan_context = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO = common dso_local global i32 0, align 4
@VK_SHARING_MODE_EXCLUSIVE = common dso_local global i32 0, align 4
@VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = common dso_local global i32 0, align 4
@VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_create_buffer(%struct.vk_buffer* noalias sret %0, %struct.vulkan_context* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vulkan_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  store %struct.vulkan_context* %1, %struct.vulkan_context** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 %3, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %12 = load i32, i32* @VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %16 = load i32, i32* @VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @VK_SHARING_MODE_EXCLUSIVE, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %28 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 3
  %31 = call i32 @vkCreateBuffer(i32 %29, %struct.TYPE_9__* %10, i32* null, i32* %30)
  %32 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %33 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vkGetBufferMemoryRequirements(i32 %34, i32 %36, %struct.TYPE_7__* %8)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %42 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, align 4
  %46 = load i32, i32* @VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @vulkan_find_memory_type(i32* %42, i32 %44, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %51 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 2
  %54 = call i32 @vkAllocateMemory(i32 %52, %struct.TYPE_8__* %9, i32* null, i32* %53)
  %55 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %56 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vkBindBufferMemory(i32 %57, i32 %59, i32 %61, i32 0)
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %66 = getelementptr inbounds %struct.vulkan_context, %struct.vulkan_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.vk_buffer, %struct.vk_buffer* %0, i32 0, i32 1
  %73 = call i32 @vkMapMemory(i32 %67, i32 %69, i32 0, i64 %71, i32 0, i32* %72)
  ret void
}

declare dso_local i32 @vkCreateBuffer(i32, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @vkGetBufferMemoryRequirements(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @vulkan_find_memory_type(i32*, i32, i32) #1

declare dso_local i32 @vkAllocateMemory(i32, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @vkBindBufferMemory(i32, i32, i32, i32) #1

declare dso_local i32 @vkMapMemory(i32, i32, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
