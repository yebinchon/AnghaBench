; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_get_db.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_get_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@ESP_GATT_INVALID_HANDLE = common dso_local global i32 0, align 4
@ESP_GATT_INVALID_PDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gattc_get_db(i32 %0, i64 %1, i64 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %16 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %15)
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64*, i64** %13, align 8
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @ESP_GATT_INVALID_HANDLE, align 4
  store i32 %24, i32* %7, align 4
  br label %47

25:                                               ; preds = %19, %6
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %13, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64*, i64** %13, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %28, %25
  %36 = load i32, i32* @ESP_GATT_INVALID_PDU, align 4
  store i32 %36, i32* %7, align 4
  br label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @BTC_GATT_CREATE_CONN_ID(i32 %38, i64 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = call i32 @btc_ble_gattc_get_db(i64 %41, i64 %42, i64 %43, i32* %44, i64* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %37, %35, %22
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i64 @BTC_GATT_CREATE_CONN_ID(i32, i64) #1

declare dso_local i32 @btc_ble_gattc_get_db(i64, i64, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
