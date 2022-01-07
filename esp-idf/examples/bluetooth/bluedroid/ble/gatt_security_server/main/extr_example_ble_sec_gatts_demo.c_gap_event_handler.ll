; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_server/main/extr_example_ble_sec_gatts_demo.c_gap_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_server/main/extr_example_ble_sec_gatts_demo.c_gap_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GATTS_TABLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GAP_EVT, event %d\0A\00", align 1
@SCAN_RSP_CONFIG_FLAG = common dso_local global i32 0, align 4
@adv_config_done = common dso_local global i32 0, align 4
@heart_rate_adv_params = common dso_local global i32 0, align 4
@ADV_CONFIG_FLAG = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"advertising start failed, error status = %x\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"advertising start success\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ESP_GAP_BLE_PASSKEY_REQ_EVT\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ESP_GAP_BLE_OOB_REQ_EVT\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ESP_GAP_BLE_LOCAL_IR_EVT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ESP_GAP_BLE_LOCAL_ER_EVT\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"The passkey Notify number:%06d\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"key type = %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"remote BD_ADDR: %08x%04x\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"address type = %d\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"pair status = %s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"fail reason = 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"auth mode = %s\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_REMOVE_BOND_DEV_COMPLETE_EVT status = %d\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"ESP_GAP_BLE_REMOVE_BOND_DEV\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"-----ESP_GAP_BLE_REMOVE_BOND_DEV----\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"------------------------------------\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"config local privacy failed, error status = %x\00", align 1
@heart_rate_adv_config = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"config adv data failed, error code = %x\00", align 1
@heart_rate_scan_rsp_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_19__*)* @gap_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_event_handler(i32 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ESP_LOGV(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %246 [
    i32 130, label %12
    i32 141, label %22
    i32 140, label %32
    i32 132, label %49
    i32 134, label %52
    i32 136, label %65
    i32 137, label %68
    i32 135, label %71
    i32 129, label %85
    i32 133, label %92
    i32 138, label %100
    i32 139, label %109
    i32 131, label %187
    i32 128, label %207
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @SCAN_RSP_CONFIG_FLAG, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @adv_config_done, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @adv_config_done, align 4
  %17 = load i32, i32* @adv_config_done, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @esp_ble_gap_start_advertising(i32* @heart_rate_adv_params)
  br label %21

21:                                               ; preds = %19, %12
  br label %247

22:                                               ; preds = %2
  %23 = load i32, i32* @ADV_CONFIG_FLAG, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @adv_config_done, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @adv_config_done, align 4
  %27 = load i32, i32* @adv_config_done, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @esp_ble_gap_start_advertising(i32* @heart_rate_adv_params)
  br label %31

31:                                               ; preds = %29, %22
  br label %247

32:                                               ; preds = %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %247

46:                                               ; preds = %32
  %47 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %247

49:                                               ; preds = %2
  %50 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %247

52:                                               ; preds = %2
  %53 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %55 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 64, i1 false)
  %56 = bitcast i8* %55 to <{ i32, [15 x i32] }>*
  %57 = getelementptr inbounds <{ i32, [15 x i32] }>, <{ i32, [15 x i32] }>* %56, i32 0, i32 0
  store i32 1, i32* %57, align 16
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %64 = call i32 @esp_ble_oob_req_reply(i32 %62, i32* %63, i32 64)
  br label %247

65:                                               ; preds = %2
  %66 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %247

68:                                               ; preds = %2
  %69 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %247

71:                                               ; preds = %2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @esp_ble_confirm_reply(i32 %76, i32 1)
  %78 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  br label %247

85:                                               ; preds = %2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @esp_ble_gap_security_rsp(i32 %90, i32 1)
  br label %247

92:                                               ; preds = %2
  %93 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %247

100:                                              ; preds = %2
  %101 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @esp_key_type_to_str(i32 %106)
  %108 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  br label %247

109:                                              ; preds = %2
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i32* %110, i32 %115, i32 8)
  %117 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 24
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 16
  %126 = add nsw i32 %121, %125
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = add nsw i32 %126, %130
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 8
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %143)
  %145 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %161 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %109
  %169 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %174)
  br label %185

176:                                              ; preds = %109
  %177 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @esp_auth_req_to_str(i32 %182)
  %184 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %176, %168
  %186 = call i32 (...) @show_bonded_devices()
  br label %247

187:                                              ; preds = %2
  %188 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ESP_LOGD(i32 %188, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %195 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %196 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %197 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %198 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @esp_log_buffer_hex(i32 %198, i8* %203, i32 8)
  %205 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %206 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %205, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  br label %247

207:                                              ; preds = %2
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %207
  %215 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ESP_LOGE(i32 %215, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 %219)
  br label %247

221:                                              ; preds = %207
  %222 = call i32 @esp_ble_gap_config_adv_data(i32* @heart_rate_adv_config)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @ESP_LOGE(i32 %226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %227)
  br label %233

229:                                              ; preds = %221
  %230 = load i32, i32* @ADV_CONFIG_FLAG, align 4
  %231 = load i32, i32* @adv_config_done, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* @adv_config_done, align 4
  br label %233

233:                                              ; preds = %229, %225
  %234 = call i32 @esp_ble_gap_config_adv_data(i32* @heart_rate_scan_rsp_config)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @ESP_LOGE(i32 %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %239)
  br label %245

241:                                              ; preds = %233
  %242 = load i32, i32* @SCAN_RSP_CONFIG_FLAG, align 4
  %243 = load i32, i32* @adv_config_done, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* @adv_config_done, align 4
  br label %245

245:                                              ; preds = %241, %237
  br label %247

246:                                              ; preds = %2
  br label %247

247:                                              ; preds = %246, %245, %214, %187, %185, %100, %92, %85, %71, %68, %65, %52, %49, %46, %39, %31, %21
  ret void
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32) #1

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @esp_ble_oob_req_reply(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_confirm_reply(i32, i32) #1

declare dso_local i32 @esp_ble_gap_security_rsp(i32, i32) #1

declare dso_local i32 @esp_key_type_to_str(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @esp_auth_req_to_str(i32) #1

declare dso_local i32 @show_bonded_devices(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i8*, i32) #1

declare dso_local i32 @esp_ble_gap_config_adv_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
