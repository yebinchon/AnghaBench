; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetAdvParamsAll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetAdvParamsAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_13__*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 (i32)*, i64, i32, i8*, i8* }
%struct.TYPE_14__ = type { i32 (...)* }

@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"BTM_BleSetAdvParamsAll\0A\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@BTM_BLE_GAP_ADDR_BIT_RANDOM = common dso_local global i32 0, align 4
@BTM_PRIVACY_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_GAP_ADDR_BIT_RESOLVABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"No random address yet, please set random address and try\0A\00", align 1
@HCI_ERR_ESP_VENDOR_FAIL = common dso_local global i32 0, align 4
@BLE_ADDR_PUBLIC_ID = common dso_local global i64 0, align 8
@BLE_ADDR_RANDOM_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Error state\0A\00", align 1
@BLE_ADDR_PUBLIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"No RPA and no random address yet, please set RPA or random address and try\0A\00", align 1
@BTM_BLE_ADV_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_INT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"adv_int_min or adv_int_max is invalid\0A\00", align 1
@adv_param_lock = common dso_local global i32 0, align 4
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@BTM_BLE_CONNECT_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_CONNECT_LO_DUTY_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT = common dso_local global i32 0, align 4
@BTM_BLE_NON_CONNECT_EVT = common dso_local global i64 0, align 8
@BTM_BLE_STATE_NON_CONN_ADV_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"update params for an active adv\0A\00", align 1
@BTM_SUCCESS = common dso_local global i32 0, align 4
@adv_param_sem = common dso_local global i32 0, align 4
@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@adv_param_status = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleSetAdvParamsAll(i8* %0, i8* %1, i64 %2, i64 %3, %struct.TYPE_13__* %4, i32 %5, i32 %6, i32 (i32)** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i32)**, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 (i32)** %7, i32 (i32)*** %17, align 8
  store %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 2), %struct.TYPE_12__** %19, align 8
  %21 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = call %struct.TYPE_14__* (...) @controller_get_interface()
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %28, i32* %9, align 4
  br label %265

29:                                               ; preds = %8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %35 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %41 = load i64, i64* @BTM_PRIVACY_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @BTM_BleConfigPrivacy(i32 %44, i32* null)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 3), align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %50 = load i32, i32* @BD_ADDR_LEN, align 4
  %51 = call i32 @memcpy(i32* %48, %struct.TYPE_13__* %49, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %53 = call i32 @btsnd_hcic_ble_set_random_addr(%struct.TYPE_13__* %52)
  br label %80

54:                                               ; preds = %33
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %56 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RESOLVABLE, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RESOLVABLE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 3), align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 4), align 8
  %64 = load i32, i32* @BD_ADDR_LEN, align 4
  %65 = call i32 @memcpy(i32* %62, %struct.TYPE_13__* %63, i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 4), align 8
  %67 = call i32 @btsnd_hcic_ble_set_random_addr(%struct.TYPE_13__* %66)
  br label %79

68:                                               ; preds = %54
  %69 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %71 = icmp ne i32 (i32)** %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load i32, i32* @HCI_ERR_ESP_VENDOR_FAIL, align 4
  %76 = call i32 %74(i32 %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %78, i32* %9, align 4
  br label %265

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79, %46
  br label %158

81:                                               ; preds = %29
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* @BLE_ADDR_PUBLIC_ID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @BLE_ADDR_RANDOM_ID, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %155

89:                                               ; preds = %85, %81
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %91 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RESOLVABLE, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RESOLVABLE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %97, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 3), align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 4), align 8
  %100 = load i32, i32* @BD_ADDR_LEN, align 4
  %101 = call i32 @memcpy(i32* %98, %struct.TYPE_13__* %99, i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 4), align 8
  %103 = call i32 @btsnd_hcic_ble_set_random_addr(%struct.TYPE_13__* %102)
  br label %154

104:                                              ; preds = %89
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %106 = load i64, i64* @BTM_PRIVACY_NONE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %111 = icmp ne i32 (i32)** %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = load i32, i32* @HCI_ERR_ESP_VENDOR_FAIL, align 4
  %116 = call i32 %114(i32 %115)
  br label %117

117:                                              ; preds = %112, %108
  %118 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %118, i32* %9, align 4
  br label %265

119:                                              ; preds = %104
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @BLE_ADDR_PUBLIC_ID, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  store i64 %125, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  br label %153

