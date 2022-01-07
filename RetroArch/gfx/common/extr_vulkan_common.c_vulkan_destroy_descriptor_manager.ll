; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_destroy_descriptor_manager.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_destroy_descriptor_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_descriptor_manager = type { %struct.vk_descriptor_pool* }
%struct.vk_descriptor_pool = type { i32, i32, %struct.vk_descriptor_pool* }

@VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_destroy_descriptor_manager(i32 %0, %struct.vk_descriptor_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vk_descriptor_manager*, align 8
  %5 = alloca %struct.vk_descriptor_pool*, align 8
  %6 = alloca %struct.vk_descriptor_pool*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vk_descriptor_manager* %1, %struct.vk_descriptor_manager** %4, align 8
  %7 = load %struct.vk_descriptor_manager*, %struct.vk_descriptor_manager** %4, align 8
  %8 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %7, i32 0, i32 0
  %9 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %8, align 8
  store %struct.vk_descriptor_pool* %9, %struct.vk_descriptor_pool** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %12 = icmp ne %struct.vk_descriptor_pool* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %15 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %14, i32 0, i32 2
  %16 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %15, align 8
  store %struct.vk_descriptor_pool* %16, %struct.vk_descriptor_pool** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %19 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS, align 4
  %22 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %23 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vkFreeDescriptorSets(i32 %17, i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %28 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vkDestroyDescriptorPool(i32 %26, i32 %29, i32* null)
  %31 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %5, align 8
  %32 = call i32 @free(%struct.vk_descriptor_pool* %31)
  %33 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %6, align 8
  store %struct.vk_descriptor_pool* %33, %struct.vk_descriptor_pool** %5, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.vk_descriptor_manager*, %struct.vk_descriptor_manager** %4, align 8
  %36 = call i32 @memset(%struct.vk_descriptor_manager* %35, i32 0, i32 8)
  ret void
}

declare dso_local i32 @vkFreeDescriptorSets(i32, i32, i32, i32) #1

declare dso_local i32 @vkDestroyDescriptorPool(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.vk_descriptor_pool*) #1

declare dso_local i32 @memset(%struct.vk_descriptor_manager*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
