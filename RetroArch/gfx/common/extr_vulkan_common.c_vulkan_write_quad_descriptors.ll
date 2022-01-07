; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_write_quad_descriptors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_write_quad_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, i8*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET = common dso_local global i32 0, align 4
@VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER = common dso_local global i32 0, align 4
@VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i8*, %struct.vk_texture*, i32)* @vulkan_write_quad_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_write_quad_descriptors(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4, %struct.vk_texture* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vk_texture*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.vk_texture* %5, %struct.vk_texture** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %20 = load i32, i32* @VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET, align 4
  store i32 %20, i32* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vkUpdateDescriptorSets(i32 %34, i32 1, %struct.TYPE_5__* %16, i32 0, i32* null)
  %36 = load %struct.vk_texture*, %struct.vk_texture** %13, align 8
  %37 = icmp ne %struct.vk_texture* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %7
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.vk_texture*, %struct.vk_texture** %13, align 8
  %42 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.vk_texture*, %struct.vk_texture** %13, align 8
  %46 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @vkUpdateDescriptorSets(i32 %56, i32 1, %struct.TYPE_5__* %16, i32 0, i32* null)
  br label %58

58:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vkUpdateDescriptorSets(i32, i32, %struct.TYPE_5__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
