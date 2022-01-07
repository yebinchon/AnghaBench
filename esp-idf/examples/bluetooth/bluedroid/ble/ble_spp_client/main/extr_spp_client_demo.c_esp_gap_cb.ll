; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_client/main/extr_spp_client_demo.c_esp_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_client/main/extr_spp_client_demo.c_esp_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Scan param set failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Enable Ble Scan:during time 0x%04X minutes.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Scan start failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Scan start successed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Scan stop failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Scan stop successed\00", align 1
@is_connect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Connect to the remote device.\00", align 1
@gl_profile_tab = common dso_local global %struct.TYPE_13__* null, align 8
@PROFILE_APP_ID = common dso_local global i64 0, align 8
@scan_rst = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Searched Adv Data Len %d, Scan Response Len %d\00", align 1
@ESP_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Searched Device Name Len %d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@device_name = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Adv stop failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Stop adv successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_20__*)* @esp_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gap_cb(i32 %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %145 [
    i32 133, label %11
    i32 131, label %29
    i32 130, label %44
    i32 132, label %73
    i32 134, label %129
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @GATTC_TAG, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @esp_err_to_name(i32 %20)
  %22 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %146

23:                                               ; preds = %11
  store i32 65535, i32* %8, align 4
  %24 = load i32, i32* @GATTC_TAG, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @esp_ble_gap_start_scanning(i32 %27)
  br label %146

29:                                               ; preds = %2
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @GATTC_TAG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @esp_err_to_name(i32 %38)
  %40 = call i32 @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %146

41:                                               ; preds = %29
  %42 = load i32, i32* @GATTC_TAG, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %146

44:                                               ; preds = %2
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @GATTC_TAG, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @esp_err_to_name(i32 %53)
  %55 = call i32 @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %146

56:                                               ; preds = %44
  %57 = load i32, i32* @GATTC_TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @is_connect, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @GATTC_TAG, align 4
  %63 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @gl_profile_tab, align 8
  %65 = load i64, i64* @PROFILE_APP_ID, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @scan_rst, i32 0, i32 0, i32 1), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @scan_rst, i32 0, i32 0, i32 0), align 4
  %71 = call i32 @esp_ble_gattc_open(i32 %68, i32 %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %61, %56
  br label %146

73:                                               ; preds = %2
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %9, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %127 [
    i32 128, label %79
    i32 129, label %126
  ]

79:                                               ; preds = %73
  %80 = load i32, i32* @GATTC_TAG, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @esp_log_buffer_hex(i32 %80, i32 %84, i32 6)
  %86 = load i32, i32* @GATTC_TAG, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ESP_BLE_AD_TYPE_NAME_CMPL, align 4
  %101 = call i32* @esp_ble_resolve_adv_data(i32 %99, i32 %100, i32* %6)
  store i32* %101, i32** %5, align 8
  %102 = load i32, i32* @GATTC_TAG, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @GATTC_TAG, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @esp_log_buffer_char(i32 %105, i32* %106, i32 %107)
  %109 = load i32, i32* @GATTC_TAG, align 4
  %110 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %111 = load i32*, i32** %5, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %79
  %114 = load i32*, i32** %5, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = load i32, i32* @device_name, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @strncmp(i8* %115, i32 %116, i32 %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = call i32 @memcpy(%struct.TYPE_21__* @scan_rst, %struct.TYPE_20__* %121, i32 36)
  %123 = call i32 (...) @esp_ble_gap_stop_scanning()
  br label %124

124:                                              ; preds = %120, %113
  br label %125

125:                                              ; preds = %124, %79
  br label %128

126:                                              ; preds = %73
  br label %128

127:                                              ; preds = %73
  br label %128

128:                                              ; preds = %127, %126, %125
  br label %146

129:                                              ; preds = %2
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* @GATTC_TAG, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @esp_err_to_name(i32 %138)
  %140 = call i32 @ESP_LOGE(i32 %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  br label %144

141:                                              ; preds = %129
  %142 = load i32, i32* @GATTC_TAG, align 4
  %143 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  br label %146

145:                                              ; preds = %2
  br label %146

146:                                              ; preds = %145, %144, %128, %72, %51, %41, %36, %23, %18
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32 @esp_ble_gattc_open(i32, i32, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32* @esp_ble_resolve_adv_data(i32, i32, i32*) #1

declare dso_local i32 @esp_log_buffer_char(i32, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @esp_ble_gap_stop_scanning(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
