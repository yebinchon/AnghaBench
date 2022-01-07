; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_transport_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_transport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ble_hci_acl_pool = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BLE_ACL_BUF_COUNT = common dso_local global i32 0, align 4
@ACL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ble_hci_acl_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ble_hci_acl_pool\00", align 1
@ble_hci_acl_mbuf_pool = common dso_local global i32 0, align 4
@ble_hci_cmd_pool = common dso_local global i32 0, align 4
@BLE_HCI_TRANS_CMD_SZ = common dso_local global i32 0, align 4
@ble_hci_cmd_buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ble_hci_cmd_pool\00", align 1
@ble_hci_evt_hi_pool = common dso_local global i32 0, align 4
@BLE_HCI_EVT_HI_BUF_COUNT = common dso_local global i32 0, align 4
@BLE_HCI_EVT_BUF_SIZE = common dso_local global i32 0, align 4
@ble_hci_evt_hi_buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ble_hci_evt_hi_pool\00", align 1
@ble_hci_evt_lo_pool = common dso_local global i32 0, align 4
@BLE_HCI_EVT_LO_BUF_COUNT = common dso_local global i32 0, align 4
@ble_hci_evt_lo_buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ble_hci_evt_lo_pool\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ble_hci_transport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ble_hci_transport_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SYSINIT_ASSERT_ACTIVE()
  %3 = load i32, i32* @BLE_ACL_BUF_COUNT, align 4
  %4 = call i32 @MYNEWT_VAL(i32 %3)
  %5 = load i32, i32* @ACL_BLOCK_SIZE, align 4
  %6 = load i32, i32* @ble_hci_acl_buf, align 4
  %7 = call i32 @os_mempool_ext_init(%struct.TYPE_3__* @ble_hci_acl_pool, i32 %4, i32 %5, i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @SYSINIT_PANIC_ASSERT(i32 %10)
  %12 = load i32, i32* @ACL_BLOCK_SIZE, align 4
  %13 = load i32, i32* @BLE_ACL_BUF_COUNT, align 4
  %14 = call i32 @MYNEWT_VAL(i32 %13)
  %15 = call i32 @os_mbuf_pool_init(i32* @ble_hci_acl_mbuf_pool, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ble_hci_acl_pool, i32 0, i32 0), i32 %12, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @SYSINIT_PANIC_ASSERT(i32 %18)
  %20 = load i32, i32* @BLE_HCI_TRANS_CMD_SZ, align 4
  %21 = load i32, i32* @ble_hci_cmd_buf, align 4
  %22 = call i32 @os_mempool_init(i32* @ble_hci_cmd_pool, i32 1, i32 %20, i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @SYSINIT_PANIC_ASSERT(i32 %25)
  %27 = load i32, i32* @BLE_HCI_EVT_HI_BUF_COUNT, align 4
  %28 = call i32 @MYNEWT_VAL(i32 %27)
  %29 = load i32, i32* @BLE_HCI_EVT_BUF_SIZE, align 4
  %30 = call i32 @MYNEWT_VAL(i32 %29)
  %31 = load i32, i32* @ble_hci_evt_hi_buf, align 4
  %32 = call i32 @os_mempool_init(i32* @ble_hci_evt_hi_pool, i32 %28, i32 %30, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @SYSINIT_PANIC_ASSERT(i32 %35)
  %37 = load i32, i32* @BLE_HCI_EVT_LO_BUF_COUNT, align 4
  %38 = call i32 @MYNEWT_VAL(i32 %37)
  %39 = load i32, i32* @BLE_HCI_EVT_BUF_SIZE, align 4
  %40 = call i32 @MYNEWT_VAL(i32 %39)
  %41 = load i32, i32* @ble_hci_evt_lo_buf, align 4
  %42 = call i32 @os_mempool_init(i32* @ble_hci_evt_lo_pool, i32 %38, i32 %40, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @SYSINIT_PANIC_ASSERT(i32 %45)
  ret void
}

declare dso_local i32 @SYSINIT_ASSERT_ACTIVE(...) #1

declare dso_local i32 @os_mempool_ext_init(%struct.TYPE_3__*, i32, i32, i32, i8*) #1

declare dso_local i32 @MYNEWT_VAL(i32) #1

declare dso_local i32 @SYSINIT_PANIC_ASSERT(i32) #1

declare dso_local i32 @os_mbuf_pool_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @os_mempool_init(i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
