; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/gattc_gatts_coex/main/extr_gattc_gatts_coex.c_gattc_profile_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/gattc_gatts_coex/main/extr_gattc_gatts_coex.c_gattc_profile_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_41__, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__, i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }

@COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"REG_EVT\0A\00", align 1
@ble_scan_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"set scan params error, error code = %x\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ESP_GATTC_CONNECT_EVT conn_id %d, if %d\0A\00", align 1
@gattc_profile_tab = common dso_local global %struct.TYPE_37__* null, align 8
@GATTC_PROFILE_C_APP_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"REMOTE BDA:\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"config MTU error, error code = %x\0A\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"open failed, status %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"open success\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"discover service failed, status %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"discover service complete conn_id %d\0A\00", align 1
@remote_filter_service_uuid = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"config mtu failed, error status = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"ESP_GATTC_CFG_MTU_EVT, Status %d, MTU %d, conn_id %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"SEARCH RES: conn_id = %x is primary service %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"start handle %d end handle %d current handle value %d\0A\00", align 1
@ESP_UUID_LEN_16 = common dso_local global i32 0, align 4
@REMOTE_SERVICE_UUID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"service found\0A\00", align 1
@get_server = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"UUID16: %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"search service failed, error status = %x\0A\00", align 1
@ESP_GATT_SERVICE_FROM_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"Get service information from remote device\0A\00", align 1
@ESP_GATT_SERVICE_FROM_NVS_FLASH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"Get service information from flash\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"unknown service source\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"ESP_GATTC_SEARCH_CMPL_EVT\0A\00", align 1
@ESP_GATT_DB_CHARACTERISTIC = common dso_local global i32 0, align 4
@INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"esp_ble_gattc_get_attr_count error\0A\00", align 1
@char_elem_result = common dso_local global %struct.TYPE_34__* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"gattc no mem\0A\00", align 1
@remote_filter_char_uuid = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"esp_ble_gattc_get_char_by_uuid error\0A\00", align 1
@ESP_GATT_CHAR_PROP_BIT_NOTIFY = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"no char found\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"ESP_GATTC_REG_FOR_NOTIFY_EVT\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"REG FOR NOTIFY failed: error status = %d\0A\00", align 1
@ESP_GATT_DB_DESCRIPTOR = common dso_local global i32 0, align 4
@descr_elem_result = common dso_local global %struct.TYPE_34__* null, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"malloc error, gattc no mem\0A\00", align 1
@notify_descr_uuid = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [46 x i8] c"esp_ble_gattc_get_descr_by_char_handle error\0A\00", align 1
@ESP_GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@ESP_GATT_WRITE_TYPE_RSP = common dso_local global i32 0, align 4
@ESP_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [38 x i8] c"esp_ble_gattc_write_char_descr error\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"decsr not found\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"ESP_GATTC_NOTIFY_EVT, receive notify value:\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"ESP_GATTC_NOTIFY_EVT, receive indicate value:\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"write descr failed, error status = %x\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"write descr success \0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"ESP_GATTC_SRVC_CHG_EVT, bd_addr:\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"write char failed, error status = %x\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"write char success \0A\00", align 1
@connect = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [39 x i8] c"ESP_GATTC_DISCONNECT_EVT, reason = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_35__*)* @gattc_profile_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gattc_profile_event_handler(i32 %0, i32 %1, %struct.TYPE_35__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [35 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %6, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_35__* %18, %struct.TYPE_35__** %7, align 8
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %607 [
    i32 134, label %20
    i32 139, label %31
    i32 135, label %79
    i32 137, label %96
    i32 140, label %123
    i32 131, label %152
    i32 132, label %225
    i32 133, label %372
    i32 136, label %502
    i32 128, label %525
    i32 130, label %571
    i32 129, label %583
    i32 138, label %600
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @COEX_TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @esp_ble_gap_set_scan_params(i32* @ble_scan_params)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @COEX_TAG, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  br label %608

31:                                               ; preds = %3
  %32 = load i32, i32* @COEX_TAG, align 4
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %44 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %48 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %55, i32 4)
  %57 = load i32, i32* @COEX_TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @COEX_TAG, align 4
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %61 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @esp_log_buffer_hex(i32 %59, i32 %64, i32 4)
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @esp_ble_gattc_send_mtu_req(i32 %66, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %31
  %75 = load i32, i32* @COEX_TAG, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %31
  br label %608

79:                                               ; preds = %3
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ESP_GATT_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* @COEX_TAG, align 4
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %608

93:                                               ; preds = %79
  %94 = load i32, i32* @COEX_TAG, align 4
  %95 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %608

96:                                               ; preds = %3
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ESP_GATT_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load i32, i32* @COEX_TAG, align 4
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  br label %608

110:                                              ; preds = %96
  %111 = load i32, i32* @COEX_TAG, align 4
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @esp_ble_gattc_search_service(i32 %117, i32 %121, i32* @remote_filter_service_uuid)
  br label %608

123:                                              ; preds = %3
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ESP_GATT_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32, i32* @COEX_TAG, align 4
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i32, i32* @COEX_TAG, align 4
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %138, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %142, i32 %146, i32 %150)
  br label %608

