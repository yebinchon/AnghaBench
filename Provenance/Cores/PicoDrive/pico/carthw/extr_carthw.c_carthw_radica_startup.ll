; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_radica_startup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_radica_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Radica mapper startup\00", align 1
@carthw_radica_mem_setup = common dso_local global i32 0, align 4
@PicoCartMemSetup = common dso_local global i32 0, align 4
@carthw_radica_reset = common dso_local global i32 0, align 4
@PicoResetHook = common dso_local global i32 0, align 4
@carthw_radica_statef = common dso_local global i32 0, align 4
@PicoLoadStateHook = common dso_local global i32 0, align 4
@carthw_Xin1_state = common dso_local global i32 0, align 4
@carthw_chunks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carthw_radica_startup() #0 {
  %1 = load i32, i32* @EL_STATUS, align 4
  %2 = call i32 @elprintf(i32 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @carthw_radica_mem_setup, align 4
  store i32 %3, i32* @PicoCartMemSetup, align 4
  %4 = load i32, i32* @carthw_radica_reset, align 4
  store i32 %4, i32* @PicoResetHook, align 4
  %5 = load i32, i32* @carthw_radica_statef, align 4
  store i32 %5, i32* @PicoLoadStateHook, align 4
  %6 = load i32, i32* @carthw_Xin1_state, align 4
  store i32 %6, i32* @carthw_chunks, align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
