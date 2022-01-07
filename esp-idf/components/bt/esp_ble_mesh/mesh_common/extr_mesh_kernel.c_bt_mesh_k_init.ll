; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_kernel.c_bt_mesh_k_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_kernel.c_bt_mesh_k_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bm_alarm_lock = common dso_local global i32 0, align 4
@bm_irq_lock = common dso_local global i32 0, align 4
@BLE_MESH_GENERAL_ALARM_HASH_MAP_SIZE = common dso_local global i32 0, align 4
@hash_function_pointer = common dso_local global i32 0, align 4
@osi_alarm_free = common dso_local global i64 0, align 8
@bm_alarm_hash_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_k_init() #0 {
  %1 = call i32 @osi_mutex_new(i32* @bm_alarm_lock)
  %2 = call i32 @osi_mutex_new(i32* @bm_irq_lock)
  %3 = load i32, i32* @BLE_MESH_GENERAL_ALARM_HASH_MAP_SIZE, align 4
  %4 = load i32, i32* @hash_function_pointer, align 4
  %5 = load i64, i64* @osi_alarm_free, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32* @hash_map_new(i32 %3, i32 %4, i32* null, i32 %6, i32* null)
  store i32* %7, i32** @bm_alarm_hash_map, align 8
  %8 = load i32*, i32** @bm_alarm_hash_map, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  ret void
}

declare dso_local i32 @osi_mutex_new(i32*) #1

declare dso_local i32* @hash_map_new(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
