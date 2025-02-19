; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_switch_res_crt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_switch_res_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ra_set_core_hz = common dso_local global i32 0, align 4
@ra_core_hz = common dso_local global i32 0, align 4
@crt_center_adjust = common dso_local global i32 0, align 4
@crt_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @switch_res_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_res_crt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ra_set_core_hz, align 4
  %8 = load i32, i32* @ra_core_hz, align 4
  %9 = load i32, i32* @crt_center_adjust, align 4
  %10 = load i32, i32* @crt_index, align 4
  %11 = load i32, i32* @crt_center_adjust, align 4
  %12 = call i32 @video_display_server_set_resolution(i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = call i32 (...) @video_driver_apply_state_changes()
  ret void
}

declare dso_local i32 @video_display_server_set_resolution(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @video_driver_apply_state_changes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
