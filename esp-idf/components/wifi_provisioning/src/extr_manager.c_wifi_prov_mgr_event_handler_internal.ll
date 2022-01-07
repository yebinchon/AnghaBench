; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_event_handler_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_event_handler_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@prov_ctx = common dso_local global %struct.TYPE_8__* null, align 8
@WIFI_PROV_STATE_STARTED = common dso_local global i64 0, align 8
@WIFI_EVENT = common dso_local global i64 0, align 8
@WIFI_EVENT_SCAN_DONE = common dso_local global i32 0, align 4
@WIFI_PROV_STATE_CRED_RECV = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"STA Start\00", align 1
@WIFI_PROV_STA_CONNECTING = common dso_local global i8* null, align 8
@IP_EVENT = common dso_local global i64 0, align 8
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"STA Got IP\00", align 1
@WIFI_PROV_STA_CONNECTED = common dso_local global i64 0, align 8
@WIFI_PROV_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Starting 30s timer for stop_prov_timer_cb()\00", align 1
@WIFI_PROV_CRED_SUCCESS = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"STA Disconnected\00", align 1
@WIFI_PROV_STA_DISCONNECTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Disconnect reason : %d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"STA Auth Error\00", align 1
@WIFI_PROV_STA_AUTH_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"STA AP Not found\00", align 1
@WIFI_PROV_STA_AP_NOT_FOUND = common dso_local global i32 0, align 4
@WIFI_PROV_STATE_FAIL = common dso_local global i64 0, align 8
@WIFI_PROV_CRED_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i8*)* @wifi_prov_mgr_event_handler_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_prov_mgr_event_handler_internal(i8* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @prov_ctx_lock, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %161

16:                                               ; preds = %4
  %17 = load i32, i32* @prov_ctx_lock, align 4
  %18 = call i32 @ACQUIRE_LOCK(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @prov_ctx_lock, align 4
  %23 = call i32 @RELEASE_LOCK(i32 %22)
  br label %161

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WIFI_PROV_STATE_STARTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @WIFI_EVENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WIFI_EVENT_SCAN_DONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @update_wifi_scan_results()
  br label %40

40:                                               ; preds = %38, %34, %30, %24
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WIFI_PROV_STATE_CRED_RECV, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @prov_ctx_lock, align 4
  %48 = call i32 @RELEASE_LOCK(i32 %47)
  br label %161

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @WIFI_EVENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @WIFI_EVENT_STA_START, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** @WIFI_PROV_STA_CONNECTING, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %158

64:                                               ; preds = %53, %49
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @IP_EVENT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load i32, i32* @TAG, align 4
  %74 = call i32 @ESP_LOGI(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i64, i64* @WIFI_PROV_STA_CONNECTED, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* @WIFI_PROV_STATE_SUCCESS, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* @TAG, align 4
  %89 = call i32 @ESP_LOGD(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @esp_timer_start_once(i32 %92, i32 30000000)
  br label %94

94:                                               ; preds = %87, %72
  %95 = load i32, i32* @WIFI_PROV_CRED_SUCCESS, align 4
  %96 = call i32 @execute_event_cb(i32 %95, i8* null, i32 0)
  br label %157

97:                                               ; preds = %68, %64
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @WIFI_EVENT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %156

105:                                              ; preds = %101
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64, i64* @WIFI_PROV_STA_DISCONNECTED, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = bitcast i8* %111 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %9, align 8
  %113 = load i32, i32* @TAG, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %133 [
    i32 131, label %121
    i32 133, label %121
    i32 130, label %121
    i32 132, label %121
    i32 129, label %121
    i32 128, label %127
  ]

121:                                              ; preds = %105, %105, %105, %105, %105
  %122 = load i32, i32* @TAG, align 4
  %123 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @WIFI_PROV_STA_AUTH_ERROR, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %139

127:                                              ; preds = %105
  %128 = load i32, i32* @TAG, align 4
  %129 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @WIFI_PROV_STA_AP_NOT_FOUND, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %139

133:                                              ; preds = %105
  %134 = load i8*, i8** @WIFI_PROV_STA_CONNECTING, align 8
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = call i32 (...) @esp_wifi_connect()
  br label %139

139:                                              ; preds = %133, %127, %121
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @WIFI_PROV_STA_DISCONNECTED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load i64, i64* @WIFI_PROV_STATE_FAIL, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @WIFI_PROV_CRED_FAIL, align 4
  %153 = bitcast i32* %10 to i8*
  %154 = call i32 @execute_event_cb(i32 %152, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %145, %139
  br label %156

156:                                              ; preds = %155, %101, %97
  br label %157

157:                                              ; preds = %156, %94
  br label %158

158:                                              ; preds = %157, %57
  %159 = load i32, i32* @prov_ctx_lock, align 4
  %160 = call i32 @RELEASE_LOCK(i32 %159)
  br label %161

161:                                              ; preds = %158, %46, %21, %13
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @update_wifi_scan_results(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @esp_timer_start_once(i32, i32) #1

declare dso_local i32 @execute_event_cb(i32, i8*, i32) #1

declare dso_local i32 @esp_wifi_connect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
