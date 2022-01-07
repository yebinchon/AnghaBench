; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"wifi ev_handle_called.\0A\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"WIFI_EVENT_STA_START\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"WIFI_EVENT_STA_DISCONNECTED\00", align 1
@EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT = common dso_local global i32 0, align 4
@wifi_event_handler_flag = common dso_local global i32 0, align 4
@wifi_events = common dso_local global i32 0, align 4
@DISCONNECT_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @wifi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_event_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %32 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

14:                                               ; preds = %4
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT, align 4
  %18 = load i32, i32* @wifi_event_handler_flag, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = call i32 (...) @esp_wifi_connect()
  %23 = call i32 @TEST_ESP_OK(i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* @wifi_events, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @wifi_events, align 4
  %29 = load i32, i32* @DISCONNECT_EVENT, align 4
  %30 = call i32 @xEventGroupSetBits(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %31, %11
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
