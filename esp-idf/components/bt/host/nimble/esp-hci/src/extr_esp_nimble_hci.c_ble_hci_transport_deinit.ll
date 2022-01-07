; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_transport_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/nimble/esp-hci/src/extr_esp_nimble_hci.c_ble_hci_transport_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ble_hci_evt_lo_pool = common dso_local global i32 0, align 4
@ble_hci_evt_hi_pool = common dso_local global i32 0, align 4
@ble_hci_cmd_pool = common dso_local global i32 0, align 4
@ble_hci_acl_pool = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ble_hci_transport_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ble_hci_transport_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 @os_mempool_clear(i32* @ble_hci_evt_lo_pool)
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = call i64 @os_mempool_clear(i32* @ble_hci_evt_hi_pool)
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %2, align 4
  %13 = call i64 @os_mempool_clear(i32* @ble_hci_cmd_pool)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = call i64 @os_mempool_ext_clear(i32* @ble_hci_acl_pool)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = load i32, i32* @ESP_FAIL, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %0
  %28 = load i32, i32* @ESP_OK, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @os_mempool_clear(i32*) #1

declare dso_local i64 @os_mempool_ext_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
