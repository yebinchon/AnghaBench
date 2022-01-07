; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_esp_nimble_hci_and_controller_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_esp_nimble_hci_and_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BT_MODE_CLASSIC_BT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_BT_MODE_BLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_nimble_hci_and_controller_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ESP_BT_MODE_CLASSIC_BT, align 4
  %5 = call i32 @esp_bt_controller_mem_release(i32 %4)
  %6 = call i32 (...) @BT_CONTROLLER_INIT_CONFIG_DEFAULT()
  store i32 %6, i32* %3, align 4
  %7 = call i32 @esp_bt_controller_init(i32* %3)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @ESP_OK, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %21

12:                                               ; preds = %0
  %13 = load i32, i32* @ESP_BT_MODE_BLE, align 4
  %14 = call i32 @esp_bt_controller_enable(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @ESP_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %21

19:                                               ; preds = %12
  %20 = call i32 (...) @esp_nimble_hci_init()
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %17, %10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @esp_bt_controller_mem_release(i32) #1

declare dso_local i32 @BT_CONTROLLER_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_bt_controller_init(i32*) #1

declare dso_local i32 @esp_bt_controller_enable(i32) #1

declare dso_local i32 @esp_nimble_hci_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
