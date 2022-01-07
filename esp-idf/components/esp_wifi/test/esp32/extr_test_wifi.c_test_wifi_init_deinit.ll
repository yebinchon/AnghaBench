; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_test_wifi_init_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_test_wifi_init_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"esp_wifi_deinit\00", align 1
@ESP_ERR_WIFI_NOT_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"esp_wifi_get_mode\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"esp_wifi_init\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"esp_wifi_set_mode\00", align 1
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"esp_wifi_set_config\00", align 1
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"esp_wifi_deinit...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_wifi_init_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wifi_init_deinit(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 @EMPH_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @ESP_LOGI(i32 %6, i32 %7)
  %9 = load i32, i32* @ESP_ERR_WIFI_NOT_INIT, align 4
  %10 = call i32 (...) @esp_wifi_deinit()
  %11 = call i32 @TEST_ESP_ERR(i32 %9, i32 %10)
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @EMPH_STR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @ESP_LOGI(i32 %12, i32 %13)
  %15 = load i32, i32* @ESP_ERR_WIFI_NOT_INIT, align 4
  %16 = call i32 @esp_wifi_get_mode(i32* %5)
  %17 = call i32 @TEST_ESP_ERR(i32 %15, i32 %16)
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @ESP_LOGI(i32 %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @esp_wifi_init(i32* %21)
  %23 = call i32 @TEST_ESP_OK(i32 %22)
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 @EMPH_STR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @ESP_LOGI(i32 %24, i32 %25)
  %27 = load i32, i32* @WIFI_MODE_STA, align 4
  %28 = call i32 @esp_wifi_set_mode(i32 %27)
  %29 = call i32 @TEST_ESP_OK(i32 %28)
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 @EMPH_STR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @ESP_LOGI(i32 %30, i32 %31)
  %33 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @esp_wifi_set_config(i32 %33, i32* %34)
  %36 = call i32 @TEST_ESP_OK(i32 %35)
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 @EMPH_STR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @ESP_LOGI(i32 %37, i32 %38)
  %40 = call i32 (...) @esp_wifi_deinit()
  %41 = call i32 @TEST_ESP_OK(i32 %40)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i32) #1

declare dso_local i32 @EMPH_STR(i8*) #1

declare dso_local i32 @TEST_ESP_ERR(i32, i32) #1

declare dso_local i32 @esp_wifi_deinit(...) #1

declare dso_local i32 @esp_wifi_get_mode(i32*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_set_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
