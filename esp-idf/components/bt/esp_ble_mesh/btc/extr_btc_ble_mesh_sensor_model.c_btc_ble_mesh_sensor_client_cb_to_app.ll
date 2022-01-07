; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/btc/extr_btc_ble_mesh_sensor_model.c_btc_ble_mesh_sensor_client_cb_to_app.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/btc/extr_btc_ble_mesh_sensor_model.c_btc_ble_mesh_sensor_client_cb_to_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_PID_SENSOR_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @btc_ble_mesh_sensor_client_cb_to_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_ble_mesh_sensor_client_cb_to_app(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32, i32*)*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @BTC_PID_SENSOR_CLIENT, align 4
  %7 = call i32 @btc_profile_cb_get(i32 %6)
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32 (i32, i32*)*
  store i32 (i32, i32*)* %9, i32 (i32, i32*)** %5, align 8
  %10 = load i32 (i32, i32*)*, i32 (i32, i32*)** %5, align 8
  %11 = icmp ne i32 (i32, i32*)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32 (i32, i32*)*, i32 (i32, i32*)** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 %13(i32 %14, i32* %15)
  br label %17

17:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @btc_profile_cb_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
