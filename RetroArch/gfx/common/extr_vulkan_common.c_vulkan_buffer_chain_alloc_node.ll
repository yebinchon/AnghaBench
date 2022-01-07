; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_alloc_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_buffer_node = type { i32 }
%struct.vulkan_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vk_buffer_node* (%struct.vulkan_context*, i64, i32)* @vulkan_buffer_chain_alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vk_buffer_node* @vulkan_buffer_chain_alloc_node(%struct.vulkan_context* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vk_buffer_node*, align 8
  %5 = alloca %struct.vulkan_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vk_buffer_node*, align 8
  store %struct.vulkan_context* %0, %struct.vulkan_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i64 @calloc(i32 1, i32 4)
  %10 = inttoptr i64 %9 to %struct.vk_buffer_node*
  store %struct.vk_buffer_node* %10, %struct.vk_buffer_node** %8, align 8
  %11 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %8, align 8
  %12 = icmp ne %struct.vk_buffer_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.vk_buffer_node* null, %struct.vk_buffer_node** %4, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.vulkan_context*, %struct.vulkan_context** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @vulkan_create_buffer(%struct.vulkan_context* %15, i64 %16, i32 %17)
  %19 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %8, align 8
  %20 = getelementptr inbounds %struct.vk_buffer_node, %struct.vk_buffer_node* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %8, align 8
  store %struct.vk_buffer_node* %21, %struct.vk_buffer_node** %4, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %4, align 8
  ret %struct.vk_buffer_node* %23
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @vulkan_create_buffer(%struct.vulkan_context*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