152:                                              ; preds = %3
  %153 = load i32, i32* @COEX_TAG, align 4
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %153, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %157, i32 %161)
  %163 = load i32, i32* @COEX_TAG, align 4
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %163, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %167, i32 %171, i32 %176)
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ESP_UUID_LEN_16, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %224

186:                                              ; preds = %152
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @REMOTE_SERVICE_UUID, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %186
  %197 = load i32, i32* @COEX_TAG, align 4
  %198 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* @get_server, align 4
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %204 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %205, i32 0, i32 3
  store i32 %202, i32* %206, align 4
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %212 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 2
  store i32 %210, i32* %214, align 4
  %215 = load i32, i32* @COEX_TAG, align 4
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %196, %186, %152
  br label %608

225:                                              ; preds = %3
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @ESP_GATT_OK, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load i32, i32* @COEX_TAG, align 4
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %233, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %237)
  br label %608

239:                                              ; preds = %225
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ESP_GATT_SERVICE_FROM_REMOTE_DEVICE, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i32, i32* @COEX_TAG, align 4
  %248 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %247, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %263

249:                                              ; preds = %239
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ESP_GATT_SERVICE_FROM_NVS_FLASH, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load i32, i32* @COEX_TAG, align 4
  %258 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %257, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  br label %262

259:                                              ; preds = %249
  %260 = load i32, i32* @COEX_TAG, align 4
  %261 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %246
  %264 = load i32, i32* @COEX_TAG, align 4
  %265 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %266 = load i32, i32* @get_server, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %371

268:                                              ; preds = %263
  store i32 0, i32* %10, align 4
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @ESP_GATT_DB_CHARACTERISTIC, align 4
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %276 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %277 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %281 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %282 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @INVALID_HANDLE, align 4
  %286 = call i32 @esp_ble_gattc_get_attr_count(i32 %269, i32 %273, i32 %274, i32 %279, i32 %284, i32 %285, i32* %10)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @ESP_GATT_OK, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %268
  %291 = load i32, i32* @COEX_TAG, align 4
  %292 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %291, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %268
  %294 = load i32, i32* %10, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %367

296:                                              ; preds = %293
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 20, %298
  %300 = trunc i64 %299 to i32
  %301 = call %struct.TYPE_34__* @malloc(i32 %300)
  store %struct.TYPE_34__* %301, %struct.TYPE_34__** @char_elem_result, align 8
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %303 = icmp ne %struct.TYPE_34__* %302, null
  br i1 %303, label %307, label %304

304:                                              ; preds = %296
  %305 = load i32, i32* @COEX_TAG, align 4
  %306 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %305, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  br label %364

307:                                              ; preds = %296
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %314 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %319 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @remote_filter_char_uuid, align 4
  %324 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %325 = call i32 @esp_ble_gattc_get_char_by_uuid(i32 %308, i32 %312, i32 %317, i32 %322, i32 %323, %struct.TYPE_34__* %324, i32* %10)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = load i32, i32* @ESP_GATT_OK, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %307
  %330 = load i32, i32* @COEX_TAG, align 4
  %331 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %330, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  br label %332

332:                                              ; preds = %329, %307
  %333 = load i32, i32* %10, align 4
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %363

335:                                              ; preds = %332
  %336 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %363

343:                                              ; preds = %335
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %349 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %350 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 0
  store i32 %347, i32* %351, align 4
  %352 = load i32, i32* %5, align 4
  %353 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %354 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %355 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i64 0
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @esp_ble_gattc_register_for_notify(i32 %352, i32 %357, i32 %361)
  br label %363

363:                                              ; preds = %343, %335, %332
  br label %364

