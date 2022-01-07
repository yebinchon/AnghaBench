; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gattc_multi_connect/main/extr_gattc_multi_connect.c_esp_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gattc_multi_connect/main/extr_gattc_multi_connect.c_esp_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d\00", align 1
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Scan start success\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Scan start failed\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Searched Adv Data Len %d, Scan Response Len %d\00", align 1
@ESP_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Searched Device Name Len %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Isconnecting = common dso_local global i32 0, align 4
@conn_device_a = common dso_local global i32 0, align 4
@conn_device_b = common dso_local global i32 0, align 4
@conn_device_c = common dso_local global i32 0, align 4
@stop_scan_done = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"all devices are connected\00", align 1
@remote_device_name = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Searched device %s\00", align 1
@gl_profile_tab = common dso_local global %struct.TYPE_15__* null, align 8
@PROFILE_A_APP_ID = common dso_local global i64 0, align 8
@PROFILE_B_APP_ID = common dso_local global i64 0, align 8
@PROFILE_C_APP_ID = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"Scan stop failed\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Stop scan successfully\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Adv stop failed\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Stop adv successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @esp_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gap_cb(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %270 [
    i32 130, label %10
    i32 134, label %37
    i32 132, label %40
    i32 133, label %54
    i32 131, label %244
    i32 135, label %257
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @GATTC_TAG, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35)
  br label %271

37:                                               ; preds = %2
  store i32 30, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @esp_ble_gap_start_scanning(i32 %38)
  br label %271

40:                                               ; preds = %2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @GATTC_TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @GATTC_TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %271

54:                                               ; preds = %2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %242 [
    i32 128, label %60
    i32 129, label %241
  ]

60:                                               ; preds = %54
  %61 = load i32, i32* @GATTC_TAG, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @esp_log_buffer_hex(i32 %61, i32 %65, i32 6)
  %67 = load i32, i32* @GATTC_TAG, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ESP_BLE_AD_TYPE_NAME_CMPL, align 4
  %82 = call i32* @esp_ble_resolve_adv_data(i32 %80, i32 %81, i32* %6)
  store i32* %82, i32** %5, align 8
  %83 = load i32, i32* @GATTC_TAG, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @GATTC_TAG, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @esp_log_buffer_char(i32 %86, i32* %87, i32 %88)
  %90 = load i32, i32* @GATTC_TAG, align 4
  %91 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @Isconnecting, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %60
  br label %243

95:                                               ; preds = %60
  %96 = load i32, i32* @conn_device_a, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i32, i32* @conn_device_b, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* @conn_device_c, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* @stop_scan_done, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  store i32 1, i32* @stop_scan_done, align 4
  %108 = call i32 (...) @esp_ble_gap_stop_scanning()
  %109 = load i32, i32* @GATTC_TAG, align 4
  %110 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %243

111:                                              ; preds = %104, %101, %98, %95
  %112 = load i32*, i32** %5, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %240

114:                                              ; preds = %111
  %115 = load i32*, i32** @remote_device_name, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strlen(i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %114
  %122 = load i32*, i32** %5, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = load i32*, i32** @remote_device_name, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @strncmp(i8* %123, i32 %126, i32 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %121
  %131 = load i32, i32* @conn_device_a, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  store i32 1, i32* @conn_device_a, align 4
  %134 = load i32, i32* @GATTC_TAG, align 4
  %135 = load i32*, i32** @remote_device_name, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = call i32 (...) @esp_ble_gap_stop_scanning()
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gl_profile_tab, align 8
  %141 = load i64, i64* @PROFILE_A_APP_ID, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @esp_ble_gattc_open(i32 %144, i32 %148, i32 %152, i32 1)
  store i32 1, i32* @Isconnecting, align 4
  br label %154

154:                                              ; preds = %133, %130
  br label %243

155:                                              ; preds = %121, %114
  %156 = load i32*, i32** @remote_device_name, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @strlen(i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %196

162:                                              ; preds = %155
  %163 = load i32*, i32** %5, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32*, i32** @remote_device_name, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @strncmp(i8* %164, i32 %167, i32 %168)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %162
  %172 = load i32, i32* @conn_device_b, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %171
  store i32 1, i32* @conn_device_b, align 4
  %175 = load i32, i32* @GATTC_TAG, align 4
  %176 = load i32*, i32** @remote_device_name, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = call i32 (...) @esp_ble_gap_stop_scanning()
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gl_profile_tab, align 8
  %182 = load i64, i64* @PROFILE_B_APP_ID, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @esp_ble_gattc_open(i32 %185, i32 %189, i32 %193, i32 1)
  store i32 1, i32* @Isconnecting, align 4
  br label %195

195:                                              ; preds = %174, %171
  br label %238

196:                                              ; preds = %162, %155
  %197 = load i32*, i32** @remote_device_name, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @strlen(i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %237

203:                                              ; preds = %196
  %204 = load i32*, i32** %5, align 8
  %205 = bitcast i32* %204 to i8*
  %206 = load i32*, i32** @remote_device_name, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @strncmp(i8* %205, i32 %208, i32 %209)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %203
  %213 = load i32, i32* @conn_device_c, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %212
  store i32 1, i32* @conn_device_c, align 4
  %216 = load i32, i32* @GATTC_TAG, align 4
  %217 = load i32*, i32** @remote_device_name, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %219)
  %221 = call i32 (...) @esp_ble_gap_stop_scanning()
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** @gl_profile_tab, align 8
  %223 = load i64, i64* @PROFILE_C_APP_ID, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @esp_ble_gattc_open(i32 %226, i32 %230, i32 %234, i32 1)
  store i32 1, i32* @Isconnecting, align 4
  br label %236

236:                                              ; preds = %215, %212
  br label %243

237:                                              ; preds = %203, %196
  br label %238

238:                                              ; preds = %237, %195
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %111
  br label %243

241:                                              ; preds = %54
  br label %243

242:                                              ; preds = %54
  br label %243

243:                                              ; preds = %242, %241, %240, %236, %154, %107, %94
  br label %271

244:                                              ; preds = %2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i32, i32* @GATTC_TAG, align 4
  %253 = call i32 @ESP_LOGE(i32 %252, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %271

254:                                              ; preds = %244
  %255 = load i32, i32* @GATTC_TAG, align 4
  %256 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %271

257:                                              ; preds = %2
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load i32, i32* @GATTC_TAG, align 4
  %266 = call i32 @ESP_LOGE(i32 %265, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %271

267:                                              ; preds = %257
  %268 = load i32, i32* @GATTC_TAG, align 4
  %269 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %268, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %271

270:                                              ; preds = %2
  br label %271

271:                                              ; preds = %270, %267, %264, %254, %251, %243, %53, %37, %10
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32* @esp_ble_resolve_adv_data(i32, i32, i32*) #1

declare dso_local i32 @esp_log_buffer_char(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_gap_stop_scanning(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_open(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
