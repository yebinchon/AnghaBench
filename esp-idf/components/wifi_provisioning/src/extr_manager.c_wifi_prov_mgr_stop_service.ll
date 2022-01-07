; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_stop_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_stop_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8**, i32, i32**, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32* }

@prov_ctx = common dso_local global %struct.TYPE_4__* null, align 8
@WIFI_PROV_STATE_STARTING = common dso_local global i64 0, align 8
@WIFI_PROV_STATE_STOPPING = common dso_local global i64 0, align 8
@prov_ctx_lock = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Provisioning is already stopping\00", align 1
@WIFI_PROV_STATE_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Provisioning not running\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Stopping provisioning\00", align 1
@MAX_SCAN_RESULTS = common dso_local global i64 0, align 8
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@wifi_prov_mgr_event_handler_internal = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"prov_stop_task\00", align 1
@tskIDLE_PRIORITY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Provisioning scheduled for stopping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wifi_prov_mgr_stop_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_prov_mgr_stop_service(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %28, %8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WIFI_PROV_STATE_STARTING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WIFI_PROV_STATE_STOPPING, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ true, %12 ], [ %23, %18 ]
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i1 [ false, %9 ], [ %25, %24 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load i32, i32* @prov_ctx_lock, align 4
  %30 = call i32 @RELEASE_LOCK(i32 %29)
  %31 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %32 = sdiv i32 100, %31
  %33 = call i32 @vTaskDelay(i32 %32)
  %34 = load i32, i32* @prov_ctx_lock, align 4
  %35 = call i32 @ACQUIRE_LOCK(i32 %34)
  br label %9

36:                                               ; preds = %26
  br label %70

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %49, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WIFI_PROV_STATE_STARTING, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %57

49:                                               ; preds = %47
  %50 = load i32, i32* @prov_ctx_lock, align 4
  %51 = call i32 @RELEASE_LOCK(i32 %50)
  %52 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %53 = sdiv i32 100, %52
  %54 = call i32 @vTaskDelay(i32 %53)
  %55 = load i32, i32* @prov_ctx_lock, align 4
  %56 = call i32 @ACQUIRE_LOCK(i32 %55)
  br label %38

57:                                               ; preds = %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WIFI_PROV_STATE_STOPPING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 @ESP_LOGD(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WIFI_PROV_STATE_IDLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %70
  %80 = load i32, i32* @TAG, align 4
  %81 = call i32 @ESP_LOGD(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

82:                                               ; preds = %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @esp_timer_stop(i32* %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @esp_timer_delete(i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %87, %82
  %99 = load i32, i32* @TAG, align 4
  %100 = call i32 @ESP_LOGD(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i64, i64* @WIFI_PROV_STATE_STOPPING, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %98
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 @free(i8* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %109, %98
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %121, 14
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* null, i8** %137, align 8
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %120

141:                                              ; preds = %120
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  store i64 0, i64* %5, align 8
  br label %144

144:                                              ; preds = %154, %141
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @MAX_SCAN_RESULTS, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds i32*, i32** %151, i64 %152
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %148
  %155 = load i64, i64* %5, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %5, align 8
  br label %144

157:                                              ; preds = %144
  %158 = load i32, i32* @WIFI_EVENT, align 4
  %159 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %160 = load i32, i32* @wifi_prov_mgr_event_handler_internal, align 4
  %161 = call i32 @esp_event_handler_unregister(i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* @IP_EVENT, align 4
  %163 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %164 = load i32, i32* @wifi_prov_mgr_event_handler_internal, align 4
  %165 = call i32 @esp_event_handler_unregister(i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %3, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %157
  %169 = load i32, i32* @prov_ctx_lock, align 4
  %170 = call i32 @RELEASE_LOCK(i32 %169)
  %171 = call i32 @prov_stop_task(i8* null)
  %172 = load i32, i32* @prov_ctx_lock, align 4
  %173 = call i32 @ACQUIRE_LOCK(i32 %172)
  %174 = load i64, i64* @WIFI_PROV_STATE_IDLE, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prov_ctx, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  br label %186

177:                                              ; preds = %157
  %178 = load i32, i32* @tskIDLE_PRIORITY, align 4
  %179 = call i64 @xTaskCreate(i32 (i8*)* @prov_stop_task, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 4096, i8* inttoptr (i64 1 to i8*), i32 %178, i32* null)
  %180 = load i64, i64* @pdPASS, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load i32, i32* @TAG, align 4
  %185 = call i32 @ESP_LOGD(i32 %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %186

186:                                              ; preds = %177, %168
  store i32 1, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %79, %66
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @esp_timer_stop(i32*) #1

declare dso_local i32 @esp_timer_delete(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

declare dso_local i32 @prov_stop_task(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xTaskCreate(i32 (i8*)*, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
