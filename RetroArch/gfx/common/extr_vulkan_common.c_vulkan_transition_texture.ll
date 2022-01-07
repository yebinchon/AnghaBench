; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_transition_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_transition_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i64, i32, i32 }

@VK_IMAGE_LAYOUT_PREINITIALIZED = common dso_local global i64 0, align 8
@VK_IMAGE_LAYOUT_GENERAL = common dso_local global i64 0, align 8
@VK_ACCESS_HOST_WRITE_BIT = common dso_local global i32 0, align 4
@VK_ACCESS_SHADER_READ_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_HOST_BIT = common dso_local global i32 0, align 4
@VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_transition_texture(i32* %0, i32 %1, %struct.vk_texture* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vk_texture*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vk_texture* %2, %struct.vk_texture** %6, align 8
  %7 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %8 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %50

12:                                               ; preds = %3
  %13 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %14 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VK_IMAGE_LAYOUT_PREINITIALIZED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %20 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VK_IMAGE_LAYOUT_GENERAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %50

25:                                               ; preds = %18, %12
  %26 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %27 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %44 [
    i32 128, label %29
  ]

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %33 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %36 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VK_IMAGE_LAYOUT_GENERAL, align 8
  %39 = load i32, i32* @VK_ACCESS_HOST_WRITE_BIT, align 4
  %40 = load i32, i32* @VK_ACCESS_SHADER_READ_BIT, align 4
  %41 = load i32, i32* @VK_PIPELINE_STAGE_HOST_BIT, align 4
  %42 = load i32, i32* @VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT, align 4
  %43 = call i32 @vulkan_image_layout_transition(i32* %30, i32 %31, i32 %34, i64 %37, i64 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %46

44:                                               ; preds = %25
  %45 = call i32 @retro_assert(i32 0)
  br label %46

46:                                               ; preds = %44, %29
  %47 = load i64, i64* @VK_IMAGE_LAYOUT_GENERAL, align 8
  %48 = load %struct.vk_texture*, %struct.vk_texture** %6, align 8
  %49 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %24, %11
  ret void
}

declare dso_local i32 @vulkan_image_layout_transition(i32*, i32, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @retro_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
