; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_gatts_profile_a_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_gatts_profile_a_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, %struct.TYPE_42__, i32, i32, %struct.TYPE_43__, %struct.TYPE_41__ }
%struct.TYPE_42__ = type { %struct.TYPE_47__, i8* }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_45__, i8* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__, i8* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__, %struct.TYPE_48__, %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_39__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_29__ }
%struct.TYPE_51__ = type { i32, i32*, i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32*, i32 }
%struct.TYPE_38__ = type { i32, i32 }

@BT_BLE_COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"REGISTER_APP_EVT, status %d, app_id %d\0A\00", align 1
@gl_profile_tab = common dso_local global %struct.TYPE_40__* null, align 8
@PROFILE_A_APP_ID = common dso_local global i64 0, align 8
@ESP_UUID_LEN_16 = common dso_local global i8* null, align 8
@GATTS_SERVICE_UUID_A = common dso_local global i32 0, align 4
@BLE_ADV_NAME = common dso_local global i32 0, align 4
@GATTS_NUM_HANDLE_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"GATT_READ_EVT, conn_id %d, trans_id %d, handle %d\0A\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"GATT_WRITE_EVT, conn_id %d, trans_id %d, handle %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"GATT_WRITE_EVT, value len %d, value :\00", align 1
@a_property = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_NOTIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"notify enable\00", align 1
@ESP_GATT_CHAR_PROP_BIT_INDICATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"indicate enable\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"notify/indicate disable \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown descr value\00", align 1
@a_prepare_write_env = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"ESP_GATTS_EXEC_WRITE_EVT\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ESP_GATTS_MTU_EVT, MTU %d\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"CREATE_SERVICE_EVT, status %d,  service_handle %d\0A\00", align 1
@GATTS_CHAR_UUID_A = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_READ = common dso_local global i32 0, align 4
@ESP_GATT_CHAR_PROP_BIT_WRITE = common dso_local global i32 0, align 4
@ESP_GATT_PERM_READ = common dso_local global i32 0, align 4
@ESP_GATT_PERM_WRITE = common dso_local global i32 0, align 4
@gatts_initial_char_val = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"add char failed, error code = 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"ADD_CHAR_EVT, status %d,  attr_handle %d, service_handle %d\0A\00", align 1
@ESP_GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"add char descr failed, error code = 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"ADD_DESCR_EVT, status %d, attr_handle %d, service_handle %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"SERVICE_START_EVT, status %d, service_handle %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"ESP_GATTS_DISCONNECT_EVT\00", align 1
@adv_params = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"ESP_GATTS_CONF_EVT, status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_37__*)* @gatts_profile_a_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_profile_a_event_handler(i32 %0, i32 %1, %struct.TYPE_37__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca [15 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_38__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %6, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %507 [
    i32 132, label %17
    i32 133, label %66
    i32 128, label %117
    i32 137, label %287
    i32 135, label %303
    i32 129, label %310
    i32 140, label %311
    i32 146, label %375
    i32 147, label %376
    i32 148, label %432
    i32 139, label %455
    i32 131, label %456
    i32 130, label %467
    i32 141, label %468
    i32 138, label %477
    i32 143, label %481
    i32 134, label %506
    i32 145, label %506
    i32 144, label %506
    i32 136, label %506
    i32 142, label %506
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = call i32 @esp_ble_gap_config_local_privacy(i32 1)
  %29 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %30 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %31 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %35 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %41 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %42 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 1
  store i8* %40, i8** %47, align 8
  %48 = load i32, i32* @GATTS_SERVICE_UUID_A, align 4
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %50 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 8
  %57 = load i32, i32* @BLE_ADV_NAME, align 4
  %58 = call i32 @ble_init_adv_data(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %61 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %62, i32 0, i32 5
  %64 = load i32, i32* @GATTS_NUM_HANDLE_A, align 4
  %65 = call i32 @esp_ble_gatts_create_service(i32 %59, %struct.TYPE_41__* %63, i32 %64)
  br label %508

66:                                               ; preds = %3
  %67 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75, i32 %79)
  %81 = call i32 @memset(%struct.TYPE_36__* %7, i32 0, i32 24)
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  store i32 4, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 222, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 237, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 190, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 239, i32* %105, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ESP_GATT_OK, align 4
  %116 = call i32 @esp_ble_gatts_send_response(i32 %106, i32 %110, i32 %114, i32 %115, %struct.TYPE_36__* %7)
  br label %508

