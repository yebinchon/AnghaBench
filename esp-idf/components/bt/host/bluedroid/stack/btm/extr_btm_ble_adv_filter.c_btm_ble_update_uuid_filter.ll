; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_uuid_filter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_uuid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@BTM_BLE_META_UUID_LEN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_META_HDR_LENGTH = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_PF_SRVC_UUID = common dso_local global i64 0, align 8
@BTM_BLE_META_PF_UUID = common dso_local global i64 0, align 8
@BTM_BLE_META_PF_SOL_UUID = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_COND_CLEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Illegal param for add/delete UUID filter\00", align 1
@BTM_BLE_SCAN_COND_ADD = common dso_local global i64 0, align 8
@BTM_BLE_META_PF_ADDR = common dso_local global i64 0, align 8
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@BTM_BLE_META_ADDR_LEN = common dso_local global i32 0, align 4
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Update Address filter into controller failed.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Updated Address filter\00", align 1
@BTM_BLE_SCAN_COND_DELETE = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i64 0, align 8
@LEN_UUID_32 = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"illegal UUID length: %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"btm_ble_update_uuid_filter : %d, %d, %d, %d\00", align 1
@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"UUID filter udpating failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_update_uuid_filter(i64 %0, i64 %1, i64 %2, %struct.TYPE_14__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* @BTM_BLE_META_UUID_LEN, align 4
  %23 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i64* %27, i64** %16, align 8
  %28 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %17, align 8
  %30 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* @BTM_BLE_META_UUID_LEN, align 4
  %32 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @memset(i64* %27, i32 0, i32 %33)
  %35 = load i64, i64* @BTM_BLE_PF_SRVC_UUID, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %6
  %39 = load i64, i64* @BTM_BLE_META_PF_UUID, align 8
  store i64 %39, i64* %20, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi %struct.TYPE_13__* [ %44, %42 ], [ null, %45 ]
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %19, align 8
  br label %58

48:                                               ; preds = %6
  %49 = load i64, i64* @BTM_BLE_META_PF_SOL_UUID, align 8
  store i64 %49, i64* %20, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi %struct.TYPE_13__* [ %54, %52 ], [ null, %55 ]
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %19, align 8
  br label %58

58:                                               ; preds = %56, %46
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %60 = icmp eq %struct.TYPE_13__* null, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @BTM_BLE_SCAN_COND_CLEAR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %18, align 4
  store i32 %67, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %326

68:                                               ; preds = %61, %58
  %69 = load i64, i64* @BTM_BLE_SCAN_COND_ADD, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %129

72:                                               ; preds = %68
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %74 = icmp ne %struct.TYPE_13__* null, %73
  br i1 %74, label %75, label %129

75:                                               ; preds = %72
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = icmp ne %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %129

80:                                               ; preds = %75
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = call i32* @btm_ble_find_addr_filter_counter(%struct.TYPE_15__* %83)
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %129

