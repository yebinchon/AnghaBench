; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_inq_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_inq_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32, i64*, i64, i64, i32 }

@TRUE = common dso_local global i8* null, align 8
@btm_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@BTM_BLE_ADV_DATA_LEN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"EIR data too long %d. discard\00", align 1
@FALSE = common dso_local global i8* null, align 8
@BTM_INQ_RESULT_BLE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_MODE_ACTI = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_EVT = common dso_local global i64 0, align 8
@BTM_BLE_DISCOVER_EVT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [108 x i8] c"btm_ble_update_inq_result scan_rsp=false, to_report=false,                              scan_type_active=%d\00", align 1
@BT_DEVICE_TYPE_BLE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_RSP_EVT = common dso_local global i64 0, align 8
@BTM_BLE_AD_TYPE_FLAG = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_APPEARANCE = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_16SRV_CMPL = common dso_local global i32 0, align 4
@UUID_SERVCLASS_LE_HID = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_PERIPHERAL = common dso_local global i64 0, align 8
@BTM_BLE_BREDR_NOT_SPT = common dso_local global i32 0, align 4
@BTM_BLE_CONNECT_DIR_EVT = common dso_local global i64 0, align 8
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"BR/EDR NOT support bit not set, treat as DUMO\00", align 1
@BT_DEVICE_TYPE_DUMO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Random address, treating device as LE only\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"BR/EDR NOT SUPPORT bit set, LE only device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btm_ble_update_inq_result(i32 %0, %struct.TYPE_12__* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %23 = load i8*, i8** @TRUE, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 1), %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_15__** %19, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = call i32 @STREAM_TO_UINT8(i64 %27, i64* %28)
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @BTM_BLE_ADV_DATA_LEN_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i64, i64* %17, align 8
  %35 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** @FALSE, align 8
  store i8* %36, i8** %6, align 8
  br label %239

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = load i64, i64* %17, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @btm_ble_cache_adv_data(i32 %38, %struct.TYPE_13__* %39, i64 %40, i64* %41, i64 %42)
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64* %46, i64** %20, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64*, i64** %20, align 8
  %49 = call i32 @STREAM_TO_UINT8(i64 %47, i64* %48)
  %50 = load i32, i32* @BTM_INQ_RESULT_BLE, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %60 = load i64, i64* @BTM_BLE_SCAN_MODE_ACTI, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %37
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @BTM_BLE_CONNECT_EVT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @BTM_BLE_DISCOVER_EVT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %62
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %72 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i8*, i8** @FALSE, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @FALSE, align 8
  store i8* %76, i8** %12, align 8
  br label %81

77:                                               ; preds = %66, %37
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %99

93:                                               ; preds = %81
  %94 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @BTM_BLE_SCAN_RSP_EVT, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %107
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BTM_BLE_AD_TYPE_FLAG, align 4
  %122 = call i64* @BTM_CheckAdvData(i32 %120, i32 %121, i64* %14)
  store i64* %122, i64** %15, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i64*, i64** %15, align 8
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %117
  br label %131

131:                                              ; preds = %130, %107
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %208

136:                                              ; preds = %131
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @BTM_BLE_AD_TYPE_APPEARANCE, align 4
  %141 = call i64* @BTM_CheckAdvData(i32 %139, i32 %140, i64* %14)
  store i64* %141, i64** %21, align 8
  %142 = load i64*, i64** %21, align 8
  %143 = icmp ne i64* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %136
  %145 = load i64, i64* %14, align 8
  %146 = icmp eq i64 %145, 2
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load i64*, i64** %21, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %21, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = shl i64 %153, 8
  %155 = or i64 %150, %154
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @btm_ble_appearance_to_cod(i64 %155, i64* %158)
  br label %207

160:                                              ; preds = %144, %136
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @BTM_BLE_AD_TYPE_16SRV_CMPL, align 4
  %165 = call i64* @BTM_CheckAdvData(i32 %163, i32 %164, i64* %14)
  store i64* %165, i64** %21, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %206

167:                                              ; preds = %160
  store i64 0, i64* %22, align 8
  br label %168

168:                                              ; preds = %202, %167
  %169 = load i64, i64* %22, align 8
  %170 = add nsw i64 %169, 2
  %171 = load i64, i64* %14, align 8
  %172 = icmp sle i64 %170, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %168
  %174 = load i64*, i64** %21, align 8
  %175 = load i64, i64* %22, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %21, align 8
  %179 = load i64, i64* %22, align 8
  %180 = add nsw i64 %179, 1
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = shl i64 %182, 8
  %184 = or i64 %177, %183
  %185 = load i64, i64* @UUID_SERVCLASS_LE_HID, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %173
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  store i64 0, i64* %191, align 8
  %192 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  store i64 %192, i64* %196, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 2
  store i64 0, i64* %200, align 8
  br label %205

201:                                              ; preds = %173
  br label %202

202:                                              ; preds = %201
  %203 = load i64, i64* %22, align 8
  %204 = add nsw i64 %203, 2
  store i64 %204, i64* %22, align 8
  br label %168

205:                                              ; preds = %187, %168
  br label %206

206:                                              ; preds = %205, %160
  br label %207

207:                                              ; preds = %206, %147
  br label %208

208:                                              ; preds = %207, %131
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @BTM_BLE_BREDR_NOT_SPT, align 4
  %213 = and i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %208
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* @BTM_BLE_CONNECT_DIR_EVT, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %215
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %227 = load i32, i32* @BT_DEVICE_TYPE_DUMO, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %234

232:                                              ; preds = %219
  %233 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %225
  br label %237

235:                                              ; preds = %215, %208
  %236 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %234
  %238 = load i8*, i8** %12, align 8
  store i8* %238, i8** %6, align 8
  br label %239

239:                                              ; preds = %237, %33
  %240 = load i8*, i8** %6, align 8
  ret i8* %240
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i64) #1

declare dso_local i32 @btm_ble_cache_adv_data(i32, %struct.TYPE_13__*, i64, i64*, i64) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i64* @BTM_CheckAdvData(i32, i32, i64*) #1

declare dso_local i32 @btm_ble_appearance_to_cod(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
