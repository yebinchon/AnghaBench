; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_descriptor_manager.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_descriptor_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_descriptor_manager = type { i32, i32, i32, i32 }

@VULKAN_MAX_DESCRIPTOR_POOL_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @vulkan_create_descriptor_manager(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vk_descriptor_manager, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = call i32 @memset(%struct.vk_descriptor_manager* %5, i32 0, i32 16)
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @VULKAN_MAX_DESCRIPTOR_POOL_SIZES, align 4
  %13 = icmp ule i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @retro_assert(i32 %14)
  %16 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %5, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32 %17, i32* %18, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @vulkan_alloc_descriptor_pool(i32 %28, %struct.vk_descriptor_manager* %5)
  %30 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @retro_assert(i32 %32)
  %34 = bitcast %struct.vk_descriptor_manager* %5 to { i64, i64 }*
  %35 = load { i64, i64 }, { i64, i64 }* %34, align 4
  ret { i64, i64 } %35
}

declare dso_local i32 @memset(%struct.vk_descriptor_manager*, i32, i32) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @vulkan_alloc_descriptor_pool(i32, %struct.vk_descriptor_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
