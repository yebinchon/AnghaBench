; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPA2: already disabled\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@esp_wifi_sta_wpa2_ent_disable_fn = common dso_local global i64 0, align 8
@WPA2_STATE_DISABLED = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to disable wpa2 ret=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_wifi_sta_wpa2_ent_disable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (...) @wpa2_api_lock()
  %5 = call i64 (...) @wpa2_is_disabled()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @MSG_INFO, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @wpa2_api_unlock()
  %11 = load i64, i64* @ESP_OK, align 8
  store i64 %11, i64* %1, align 8
  br label %30

12:                                               ; preds = %0
  %13 = load i64, i64* @esp_wifi_sta_wpa2_ent_disable_fn, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = call i64 @esp_wifi_sta_wpa2_ent_disable_internal(%struct.TYPE_3__* %2)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @WPA2_STATE_DISABLED, align 4
  %22 = call i32 @wpa2_set_state(i32 %21)
  br label %27

23:                                               ; preds = %12
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = call i32 (...) @wpa2_api_unlock()
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %1, align 8
  br label %30

30:                                               ; preds = %27, %7
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare dso_local i32 @wpa2_api_lock(...) #1

declare dso_local i64 @wpa2_is_disabled(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa2_api_unlock(...) #1

declare dso_local i64 @esp_wifi_sta_wpa2_ent_disable_internal(%struct.TYPE_3__*) #1

declare dso_local i32 @wpa2_set_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