126:                                              ; preds = %119
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %128 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %133, i64* %13, align 8
  %134 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 3), align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %137 = load i32, i32* @BD_ADDR_LEN, align 4
  %138 = call i32 @memcpy(i32* %135, %struct.TYPE_13__* %136, i32 %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %140 = call i32 @btsnd_hcic_ble_set_random_addr(%struct.TYPE_13__* %139)
  br label %152

141:                                              ; preds = %126
  %142 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %144 = icmp ne i32 (i32)** %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %147 = load i32 (i32)*, i32 (i32)** %146, align 8
  %148 = load i32, i32* @HCI_ERR_ESP_VENDOR_FAIL, align 4
  %149 = call i32 %147(i32 %148)
  br label %150

150:                                              ; preds = %145, %141
  %151 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %151, i32* %9, align 4
  br label %265

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152, %123
  br label %154

154:                                              ; preds = %153, %95
  br label %157

155:                                              ; preds = %85
  %156 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  store i64 %156, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  br label %157

157:                                              ; preds = %155, %154
  br label %158

158:                                              ; preds = %157, %80
  %159 = load i8*, i8** %10, align 8
  %160 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %161 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %162 = call i32 @BTM_BLE_ISVALID_PARAM(i8* %159, i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* @BTM_BLE_ADV_INT_MIN, align 4
  %167 = load i32, i32* @BTM_BLE_ADV_INT_MAX, align 4
  %168 = call i32 @BTM_BLE_ISVALID_PARAM(i8* %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %164, %158
  %171 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %172 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %173 = icmp ne i32 (i32)** %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %176 = load i32 (i32)*, i32 (i32)** %175, align 8
  %177 = load i32, i32* @HCI_ERR_ESP_VENDOR_FAIL, align 4
  %178 = call i32 %176(i32 %177)
  br label %179

179:                                              ; preds = %174, %170
  %180 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %180, i32* %9, align 4
  br label %265

181:                                              ; preds = %164
  %182 = call i32 (...) @btm_ble_stop_adv()
  %183 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %184 = call i32 @osi_mutex_lock(i32* @adv_param_lock, i32 %183)
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* @BTM_BLE_CONNECT_DIR_EVT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* @BTM_BLE_STATE_HI_DUTY_DIR_ADV_BIT, align 4
  %190 = call i32 @btm_ble_set_topology_mask(i32 %189)
  br label %207

191:                                              ; preds = %181
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @BTM_BLE_CONNECT_LO_DUTY_DIR_EVT, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* @BTM_BLE_STATE_LO_DUTY_DIR_ADV_BIT, align 4
  %197 = call i32 @btm_ble_set_topology_mask(i32 %196)
  br label %206

198:                                              ; preds = %191
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* @BTM_BLE_NON_CONNECT_EVT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @BTM_BLE_STATE_NON_CONN_ADV_BIT, align 4
  %204 = call i32 @btm_ble_set_topology_mask(i32 %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %206

206:                                              ; preds = %205, %195
  br label %207

207:                                              ; preds = %206, %188
  %208 = load i8*, i8** %10, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 6
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %12, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  store i64 %220, i64* %222, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load i32 (i32)**, i32 (i32)*** %17, align 8
  %227 = bitcast i32 (i32)** %226 to i32 (i32)*
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  store i32 (i32)* %227, i32 (i32)** %229, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %231 = icmp ne %struct.TYPE_13__* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %207
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %236 = call i32 @memcpy(i32* %234, %struct.TYPE_13__* %235, i32 8)
  br label %237

237:                                              ; preds = %232, %207
  %238 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %239 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %239, i32* %20, align 4
  %240 = load i8*, i8** %10, align 8
  %241 = load i8*, i8** %11, align 8
  %242 = load i64, i64* %12, align 8
  %243 = load i64, i64* %13, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @btsnd_hcic_ble_write_adv_params(i8* %240, i8* %241, i64 %242, i64 %243, i32 %246, i32 %249, i32 %250, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %237
  %257 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %258 = call i32 @osi_sem_take(i32* @adv_param_sem, i32 %257)
  %259 = load i32, i32* @adv_param_status, align 4
  store i32 %259, i32* %20, align 4
  br label %262

260:                                              ; preds = %237
  %261 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %261, i32* %20, align 4
  br label %262

262:                                              ; preds = %260, %256
  %263 = call i32 @osi_mutex_unlock(i32* @adv_param_lock)
  %264 = load i32, i32* %20, align 4
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %262, %179, %150, %117, %77, %27
  %266 = load i32, i32* %9, align 4
  ret i32 %266
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local %struct.TYPE_14__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_BleConfigPrivacy(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @btsnd_hcic_ble_set_random_addr(%struct.TYPE_13__*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_BLE_ISVALID_PARAM(i8*, i32, i32) #1

declare dso_local i32 @btm_ble_stop_adv(...) #1

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i32 @btm_ble_set_topology_mask(i32) #1

declare dso_local i64 @btsnd_hcic_ble_write_adv_params(i8*, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
