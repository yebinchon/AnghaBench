; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_readback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_25__, %struct.TYPE_24__*, %struct.TYPE_23__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.vk_texture* }
%struct.vk_texture = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.video_viewport = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@VK_STRUCTURE_TYPE_MEMORY_BARRIER = common dso_local global i32 0, align 4
@VK_IMAGE_ASPECT_COLOR_BIT = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@VK_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@VULKAN_TEXTURE_READBACK = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL = common dso_local global i32 0, align 4
@VK_ACCESS_TRANSFER_WRITE_BIT = common dso_local global i32 0, align 4
@VK_ACCESS_HOST_READ_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_TRANSFER_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_HOST_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*)* @vulkan_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_readback(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_19__, align 4
  %4 = alloca %struct.vk_texture*, align 8
  %5 = alloca %struct.video_viewport, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.vk_texture, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %9 = load i32, i32* @VK_STRUCTURE_TYPE_MEMORY_BARRIER, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %13 = call i32 @vulkan_viewport_info(%struct.TYPE_28__* %12, %struct.video_viewport* %5)
  %14 = call i32 @memset(%struct.TYPE_19__* %3, i32 0, i32 28)
  %15 = load i32, i32* @VK_IMAGE_ASPECT_COLOR_BIT, align 4
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load %struct.vk_texture*, %struct.vk_texture** %40, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %41, i64 %46
  store %struct.vk_texture* %47, %struct.vk_texture** %4, align 8
  %48 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %50 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %51 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VK_NULL_HANDLE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  br label %58

57:                                               ; preds = %1
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi %struct.vk_texture* [ %56, %55 ], [ null, %57 ]
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  %69 = load i32, i32* @VULKAN_TEXTURE_READBACK, align 4
  %70 = call { i64, i32 } @vulkan_create_texture(%struct.TYPE_28__* %49, %struct.vk_texture* %59, i32 %63, i32 %67, i32 %68, i32* null, i32* null, i32 %69)
  %71 = bitcast %struct.vk_texture* %7 to { i64, i32 }*
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i32 } %70, 0
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i32 } %70, 1
  store i32 %75, i32* %74, align 8
  %76 = bitcast %struct.vk_texture* %48 to i8*
  %77 = bitcast %struct.vk_texture* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL, align 4
  %88 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %89 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @vkCmdCopyImageToBuffer(i32 %80, i32 %86, i32 %87, i32 %90, i32 1, %struct.TYPE_19__* %3)
  %92 = load i32, i32* @VK_ACCESS_TRANSFER_WRITE_BIT, align 4
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @VK_ACCESS_HOST_READ_BIT, align 4
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @VK_PIPELINE_STAGE_TRANSFER_BIT, align 4
  %100 = load i32, i32* @VK_PIPELINE_STAGE_HOST_BIT, align 4
  %101 = call i32 @vkCmdPipelineBarrier(i32 %98, i32 %99, i32 %100, i32 0, i32 1, %struct.TYPE_18__* %6, i32 0, i32* null, i32 0, i32* null)
  ret void
}

declare dso_local i32 @vulkan_viewport_info(%struct.TYPE_28__*, %struct.video_viewport*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local { i64, i32 } @vulkan_create_texture(%struct.TYPE_28__*, %struct.vk_texture*, i32, i32, i32, i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vkCmdCopyImageToBuffer(i32, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @vkCmdPipelineBarrier(i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
