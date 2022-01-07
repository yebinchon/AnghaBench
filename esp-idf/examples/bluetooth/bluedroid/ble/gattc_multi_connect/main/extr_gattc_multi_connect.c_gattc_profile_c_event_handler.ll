; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gattc_multi_connect/main/extr_gattc_multi_connect.c_gattc_profile_c_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gattc_multi_connect/main/extr_gattc_multi_connect.c_gattc_profile_c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_29__, %struct.TYPE_25__, %struct.TYPE_41__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_28__, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32 }

@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"REG_EVT\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"connect device failed, status %d\00", align 1
@conn_device_c = common dso_local global i32 0, align 4
@gl_profile_tab = common dso_local global %struct.TYPE_32__* null, align 8
@PROFILE_C_APP_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"ESP_GATTC_OPEN_EVT conn_id %d, if %d, status %d, mtu %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"REMOTE BDA:\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"config MTU error, error code = %x\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Config mtu failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Status %d, MTU %d, conn_id %d\00", align 1
@remote_filter_service_uuid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"SEARCH RES: conn_id = %x is primary service %d\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"start handle %d end handle %d current handle value %d\00", align 1
@ESP_UUID_LEN_16 = common dso_local global i32 0, align 4
@REMOTE_SERVICE_UUID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"UUID16: %x\00", align 1
@get_service_c = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"search service failed, error status = %x\00", align 1
@ESP_GATT_DB_CHARACTERISTIC = common dso_local global i32 0, align 4
@INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"esp_ble_gattc_get_attr_count error\00", align 1
@char_elem_result_c = common dso_local global %struct.TYPE_30__* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"gattc no mem\00", align 1
@remote_filter_char_uuid = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"esp_ble_gattc_get_char_by_uuid error\00", align 1
@ESP_GATT_CHAR_PROP_BIT_NOTIFY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"no char found\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"reg notify failed, error status =%x\00", align 1
@ESP_GATT_DB_DESCRIPTOR = common dso_local global i32 0, align 4
@descr_elem_result_c = common dso_local global %struct.TYPE_30__* null, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"malloc error, gattc no mem\00", align 1
@notify_descr_uuid = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [45 x i8] c"esp_ble_gattc_get_descr_by_char_handle error\00", align 1
@ESP_GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@ESP_GATT_WRITE_TYPE_RSP = common dso_local global i32 0, align 4
@ESP_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"esp_ble_gattc_write_char_descr error\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"decsr not found\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"ESP_GATTC_NOTIFY_EVT, Receive notify value:\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"write descr failed, error status = %x\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"write descr success\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Write char failed, error status = %x\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Write char success\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"ESP_GATTC_SRVC_CHG_EVT, bd_addr:%08x%04x\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"device c disconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_31__*)* @gattc_profile_c_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gattc_profile_c_event_handler(i32 %0, i32 %1, %struct.TYPE_31__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [35 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %6, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %7, align 8
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %572 [
    i32 134, label %19
    i32 138, label %22
    i32 135, label %23
    i32 139, label %92
    i32 131, label %123
    i32 132, label %194
    i32 133, label %316
    i32 136, label %444
    i32 128, label %457
    i32 129, label %503
    i32 130, label %521
    i32 137, label %556
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @GATTC_TAG, align 4
  %21 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %573

22:                                               ; preds = %3
  br label %573

23:                                               ; preds = %3
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ESP_GATT_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @GATTC_TAG, align 4
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* @conn_device_c, align 4
  br label %573

37:                                               ; preds = %23
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %39 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32* %42, i32 %46, i32 6)
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %53 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @GATTC_TAG, align 4
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %65, i32 %69)
  %71 = load i32, i32* @GATTC_TAG, align 4
  %72 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @GATTC_TAG, align 4
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @esp_log_buffer_hex(i32 %73, i32 %77, i32 8)
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @esp_ble_gattc_send_mtu_req(i32 %79, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %37
  %88 = load i32, i32* @GATTC_TAG, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %37
  br label %573

92:                                               ; preds = %3
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ESP_GATT_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @GATTC_TAG, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  %103 = load i32, i32* @GATTC_TAG, align 4
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %111, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @esp_ble_gattc_search_service(i32 %117, i32 %121, i32* @remote_filter_service_uuid)
  br label %573

123:                                              ; preds = %3
  %124 = load i32, i32* @GATTC_TAG, align 4
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %128, i32 %132)
  %134 = load i32, i32* @GATTC_TAG, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %134, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %138, i32 %142, i32 %147)
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ESP_UUID_LEN_16, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %123
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @REMOTE_SERVICE_UUID, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %157
  %168 = load i32, i32* @GATTC_TAG, align 4
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  store i32 1, i32* @get_service_c, align 4
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %182 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 4
  store i32 %180, i32* %184, align 4
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %190 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 3
  store i32 %188, i32* %192, align 8
  br label %193

193:                                              ; preds = %167, %157, %123
  br label %573

194:                                              ; preds = %3
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @ESP_GATT_OK, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i32, i32* @GATTC_TAG, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %206)
  br label %573

