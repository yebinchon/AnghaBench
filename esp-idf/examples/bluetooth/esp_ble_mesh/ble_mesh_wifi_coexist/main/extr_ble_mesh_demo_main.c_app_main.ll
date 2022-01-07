; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/main/extr_ble_mesh_demo_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/main/extr_ble_mesh_demo_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Initializing...\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"board_init failed (err %d)\00", align 1
@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"esp32_bluetooth_init failed (err %d)\00", align 1
@dev_uuid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Bluetooth mesh init failed (err %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @TAG, align 4
  %3 = call i32 @ESP_LOGI(i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i64 (...) @board_init()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @TAG, align 4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  br label %42

11:                                               ; preds = %0
  %12 = call i64 (...) @nvs_flash_init()
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i64 (...) @nvs_flash_erase()
  %18 = call i32 @ESP_ERROR_CHECK(i64 %17)
  %19 = call i64 (...) @nvs_flash_init()
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ESP_ERROR_CHECK(i64 %21)
  %23 = call i64 (...) @bluetooth_init()
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  br label %42

30:                                               ; preds = %20
  %31 = load i32, i32* @dev_uuid, align 4
  %32 = call i32 @ble_mesh_get_dev_uuid(i32 %31)
  %33 = call i64 (...) @ble_mesh_init()
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @TAG, align 4
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  br label %42

40:                                               ; preds = %30
  %41 = call i32 (...) @wifi_console_init()
  br label %42

42:                                               ; preds = %40, %36, %26, %7
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @board_init(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i64 @bluetooth_init(...) #1

declare dso_local i32 @ble_mesh_get_dev_uuid(i32) #1

declare dso_local i64 @ble_mesh_init(...) #1

declare dso_local i32 @wifi_console_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
