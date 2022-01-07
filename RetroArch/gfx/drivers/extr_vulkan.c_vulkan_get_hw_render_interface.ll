; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_get_hw_render_interface.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_get_hw_render_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_hw_render_interface = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.retro_hw_render_interface**)* @vulkan_get_hw_render_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_get_hw_render_interface(i8* %0, %struct.retro_hw_render_interface** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.retro_hw_render_interface**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.retro_hw_render_interface** %1, %struct.retro_hw_render_interface*** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.retro_hw_render_interface*
  %12 = load %struct.retro_hw_render_interface**, %struct.retro_hw_render_interface*** %4, align 8
  store %struct.retro_hw_render_interface* %11, %struct.retro_hw_render_interface** %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
