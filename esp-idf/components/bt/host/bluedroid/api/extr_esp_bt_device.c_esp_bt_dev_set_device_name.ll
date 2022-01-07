; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_device.c_esp_bt_dev_set_device_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_bt_device.c_esp_bt_dev_set_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_DEV_DEVICE_NAME_MAX = common dso_local global i64 0, align 8
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_DEV = common dso_local global i32 0, align 4
@BTC_DEV_ACT_SET_DEVICE_NAME = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_dev_set_device_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i64 (...) @esp_bluedroid_get_status()
  %7 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* @ESP_DEV_DEVICE_NAME_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %16
  %24 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @BTC_PID_DEV, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @BTC_DEV_ACT_SET_DEVICE_NAME, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcpy(i32 %32, i8* %33)
  %35 = call i64 @btc_transfer_context(%struct.TYPE_7__* %4, %struct.TYPE_8__* %5, i32 4, i32* null)
  %36 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @ESP_OK, align 4
  br label %42

40:                                               ; preds = %23
  %41 = load i32, i32* @ESP_FAIL, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %21, %14, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
