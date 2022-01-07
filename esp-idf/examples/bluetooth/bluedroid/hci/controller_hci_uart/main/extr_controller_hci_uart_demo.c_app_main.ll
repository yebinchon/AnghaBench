; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_hci_uart/main/extr_controller_hci_uart_demo.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_hci_uart/main/extr_controller_hci_uart_demo.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bluetooth Controller initialize failed: %s\00", align 1
@ESP_BT_MODE_BTDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @nvs_flash_init()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %0
  %12 = call i64 (...) @nvs_flash_erase()
  %13 = call i32 @ESP_ERROR_CHECK(i64 %12)
  %14 = call i64 (...) @nvs_flash_init()
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ESP_ERROR_CHECK(i64 %16)
  %18 = call i32 (...) @uart_gpio_reset()
  %19 = call i32 (...) @BT_CONTROLLER_INIT_CONFIG_DEFAULT()
  store i32 %19, i32* %2, align 4
  %20 = call i64 @esp_bt_controller_init(i32* %2)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* @tag, align 4
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @esp_err_to_name(i64 %26)
  %28 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %40

29:                                               ; preds = %15
  %30 = load i32, i32* @ESP_BT_MODE_BTDM, align 4
  %31 = call i64 @esp_bt_controller_enable(i32 %30)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @ESP_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @tag, align 4
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @esp_err_to_name(i64 %37)
  %39 = call i32 @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %24, %35, %29
  ret void
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i32 @uart_gpio_reset(...) #1

declare dso_local i32 @BT_CONTROLLER_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i64 @esp_bt_controller_init(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i64 @esp_bt_controller_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
