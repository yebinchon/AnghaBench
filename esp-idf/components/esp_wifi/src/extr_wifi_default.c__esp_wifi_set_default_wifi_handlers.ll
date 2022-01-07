; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c__esp_wifi_set_default_wifi_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c__esp_wifi_set_default_wifi_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wifi_default_handlers_set = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_START = common dso_local global i32 0, align 4
@wifi_default_action_sta_start = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_STOP = common dso_local global i32 0, align 4
@wifi_default_action_sta_stop = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_CONNECTED = common dso_local global i32 0, align 4
@wifi_default_action_sta_connected = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@wifi_default_action_sta_disconnected = common dso_local global i32 0, align 4
@WIFI_EVENT_AP_START = common dso_local global i32 0, align 4
@wifi_default_action_ap_start = common dso_local global i32 0, align 4
@WIFI_EVENT_AP_STOP = common dso_local global i32 0, align 4
@wifi_default_action_ap_stop = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@wifi_default_action_sta_got_ip = common dso_local global i32 0, align 4
@esp_wifi_stop = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_esp_wifi_set_default_wifi_handlers() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @wifi_default_handlers_set, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %1, align 8
  br label %87

7:                                                ; preds = %0
  %8 = load i32, i32* @WIFI_EVENT, align 4
  %9 = load i32, i32* @WIFI_EVENT_STA_START, align 4
  %10 = load i32, i32* @wifi_default_action_sta_start, align 4
  %11 = call i64 @esp_event_handler_register(i32 %8, i32 %9, i32 %10, i32* null)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %84

16:                                               ; preds = %7
  %17 = load i32, i32* @WIFI_EVENT, align 4
  %18 = load i32, i32* @WIFI_EVENT_STA_STOP, align 4
  %19 = load i32, i32* @wifi_default_action_sta_stop, align 4
  %20 = call i64 @esp_event_handler_register(i32 %17, i32 %18, i32 %19, i32* null)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %84

25:                                               ; preds = %16
  %26 = load i32, i32* @WIFI_EVENT, align 4
  %27 = load i32, i32* @WIFI_EVENT_STA_CONNECTED, align 4
  %28 = load i32, i32* @wifi_default_action_sta_connected, align 4
  %29 = call i64 @esp_event_handler_register(i32 %26, i32 %27, i32 %28, i32* null)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %84

34:                                               ; preds = %25
  %35 = load i32, i32* @WIFI_EVENT, align 4
  %36 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %37 = load i32, i32* @wifi_default_action_sta_disconnected, align 4
  %38 = call i64 @esp_event_handler_register(i32 %35, i32 %36, i32 %37, i32* null)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %84

43:                                               ; preds = %34
  %44 = load i32, i32* @WIFI_EVENT, align 4
  %45 = load i32, i32* @WIFI_EVENT_AP_START, align 4
  %46 = load i32, i32* @wifi_default_action_ap_start, align 4
  %47 = call i64 @esp_event_handler_register(i32 %44, i32 %45, i32 %46, i32* null)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @ESP_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %84

52:                                               ; preds = %43
  %53 = load i32, i32* @WIFI_EVENT, align 4
  %54 = load i32, i32* @WIFI_EVENT_AP_STOP, align 4
  %55 = load i32, i32* @wifi_default_action_ap_stop, align 4
  %56 = call i64 @esp_event_handler_register(i32 %53, i32 %54, i32 %55, i32* null)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @ESP_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %84

61:                                               ; preds = %52
  %62 = load i32, i32* @IP_EVENT, align 4
  %63 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %64 = load i32, i32* @wifi_default_action_sta_got_ip, align 4
  %65 = call i64 @esp_event_handler_register(i32 %62, i32 %63, i32 %64, i32* null)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %84

70:                                               ; preds = %61
  %71 = load i64, i64* @esp_wifi_stop, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @esp_register_shutdown_handler(i32 %72)
  store i64 %73, i64* %2, align 8
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* @ESP_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %84

82:                                               ; preds = %77, %70
  store i32 1, i32* @wifi_default_handlers_set, align 4
  %83 = load i64, i64* @ESP_OK, align 8
  store i64 %83, i64* %1, align 8
  br label %87

84:                                               ; preds = %81, %69, %60, %51, %42, %33, %24, %15
  %85 = call i32 (...) @_esp_wifi_clear_default_wifi_handlers()
  %86 = load i64, i64* %2, align 8
  store i64 %86, i64* %1, align 8
  br label %87

87:                                               ; preds = %84, %82, %5
  %88 = load i64, i64* %1, align 8
  ret i64 %88
}

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i32*) #1

declare dso_local i64 @esp_register_shutdown_handler(i32) #1

declare dso_local i32 @_esp_wifi_clear_default_wifi_handlers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