208:                                              ; preds = %194
  %209 = load i32, i32* @get_service_c, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %315

211:                                              ; preds = %208
  store i32 0, i32* %9, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ESP_GATT_DB_CHARACTERISTIC, align 4
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %219 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %224 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @INVALID_HANDLE, align 4
  %229 = call i32 @esp_ble_gattc_get_attr_count(i32 %212, i32 %216, i32 %217, i32 %222, i32 %227, i32 %228, i32* %9)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @ESP_GATT_OK, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %211
  %234 = load i32, i32* @GATTC_TAG, align 4
  %235 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %211
  %237 = load i32, i32* %9, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %311

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 20, %241
  %243 = trunc i64 %242 to i32
  %244 = call i64 @malloc(i32 %243)
  %245 = inttoptr i64 %244 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %245, %struct.TYPE_30__** @char_elem_result_c, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %247 = icmp ne %struct.TYPE_30__* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %239
  %249 = load i32, i32* @GATTC_TAG, align 4
  %250 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %308

251:                                              ; preds = %239
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %258 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %263 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @remote_filter_char_uuid, align 4
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %269 = call i32 @esp_ble_gattc_get_char_by_uuid(i32 %252, i32 %256, i32 %261, i32 %266, i32 %267, %struct.TYPE_30__* %268, i32* %9)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @ESP_GATT_OK, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %251
  %274 = load i32, i32* @GATTC_TAG, align 4
  %275 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %274, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %276

276:                                              ; preds = %273, %251
  %277 = load i32, i32* %9, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %307

279:                                              ; preds = %276
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %307

287:                                              ; preds = %279
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %293 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 1
  store i32 %291, i32* %295, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %298 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @esp_ble_gattc_register_for_notify(i32 %296, i32* %301, i32 %305)
  br label %307

307:                                              ; preds = %287, %279, %276
  br label %308

308:                                              ; preds = %307, %248
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** @char_elem_result_c, align 8
  %310 = call i32 @free(%struct.TYPE_30__* %309)
  br label %314

311:                                              ; preds = %236
  %312 = load i32, i32* @GATTC_TAG, align 4
  %313 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %308
  br label %315

315:                                              ; preds = %314, %208
  br label %573

316:                                              ; preds = %3
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @ESP_GATT_OK, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %316
  %324 = load i32, i32* @GATTC_TAG, align 4
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %324, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %328)
  br label %573

330:                                              ; preds = %316
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %331 = load i32, i32* %5, align 4
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %333 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @ESP_GATT_DB_DESCRIPTOR, align 4
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %339 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %340 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %344 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %349 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %350 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @esp_ble_gattc_get_attr_count(i32 %331, i32 %336, i32 %337, i32 %342, i32 %347, i32 %352, i32* %11)
  store i32 %353, i32* %13, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* @ESP_GATT_OK, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %330
  %358 = load i32, i32* @GATTC_TAG, align 4
  %359 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %358, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %360

360:                                              ; preds = %357, %330
  %361 = load i32, i32* %11, align 4
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %440

363:                                              ; preds = %360
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = mul i64 20, %365
  %367 = trunc i64 %366 to i32
  %368 = call i64 @malloc(i32 %367)
  %369 = inttoptr i64 %368 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %369, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %370 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %371 = icmp ne %struct.TYPE_30__* %370, null
  br i1 %371, label %375, label %372

372:                                              ; preds = %363
  %373 = load i32, i32* @GATTC_TAG, align 4
  %374 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %373, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %439

375:                                              ; preds = %363
  %376 = load i32, i32* %5, align 4
  %377 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %378 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %377, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @notify_descr_uuid, align 4
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %388 = call i32 @esp_ble_gattc_get_descr_by_char_handle(i32 %376, i32 %381, i32 %385, i32 %386, %struct.TYPE_30__* %387, i32* %11)
  store i32 %388, i32* %13, align 4
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* @ESP_GATT_OK, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %375
  %393 = load i32, i32* @GATTC_TAG, align 4
  %394 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %393, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  br label %395

395:                                              ; preds = %392, %375
  %396 = load i32, i32* %11, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %429

398:                                              ; preds = %395
  %399 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %400 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @ESP_UUID_LEN_16, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %429

406:                                              ; preds = %398
  %407 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %408 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @ESP_GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %429

415:                                              ; preds = %406
  %416 = load i32, i32* %5, align 4
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %418 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %419 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %422, i64 0
  %424 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %427 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %428 = call i32 @esp_ble_gattc_write_char_descr(i32 %416, i32 %421, i32 %425, i32 4, i32* %12, i32 %426, i32 %427)
  store i32 %428, i32* %13, align 4
  br label %429

429:                                              ; preds = %415, %406, %398, %395
  %430 = load i32, i32* %13, align 4
  %431 = load i32, i32* @ESP_GATT_OK, align 4
  %432 = icmp ne i32 %430, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = load i32, i32* @GATTC_TAG, align 4
  %435 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %434, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %436

436:                                              ; preds = %433, %429
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** @descr_elem_result_c, align 8
  %438 = call i32 @free(%struct.TYPE_30__* %437)
  br label %439

