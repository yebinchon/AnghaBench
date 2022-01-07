; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_client/main/extr_example_ble_sec_gattc_demo.c_esp_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_security_client/main/extr_example_ble_sec_gattc_demo.c_esp_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"config local privacy failed, error code =%x\00", align 1
@ble_scan_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"set scan params error, error code = %x\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"scan start failed, error status = %x\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Scan start success\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"ESP_GAP_BLE_PASSKEY_REQ_EVT\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ESP_GAP_BLE_OOB_REQ_EVT\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ESP_GAP_BLE_LOCAL_IR_EVT\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ESP_GAP_BLE_LOCAL_ER_EVT\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"The passkey Notify number:%06d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"key type = %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"remote BD_ADDR: %08x%04x\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"address type = %d\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"pair status = %s\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"fail reason = 0x%x\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"auth mode = %s\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Searched Adv Data Len %d, Scan Response Len %d\00", align 1
@ESP_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"Searched Device Name Len %d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@remote_device_name = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"searched device %s\0A\00", align 1
@connect = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [30 x i8] c"connect to the remote device.\00", align 1
@gl_profile_tab = common dso_local global %struct.TYPE_14__* null, align 8
@PROFILE_A_APP_ID = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"Scan stop failed, error status = %x\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Stop scan successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @esp_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gap_cb(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %292 [
    i32 130, label %13
    i32 135, label %36
    i32 133, label %39
    i32 136, label %56
    i32 138, label %59
    i32 140, label %72
    i32 141, label %75
    i32 131, label %78
    i32 139, label %85
    i32 137, label %99
    i32 142, label %107
    i32 143, label %116
    i32 134, label %193
    i32 132, label %275
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i32, i32* @GATTC_TAG, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %293

27:                                               ; preds = %13
  %28 = call i32 @esp_ble_gap_set_scan_params(i32* @ble_scan_params)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @GATTC_TAG, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %293

36:                                               ; preds = %2
  store i32 30, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @esp_ble_gap_start_scanning(i32 %37)
  br label %293

39:                                               ; preds = %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @GATTC_TAG, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %293

53:                                               ; preds = %39
  %54 = load i32, i32* @GATTC_TAG, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %293

56:                                               ; preds = %2
  %57 = load i32, i32* @GATTC_TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %293

59:                                               ; preds = %2
  %60 = load i32, i32* @GATTC_TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %62 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %62, i8 0, i64 64, i1 false)
  %63 = bitcast i8* %62 to <{ i32, [15 x i32] }>*
  %64 = getelementptr inbounds <{ i32, [15 x i32] }>, <{ i32, [15 x i32] }>* %63, i32 0, i32 0
  store i32 1, i32* %64, align 16
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %71 = call i32 @esp_ble_oob_req_reply(i32 %69, i32* %70, i32 64)
  br label %293

72:                                               ; preds = %2
  %73 = load i32, i32* @GATTC_TAG, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %293

75:                                               ; preds = %2
  %76 = load i32, i32* @GATTC_TAG, align 4
  %77 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %293

78:                                               ; preds = %2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @esp_ble_gap_security_rsp(i32 %83, i32 1)
  br label %293

85:                                               ; preds = %2
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @esp_ble_confirm_reply(i32 %90, i32 1)
  %92 = load i32, i32* @GATTC_TAG, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  br label %293

99:                                               ; preds = %2
  %100 = load i32, i32* @GATTC_TAG, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  br label %293

107:                                              ; preds = %2
  %108 = load i32, i32* @GATTC_TAG, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @esp_key_type_to_str(i32 %113)
  %115 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  br label %293

116:                                              ; preds = %2
  %117 = load i32*, i32** %10, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memcpy(i32* %117, i32 %122, i32 8)
  %124 = load i32, i32* @GATTC_TAG, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 24
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 16
  %133 = add nsw i32 %128, %132
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = add nsw i32 %133, %137
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 8
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %142, i32 %150)
  %152 = load i32, i32* @GATTC_TAG, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @GATTC_TAG, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %168 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %116
  %176 = load i32, i32* @GATTC_TAG, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %181)
  br label %192

183:                                              ; preds = %116
  %184 = load i32, i32* @GATTC_TAG, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @esp_auth_req_to_str(i32 %189)
  %191 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %183, %175
  br label %293

193:                                              ; preds = %2
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %11, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  switch i32 %198, label %273 [
    i32 128, label %199
    i32 129, label %272
  ]

199:                                              ; preds = %193
  %200 = load i32, i32* @GATTC_TAG, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @esp_log_buffer_hex(i32 %200, i32 %204, i32 6)
  %206 = load i32, i32* @GATTC_TAG, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %206, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %210, i32 %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ESP_BLE_AD_TYPE_NAME_CMPL, align 4
  %221 = call i32* @esp_ble_resolve_adv_data(i32 %219, i32 %220, i32* %6)
  store i32* %221, i32** %5, align 8
  %222 = load i32, i32* @GATTC_TAG, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %222, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @GATTC_TAG, align 4
  %226 = load i32*, i32** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @esp_log_buffer_char(i32 %225, i32* %226, i32 %227)
  %229 = load i32, i32* @GATTC_TAG, align 4
  %230 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %231 = load i32*, i32** %5, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %271

233:                                              ; preds = %199
  %234 = load i32, i32* @remote_device_name, align 4
  %235 = call i32 @strlen(i32 %234)
  %236 = load i32, i32* %6, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %270

238:                                              ; preds = %233
  %239 = load i32*, i32** %5, align 8
  %240 = bitcast i32* %239 to i8*
  %241 = load i32, i32* @remote_device_name, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @strncmp(i8* %240, i32 %241, i32 %242)
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %270

245:                                              ; preds = %238
  %246 = load i32, i32* @GATTC_TAG, align 4
  %247 = load i32, i32* @remote_device_name, align 4
  %248 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @connect, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %245
  store i32 1, i32* @connect, align 4
  %252 = load i32, i32* @GATTC_TAG, align 4
  %253 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %254 = call i32 (...) @esp_ble_gap_stop_scanning()
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** @gl_profile_tab, align 8
  %256 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @esp_ble_gattc_open(i32 %259, i32 %263, i32 %267, i32 1)
  br label %269

269:                                              ; preds = %251, %245
  br label %270

270:                                              ; preds = %269, %238, %233
  br label %271

271:                                              ; preds = %270, %199
  br label %274

272:                                              ; preds = %193
  br label %274

273:                                              ; preds = %193
  br label %274

274:                                              ; preds = %273, %272, %271
  br label %293

275:                                              ; preds = %2
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load i32, i32* @GATTC_TAG, align 4
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @ESP_LOGE(i32 %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32 %287)
  br label %293

289:                                              ; preds = %275
  %290 = load i32, i32* @GATTC_TAG, align 4
  %291 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  br label %293

292:                                              ; preds = %2
  br label %293

293:                                              ; preds = %292, %289, %282, %274, %192, %107, %99, %85, %78, %75, %72, %59, %56, %53, %46, %36, %35, %20
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_ble_gap_set_scan_params(i32*) #1

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @esp_ble_oob_req_reply(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_gap_security_rsp(i32, i32) #1

declare dso_local i32 @esp_ble_confirm_reply(i32, i32) #1

declare dso_local i32 @esp_key_type_to_str(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @esp_auth_req_to_str(i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32* @esp_ble_resolve_adv_data(i32, i32, i32*) #1

declare dso_local i32 @esp_log_buffer_char(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @esp_ble_gap_stop_scanning(...) #1

declare dso_local i32 @esp_ble_gattc_open(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
