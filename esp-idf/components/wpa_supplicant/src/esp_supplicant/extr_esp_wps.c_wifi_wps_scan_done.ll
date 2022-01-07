; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_wps_scan_done.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_wps_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WPS_TYPE_DISABLE = common dso_local global i64 0, align 8
@WPS_STATUS_PENDING = common dso_local global i64 0, align 8
@WPS_STATUS_SCANNING = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PBC session overlap!\00", align 1
@WPS_STATUS_DISABLE = common dso_local global i64 0, align 8
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"wps scan_done discover_ssid_cnt = %d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"WPS: neg start\00", align 1
@WPS_IGNORE_SEL_REG_MAX_CNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wifi_wps_scan_done(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_sm*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %7, %struct.wps_sm** %5, align 8
  %8 = call i64 (...) @wps_get_type()
  %9 = load i64, i64* @WPS_TYPE_DISABLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %14 = icmp ne %struct.wps_sm* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %82

16:                                               ; preds = %12
  %17 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %18 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* @WPS_STATUS_PENDING, align 8
  %23 = call i32 @wps_set_status(i64 %22)
  br label %42

24:                                               ; preds = %16
  %25 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %26 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* @WPS_STATUS_SCANNING, align 8
  %31 = call i32 @wps_set_status(i64 %30)
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @WPS_STATUS_DISABLE, align 8
  %36 = call i32 @wps_set_status(i64 %35)
  %37 = load i32, i32* @WIFI_EVENT, align 4
  %38 = load i32, i32* @WIFI_EVENT_STA_WPS_ER_PBC_OVERLAP, align 4
  %39 = load i32, i32* @portMAX_DELAY, align 4
  %40 = call i32 @esp_event_send_internal(i32 %37, i32 %38, i32 0, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %32, %29
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %45 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %49 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = call i64 (...) @wps_get_status()
  %51 = load i64, i64* @WPS_STATUS_PENDING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = call i32 (...) @esp_wifi_disconnect()
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %56 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %57 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %56, i32 0, i32 4
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = call i32 @esp_wifi_set_config(i32 0, %struct.TYPE_3__* %6)
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 (...) @esp_wifi_connect()
  br label %82

63:                                               ; preds = %42
  %64 = call i64 (...) @wps_get_status()
  %65 = load i64, i64* @WPS_STATUS_SCANNING, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %69 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WPS_IGNORE_SEL_REG_MAX_CNT, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %75 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.wps_sm*, %struct.wps_sm** %5, align 8
  %78 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %77, i32 0, i32 3
  %79 = call i32 @ets_timer_arm(i32* %78, i32 100, i32 0)
  br label %81

80:                                               ; preds = %63
  br label %82

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %11, %15, %80, %81, %53
  ret void
}

declare dso_local i64 @wps_get_type(...) #1

declare dso_local i32 @wps_set_status(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @esp_event_send_internal(i32, i32, i32, i32, i32) #1

declare dso_local i64 @wps_get_status(...) #1

declare dso_local i32 @esp_wifi_disconnect(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @ets_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