439:                                              ; preds = %436, %372
  br label %443

440:                                              ; preds = %360
  %441 = load i32, i32* @GATTC_TAG, align 4
  %442 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %441, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %443

443:                                              ; preds = %440, %439
  br label %573

444:                                              ; preds = %3
  %445 = load i32, i32* @GATTC_TAG, align 4
  %446 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %445, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %447 = load i32, i32* @GATTC_TAG, align 4
  %448 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 3
  %450 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %452, i32 0, i32 3
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @esp_log_buffer_hex(i32 %447, i32 %451, i32 %455)
  br label %573

457:                                              ; preds = %3
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @ESP_GATT_OK, align 4
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %464, label %471

464:                                              ; preds = %457
  %465 = load i32, i32* @GATTC_TAG, align 4
  %466 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %466, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %465, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %469)
  br label %573

471:                                              ; preds = %457
  %472 = load i32, i32* @GATTC_TAG, align 4
  %473 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %474

474:                                              ; preds = %484, %471
  %475 = load i32, i32* %15, align 4
  %476 = sext i32 %475 to i64
  %477 = icmp ult i64 %476, 140
  br i1 %477, label %478, label %487

478:                                              ; preds = %474
  %479 = load i32, i32* %15, align 4
  %480 = srem i32 %479, 256
  %481 = load i32, i32* %15, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [35 x i32], [35 x i32]* %14, i64 0, i64 %482
  store i32 %480, i32* %483, align 4
  br label %484

484:                                              ; preds = %478
  %485 = load i32, i32* %15, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %15, align 4
  br label %474

487:                                              ; preds = %474
  %488 = load i32, i32* %5, align 4
  %489 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %490 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %491 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %489, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %495 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %496 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %494, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = getelementptr inbounds [35 x i32], [35 x i32]* %14, i64 0, i64 0
  %500 = load i32, i32* @ESP_GATT_WRITE_TYPE_RSP, align 4
  %501 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %502 = call i32 @esp_ble_gattc_write_char(i32 %488, i32 %493, i32 %498, i32 140, i32* %499, i32 %500, i32 %501)
  br label %573

503:                                              ; preds = %3
  %504 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @ESP_GATT_OK, align 4
  %509 = icmp ne i32 %507, %508
  br i1 %509, label %510, label %517

510:                                              ; preds = %503
  %511 = load i32, i32* @GATTC_TAG, align 4
  %512 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %511, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32 %515)
  br label %573

517:                                              ; preds = %503
  %518 = load i32, i32* @GATTC_TAG, align 4
  %519 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %518, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %520 = call i32 (...) @start_scan()
  br label %573

521:                                              ; preds = %3
  %522 = load i32*, i32** %16, align 8
  %523 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @memcpy(i32* %522, i32 %526, i32 8)
  %528 = load i32, i32* @GATTC_TAG, align 4
  %529 = load i32*, i32** %16, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 0
  %531 = load i32, i32* %530, align 4
  %532 = shl i32 %531, 24
  %533 = load i32*, i32** %16, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 1
  %535 = load i32, i32* %534, align 4
  %536 = shl i32 %535, 16
  %537 = add nsw i32 %532, %536
  %538 = load i32*, i32** %16, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 2
  %540 = load i32, i32* %539, align 4
  %541 = shl i32 %540, 8
  %542 = add nsw i32 %537, %541
  %543 = load i32*, i32** %16, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 3
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 %542, %545
  %547 = load i32*, i32** %16, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 4
  %549 = load i32, i32* %548, align 4
  %550 = shl i32 %549, 8
  %551 = load i32*, i32** %16, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 5
  %553 = load i32, i32* %552, align 4
  %554 = add nsw i32 %550, %553
  %555 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %528, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i32 %546, i32 %554)
  br label %573

556:                                              ; preds = %3
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.TYPE_32__*, %struct.TYPE_32__** @gl_profile_tab, align 8
  %562 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %563 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %561, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %563, i32 0, i32 0
  %565 = load i32*, i32** %564, align 8
  %566 = call i32 @memcmp(i32 %560, i32* %565, i32 6)
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %556
  %569 = load i32, i32* @GATTC_TAG, align 4
  %570 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %569, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* @conn_device_c, align 4
  store i32 0, i32* @get_service_c, align 4
  br label %571

571:                                              ; preds = %568, %556
  br label %573

572:                                              ; preds = %3
  br label %573

573:                                              ; preds = %572, %571, %521, %517, %510, %487, %464, %444, %443, %323, %315, %201, %193, %102, %91, %30, %22, %19
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_send_mtu_req(i32, i32) #1

declare dso_local i32 @esp_ble_gattc_search_service(i32, i32, i32*) #1

declare dso_local i32 @esp_ble_gattc_get_attr_count(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @esp_ble_gattc_get_char_by_uuid(i32, i32, i32, i32, i32, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @esp_ble_gattc_register_for_notify(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_30__*) #1

declare dso_local i32 @esp_ble_gattc_get_descr_by_char_handle(i32, i32, i32, i32, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @esp_ble_gattc_write_char_descr(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_write_char(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @start_scan(...) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
