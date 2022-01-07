; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_copy_staging_to_dynamic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_copy_staging_to_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@VULKAN_TEXTURE_DYNAMIC = common dso_local global i64 0, align 8
@VULKAN_TEXTURE_STAGING = common dso_local global i64 0, align 8
@VK_IMAGE_LAYOUT_UNDEFINED = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = common dso_local global i32 0, align 4
@VK_ACCESS_TRANSFER_WRITE_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_TRANSFER_BIT = common dso_local global i32 0, align 4
@VK_IMAGE_ASPECT_COLOR_BIT = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL = common dso_local global i32 0, align 4
@VK_ACCESS_SHADER_READ_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_copy_staging_to_dynamic(i32* %0, i32 %1, %struct.vk_texture* %2, %struct.vk_texture* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vk_texture*, align 8
  %8 = alloca %struct.vk_texture*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vk_texture* %2, %struct.vk_texture** %7, align 8
  store %struct.vk_texture* %3, %struct.vk_texture** %8, align 8
  %10 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %11 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VULKAN_TEXTURE_DYNAMIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @retro_assert(i32 %15)
  %17 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %18 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VULKAN_TEXTURE_STAGING, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @retro_assert(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %26 = call i32 @vulkan_sync_texture_to_gpu(i32* %24, %struct.vk_texture* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %30 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VK_IMAGE_LAYOUT_UNDEFINED, align 4
  %33 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %34 = load i32, i32* @VK_ACCESS_TRANSFER_WRITE_BIT, align 4
  %35 = load i32, i32* @VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, align 4
  %36 = load i32, i32* @VK_PIPELINE_STAGE_TRANSFER_BIT, align 4
  %37 = call i32 @vulkan_image_layout_transition(i32* %27, i32 %28, i32 %31, i32 %32, i32 %33, i32 0, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 20)
  %39 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %40 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %45 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @VK_IMAGE_ASPECT_COLOR_BIT, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %58 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %61 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %64 = call i32 @vkCmdCopyBufferToImage(i32 %56, i32 %59, i32 %62, i32 %63, i32 1, %struct.TYPE_8__* %9)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %68 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %71 = load i32, i32* @VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL, align 4
  %72 = load i32, i32* @VK_ACCESS_TRANSFER_WRITE_BIT, align 4
  %73 = load i32, i32* @VK_ACCESS_SHADER_READ_BIT, align 4
  %74 = load i32, i32* @VK_PIPELINE_STAGE_TRANSFER_BIT, align 4
  %75 = load i32, i32* @VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT, align 4
  %76 = call i32 @vulkan_image_layout_transition(i32* %65, i32 %66, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL, align 4
  %78 = load %struct.vk_texture*, %struct.vk_texture** %7, align 8
  %79 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @vulkan_sync_texture_to_gpu(i32*, %struct.vk_texture*) #1

declare dso_local i32 @vulkan_image_layout_transition(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vkCmdCopyBufferToImage(i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
