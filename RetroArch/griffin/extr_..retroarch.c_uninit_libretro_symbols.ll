; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_uninit_libretro_symbols.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_uninit_libretro_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_core_t = type { i32 }

@core_set_shared_context = common dso_local global i32 0, align 4
@RARCH_CTL_CORE_OPTIONS_DEINIT = common dso_local global i32 0, align 4
@camera_driver_active = common dso_local global i32 0, align 4
@location_driver_active = common dso_local global i32 0, align 4
@lib_handle = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.retro_core_t*)* @uninit_libretro_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit_libretro_symbols(%struct.retro_core_t* %0) #0 {
  %2 = alloca %struct.retro_core_t*, align 8
  store %struct.retro_core_t* %0, %struct.retro_core_t** %2, align 8
  %3 = load %struct.retro_core_t*, %struct.retro_core_t** %2, align 8
  %4 = call i32 @memset(%struct.retro_core_t* %3, i32 0, i32 4)
  store i32 0, i32* @core_set_shared_context, align 4
  %5 = load i32, i32* @RARCH_CTL_CORE_OPTIONS_DEINIT, align 4
  %6 = call i32 @rarch_ctl(i32 %5, i32* null)
  %7 = call i32 (...) @retroarch_system_info_free()
  %8 = call i32 (...) @retroarch_frame_time_free()
  store i32 0, i32* @camera_driver_active, align 4
  store i32 0, i32* @location_driver_active, align 4
  %9 = call i32 (...) @performance_counters_clear()
  ret void
}

declare dso_local i32 @memset(%struct.retro_core_t*, i32, i32) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @retroarch_system_info_free(...) #1

declare dso_local i32 @retroarch_frame_time_free(...) #1

declare dso_local i32 @performance_counters_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
