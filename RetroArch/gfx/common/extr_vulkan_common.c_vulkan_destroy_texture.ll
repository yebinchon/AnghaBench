; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_destroy_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_destroy_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_destroy_texture(i32 %0, %struct.vk_texture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vk_texture*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vk_texture* %1, %struct.vk_texture** %4, align 8
  %5 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %6 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %12 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @vkUnmapMemory(i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %17 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %23 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @vkDestroyImageView(i32 %21, i64 %24, i32* null)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %28 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %34 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @vkDestroyImage(i32 %32, i64 %35, i32* null)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %39 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %45 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @vkDestroyBuffer(i32 %43, i64 %46, i32* null)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %50 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %56 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @vkFreeMemory(i32 %54, i64 %57, i32* null)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.vk_texture*, %struct.vk_texture** %4, align 8
  %61 = call i32 @memset(%struct.vk_texture* %60, i32 0, i32 40)
  ret void
}

declare dso_local i32 @vkUnmapMemory(i32, i64) #1

declare dso_local i32 @vkDestroyImageView(i32, i64, i32*) #1

declare dso_local i32 @vkDestroyImage(i32, i64, i32*) #1

declare dso_local i32 @vkDestroyBuffer(i32, i64, i32*) #1

declare dso_local i32 @vkFreeMemory(i32, i64, i32*) #1

declare dso_local i32 @memset(%struct.vk_texture*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
