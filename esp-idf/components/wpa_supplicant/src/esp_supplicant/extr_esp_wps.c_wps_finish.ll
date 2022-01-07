; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_finish.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@WPS_FINISHED = common dso_local global i64 0, align 8
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_WPS_ER_FAILED = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wps finished------>\00", align 1
@WPS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"wps failed----->\00", align 1
@WPS_FAIL_REASON_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_sm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %5, %struct.wps_sm** %2, align 8
  %6 = load i32, i32* @ESP_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %8 = icmp ne %struct.wps_sm* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ESP_FAIL, align 4
  store i32 %10, i32* %1, align 4
  br label %95

11:                                               ; preds = %0
  %12 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %13 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %12, i32 0, i32 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPS_FINISHED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %11
  %20 = call i64 @os_zalloc(i32 24)
  %21 = inttoptr i64 %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @WIFI_EVENT, align 4
  %26 = load i32, i32* @WIFI_EVENT_STA_WPS_ER_FAILED, align 4
  %27 = load i32, i32* @portMAX_DELAY, align 4
  %28 = call i32 @esp_event_send_internal(i32 %25, i32 %26, i32 0, i32 0, i32 %27)
  %29 = load i32, i32* @ESP_FAIL, align 4
  store i32 %29, i32* %1, align 4
  br label %95

30:                                               ; preds = %19
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @WPS_STATUS_SUCCESS, align 4
  %34 = call i32 @wps_set_status(i32 %33)
  %35 = call i32 (...) @esp_wifi_disarm_sta_connection_timer_internal()
  %36 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %37 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %36, i32 0, i32 7
  %38 = call i32 @ets_timer_disarm(i32* %37)
  %39 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %40 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %39, i32 0, i32 6
  %41 = call i32 @ets_timer_disarm(i32* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = call i32 @memset(%struct.TYPE_9__* %42, i32 0, i32 4)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %49 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %52 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %47, i32 %50, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %60 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %63 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32 %58, i32 %61, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %71 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = call i32 @esp_wifi_set_config(i32 0, %struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = call i32 @os_free(%struct.TYPE_9__* %80)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %82 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %83 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %82, i32 0, i32 0
  %84 = call i32 @ets_timer_disarm(i32* %83)
  %85 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %86 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %85, i32 0, i32 0
  %87 = call i32 @ets_timer_arm(i32* %86, i32 1000, i32 0)
  store i32 0, i32* %3, align 4
  br label %93

88:                                               ; preds = %11
  %89 = load i32, i32* @MSG_ERROR, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @WPS_FAIL_REASON_NORMAL, align 4
  %92 = call i32 @wps_stop_process(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %30
  %94 = load i32, i32* %3, align 4
  store i32 %94, i32* %1, align 4
  br label %95

95:                                               ; preds = %93, %24, %9
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @esp_event_send_internal(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_set_status(i32) #1

declare dso_local i32 @esp_wifi_disarm_sta_connection_timer_internal(...) #1

declare dso_local i32 @ets_timer_disarm(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @os_free(%struct.TYPE_9__*) #1

declare dso_local i32 @ets_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @wps_stop_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
