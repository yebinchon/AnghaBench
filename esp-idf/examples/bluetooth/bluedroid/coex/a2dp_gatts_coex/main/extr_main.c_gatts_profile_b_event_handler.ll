; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_gatts_profile_b_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_gatts_profile_b_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_40__, i32, i32, %struct.TYPE_41__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { %struct.TYPE_45__, i8* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_43__, i8* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i8* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_49__, %struct.TYPE_48__, %struct.TYPE_47__, %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_37__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_28__ }
%struct.TYPE_49__ = type { i32, i32*, i32 }
%struct.TYPE_48__ = type { i32, i32* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32*, i32 }

@BT_BLE_COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"REGISTER_APP_EVT, status %d, app_id %d\0A\00", align 1
@gl_profile_tab = common dso_local global %struct.TYPE_38__* null, align 8
@PROFILE_B_APP_ID = common dso_local global i64 0, align 8
@ESP_UUID_LEN_16 = common dso_local global i8* null, align 8
@GATTS_SERVICE_UUID_B = common dso_local global i32 0, align 4
@GATTS_NUM_HANDLE_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"GATT_READ_EVT, conn_id %d, trans_id %d, handle %d\0A\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"GATT_WRITE_EVT, conn_id %d, trans_id %d, handle %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"GATT_WRITE_EVT, value len %d, value :\00", align 1
@b_property = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_NOTIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"notify enable\00", align 1
@ESP_GATT_CHAR_PROP_BIT_INDICATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"indicate enable\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"notify/indicate disable \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unknown value\00", align 1
@b_prepare_write_env = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"ESP_GATTS_EXEC_WRITE_EVT\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ESP_GATTS_MTU_EVT, MTU %d\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"CREATE_SERVICE_EVT, status %d,  service_handle %d\0A\00", align 1
@GATTS_CHAR_UUID_B = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_READ = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_WRITE = common dso_local global i32 0, align 4
@ESP_GATT_PERM_READ = common dso_local global i32 0, align 4
@ESP_GATT_PERM_WRITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"add char failed, error code = 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"ADD_CHAR_EVT, status %d,  attr_handle %d, service_handle %d\0A\00", align 1
@ESP_GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [61 x i8] c"ADD_DESCR_EVT, status %d, attr_handle %d, service_handle %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"SERVICE_START_EVT, status %d, service_handle %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"CONNECT_EVT, conn_id %d, remote %02x:%02x:%02x:%02x:%02x:%02x:\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ESP_GATTS_CONF_EVT status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_36__*)* @gatts_profile_b_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_profile_b_event_handler(i32 %0, i32 %1, %struct.TYPE_36__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca [15 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %6, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %523 [
    i32 132, label %15
    i32 133, label %61
    i32 128, label %112
    i32 137, label %272
    i32 135, label %288
    i32 129, label %295
    i32 140, label %296
    i32 146, label %360
    i32 147, label %361
    i32 148, label %410
    i32 139, label %433
    i32 131, label %434
    i32 130, label %445
    i32 141, label %446
    i32 143, label %497
    i32 138, label %522
    i32 134, label %522
    i32 145, label %522
    i32 144, label %522
    i32 136, label %522
    i32 142, label %522
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %27 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %32 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %39 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %40 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  store i8* %37, i8** %44, align 8
  %45 = load i32, i32* @GATTS_SERVICE_UUID_B, align 4
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %47 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  store i32 %45, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %56 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 6
  %59 = load i32, i32* @GATTS_NUM_HANDLE_B, align 4
  %60 = call i32 @esp_ble_gatts_create_service(i32 %54, %struct.TYPE_39__* %58, i32 %59)
  br label %524

61:                                               ; preds = %3
  %62 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %74)
  %76 = call i32 @memset(%struct.TYPE_35__* %7, i32 0, i32 24)
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 222, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 237, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 190, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  store i32 239, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ESP_GATT_OK, align 4
  %111 = call i32 @esp_ble_gatts_send_response(i32 %101, i32 %105, i32 %109, i32 %110, %struct.TYPE_35__* %7)
  br label %524

112:                                              ; preds = %3
  %113 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %121, i32 %125)
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %268, label %132

132:                                              ; preds = %112
  %133 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @esp_log_buffer_hex(i32 %139, i32* %143, i32 %147)
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %150 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %267

159:                                              ; preds = %132
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %267

165:                                              ; preds = %159
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %172, %178
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %217

182:                                              ; preds = %165
  %183 = load i32, i32* @b_property, align 4
  %184 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %182
  %188 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %189 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %200, %187
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ult i64 %192, 60
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load i32, i32* %10, align 4
  %196 = srem i32 %195, 255
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %198
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %190

203:                                              ; preds = %190
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %210 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %215 = call i32 @esp_ble_gatts_send_indicate(i32 %204, i32 %208, i32 %213, i32 60, i32* %214, i32 0)
  br label %216

216:                                              ; preds = %203, %182
  br label %266

217:                                              ; preds = %165
  %218 = load i32, i32* %8, align 4
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %255

220:                                              ; preds = %217
  %221 = load i32, i32* @b_property, align 4
  %222 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_INDICATE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %254

225:                                              ; preds = %220
  %226 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %227 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %238, %225
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp ult i64 %230, 60
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load i32, i32* %12, align 4
  %234 = srem i32 %233, 255
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %236
  store i32 %234, i32* %237, align 4
  br label %238

238:                                              ; preds = %232
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %228

241:                                              ; preds = %228
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %248 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %249 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 0
  %253 = call i32 @esp_ble_gatts_send_indicate(i32 %242, i32 %246, i32 %251, i32 60, i32* %252, i32 1)
  br label %254

254:                                              ; preds = %241, %220
  br label %265

