; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_switch_joypad.c_switch_joypad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }

@CONTROLLER_HANDHELD = common dso_local global i32 0, align 4
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@TYPE_HANDHELD = common dso_local global i32 0, align 4
@TYPE_JOYCON_PAIR = common dso_local global i32 0, align 4
@vibration_handleheld = common dso_local global i32 0, align 4
@vibration_handles = common dso_local global i32* null, align 8
@vibration_stop = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@vibration_values = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @switch_joypad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_joypad_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @hid_init()
  %4 = call i32 @switch_joypad_autodetect_add(i32 0)
  %5 = call i32 @switch_joypad_autodetect_add(i32 1)
  ret i32 1
}

declare dso_local i32 @hid_init(...) #1

declare dso_local i32 @switch_joypad_autodetect_add(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
