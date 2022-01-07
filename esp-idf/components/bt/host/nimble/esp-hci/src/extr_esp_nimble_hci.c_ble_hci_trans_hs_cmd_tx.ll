; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_trans_hs_cmd_tx.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_trans_hs_cmd_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLE_HCI_UART_H4_CMD = common dso_local global i64 0, align 8
@BLE_HCI_CMD_HDR_LEN = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Controller not ready to receive packets from host at this time, try again after sometime\00", align 1
@BLE_HS_EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_hci_trans_hs_cmd_tx(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = icmp ne i64* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* @BLE_HCI_UART_H4_CMD, align 8
  %10 = load i64*, i64** %3, align 8
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* @BLE_HCI_CMD_HDR_LEN, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 3
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  %17 = call i32 (...) @esp_vhci_host_check_send_available()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @BLE_HS_EAGAIN, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i64*, i64** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @esp_vhci_host_send_packet(i64* %24, i64 %25)
  %27 = load i64*, i64** %3, align 8
  %28 = call i32 @ble_hci_trans_buf_free(i64* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_vhci_host_check_send_available(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_vhci_host_send_packet(i64*, i64) #1

declare dso_local i32 @ble_hci_trans_buf_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