86:                                               ; preds = %80
  %87 = load i64*, i64** %16, align 8
  %88 = load i64, i64* @BTM_BLE_META_PF_ADDR, align 8
  %89 = call i32 @UINT8_TO_STREAM(i64* %87, i64 %88)
  %90 = load i64*, i64** %16, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @UINT8_TO_STREAM(i64* %90, i64 %91)
  %93 = load i64*, i64** %16, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @UINT8_TO_STREAM(i64* %93, i64 %94)
  %96 = load i64*, i64** %16, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @BDADDR_TO_STREAM(i64* %96, i32 %101)
  %103 = load i64*, i64** %16, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @UINT8_TO_STREAM(i64* %103, i64 %108)
  %110 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %111 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %112 = load i32, i32* @BTM_BLE_META_ADDR_LEN, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %116 = call i32 @BTM_VendorSpecificCommand(i32 %110, i64 %114, i64* %27, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %86
  %120 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %326

122:                                              ; preds = %86
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @BTM_BLE_META_PF_ADDR, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @btm_ble_advfilt_enq_op_q(i64 %123, i64 %124, i32 %125, i32 %126, i32* null, i32* null)
  %128 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %122, %80, %75, %72, %68
  store i64* %27, i64** %16, align 8
  %130 = load i64*, i64** %16, align 8
  %131 = load i64, i64* %20, align 8
  %132 = call i32 @UINT8_TO_STREAM(i64* %130, i64 %131)
  %133 = load i64*, i64** %16, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @UINT8_TO_STREAM(i64* %133, i64 %134)
  %136 = load i64*, i64** %16, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @UINT8_TO_STREAM(i64* %136, i64 %137)
  %139 = load i64, i64* @BTM_BLE_SCAN_COND_ADD, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %129
  %143 = load i64, i64* @BTM_BLE_SCAN_COND_DELETE, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %299

146:                                              ; preds = %142, %129
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %148 = icmp ne %struct.TYPE_13__* null, %147
  br i1 %148, label %149, label %299

149:                                              ; preds = %146
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @LEN_UUID_16, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %149
  %157 = load i64*, i64** %16, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @UINT16_TO_STREAM(i64* %157, i32 %162)
  %164 = load i64, i64* @LEN_UUID_16, align 8
  %165 = load i64, i64* %17, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %17, align 8
  br label %213

167:                                              ; preds = %149
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @LEN_UUID_32, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %167
  %175 = load i64*, i64** %16, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @UINT32_TO_STREAM(i64* %175, i32 %180)
  %182 = load i64, i64* @LEN_UUID_32, align 8
  %183 = load i64, i64* %17, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %17, align 8
  br label %212

185:                                              ; preds = %167
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @LEN_UUID_128, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %185
  %193 = load i64*, i64** %16, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* @LEN_UUID_128, align 8
  %200 = call i32 @ARRAY_TO_STREAM(i64* %193, i32 %198, i64 %199)
  %201 = load i64, i64* @LEN_UUID_128, align 8
  %202 = load i64, i64* %17, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %17, align 8
  br label %211

204:                                              ; preds = %185
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  %210 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %210, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %326

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %174
  br label %213

213:                                              ; preds = %212, %156
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = icmp ne %struct.TYPE_11__* null, %216
  br i1 %217, label %218, label %276

218:                                              ; preds = %213
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @LEN_UUID_16, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load i64*, i64** %16, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @UINT16_TO_STREAM(i64* %226, i32 %231)
  %233 = load i64, i64* @LEN_UUID_16, align 8
  %234 = load i64, i64* %17, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %17, align 8
  br label %275

236:                                              ; preds = %218
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @LEN_UUID_32, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %236
  %244 = load i64*, i64** %16, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @UINT32_TO_STREAM(i64* %244, i32 %249)
  %251 = load i64, i64* @LEN_UUID_32, align 8
  %252 = load i64, i64* %17, align 8
  %253 = add nsw i64 %252, %251
  store i64 %253, i64* %17, align 8
  br label %274

254:                                              ; preds = %236
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @LEN_UUID_128, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %273

261:                                              ; preds = %254
  %262 = load i64*, i64** %16, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i64, i64* @LEN_UUID_128, align 8
  %269 = call i32 @ARRAY_TO_STREAM(i64* %262, i32 %267, i64 %268)
  %270 = load i64, i64* @LEN_UUID_128, align 8
  %271 = load i64, i64* %17, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %17, align 8
  br label %273

273:                                              ; preds = %261, %254
  br label %274

274:                                              ; preds = %273, %243
  br label %275

275:                                              ; preds = %274, %225
  br label %290

276:                                              ; preds = %213
  %277 = load i64*, i64** %16, align 8
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @memset(i64* %277, i32 255, i32 %282)
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %17, align 8
  %289 = add nsw i64 %288, %287
  store i64 %289, i64* %17, align 8
  br label %290

290:                                              ; preds = %276, %275
  %291 = load i64, i64* %10, align 8
  %292 = load i64, i64* %20, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %17, align 8
  %298 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %291, i64 %292, i64 %296, i64 %297)
  br label %299

299:                                              ; preds = %290, %146, %142
  %300 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %301 = load i64, i64* %17, align 8
  %302 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %303 = call i32 @BTM_VendorSpecificCommand(i32 %300, i64 %301, i64* %27, i32 %302)
  store i32 %303, i32* %18, align 4
  %304 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %322

306:                                              ; preds = %299
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %308 = icmp ne %struct.TYPE_13__* %307, null
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %311, align 8
  %313 = icmp ne %struct.TYPE_15__* %312, null
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %316, align 8
  %318 = call i32 @memcpy(i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_ble_adv_filt_cb, i32 0, i32 0), %struct.TYPE_15__* %317, i32 4)
  br label %321

319:                                              ; preds = %309, %306
  %320 = call i32 @memset(i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @btm_ble_adv_filt_cb, i32 0, i32 0), i32 0, i32 4)
  br label %321

321:                                              ; preds = %319, %314
  br label %324

322:                                              ; preds = %299
  %323 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %321
  %325 = load i32, i32* %18, align 4
  store i32 %325, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %326

326:                                              ; preds = %324, %204, %119, %65
  %327 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %327)
  %328 = load i32, i32* %7, align 4
  ret i32 %328
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #2

declare dso_local i32* @btm_ble_find_addr_filter_counter(%struct.TYPE_15__*) #2

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #2

declare dso_local i32 @BDADDR_TO_STREAM(i64*, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i64, i64*, i32) #2

declare dso_local i32 @btm_ble_advfilt_enq_op_q(i64, i64, i32, i32, i32*, i32*) #2

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #2

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #2

declare dso_local i32 @UINT32_TO_STREAM(i64*, i32) #2

declare dso_local i32 @ARRAY_TO_STREAM(i64*, i32, i64) #2

declare dso_local i32 @memcpy(i64*, %struct.TYPE_15__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
