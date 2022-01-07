; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_flush.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_21__*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.vk_draw_triangles = type { i32, i32, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@VK_STRUCTURE_TYPE_SUBMIT_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = common dso_local global i32 0, align 4
@VK_COMMAND_BUFFER_LEVEL_PRIMARY = common dso_local global i32 0, align 4
@VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @vulkan_raster_font_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_raster_font_flush(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.vk_draw_triangles, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 6
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 5
  store i32* %16, i32** %17, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 3
  store i32* %28, i32** %29, align 8
  %30 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %3, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %120

42:                                               ; preds = %1
  %43 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 24, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %45 = load i32, i32* @VK_STRUCTURE_TYPE_SUBMIT_INFO, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %47 = load i32, i32* @VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %52 = load i32, i32* @VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @VK_COMMAND_BUFFER_LEVEL_PRIMARY, align 4
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vkAllocateCommandBuffers(i32 %69, %struct.TYPE_20__* %6, i32* %4)
  %71 = load i32, i32* @VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT, align 4
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @vkBeginCommandBuffer(i32 %73, %struct.TYPE_19__* %7)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = call i32 @vulkan_copy_staging_to_dynamic(%struct.TYPE_21__* %77, i32 %78, i32* %80, i32* %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @vkEndCommandBuffer(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store i32* %4, i32** %87, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VK_NULL_HANDLE, align 4
  %96 = call i32 @vkQueueSubmit(i32 %94, i32 1, %struct.TYPE_18__* %5, i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vkQueueWaitIdle(i32 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @vkFreeCommandBuffers(i32 %111, i32 %116, i32 1, i32* %4)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %42, %1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = call i32 @vulkan_draw_triangles(%struct.TYPE_21__* %123, %struct.vk_draw_triangles* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vkAllocateCommandBuffers(i32, %struct.TYPE_20__*, i32*) #2

declare dso_local i32 @vkBeginCommandBuffer(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @vulkan_copy_staging_to_dynamic(%struct.TYPE_21__*, i32, i32*, i32*) #2

declare dso_local i32 @vkEndCommandBuffer(i32) #2

declare dso_local i32 @vkQueueSubmit(i32, i32, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @vkQueueWaitIdle(i32) #2

declare dso_local i32 @vkFreeCommandBuffers(i32, i32, i32, i32*) #2

declare dso_local i32 @vulkan_draw_triangles(%struct.TYPE_21__*, %struct.vk_draw_triangles*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
