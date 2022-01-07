; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_sync_texture_to_cpu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_sync_texture_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vk_texture = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32 }

@VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@VK_WHOLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_sync_texture_to_cpu(%struct.TYPE_7__* %0, %struct.vk_texture* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.vk_texture*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.vk_texture* %1, %struct.vk_texture** %4, align 8
  %6 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %8 = load i32, i32* @VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %11 = icmp ne %struct.vk_texture* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %14 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %19 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VK_NULL_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %12, %2
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %26 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @VK_WHOLE_SIZE, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vkInvalidateMappedMemoryRanges(i32 %36, i32 1, %struct.TYPE_8__* %5)
  br label %38

38:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vkInvalidateMappedMemoryRanges(i32, i32, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
