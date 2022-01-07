; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_wpa_config_profile.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_wpa_config_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_profile() #0 {
  %1 = call i64 (...) @esp_wifi_sta_prof_is_wpa_internal()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @WPA_PROTO_WPA, align 4
  %5 = call i32 (...) @esp_wifi_sta_get_prof_authmode_internal()
  %6 = call i32 @wpa_set_profile(i32 %4, i32 %5)
  br label %17

7:                                                ; preds = %0
  %8 = call i64 (...) @esp_wifi_sta_prof_is_wpa2_internal()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @WPA_PROTO_RSN, align 4
  %12 = call i32 (...) @esp_wifi_sta_get_prof_authmode_internal()
  %13 = call i32 @wpa_set_profile(i32 %11, i32 %12)
  br label %16

14:                                               ; preds = %7
  %15 = call i32 @WPA_ASSERT(i32 0)
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

declare dso_local i64 @esp_wifi_sta_prof_is_wpa_internal(...) #1

declare dso_local i32 @wpa_set_profile(i32, i32) #1

declare dso_local i32 @esp_wifi_sta_get_prof_authmode_internal(...) #1

declare dso_local i64 @esp_wifi_sta_prof_is_wpa2_internal(...) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
