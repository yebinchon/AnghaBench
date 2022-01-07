; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_inject_black_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_inject_black_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { float, float, float, float }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32, %struct.vk_per_frame*, %struct.vk_per_frame* }
%struct.TYPE_20__ = type { i32, i64*, i32*, i32, i32*, i32 }
%struct.vk_per_frame = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 (i32, %struct.TYPE_22__*)* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64*, i32*, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_SUBMIT_INFO = common dso_local global i32 0, align 4
@__const.vulkan_inject_black_frame.clear_color = private unnamed_addr constant %struct.TYPE_26__ { %struct.TYPE_18__ { float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 } }, align 4
@VK_IMAGE_ASPECT_COLOR_BIT = common dso_local global i32 0, align 4
@VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_UNDEFINED = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL = common dso_local global i32 0, align 4
@VK_ACCESS_TRANSFER_WRITE_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_TRANSFER_BIT = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_PRESENT_SRC_KHR = common dso_local global i32 0, align 4
@VK_ACCESS_MEMORY_READ_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @vulkan_inject_black_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_inject_black_frame(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_25__, align 4
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca %struct.TYPE_26__, align 4
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vk_per_frame*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %12 = load i32, i32* @VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %16 = load i32, i32* @VK_STRUCTURE_TYPE_SUBMIT_INFO, align 4
  store i32 %16, i32* %15, align 8
  %17 = bitcast %struct.TYPE_26__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_26__* @__const.vulkan_inject_black_frame.clear_color to i8*), i64 16, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %19 = load i32, i32* @VK_IMAGE_ASPECT_COLOR_BIT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = load %struct.vk_per_frame*, %struct.vk_per_frame** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vk_per_frame, %struct.vk_per_frame* %31, i64 %33
  store %struct.vk_per_frame* %34, %struct.vk_per_frame** %10, align 8
  %35 = load %struct.vk_per_frame*, %struct.vk_per_frame** %10, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 2
  store %struct.vk_per_frame* %35, %struct.vk_per_frame** %37, align 8
  %38 = load %struct.vk_per_frame*, %struct.vk_per_frame** %10, align 8
  %39 = getelementptr inbounds %struct.vk_per_frame, %struct.vk_per_frame* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT, align 4
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vkResetCommandBuffer(i32 %47, i32 0)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @vkBeginCommandBuffer(i32 %51, %struct.TYPE_25__* %5)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vk_per_frame*, %struct.vk_per_frame** %10, align 8
  %58 = getelementptr inbounds %struct.vk_per_frame, %struct.vk_per_frame* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VK_IMAGE_LAYOUT_UNDEFINED, align 4
  %62 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %63 = load i32, i32* @VK_ACCESS_TRANSFER_WRITE_BIT, align 4
  %64 = load i32, i32* @VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT, align 4
  %65 = load i32, i32* @VK_PIPELINE_STAGE_TRANSFER_BIT, align 4
  %66 = call i32 @vulkan_image_layout_transition(%struct.TYPE_21__* %53, i32 %56, i32 %60, i32 %61, i32 %62, i32 0, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vk_per_frame*, %struct.vk_per_frame** %10, align 8
  %71 = getelementptr inbounds %struct.vk_per_frame, %struct.vk_per_frame* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %75 = call i32 @vkCmdClearColorImage(i32 %69, i32 %73, i32 %74, %struct.TYPE_26__* %7, i32 1, %struct.TYPE_24__* %8)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vk_per_frame*, %struct.vk_per_frame** %10, align 8
  %81 = getelementptr inbounds %struct.vk_per_frame, %struct.vk_per_frame* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, align 4
  %85 = load i32, i32* @VK_IMAGE_LAYOUT_PRESENT_SRC_KHR, align 4
  %86 = load i32, i32* @VK_ACCESS_TRANSFER_WRITE_BIT, align 4
  %87 = load i32, i32* @VK_ACCESS_MEMORY_READ_BIT, align 4
  %88 = load i32, i32* @VK_PIPELINE_STAGE_TRANSFER_BIT, align 4
  %89 = load i32, i32* @VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT, align 4
  %90 = call i32 @vulkan_image_layout_transition(%struct.TYPE_21__* %76, i32 %79, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @vkEndCommandBuffer(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 3
  store i32* %97, i32** %98, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VK_NULL_HANDLE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %2
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 2
  store i64* %119, i64** %120, align 8
  br label %121

121:                                              ; preds = %110, %2
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @vkQueueSubmit(i32 %126, i32 1, %struct.TYPE_23__* %6, i32 %135)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 1, i32* %144, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32 (i32, %struct.TYPE_22__*)*, i32 (i32, %struct.TYPE_22__*)** %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = call i32 %147(i32 %150, %struct.TYPE_22__* %151)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vkResetCommandBuffer(i32, i32) #2

declare dso_local i32 @vkBeginCommandBuffer(i32, %struct.TYPE_25__*) #2

declare dso_local i32 @vulkan_image_layout_transition(%struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @vkCmdClearColorImage(i32, i32, i32, %struct.TYPE_26__*, i32, %struct.TYPE_24__*) #2

declare dso_local i32 @vkEndCommandBuffer(i32) #2

declare dso_local i32 @vkQueueSubmit(i32, i32, %struct.TYPE_23__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
