; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/gattc_gatts_coex/main/extr_gattc_gatts_coex.c_gap_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/gattc_gatts_coex/main/extr_gattc_gatts_coex.c_gap_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@adv_config_flag = common dso_local global i32 0, align 4
@adv_config_done = common dso_local global i32 0, align 4
@adv_params = common dso_local global i32 0, align 4
@scan_rsp_config_flag = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Advertising start failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Advertising start successfully\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Advertising stop failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Stop adv successfully\0A\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"scan stop failed, error status = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT, stop scan successfully\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT, set scan sparameters complete\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"scan start failed, error status = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"ESP_GAP_BLE_SCAN_START_COMPLETE_EVT, scan start success\0A\00", align 1
@ESP_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@remote_device_name = common dso_local global i32 0, align 4
@connect = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"connect to the remote device %s\0A\00", align 1
@gattc_profile_tab = common dso_local global %struct.TYPE_17__* null, align 8
@GATTC_PROFILE_C_APP_ID = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"ESP_GAP_SEARCH_INQ_CMPL_EVT, scan stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*)* @gap_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_event_handler(i32 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %180 [
    i32 138, label %10
    i32 133, label %20
    i32 137, label %30
    i32 136, label %43
    i32 130, label %57
    i32 131, label %84
    i32 135, label %101
    i32 132, label %106
    i32 134, label %123
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @adv_config_flag, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @adv_config_done, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @adv_config_done, align 4
  %15 = load i32, i32* @adv_config_done, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %19

19:                                               ; preds = %17, %10
  br label %181

20:                                               ; preds = %2
  %21 = load i32, i32* @scan_rsp_config_flag, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @adv_config_done, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @adv_config_done, align 4
  %25 = load i32, i32* @adv_config_done, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %29

29:                                               ; preds = %27, %20
  br label %181

30:                                               ; preds = %2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @COEX_TAG, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* @COEX_TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %181

43:                                               ; preds = %2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @COEX_TAG, align 4
  %52 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @COEX_TAG, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  br label %181

57:                                               ; preds = %2
  %58 = load i32, i32* @COEX_TAG, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %66, i32 %70, i32 %74, i32 %78, i32 %82)
  br label %181

84:                                               ; preds = %2
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* @COEX_TAG, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %181

98:                                               ; preds = %84
  %99 = load i32, i32* @COEX_TAG, align 4
  %100 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %99, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %181

101:                                              ; preds = %2
  %102 = load i32, i32* @COEX_TAG, align 4
  %103 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  store i32 120, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @esp_ble_gap_start_scanning(i32 %104)
  br label %181

106:                                              ; preds = %2
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load i32, i32* @COEX_TAG, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  br label %181

120:                                              ; preds = %106
  %121 = load i32, i32* @COEX_TAG, align 4
  %122 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %121, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  br label %181

123:                                              ; preds = %2
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %124, %struct.TYPE_16__** %8, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %178 [
    i32 128, label %129
    i32 129, label %175
  ]

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ESP_BLE_AD_TYPE_NAME_CMPL, align 4
  %135 = call i32* @esp_ble_resolve_adv_data(i32 %133, i32 %134, i32* %6)
  store i32* %135, i32** %5, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %174

138:                                              ; preds = %129
  %139 = load i32, i32* @remote_device_name, align 4
  %140 = call i32 @strlen(i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %173

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load i32, i32* @remote_device_name, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @strncmp(i8* %145, i32 %146, i32 %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %143
  %151 = load i32, i32* @connect, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  store i32 1, i32* @connect, align 4
  %154 = load i32, i32* @COEX_TAG, align 4
  %155 = load i32, i32* @remote_device_name, align 4
  %156 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %155)
  %157 = call i32 (...) @esp_ble_gap_stop_scanning()
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** @gattc_profile_tab, align 8
  %159 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @esp_ble_gattc_open(i32 %162, i32 %166, i32 %170, i32 1)
  br label %172

172:                                              ; preds = %153, %150
  br label %173

173:                                              ; preds = %172, %143, %138
  br label %174

174:                                              ; preds = %173, %129
  br label %179

175:                                              ; preds = %123
  %176 = load i32, i32* @COEX_TAG, align 4
  %177 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %176, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %179

178:                                              ; preds = %123
  br label %179

179:                                              ; preds = %178, %175, %174
  br label %181

180:                                              ; preds = %2
  br label %181

181:                                              ; preds = %180, %179, %120, %113, %101, %98, %91, %57, %56, %40, %29, %19
  ret void
}

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32* @esp_ble_resolve_adv_data(i32, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @esp_ble_gap_stop_scanning(...) #1

declare dso_local i32 @esp_ble_gattc_open(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
