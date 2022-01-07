; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_util.c_btc_hci_to_esp_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_util.c_btc_hci_to_esp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BT_STATUS_FAIL = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ESP_BT_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@ESP_BT_STATUS_PENDING = common dso_local global i32 0, align 4
@ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL = common dso_local global i32 0, align 4
@ESP_BT_STATUS_PARAM_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_hci_to_esp_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ESP_BT_STATUS_FAIL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 133, label %8
    i32 132, label %10
    i32 129, label %12
    i32 130, label %14
    i32 131, label %16
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @ESP_BT_STATUS_TIMEOUT, align 4
  store i32 %9, i32* %3, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @ESP_BT_STATUS_PENDING, align 4
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ESP_BT_STATUS_PARAM_OUT_OF_RANGE, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ESP_BT_STATUS_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10, %8, %6
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
