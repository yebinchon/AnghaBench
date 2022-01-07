; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i32, i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS: wps not initial\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@WPS_CALC_KEY_PRE_CALC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_station_wps_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_sm*, align 8
  %3 = call %struct.wps_sm* (...) @wps_sm_get()
  store %struct.wps_sm* %3, %struct.wps_sm** %2, align 8
  %4 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %5 = icmp ne %struct.wps_sm* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @MSG_ERROR, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ESP_FAIL, align 4
  store i32 %9, i32* %1, align 4
  br label %37

10:                                               ; preds = %0
  %11 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %12 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %11, i32 0, i32 1
  %13 = call i32 @ets_timer_arm(i32* %12, i32 120000, i32 0)
  %14 = call i32 (...) @wps_get_status()
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 128, label %24
  ]

15:                                               ; preds = %10
  %16 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %17 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %19 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WPS_CALC_KEY_PRE_CALC, align 4
  %22 = call i32 @wps_build_public_key(i32 %20, i32* null, i32 %21)
  %23 = call i32 (...) @wifi_wps_scan()
  br label %34

24:                                               ; preds = %10
  %25 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %26 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %28 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %27, i32 0, i32 1
  %29 = call i32 @ets_timer_disarm(i32* %28)
  %30 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %31 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %30, i32 0, i32 1
  %32 = call i32 @ets_timer_arm(i32* %31, i32 120000, i32 0)
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %24, %15
  %35 = call i32 @esp_wifi_set_wps_start_flag_internal(i32 1)
  %36 = load i32, i32* @ESP_OK, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %6
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.wps_sm* @wps_sm_get(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ets_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @wps_get_status(...) #1

declare dso_local i32 @wps_build_public_key(i32, i32*, i32) #1

declare dso_local i32 @wifi_wps_scan(...) #1

declare dso_local i32 @ets_timer_disarm(i32*) #1

declare dso_local i32 @esp_wifi_set_wps_start_flag_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