255:                                              ; preds = %217
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %260 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %264

261:                                              ; preds = %255
  %262 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %263 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %262, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %264

264:                                              ; preds = %261, %258
  br label %265

265:                                              ; preds = %264, %254
  br label %266

266:                                              ; preds = %265, %216
  br label %267

267:                                              ; preds = %266, %159, %132
  br label %268

268:                                              ; preds = %267, %112
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %271 = call i32 @example_write_event_env(i32 %269, i32* @b_prepare_write_env, %struct.TYPE_36__* %270)
  br label %524

272:                                              ; preds = %3
  %273 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %274 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %276, i32 0, i32 7
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %280, i32 0, i32 7
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @ESP_GATT_OK, align 4
  %285 = call i32 @esp_ble_gatts_send_response(i32 %275, i32 %279, i32 %283, i32 %284, %struct.TYPE_35__* null)
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %287 = call i32 @example_exec_write_event_env(i32* @b_prepare_write_env, %struct.TYPE_36__* %286)
  br label %524

288:                                              ; preds = %3
  %289 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %293)
  br label %524

295:                                              ; preds = %3
  br label %524

296:                                              ; preds = %3
  %297 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %297, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %301, i32 %305)
  %307 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %312 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %313 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %313, i32 0, i32 3
  store i32 %310, i32* %314, align 8
  %315 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %316 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %317 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i32 0, i32 5
  %320 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %319, i32 0, i32 1
  store i8* %315, i8** %320, align 8
  %321 = load i32, i32* @GATTS_CHAR_UUID_B, align 4
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %323 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %324 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %326, i32 0, i32 0
  store i32 %321, i32* %327, align 8
  %328 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %329 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @esp_ble_gatts_start_service(i32 %332)
  %334 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_READ, align 4
  %335 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_WRITE, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %338 = or i32 %336, %337
  store i32 %338, i32* @b_property, align 4
  %339 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %340 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %341 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %345 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %346 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 5
  %348 = load i32, i32* @ESP_GATT_PERM_READ, align 4
  %349 = load i32, i32* @ESP_GATT_PERM_WRITE, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @b_property, align 4
  %352 = call i32 @esp_ble_gatts_add_char(i32 %343, %struct.TYPE_41__* %347, i32 %350, i32 %351, i32* null, i32* null)
  store i32 %352, i32* %13, align 4
  %353 = load i32, i32* %13, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %296
  %356 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %357 = load i32, i32* %13, align 4
  %358 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %356, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %355, %296
  br label %524

360:                                              ; preds = %3
  br label %524

361:                                              ; preds = %3
  %362 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %362, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %366, i32 %370, i32 %374)
  %376 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %381 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %382 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 4
  store i32 %379, i32* %383, align 4
  %384 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %385 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %386 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %387 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %385, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %388, i32 0, i32 1
  store i8* %384, i8** %389, align 8
  %390 = load i32, i32* @ESP_GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %392 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %393 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %395, i32 0, i32 0
  store i32 %390, i32* %396, align 8
  %397 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %398 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %399 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %403 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %404, i32 0, i32 2
  %406 = load i32, i32* @ESP_GATT_PERM_READ, align 4
  %407 = load i32, i32* @ESP_GATT_PERM_WRITE, align 4
  %408 = or i32 %406, %407
  %409 = call i32 @esp_ble_gatts_add_char_descr(i32 %401, %struct.TYPE_40__* %405, i32 %408, i32* null, i32* null)
  br label %524

410:                                              ; preds = %3
  %411 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %416 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %415, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %417, i32 0, i32 1
  store i32 %414, i32* %418, align 4
  %419 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %420 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %419, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %423, i32 %427, i32 %431)
  br label %524

433:                                              ; preds = %3
  br label %524

434:                                              ; preds = %3
  %435 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %436 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %435, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %439, i32 %443)
  br label %524

445:                                              ; preds = %3
  br label %524

446:                                              ; preds = %3
  %447 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %448 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 1
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 2
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %471, i32 0, i32 1
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 3
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 4
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %483, i32 0, i32 1
  %485 = load i32*, i32** %484, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 5
  %487 = load i32, i32* %486, align 4
  %488 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %447, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %451, i32 %457, i32 %463, i32 %469, i32 %475, i32 %481, i32 %487)
  %489 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.TYPE_38__*, %struct.TYPE_38__** @gl_profile_tab, align 8
  %494 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %495 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %493, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %495, i32 0, i32 0
  store i32 %492, i32* %496, align 8
  br label %524

497:                                              ; preds = %3
  %498 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %499 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %498, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %502)
  %504 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @ESP_GATT_OK, align 4
  %509 = icmp ne i32 %507, %508
  br i1 %509, label %510, label %521

510:                                              ; preds = %497
  %511 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %512 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %513, i32 0, i32 1
  %515 = load i32*, i32** %514, align 8
  %516 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @esp_log_buffer_hex(i32 %511, i32* %515, i32 %519)
  br label %521

521:                                              ; preds = %510, %497
  br label %524

522:                                              ; preds = %3, %3, %3, %3, %3, %3
  br label %523

523:                                              ; preds = %3, %522
  br label %524

524:                                              ; preds = %523, %521, %446, %445, %434, %433, %410, %361, %360, %359, %295, %288, %272, %268, %61, %15
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gatts_create_service(i32, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_35__*, i32, i32) #1

declare dso_local i32 @esp_ble_gatts_send_response(i32, i32, i32, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_gatts_send_indicate(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @example_write_event_env(i32, i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @example_exec_write_event_env(i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @esp_ble_gatts_start_service(i32) #1

declare dso_local i32 @esp_ble_gatts_add_char(i32, %struct.TYPE_41__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_ble_gatts_add_char_descr(i32, %struct.TYPE_40__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
