; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_alloc_descriptor_pool.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_alloc_descriptor_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_descriptor_pool = type { i32*, i32 }
%struct.vk_descriptor_manager = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i32 }

@VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO = common dso_local global i32 0, align 4
@VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS = common dso_local global i32 0, align 4
@VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vk_descriptor_pool* (i32, %struct.vk_descriptor_manager*)* @vulkan_alloc_descriptor_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vk_descriptor_pool* @vulkan_alloc_descriptor_pool(i32 %0, %struct.vk_descriptor_manager* %1) #0 {
  %3 = alloca %struct.vk_descriptor_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vk_descriptor_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.vk_descriptor_pool*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vk_descriptor_manager* %1, %struct.vk_descriptor_manager** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %12 = load i32, i32* @VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %15 = load i32, i32* @VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO, align 4
  store i32 %15, i32* %14, align 8
  %16 = call i64 @calloc(i32 1, i32 16)
  %17 = inttoptr i64 %16 to %struct.vk_descriptor_pool*
  store %struct.vk_descriptor_pool* %17, %struct.vk_descriptor_pool** %9, align 8
  %18 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %9, align 8
  %19 = icmp ne %struct.vk_descriptor_pool* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.vk_descriptor_pool* null, %struct.vk_descriptor_pool** %3, align 8
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* @VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.vk_descriptor_manager*, %struct.vk_descriptor_manager** %5, align 8
  %25 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.vk_descriptor_manager*, %struct.vk_descriptor_manager** %5, align 8
  %29 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %9, align 8
  %36 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %35, i32 0, i32 1
  %37 = call i32 @vkCreateDescriptorPool(i32 %34, %struct.TYPE_6__* %7, i32* null, i32* %36)
  %38 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %9, align 8
  %39 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.vk_descriptor_manager*, %struct.vk_descriptor_manager** %5, align 8
  %44 = getelementptr inbounds %struct.vk_descriptor_manager, %struct.vk_descriptor_manager* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32* %44, i32** %45, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %59, %21
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %9, align 8
  %53 = getelementptr inbounds %struct.vk_descriptor_pool, %struct.vk_descriptor_pool* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @vkAllocateDescriptorSets(i32 %51, %struct.TYPE_5__* %8, i32* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %9, align 8
  store %struct.vk_descriptor_pool* %63, %struct.vk_descriptor_pool** %3, align 8
  br label %64

64:                                               ; preds = %62, %20
  %65 = load %struct.vk_descriptor_pool*, %struct.vk_descriptor_pool** %3, align 8
  ret %struct.vk_descriptor_pool* %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @vkCreateDescriptorPool(i32, %struct.TYPE_6__*, i32*, i32*) #2

declare dso_local i32 @vkAllocateDescriptorSets(i32, %struct.TYPE_5__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
