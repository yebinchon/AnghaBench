; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_ble_hidd_demo_main.c_hid_demo_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_ble_hidd_demo_main.c_hid_demo_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@sec_conn = common dso_local global i64 0, align 8
@HID_DEMO_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Send the volume\00", align 1
@send_volum_up = common dso_local global i32 0, align 4
@hid_conn_id = common dso_local global i32 0, align 4
@HID_CONSUMER_VOLUME_UP = common dso_local global i32 0, align 4
@HID_CONSUMER_VOLUME_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_demo_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %4 = sdiv i32 1000, %3
  %5 = call i32 @vTaskDelay(i32 %4)
  br label %6

6:                                                ; preds = %1, %37
  %7 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %8 = sdiv i32 2000, %7
  %9 = call i32 @vTaskDelay(i32 %8)
  %10 = load i64, i64* @sec_conn, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load i32, i32* @HID_DEMO_TAG, align 4
  %14 = call i32 @ESP_LOGI(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @send_volum_up, align 4
  %15 = load i32, i32* @hid_conn_id, align 4
  %16 = load i32, i32* @HID_CONSUMER_VOLUME_UP, align 4
  %17 = call i32 @esp_hidd_send_consumer_value(i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %19 = sdiv i32 3000, %18
  %20 = call i32 @vTaskDelay(i32 %19)
  %21 = load i32, i32* @send_volum_up, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  store i32 0, i32* @send_volum_up, align 4
  %24 = load i32, i32* @hid_conn_id, align 4
  %25 = load i32, i32* @HID_CONSUMER_VOLUME_UP, align 4
  %26 = call i32 @esp_hidd_send_consumer_value(i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @hid_conn_id, align 4
  %28 = load i32, i32* @HID_CONSUMER_VOLUME_DOWN, align 4
  %29 = call i32 @esp_hidd_send_consumer_value(i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %31 = sdiv i32 3000, %30
  %32 = call i32 @vTaskDelay(i32 %31)
  %33 = load i32, i32* @hid_conn_id, align 4
  %34 = load i32, i32* @HID_CONSUMER_VOLUME_DOWN, align 4
  %35 = call i32 @esp_hidd_send_consumer_value(i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %23, %12
  br label %37

37:                                               ; preds = %36, %6
  br label %6
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_hidd_send_consumer_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