117:                                              ; preds = %3
  %118 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %118, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %126, i32 %130)
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %283, label %137

137:                                              ; preds = %117
  %138 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %139 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @esp_log_buffer_hex(i32 %144, i32* %148, i32 %152)
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %155 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %158, %162
  br i1 %163, label %164, label %282

164:                                              ; preds = %137
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %282

170:                                              ; preds = %164
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 8
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %177, %183
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %222

187:                                              ; preds = %170
  %188 = load i32, i32* @a_property, align 4
  %189 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %187
  %193 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %194 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %195

195:                                              ; preds = %205, %192
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp ult i64 %197, 60
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load i32, i32* %10, align 4
  %201 = srem i32 %200, 255
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 %203
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %195

208:                                              ; preds = %195
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %215 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %216 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %220 = call i32 @esp_ble_gatts_send_indicate(i32 %209, i32 %213, i32 %218, i32 60, i32* %219, i32 0)
  br label %221

221:                                              ; preds = %208, %187
  br label %281

222:                                              ; preds = %170
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %260

225:                                              ; preds = %222
  %226 = load i32, i32* @a_property, align 4
  %227 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_INDICATE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %225
  %231 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %232 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %233

233:                                              ; preds = %243, %230
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = icmp ult i64 %235, 60
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = load i32, i32* %12, align 4
  %239 = srem i32 %238, 255
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %241
  store i32 %239, i32* %242, align 4
  br label %243

243:                                              ; preds = %237
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %233

246:                                              ; preds = %233
  %247 = load i32, i32* %5, align 4
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %253 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %254 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 0
  %258 = call i32 @esp_ble_gatts_send_indicate(i32 %247, i32 %251, i32 %256, i32 60, i32* %257, i32 1)
  br label %259

259:                                              ; preds = %246, %225
  br label %280

260:                                              ; preds = %222
  %261 = load i32, i32* %8, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %265 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %279

266:                                              ; preds = %260
  %267 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %268 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %267, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %269 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @esp_log_buffer_hex(i32 %269, i32* %273, i32 %277)
  br label %279

279:                                              ; preds = %266, %263
  br label %280

280:                                              ; preds = %279, %259
  br label %281

281:                                              ; preds = %280, %221
  br label %282

282:                                              ; preds = %281, %164, %137
  br label %283

283:                                              ; preds = %282, %117
  %284 = load i32, i32* %5, align 4
  %285 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %286 = call i32 @example_write_event_env(i32 %284, i32* @a_prepare_write_env, %struct.TYPE_37__* %285)
  br label %508

287:                                              ; preds = %3
  %288 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %289 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %288, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %290 = load i32, i32* %5, align 4
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @ESP_GATT_OK, align 4
  %300 = call i32 @esp_ble_gatts_send_response(i32 %290, i32 %294, i32 %298, i32 %299, %struct.TYPE_36__* null)
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %302 = call i32 @example_exec_write_event_env(i32* @a_prepare_write_env, %struct.TYPE_37__* %301)
  br label %508

303:                                              ; preds = %3
  %304 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %305 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %308)
  br label %508

310:                                              ; preds = %3
  br label %508

311:                                              ; preds = %3
  %312 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %312, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %316, i32 %320)
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %327 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %328 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %326, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %328, i32 0, i32 2
  store i32 %325, i32* %329, align 8
  %330 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %331 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %332 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %333 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %334, i32 0, i32 1
  store i8* %330, i8** %335, align 8
  %336 = load i32, i32* @GATTS_CHAR_UUID_A, align 4
  %337 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %338 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %339 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %341, i32 0, i32 0
  store i32 %336, i32* %342, align 8
  %343 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %344 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %345 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @esp_ble_gatts_start_service(i32 %347)
  %349 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_READ, align 4
  %350 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_WRITE, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @ESP_GATT_CHAR_PROP_BIT_NOTIFY, align 4
  %353 = or i32 %351, %352
  store i32 %353, i32* @a_property, align 4
  %354 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %355 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %356 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %360 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %361 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %361, i32 0, i32 4
  %363 = load i32, i32* @ESP_GATT_PERM_READ, align 4
  %364 = load i32, i32* @ESP_GATT_PERM_WRITE, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @a_property, align 4
  %367 = call i32 @esp_ble_gatts_add_char(i32 %358, %struct.TYPE_43__* %362, i32 %365, i32 %366, i32* @gatts_initial_char_val, i32* null)
  store i32 %367, i32* %13, align 4
  %368 = load i32, i32* %13, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %311
  %371 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %372 = load i32, i32* %13, align 4
  %373 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %371, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %372)
  br label %374

