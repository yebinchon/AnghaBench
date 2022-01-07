; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_smartconfig_example_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_smartconfig_example_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_TYPE_ESPTOUCH = common dso_local global i32 0, align 4
@s_wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@ESPTOUCH_DONE_BIT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WiFi Connected to ap\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"smartconfig over\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smartconfig_example_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartconfig_example_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @SC_TYPE_ESPTOUCH, align 4
  %6 = call i32 @esp_smartconfig_set_type(i32 %5)
  %7 = call i32 @ESP_ERROR_CHECK(i32 %6)
  %8 = call i32 (...) @SMARTCONFIG_START_CONFIG_DEFAULT()
  store i32 %8, i32* %4, align 4
  %9 = call i32 @esp_smartconfig_start(i32* %4)
  %10 = call i32 @ESP_ERROR_CHECK(i32 %9)
  br label %11

11:                                               ; preds = %1, %35
  %12 = load i32, i32* @s_wifi_event_group, align 4
  %13 = load i32, i32* @CONNECTED_BIT, align 4
  %14 = load i32, i32* @ESPTOUCH_DONE_BIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @portMAX_DELAY, align 4
  %17 = call i32 @xEventGroupWaitBits(i32 %12, i32 %15, i32 1, i32 0, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CONNECTED_BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ESPTOUCH_DONE_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @esp_smartconfig_stop()
  %34 = call i32 @vTaskDelete(i32* null)
  br label %35

35:                                               ; preds = %30, %25
  br label %11
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_smartconfig_set_type(i32) #1

declare dso_local i32 @SMARTCONFIG_START_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_smartconfig_start(i32*) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_smartconfig_stop(...) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
