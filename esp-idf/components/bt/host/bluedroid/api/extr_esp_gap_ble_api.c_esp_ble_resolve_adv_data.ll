; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_ble_api.c_esp_ble_resolve_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_ble_api.c_esp_ble_resolve_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BLE_AD_TYPE_FLAG = common dso_local global i64 0, align 8
@ESP_BLE_AD_TYPE_128SERVICE_DATA = common dso_local global i64 0, align 8
@ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"the eir type not define, type = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid p_eir data.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @esp_ble_resolve_adv_data(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @ESP_BLE_AD_TYPE_FLAG, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @ESP_BLE_AD_TYPE_128SERVICE_DATA, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @ESP_BLE_AD_MANUFACTURER_SPECIFIC_TYPE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i64* null, i64** %4, align 8
  br label %32

22:                                               ; preds = %15, %11
  %23 = load i64*, i64** %5, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i64* null, i64** %4, align 8
  br label %32

27:                                               ; preds = %22
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i64* @BTM_CheckAdvData(i64* %28, i64 %29, i64* %30)
  store i64* %31, i64** %4, align 8
  br label %32

32:                                               ; preds = %27, %25, %19
  %33 = load i64*, i64** %4, align 8
  ret i64* %33
}

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64* @BTM_CheckAdvData(i64*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
