; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/nvs_rw_blob/main/extr_nvs_blob_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Error (%s) reading data from NVS!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Error (%s) saving restart counter to NVS!\0A\00", align 1
@GPIO_NUM_0 = common dso_local global i32 0, align 4
@GPIO_MODE_DEF_INPUT = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error (%s) saving run time blob to NVS!\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Restarting...\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @nvs_flash_init()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %0
  %11 = call i64 (...) @nvs_flash_erase()
  %12 = call i32 @ESP_ERROR_CHECK(i64 %11)
  %13 = call i64 (...) @nvs_flash_init()
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ESP_ERROR_CHECK(i64 %15)
  %17 = call i64 (...) @print_what_saved()
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @ESP_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %1, align 8
  %23 = call i8* @esp_err_to_name(i64 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = call i64 (...) @save_restart_counter()
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @ESP_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %1, align 8
  %32 = call i8* @esp_err_to_name(i64 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* @GPIO_NUM_0, align 4
  %36 = call i32 @gpio_pad_select_gpio(i32 %35)
  %37 = load i32, i32* @GPIO_NUM_0, align 4
  %38 = load i32, i32* @GPIO_MODE_DEF_INPUT, align 4
  %39 = call i32 @gpio_set_direction(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %66
  %41 = load i32, i32* @GPIO_NUM_0, align 4
  %42 = call i64 @gpio_get_level(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %46 = sdiv i32 1000, %45
  %47 = call i32 @vTaskDelay(i32 %46)
  %48 = load i32, i32* @GPIO_NUM_0, align 4
  %49 = call i64 @gpio_get_level(i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = call i64 (...) @save_run_time()
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @ESP_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* %1, align 8
  %58 = call i8* @esp_err_to_name(i64 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @fflush(i32 %62)
  %64 = call i32 (...) @esp_restart()
  br label %65

65:                                               ; preds = %60, %44
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %68 = sdiv i32 200, %67
  %69 = call i32 @vTaskDelay(i32 %68)
  br label %40
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i64 @print_what_saved(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @esp_err_to_name(i64) #1

declare dso_local i64 @save_restart_counter(...) #1

declare dso_local i32 @gpio_pad_select_gpio(i32) #1

declare dso_local i32 @gpio_set_direction(i32, i32) #1

declare dso_local i64 @gpio_get_level(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @save_run_time(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