364:                                              ; preds = %363, %304
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** @char_elem_result, align 8
  %366 = call i32 @free(%struct.TYPE_34__* %365)
  br label %370

367:                                              ; preds = %293
  %368 = load i32, i32* @COEX_TAG, align 4
  %369 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %368, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %364
  br label %371

371:                                              ; preds = %370, %263
  br label %608

372:                                              ; preds = %3
  %373 = load i32, i32* @COEX_TAG, align 4
  %374 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @ESP_GATT_OK, align 4
  %380 = icmp ne i32 %378, %379
  br i1 %380, label %381, label %388

381:                                              ; preds = %372
  %382 = load i32, i32* @COEX_TAG, align 4
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 4
  %385 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %382, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %386)
  br label %501

388:                                              ; preds = %372
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %389 = load i32, i32* %5, align 4
  %390 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %391 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @ESP_GATT_DB_DESCRIPTOR, align 4
  %396 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %397 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %398 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %396, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %402 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %407 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @esp_ble_gattc_get_attr_count(i32 %389, i32 %394, i32 %395, i32 %400, i32 %405, i32 %410, i32* %12)
  store i32 %411, i32* %14, align 4
  %412 = load i32, i32* %14, align 4
  %413 = load i32, i32* @ESP_GATT_OK, align 4
  %414 = icmp ne i32 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %388
  %416 = load i32, i32* @COEX_TAG, align 4
  %417 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %416, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  br label %418

418:                                              ; preds = %415, %388
  %419 = load i32, i32* %12, align 4
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %497

421:                                              ; preds = %418
  %422 = load i32, i32* %12, align 4
  %423 = sext i32 %422 to i64
  %424 = mul i64 4, %423
  %425 = trunc i64 %424 to i32
  %426 = call %struct.TYPE_34__* @malloc(i32 %425)
  store %struct.TYPE_34__* %426, %struct.TYPE_34__** @descr_elem_result, align 8
  %427 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %428 = icmp ne %struct.TYPE_34__* %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %421
  %430 = load i32, i32* @COEX_TAG, align 4
  %431 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %430, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  br label %496

432:                                              ; preds = %421
  %433 = load i32, i32* %5, align 4
  %434 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %435 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %434, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %439, i32 0, i32 4
  %441 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @notify_descr_uuid, align 4
  %444 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %445 = call i32 @esp_ble_gattc_get_descr_by_char_handle(i32 %433, i32 %438, i32 %442, i32 %443, %struct.TYPE_34__* %444, i32* %12)
  store i32 %445, i32* %14, align 4
  %446 = load i32, i32* %14, align 4
  %447 = load i32, i32* @ESP_GATT_OK, align 4
  %448 = icmp ne i32 %446, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %432
  %450 = load i32, i32* @COEX_TAG, align 4
  %451 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %450, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0))
  br label %452

452:                                              ; preds = %449, %432
  %453 = load i32, i32* %12, align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %486

455:                                              ; preds = %452
  %456 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %457 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %456, i64 0
  %458 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @ESP_UUID_LEN_16, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %486

463:                                              ; preds = %455
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i64 0
  %466 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @ESP_GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %486

472:                                              ; preds = %463
  %473 = load i32, i32* %5, align 4
  %474 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %475 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %476 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %474, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %480 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %479, i64 0
  %481 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %484 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %485 = call i32 @esp_ble_gattc_write_char_descr(i32 %473, i32 %478, i32 %482, i32 4, i32* %13, i32 %483, i32 %484)
  store i32 %485, i32* %14, align 4
  br label %486

486:                                              ; preds = %472, %463, %455, %452
  %487 = load i32, i32* %14, align 4
  %488 = load i32, i32* @ESP_GATT_OK, align 4
  %489 = icmp ne i32 %487, %488
  br i1 %489, label %490, label %493

490:                                              ; preds = %486
  %491 = load i32, i32* @COEX_TAG, align 4
  %492 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %491, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  br label %493

493:                                              ; preds = %490, %486
  %494 = load %struct.TYPE_34__*, %struct.TYPE_34__** @descr_elem_result, align 8
  %495 = call i32 @free(%struct.TYPE_34__* %494)
  br label %496

496:                                              ; preds = %493, %429
  br label %500

497:                                              ; preds = %418
  %498 = load i32, i32* @COEX_TAG, align 4
  %499 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %498, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  br label %500

