; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_host_rcv_pkt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_host_rcv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLE_HCI_UART_H4_EVT = common dso_local global i32 0, align 4
@BLE_HCI_EVENT_HDR_LEN = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i32 0, align 4
@BLE_HCI_EVCODE_HW_ERROR = common dso_local global i32 0, align 4
@BLE_HCI_EVCODE_LE_META = common dso_local global i32 0, align 4
@BLE_HCI_LE_SUBEV_ADV_RPT = common dso_local global i32 0, align 4
@BLE_HCI_TRANS_BUF_EVT_LO = common dso_local global i32 0, align 4
@BLE_HCI_TRANS_BUF_EVT_HI = common dso_local global i32 0, align 4
@BLE_HCI_UART_H4_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @host_rcv_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_rcv_pkt(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BLE_HCI_UART_H4_EVT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %2
  %15 = load i32, i32* @BLE_HCI_EVENT_HDR_LEN, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @UINT8_MAX, align 4
  %22 = load i32, i32* @BLE_HCI_EVENT_HDR_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sle i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BLE_HCI_EVCODE_HW_ERROR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 @assert(i32 0)
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BLE_HCI_EVCODE_LE_META, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BLE_HCI_LE_SUBEV_ADV_RPT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @BLE_HCI_TRANS_BUF_EVT_LO, align 4
  %48 = call i32* @ble_hci_trans_buf_alloc(i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %86

52:                                               ; preds = %46
  br label %60

53:                                               ; preds = %40, %34
  %54 = load i32, i32* @BLE_HCI_TRANS_BUF_EVT_HI, align 4
  %55 = call i32* @ble_hci_trans_buf_alloc(i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @memcpy(i32* %61, i32* %63, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ble_hci_trans_ll_evt_tx(i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %85

72:                                               ; preds = %2
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BLE_HCI_UART_H4_ACL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i64, i64* %5, align 8
  %82 = sub nsw i64 %81, 1
  %83 = call i32 @ble_hci_rx_acl(i32* %80, i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %60
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %51
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ble_hci_trans_buf_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ble_hci_trans_ll_evt_tx(i32*) #1

declare dso_local i32 @ble_hci_rx_acl(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
