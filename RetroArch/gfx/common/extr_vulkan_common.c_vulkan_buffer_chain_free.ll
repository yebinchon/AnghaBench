; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_buffer_chain = type { %struct.vk_buffer_node* }
%struct.vk_buffer_node = type { i32, %struct.vk_buffer_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_buffer_chain_free(i32 %0, %struct.vk_buffer_chain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vk_buffer_chain*, align 8
  %5 = alloca %struct.vk_buffer_node*, align 8
  %6 = alloca %struct.vk_buffer_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vk_buffer_chain* %1, %struct.vk_buffer_chain** %4, align 8
  %7 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %4, align 8
  %8 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %7, i32 0, i32 0
  %9 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %8, align 8
  store %struct.vk_buffer_node* %9, %struct.vk_buffer_node** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %5, align 8
  %12 = icmp ne %struct.vk_buffer_node* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %5, align 8
  %15 = getelementptr inbounds %struct.vk_buffer_node, %struct.vk_buffer_node* %14, i32 0, i32 1
  %16 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %15, align 8
  store %struct.vk_buffer_node* %16, %struct.vk_buffer_node** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %5, align 8
  %19 = getelementptr inbounds %struct.vk_buffer_node, %struct.vk_buffer_node* %18, i32 0, i32 0
  %20 = call i32 @vulkan_destroy_buffer(i32 %17, i32* %19)
  %21 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %5, align 8
  %22 = call i32 @free(%struct.vk_buffer_node* %21)
  %23 = load %struct.vk_buffer_node*, %struct.vk_buffer_node** %6, align 8
  store %struct.vk_buffer_node* %23, %struct.vk_buffer_node** %5, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %4, align 8
  %26 = call i32 @memset(%struct.vk_buffer_chain* %25, i32 0, i32 8)
  ret void
}

declare dso_local i32 @vulkan_destroy_buffer(i32, i32*) #1

declare dso_local i32 @free(%struct.vk_buffer_node*) #1

declare dso_local i32 @memset(%struct.vk_buffer_chain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