374:                                              ; preds = %370, %311
  br label %508

375:                                              ; preds = %3
  br label %508

376:                                              ; preds = %3
  %377 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %378 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %378, i32 0, i32 4
  %380 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %386, i32 0, i32 4
  %388 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %377, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %381, i32 %385, i32 %389)
  %391 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %391, i32 0, i32 4
  %393 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %396 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %397 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %395, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %397, i32 0, i32 3
  store i32 %394, i32* %398, align 4
  %399 = load i8*, i8** @ESP_UUID_LEN_16, align 8
  %400 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %401 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %402 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %400, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %403, i32 0, i32 1
  store i8* %399, i8** %404, align 8
  %405 = load i32, i32* @ESP_GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  %406 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %407 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %408 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %410, i32 0, i32 0
  store i32 %405, i32* %411, align 8
  %412 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %413 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %414 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %418 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %419 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %419, i32 0, i32 1
  %421 = load i32, i32* @ESP_GATT_PERM_READ, align 4
  %422 = load i32, i32* @ESP_GATT_PERM_WRITE, align 4
  %423 = or i32 %421, %422
  %424 = call i32 @esp_ble_gatts_add_char_descr(i32 %416, %struct.TYPE_42__* %420, i32 %423, i32* null, i32* null)
  store i32 %424, i32* %14, align 4
  %425 = load i32, i32* %14, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %376
  %428 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %429 = load i32, i32* %14, align 4
  %430 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %428, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %429)
  br label %431

431:                                              ; preds = %427, %376
  br label %508

432:                                              ; preds = %3
  %433 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_40__*, %struct.TYPE_40__** @gl_profile_tab, align 8
  %438 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %439 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %439, i32 0, i32 0
  store i32 %436, i32* %440, align 8
  %441 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %442 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %441, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 %445, i32 %449, i32 %453)
  br label %508

455:                                              ; preds = %3
  br label %508

456:                                              ; preds = %3
  %457 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %458 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %457, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %461, i32 %465)
  br label %508

467:                                              ; preds = %3
  br label %508

468:                                              ; preds = %3
  %469 = bitcast %struct.TYPE_38__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %469, i8 0, i64 8, i1 false)
  %470 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %15, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @memcpy(i32 %471, i32 %475, i32 4)
  br label %508

477:                                              ; preds = %3
  %478 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %479 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %478, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %480 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %508

481:                                              ; preds = %3
  %482 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %483 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %482, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %486)
  %488 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @ESP_GATT_OK, align 4
  %493 = icmp ne i32 %491, %492
  br i1 %493, label %494, label %505

494:                                              ; preds = %481
  %495 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @esp_log_buffer_hex(i32 %495, i32* %499, i32 %503)
  br label %505

505:                                              ; preds = %494, %481
  br label %508

506:                                              ; preds = %3, %3, %3, %3, %3
  br label %507

507:                                              ; preds = %3, %506
  br label %508

508:                                              ; preds = %507, %505, %477, %468, %467, %456, %455, %432, %431, %375, %374, %310, %303, %287, %283, %66, %17
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_config_local_privacy(i32) #1

declare dso_local i32 @ble_init_adv_data(i32) #1

declare dso_local i32 @esp_ble_gatts_create_service(i32, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @esp_ble_gatts_send_response(i32, i32, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_gatts_send_indicate(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @example_write_event_env(i32, i32*, %struct.TYPE_37__*) #1

declare dso_local i32 @example_exec_write_event_env(i32*, %struct.TYPE_37__*) #1

declare dso_local i32 @esp_ble_gatts_start_service(i32) #1

declare dso_local i32 @esp_ble_gatts_add_char(i32, %struct.TYPE_43__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_ble_gatts_add_char_descr(i32, %struct.TYPE_42__*, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
