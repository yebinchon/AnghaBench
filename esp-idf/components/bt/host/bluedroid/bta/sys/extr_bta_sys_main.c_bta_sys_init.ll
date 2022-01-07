; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_main.c_bta_sys_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_main.c_bta_sys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bta_sys_cb = common dso_local global i32 0, align 4
@bta_alarm_lock = common dso_local global i32 0, align 4
@BTA_ALARM_HASH_MAP_SIZE = common dso_local global i32 0, align 4
@hash_function_pointer = common dso_local global i32 0, align 4
@osi_alarm_free = common dso_local global i64 0, align 8
@bta_alarm_hash_map = common dso_local global i32 0, align 4
@APPL_INITIAL_TRACE_LEVEL = common dso_local global i32 0, align 4
@appl_trace_level = common dso_local global i32 0, align 4
@BTA_ID_SYS = common dso_local global i32 0, align 4
@bta_sys_hw_reg = common dso_local global i32 0, align 4
@bta_sys_hw_btm_cback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_sys_init() #0 {
  %1 = call i32 @memset(i32* @bta_sys_cb, i32 0, i32 4)
  %2 = call i32 @osi_mutex_new(i32* @bta_alarm_lock)
  %3 = load i32, i32* @BTA_ALARM_HASH_MAP_SIZE, align 4
  %4 = load i32, i32* @hash_function_pointer, align 4
  %5 = load i64, i64* @osi_alarm_free, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @hash_map_new(i32 %3, i32 %4, i32* null, i32 %6, i32* null)
  store i32 %7, i32* @bta_alarm_hash_map, align 4
  %8 = load i32, i32* @APPL_INITIAL_TRACE_LEVEL, align 4
  store i32 %8, i32* @appl_trace_level, align 4
  %9 = load i32, i32* @BTA_ID_SYS, align 4
  %10 = call i32 @bta_sys_register(i32 %9, i32* @bta_sys_hw_reg)
  %11 = call i32 @BTM_RegisterForDeviceStatusNotif(i32* @bta_sys_hw_btm_cback)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @osi_mutex_new(i32*) #1

declare dso_local i32 @hash_map_new(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bta_sys_register(i32, i32*) #1

declare dso_local i32 @BTM_RegisterForDeviceStatusNotif(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
