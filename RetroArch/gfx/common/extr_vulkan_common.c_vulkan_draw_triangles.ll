; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_draw_triangles.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_draw_triangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_15__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i32, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.vk_draw_triangles = type { i64, i32, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.vk_buffer_range = type { i32, i32, i32 }

@VK_PIPELINE_BIND_POINT_GRAPHICS = common dso_local global i32 0, align 4
@VULKAN_DIRTY_DYNAMIC_BIT = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_draw_triangles(%struct.TYPE_14__* %0, %struct.vk_draw_triangles* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.vk_draw_triangles*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vk_buffer_range, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.vk_draw_triangles* %1, %struct.vk_draw_triangles** %4, align 8
  %7 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %8 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %17 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vulkan_transition_texture(%struct.TYPE_14__* %12, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %22 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VK_PIPELINE_BIND_POINT_GRAPHICS, align 4
  %34 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %35 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vkCmdBindPipeline(i32 %32, i32 %33, i64 %36)
  %38 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %39 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* @VULKAN_DIRTY_DYNAMIC_BIT, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %29, %20
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = call i32 @vulkan_check_dynamic_state(%struct.TYPE_14__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %61 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vulkan_buffer_chain_alloc(%struct.TYPE_15__* %55, i32* %59, i32 %62, %struct.vk_buffer_range* %6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %146

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %6, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %70 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %73 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32 %68, i32 %71, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = call i32 @vulkan_descriptor_manager_alloc(i32 %80, i32* %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %97 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %100 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %103 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @vulkan_write_quad_descriptors(i32 %90, i32 %91, i32 %93, i32 %95, i32 %98, i32 %101, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @VK_PIPELINE_BIND_POINT_GRAPHICS, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @vkCmdBindDescriptorSets(i32 %108, i32 %109, i32 %113, i32 0, i32 1, i32* %5, i32 0, i32* null)
  %115 = load i8*, i8** @VK_NULL_HANDLE, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  store i8* %115, i8** %118, align 8
  %119 = load i8*, i8** @VK_NULL_HANDLE, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = call i32 @memset(i32* %125, i32 0, i32 4)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %131 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %130, i32 0, i32 2
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %135 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %134, i32 0, i32 2
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = call i32 @vkCmdBindVertexBuffers(i32 %129, i32 0, i32 1, i32* %133, i32* %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vk_draw_triangles*, %struct.vk_draw_triangles** %4, align 8
  %143 = getelementptr inbounds %struct.vk_draw_triangles, %struct.vk_draw_triangles* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @vkCmdDraw(i32 %141, i32 %144, i32 1, i32 0, i32 0)
  br label %146

146:                                              ; preds = %66, %65
  ret void
}

declare dso_local i32 @vulkan_transition_texture(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @vkCmdBindPipeline(i32, i32, i64) #1

declare dso_local i32 @vulkan_check_dynamic_state(%struct.TYPE_14__*) #1

declare dso_local i32 @vulkan_buffer_chain_alloc(%struct.TYPE_15__*, i32*, i32, %struct.vk_buffer_range*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vulkan_descriptor_manager_alloc(i32, i32*) #1

declare dso_local i32 @vulkan_write_quad_descriptors(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vkCmdBindDescriptorSets(i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vkCmdBindVertexBuffers(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @vkCmdDraw(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
