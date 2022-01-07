; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_get_all_char.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gattc_api.c_esp_ble_gattc_get_all_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@ESP_GATT_INVALID_HANDLE = common dso_local global i32 0, align 4
@ESP_GATT_INVALID_PDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gattc_get_all_char(i32 %0, i64 %1, i64 %2, i64 %3, i32* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %18 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %17)
  %19 = load i64, i64* %11, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64*, i64** %14, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ESP_GATT_INVALID_HANDLE, align 4
  store i32 %26, i32* %8, align 4
  br label %50

27:                                               ; preds = %21, %7
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64*, i64** %14, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i64*, i64** %14, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %30, %27
  %38 = load i32, i32* @ESP_GATT_INVALID_PDU, align 4
  store i32 %38, i32* %8, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @BTC_GATT_CREATE_CONN_ID(i32 %40, i64 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @btc_ble_gattc_get_all_char(i64 %43, i64 %44, i64 %45, i32* %46, i64* %47, i64 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %37, %24
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i64 @BTC_GATT_CREATE_CONN_ID(i32, i64) #1

declare dso_local i32 @btc_ble_gattc_get_all_char(i64, i64, i64, i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
