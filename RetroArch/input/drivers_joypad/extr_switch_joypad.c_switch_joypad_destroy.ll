; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@previous_handheld = common dso_local global i32 0, align 4
@previous_split_joycon_setting = common dso_local global i64* null, align 8
@vibration_handleheld = common dso_local global i32 0, align 4
@vibration_handles = common dso_local global i32* null, align 8
@vibration_stop = common dso_local global i32 0, align 4
@vibration_values = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @switch_joypad_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_joypad_destroy() #0 {
  %1 = call i32 (...) @hid_finalize()
  ret void
}

declare dso_local i32 @hid_finalize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
