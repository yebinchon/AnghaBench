; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32*, %struct.wps_sm*, i32* }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@WIFI_APPIE_WPS_PR = common dso_local global i32 0, align 4
@WIFI_APPIE_WPS_AR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_station_wps_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_sm*, align 8
  %3 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %3, %struct.wps_sm** %2, align 8
  %4 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %5 = icmp eq %struct.wps_sm* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_FAIL, align 4
  store i32 %7, i32* %1, align 4
  br label %54

8:                                                ; preds = %0
  %9 = load i32, i32* @WIFI_APPIE_WPS_PR, align 4
  %10 = call i32 @esp_wifi_unset_appie_internal(i32 %9)
  %11 = load i32, i32* @WIFI_APPIE_WPS_AR, align 4
  %12 = call i32 @esp_wifi_unset_appie_internal(i32 %11)
  %13 = call i32 @esp_wifi_set_wps_cb_internal(i32* null)
  %14 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %15 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %20 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wps_dev_deinit(i32* %21)
  %23 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %24 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %8
  %26 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %27 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %26, i32 0, i32 1
  %28 = load %struct.wps_sm*, %struct.wps_sm** %27, align 8
  %29 = icmp ne %struct.wps_sm* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %32 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %31, i32 0, i32 1
  %33 = load %struct.wps_sm*, %struct.wps_sm** %32, align 8
  %34 = call i32 @os_free(%struct.wps_sm* %33)
  %35 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %36 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %35, i32 0, i32 1
  store %struct.wps_sm* null, %struct.wps_sm** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %39 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i32 (...) @wps_deinit()
  %44 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %45 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %48 = icmp ne %struct.wps_sm* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %51 = call i32 @os_free(%struct.wps_sm* %50)
  store %struct.wps_sm* null, %struct.wps_sm** @gWpsSm, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @ESP_OK, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %6
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @esp_wifi_unset_appie_internal(i32) #1

declare dso_local i32 @esp_wifi_set_wps_cb_internal(i32*) #1

declare dso_local i32 @wps_dev_deinit(i32*) #1

declare dso_local i32 @os_free(%struct.wps_sm*) #1

declare dso_local i32 @wps_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
