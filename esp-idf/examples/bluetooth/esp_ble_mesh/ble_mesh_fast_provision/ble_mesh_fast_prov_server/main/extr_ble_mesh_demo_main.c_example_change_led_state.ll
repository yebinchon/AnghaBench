; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_fast_provision/ble_mesh_fast_prov_server/main/extr_ble_mesh_demo_main.c_example_change_led_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_fast_provision/ble_mesh_fast_prov_server/main/extr_ble_mesh_demo_main.c_example_change_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._led_state = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@led_state = common dso_local global %struct._led_state* null, align 8
@fast_prov_server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DISABLE_FAST_PROV_START = common dso_local global i32 0, align 4
@DISABLE_FAST_PROV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @example_change_led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_change_led_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._led_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct._led_state*, %struct._led_state** @led_state, align 8
  %5 = getelementptr inbounds %struct._led_state, %struct._led_state* %4, i64 1
  store %struct._led_state* %5, %struct._led_state** %3, align 8
  %6 = load %struct._led_state*, %struct._led_state** %3, align 8
  %7 = getelementptr inbounds %struct._led_state, %struct._led_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @board_led_operation(i32 %8, i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fast_prov_server, i32 0, i32 1), align 4
  %12 = load i32, i32* @DISABLE_FAST_PROV_START, align 4
  %13 = call i32 @bt_mesh_atomic_test_and_set_bit(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @DISABLE_FAST_PROV_TIMEOUT, align 4
  %17 = call i32 @k_delayed_work_submit(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fast_prov_server, i32 0, i32 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @board_led_operation(i32, i32) #1

declare dso_local i32 @bt_mesh_atomic_test_and_set_bit(i32, i32) #1

declare dso_local i32 @k_delayed_work_submit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
