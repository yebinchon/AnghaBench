; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_trans_hs_acl_tx.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_trans_hs_acl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_mbuf = type { i32 }

@BLE_ACL_BUF_SIZE = common dso_local global i32 0, align 4
@BLE_HCI_UART_H4_ACL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Controller not ready to receive packets from host at this time, try again after sometime\00", align 1
@BLE_HS_EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_hci_trans_hs_acl_tx(%struct.os_mbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.os_mbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.os_mbuf* %0, %struct.os_mbuf** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @BLE_ACL_BUF_SIZE, align 4
  %9 = call i32 @MYNEWT_VAL(i32 %8)
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %15 = call i64 @OS_MBUF_PKTLEN(%struct.os_mbuf* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %19 = call i32 @os_mbuf_free_chain(%struct.os_mbuf* %18)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load i32, i32* @BLE_HCI_UART_H4_ACL, align 4
  %22 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %4, align 8
  %25 = call i32 (...) @esp_vhci_host_check_send_available()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @BLE_HS_EAGAIN, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %33 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %34 = call i64 @OS_MBUF_PKTLEN(%struct.os_mbuf* %33)
  %35 = getelementptr inbounds i32, i32* %13, i64 1
  %36 = call i32 @os_mbuf_copydata(%struct.os_mbuf* %32, i32 0, i64 %34, i32* %35)
  %37 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %38 = call i64 @OS_MBUF_PKTLEN(%struct.os_mbuf* %37)
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @esp_vhci_host_send_packet(i32* %13, i64 %41)
  %43 = load %struct.os_mbuf*, %struct.os_mbuf** %3, align 8
  %44 = call i32 @os_mbuf_free_chain(%struct.os_mbuf* %43)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %31, %27, %17
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @MYNEWT_VAL(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @OS_MBUF_PKTLEN(%struct.os_mbuf*) #1

declare dso_local i32 @os_mbuf_free_chain(%struct.os_mbuf*) #1

declare dso_local i32 @esp_vhci_host_check_send_available(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @os_mbuf_copydata(%struct.os_mbuf*, i32, i64, i32*) #1

declare dso_local i32 @esp_vhci_host_send_packet(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
