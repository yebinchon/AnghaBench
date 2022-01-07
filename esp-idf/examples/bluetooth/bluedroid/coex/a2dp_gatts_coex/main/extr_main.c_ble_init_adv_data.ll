; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_ble_init_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_ble_init_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BT_EIR_TYPE_FLAGS = common dso_local global i32 0, align 4
@ESP_BLE_ADV_FLAG_GEN_DISC = common dso_local global i32 0, align 4
@ESP_BLE_ADV_FLAG_BREDR_NOT_SPT = common dso_local global i32 0, align 4
@ESP_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@BT_BLE_COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"config raw adv data failed, error code = 0x%x \00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"config raw scan rsp data failed, error code = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ble_init_adv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ble_init_adv_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 5
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 2, i32* %16, align 16
  %17 = load i32, i32* @ESP_BT_EIR_TYPE_FLAGS, align 4
  %18 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @ESP_BLE_ADV_FLAG_GEN_DISC, align 4
  %20 = load i32, i32* @ESP_BLE_ADV_FLAG_BREDR_NOT_SPT, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = getelementptr inbounds i32, i32* %15, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ESP_BLE_AD_TYPE_NAME_CMPL, align 4
  %27 = getelementptr inbounds i32, i32* %15, i64 4
  store i32 %26, i32* %27, align 16
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %41, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %2, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 5
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %15, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %28

44:                                               ; preds = %28
  %45 = mul nuw i64 4, %13
  %46 = trunc i64 %45 to i32
  %47 = call i64 @esp_ble_gap_config_adv_data_raw(i32* %15, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = mul nuw i64 4, %13
  %56 = trunc i64 %55 to i32
  %57 = call i64 @esp_ble_gap_config_scan_rsp_data_raw(i32* %15, i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @esp_ble_gap_config_adv_data_raw(i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @esp_ble_gap_config_scan_rsp_data_raw(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