500:                                              ; preds = %497, %496
  br label %501

501:                                              ; preds = %500, %381
  br label %608

502:                                              ; preds = %3
  %503 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %502
  %509 = load i32, i32* @COEX_TAG, align 4
  %510 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %509, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0))
  br label %514

511:                                              ; preds = %502
  %512 = load i32, i32* @COEX_TAG, align 4
  %513 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %512, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  br label %514

514:                                              ; preds = %511, %508
  %515 = load i32, i32* @COEX_TAG, align 4
  %516 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %516, i32 0, i32 3
  %518 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @esp_log_buffer_hex(i32 %515, i32 %519, i32 %523)
  br label %608

525:                                              ; preds = %3
  %526 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* @ESP_GATT_OK, align 4
  %531 = icmp ne i32 %529, %530
  br i1 %531, label %532, label %539

532:                                              ; preds = %525
  %533 = load i32, i32* @COEX_TAG, align 4
  %534 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %533, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i32 %537)
  br label %608

539:                                              ; preds = %525
  %540 = load i32, i32* @COEX_TAG, align 4
  %541 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %540, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %542

542:                                              ; preds = %552, %539
  %543 = load i32, i32* %16, align 4
  %544 = sext i32 %543 to i64
  %545 = icmp ult i64 %544, 140
  br i1 %545, label %546, label %555

546:                                              ; preds = %542
  %547 = load i32, i32* %16, align 4
  %548 = srem i32 %547, 256
  %549 = load i32, i32* %16, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [35 x i32], [35 x i32]* %15, i64 0, i64 %550
  store i32 %548, i32* %551, align 4
  br label %552

552:                                              ; preds = %546
  %553 = load i32, i32* %16, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %16, align 4
  br label %542

555:                                              ; preds = %542
  %556 = load i32, i32* %5, align 4
  %557 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %558 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %559 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %557, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.TYPE_37__*, %struct.TYPE_37__** @gattc_profile_tab, align 8
  %563 = load i64, i64* @GATTC_PROFILE_C_APP_ID, align 8
  %564 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = getelementptr inbounds [35 x i32], [35 x i32]* %15, i64 0, i64 0
  %568 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %569 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %570 = call i32 @esp_ble_gattc_write_char(i32 %556, i32 %561, i32 %566, i32 140, i32* %567, i32 %568, i32 %569)
  br label %608

571:                                              ; preds = %3
  %572 = load i32, i32* %17, align 4
  %573 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %573, i32 0, i32 2
  %575 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @memcpy(i32 %572, i32 %576, i32 4)
  %578 = load i32, i32* @COEX_TAG, align 4
  %579 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %578, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
  %580 = load i32, i32* @COEX_TAG, align 4
  %581 = load i32, i32* %17, align 4
  %582 = call i32 @esp_log_buffer_hex(i32 %580, i32 %581, i32 4)
  br label %608

583:                                              ; preds = %3
  %584 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = load i32, i32* @ESP_GATT_OK, align 4
  %589 = icmp ne i32 %587, %588
  br i1 %589, label %590, label %597

590:                                              ; preds = %583
  %591 = load i32, i32* @COEX_TAG, align 4
  %592 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %591, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), i32 %595)
  br label %608

597:                                              ; preds = %583
  %598 = load i32, i32* @COEX_TAG, align 4
  %599 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %598, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  br label %608

600:                                              ; preds = %3
  store i32 0, i32* @connect, align 4
  store i32 0, i32* @get_server, align 4
  %601 = load i32, i32* @COEX_TAG, align 4
  %602 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %601, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i32 %605)
  br label %608

607:                                              ; preds = %3
  br label %608

608:                                              ; preds = %607, %600, %597, %590, %571, %555, %532, %514, %501, %371, %232, %224, %137, %110, %103, %93, %86, %78, %30
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_set_scan_params(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_send_mtu_req(i32, i32) #1

declare dso_local i32 @esp_ble_gattc_search_service(i32, i32, i32*) #1

declare dso_local i32 @esp_ble_gattc_get_attr_count(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_34__* @malloc(i32) #1

declare dso_local i32 @esp_ble_gattc_get_char_by_uuid(i32, i32, i32, i32, i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @esp_ble_gattc_register_for_notify(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_34__*) #1

declare dso_local i32 @esp_ble_gattc_get_descr_by_char_handle(i32, i32, i32, i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @esp_ble_gattc_write_char_descr(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_write_char(i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
