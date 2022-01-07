; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_hw_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_hw_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.retro_hw_render_interface_vulkan }
%struct.retro_hw_render_interface_vulkan = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.retro_hw_render_callback = type { i64 }

@RETRO_HW_CONTEXT_VULKAN = common dso_local global i64 0, align 8
@RETRO_HW_RENDER_INTERFACE_VULKAN = common dso_local global i32 0, align 4
@RETRO_HW_RENDER_INTERFACE_VULKAN_VERSION = common dso_local global i32 0, align 4
@vulkan_set_image = common dso_local global i32 0, align 4
@vulkan_get_sync_index = common dso_local global i32 0, align 4
@vulkan_get_sync_index_mask = common dso_local global i32 0, align 4
@vulkan_wait_sync_index = common dso_local global i32 0, align 4
@vulkan_set_command_buffers = common dso_local global i32 0, align 4
@vulkan_lock_queue = common dso_local global i32 0, align 4
@vulkan_unlock_queue = common dso_local global i32 0, align 4
@vulkan_set_signal_semaphore = common dso_local global i32 0, align 4
@vkGetDeviceProcAddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vulkan_init_hw_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_init_hw_render(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.retro_hw_render_interface_vulkan*, align 8
  %4 = alloca %struct.retro_hw_render_callback*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store %struct.retro_hw_render_interface_vulkan* %7, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %8 = call %struct.retro_hw_render_callback* (...) @video_driver_get_hw_context()
  store %struct.retro_hw_render_callback* %8, %struct.retro_hw_render_callback** %4, align 8
  %9 = load %struct.retro_hw_render_callback*, %struct.retro_hw_render_callback** %4, align 8
  %10 = getelementptr inbounds %struct.retro_hw_render_callback, %struct.retro_hw_render_callback* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RETRO_HW_CONTEXT_VULKAN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %93

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @RETRO_HW_RENDER_INTERFACE_VULKAN, align 4
  %20 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %21 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %20, i32 0, i32 17
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @RETRO_HW_RENDER_INTERFACE_VULKAN_VERSION, align 4
  %23 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %24 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %23, i32 0, i32 16
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %31 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %38 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %45 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %52 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %59 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %62 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %61, i32 0, i32 10
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load i32, i32* @vulkan_set_image, align 4
  %64 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %65 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @vulkan_get_sync_index, align 4
  %67 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %68 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @vulkan_get_sync_index_mask, align 4
  %70 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %71 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @vulkan_wait_sync_index, align 4
  %73 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %74 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @vulkan_set_command_buffers, align 4
  %76 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %77 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @vulkan_lock_queue, align 4
  %79 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %80 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @vulkan_unlock_queue, align 4
  %82 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %83 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @vulkan_set_signal_semaphore, align 4
  %85 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %86 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @vkGetDeviceProcAddr, align 4
  %88 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %89 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = call i32 (...) @vulkan_symbol_wrapper_instance_proc_addr()
  %91 = load %struct.retro_hw_render_interface_vulkan*, %struct.retro_hw_render_interface_vulkan** %3, align 8
  %92 = getelementptr inbounds %struct.retro_hw_render_interface_vulkan, %struct.retro_hw_render_interface_vulkan* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.retro_hw_render_callback* @video_driver_get_hw_context(...) #1

declare dso_local i32 @vulkan_symbol_wrapper_instance_proc_addr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
