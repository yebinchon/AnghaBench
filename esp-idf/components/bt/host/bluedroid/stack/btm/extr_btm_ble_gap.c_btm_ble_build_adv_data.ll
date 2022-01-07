; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_build_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_build_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_31__, i32* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32*, i32, i32 }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_27__ = type { i32*, i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, i32* }

@BTM_BLE_AD_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" btm_ble_build_adv_data\00", align 1
@BTM_BLE_AD_BIT_FLAGS = common dso_local global i32 0, align 4
@MIN_ADV_LENGTH = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_FLAG = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_APPEARANCE = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_APPEARANCE = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_MANU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cp_len = %d\0A,p_data->p_manu->len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"p_data->p_manu->p_val[%d] = %x\0A\00", align 1
@BTM_BLE_AD_TYPE_MANU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"p_addr = %p\0A,p_data->p_manu->p_val = %p\0A\00", align 1
@BTM_BLE_AD_BIT_TX_PWR = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_TX_PWR = common dso_local global i32 0, align 4
@BTM_BLE_ADV_TX_POWER_MAX = common dso_local global i64 0, align 8
@BTM_BLE_AD_BIT_SERVICE = common dso_local global i32 0, align 4
@LEN_UUID_16 = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_16SRV_PART = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_16SRV_CMPL = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_SERVICE_32 = common dso_local global i32 0, align 4
@LEN_UUID_32 = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_32SRV_PART = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_32SRV_CMPL = common dso_local global i32 0, align 4
@MAX_UUID_SIZE = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_SERVICE_128 = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_128SRV_PART = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_128SRV_CMPL = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_SERVICE_32SOL = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_32SOL_SRV_UUID = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_SERVICE_128SOL = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_128SOL_SRV_UUID = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_SERVICE_DATA = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_SERVICE_DATA = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_32SERVICE_DATA = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_128SERVICE_DATA = common dso_local global i32 0, align 4
@LEN_UUID_128 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"service data does not fit\00", align 1
@BTM_BLE_AD_BIT_INT_RANGE = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_INT_RANGE = common dso_local global i32 0, align 4
@BTM_BLE_AD_BIT_PROPRIETARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"data exceed max adv packet length\00", align 1
@BTM_BLE_AD_BIT_DEV_NAME = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_NAME_CMPL = common dso_local global i32 0, align 4
@BTM_BLE_AD_TYPE_NAME_SHORT = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @btm_ble_build_adv_data(i32* %0, i32** %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load i32, i32* @BTM_BLE_AD_DATA_LEN, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %916

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @BTM_BLE_AD_BIT_FLAGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* @BTM_BLE_AD_TYPE_FLAG, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = icmp ne %struct.TYPE_21__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %47

44:                                               ; preds = %28
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  store i32 0, i32* %45, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 3
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @BTM_BLE_AD_BIT_FLAGS, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %47, %23
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BTM_BLE_AD_BIT_APPEARANCE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  store i32 3, i32* %63, align 4
  %65 = load i32, i32* @BTM_BLE_AD_TYPE_APPEARANCE, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @UINT16_TO_STREAM(i32* %68, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 4
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @BTM_BLE_AD_BIT_APPEARANCE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %62, %57, %54
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %193

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @BTM_BLE_AD_BIT_MANU, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %193

88:                                               ; preds = %83
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = icmp ne %struct.TYPE_21__* %89, null
  br i1 %90, label %91, label %193

91:                                               ; preds = %88
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = icmp ne %struct.TYPE_24__* %94, null
  br i1 %95, label %96, label %193

96:                                               ; preds = %91
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %193

103:                                              ; preds = %96
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 9
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %193

110:                                              ; preds = %103
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 9
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %11, align 4
  br label %130

124:                                              ; preds = %110
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 9
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 9
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %136)
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %158, %130
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 9
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %139, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %138
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 9
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %156)
  br label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %138

161:                                              ; preds = %138
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32, i32* @BTM_BLE_AD_TYPE_MANU, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %8, align 8
  store i32 %166, i32* %167, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 9
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @ARRAY_TO_STREAM(i32* %169, i32* %174, i32 %175)
  %177 = load i32*, i32** %8, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 9
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* %177, i32* %182)
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* @BTM_BLE_AD_BIT_MANU, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %161, %103, %96, %91, %88, %83, %79
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %231

197:                                              ; preds = %193
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @BTM_BLE_AD_BIT_TX_PWR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %231

202:                                              ; preds = %197
  %203 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %8, align 8
  store i32 %203, i32* %204, align 4
  %206 = load i32, i32* @BTM_BLE_AD_TYPE_TX_PWR, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %8, align 8
  store i32 %206, i32* %207, align 4
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @BTM_BLE_ADV_TX_POWER_MAX, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %202
  %215 = load i64, i64* @BTM_BLE_ADV_TX_POWER_MAX, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %202
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @btm_ble_map_adv_tx_power(i64 %221)
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %8, align 8
  store i32 %222, i32* %223, align 4
  %225 = load i32, i32* %10, align 4
  %226 = sub nsw i32 %225, 3
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* @BTM_BLE_AD_BIT_TX_PWR, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %7, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %218, %197, %193
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %234 = icmp sgt i32 %232, %233
  br i1 %234, label %235, label %336

235:                                              ; preds = %231
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %336

240:                                              ; preds = %235
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %242 = icmp ne %struct.TYPE_21__* %241, null
  br i1 %242, label %243, label %336

243:                                              ; preds = %240
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %245, align 8
  %247 = icmp ne %struct.TYPE_25__* %246, null
  br i1 %247, label %248, label %336

248:                                              ; preds = %243
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %336

255:                                              ; preds = %248
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %336

262:                                              ; preds = %255
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 8
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @LEN_UUID_16, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %272 = sub nsw i32 %270, %271
  %273 = icmp sgt i32 %269, %272
  br i1 %273, label %274, label %289

274:                                              ; preds = %262
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32, i32* @LEN_UUID_16, align 4
  %279 = sdiv i32 %277, %278
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @LEN_UUID_16, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 1, %282
  %284 = load i32*, i32** %8, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %8, align 8
  store i32 %283, i32* %284, align 4
  %286 = load i32, i32* @BTM_BLE_AD_TYPE_16SRV_PART, align 4
  %287 = load i32*, i32** %8, align 8
  %288 = getelementptr inbounds i32, i32* %287, i32 1
  store i32* %288, i32** %8, align 8
  store i32 %286, i32* %287, align 4
  br label %304

289:                                              ; preds = %262
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 8
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* @LEN_UUID_16, align 4
  %297 = mul nsw i32 %295, %296
  %298 = add nsw i32 1, %297
  %299 = load i32*, i32** %8, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %8, align 8
  store i32 %298, i32* %299, align 4
  %301 = load i32, i32* @BTM_BLE_AD_TYPE_16SRV_CMPL, align 4
  %302 = load i32*, i32** %8, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %8, align 8
  store i32 %301, i32* %302, align 4
  br label %304

304:                                              ; preds = %289, %274
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %321, %304
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %324

309:                                              ; preds = %305
  %310 = load i32*, i32** %8, align 8
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 8
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @UINT16_TO_STREAM(i32* %310, i32 %319)
  br label %321

321:                                              ; preds = %309
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %12, align 4
  br label %305

324:                                              ; preds = %305
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %327 = mul nsw i32 %325, %326
  %328 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* %10, align 4
  %331 = sub nsw i32 %330, %329
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %7, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %7, align 4
  br label %336

336:                                              ; preds = %324, %255, %248, %243, %240, %235, %231
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %441

340:                                              ; preds = %336
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_32, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %441

345:                                              ; preds = %340
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %347 = icmp ne %struct.TYPE_21__* %346, null
  br i1 %347, label %348, label %441

348:                                              ; preds = %345
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 7
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %350, align 8
  %352 = icmp ne %struct.TYPE_26__* %351, null
  br i1 %352, label %353, label %441

353:                                              ; preds = %348
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 7
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %441

360:                                              ; preds = %353
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 7
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %441

367:                                              ; preds = %360
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 7
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @LEN_UUID_32, align 4
  %374 = mul nsw i32 %372, %373
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %377 = sub nsw i32 %375, %376
  %378 = icmp sgt i32 %374, %377
  br i1 %378, label %379, label %394

379:                                              ; preds = %367
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %382 = sub nsw i32 %380, %381
  %383 = load i32, i32* @LEN_UUID_32, align 4
  %384 = sdiv i32 %382, %383
  store i32 %384, i32* %11, align 4
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* @LEN_UUID_32, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 1, %387
  %389 = load i32*, i32** %8, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 1
  store i32* %390, i32** %8, align 8
  store i32 %388, i32* %389, align 4
  %391 = load i32, i32* @BTM_BLE_AD_TYPE_32SRV_PART, align 4
  %392 = load i32*, i32** %8, align 8
  %393 = getelementptr inbounds i32, i32* %392, i32 1
  store i32* %393, i32** %8, align 8
  store i32 %391, i32* %392, align 4
  br label %409

394:                                              ; preds = %367
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 7
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* @LEN_UUID_32, align 4
  %402 = mul nsw i32 %400, %401
  %403 = add nsw i32 1, %402
  %404 = load i32*, i32** %8, align 8
  %405 = getelementptr inbounds i32, i32* %404, i32 1
  store i32* %405, i32** %8, align 8
  store i32 %403, i32* %404, align 4
  %406 = load i32, i32* @BTM_BLE_AD_TYPE_32SRV_CMPL, align 4
  %407 = load i32*, i32** %8, align 8
  %408 = getelementptr inbounds i32, i32* %407, i32 1
  store i32* %408, i32** %8, align 8
  store i32 %406, i32* %407, align 4
  br label %409

409:                                              ; preds = %394, %379
  store i32 0, i32* %12, align 4
  br label %410

410:                                              ; preds = %426, %409
  %411 = load i32, i32* %12, align 4
  %412 = load i32, i32* %11, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %429

414:                                              ; preds = %410
  %415 = load i32*, i32** %8, align 8
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 7
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %12, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @UINT32_TO_STREAM(i32* %415, i32 %424)
  br label %426

426:                                              ; preds = %414
  %427 = load i32, i32* %12, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %12, align 4
  br label %410

429:                                              ; preds = %410
  %430 = load i32, i32* %11, align 4
  %431 = load i32, i32* @LEN_UUID_32, align 4
  %432 = mul nsw i32 %430, %431
  %433 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %434 = add nsw i32 %432, %433
  %435 = load i32, i32* %10, align 4
  %436 = sub nsw i32 %435, %434
  store i32 %436, i32* %10, align 4
  %437 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_32, align 4
  %438 = xor i32 %437, -1
  %439 = load i32, i32* %7, align 4
  %440 = and i32 %439, %438
  store i32 %440, i32* %7, align 4
  br label %441

441:                                              ; preds = %429, %360, %353, %348, %345, %340, %336
  %442 = load i32, i32* %10, align 4
  %443 = load i32, i32* @MAX_UUID_SIZE, align 4
  %444 = add nsw i32 %443, 2
  %445 = icmp sge i32 %442, %444
  br i1 %445, label %446, label %496

446:                                              ; preds = %441
  %447 = load i32, i32* %7, align 4
  %448 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_128, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %496

451:                                              ; preds = %446
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %453 = icmp ne %struct.TYPE_21__* %452, null
  br i1 %453, label %454, label %496

454:                                              ; preds = %451
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 6
  %457 = load %struct.TYPE_27__*, %struct.TYPE_27__** %456, align 8
  %458 = icmp ne %struct.TYPE_27__* %457, null
  br i1 %458, label %459, label %496

459:                                              ; preds = %454
  %460 = load i32, i32* @MAX_UUID_SIZE, align 4
  %461 = add nsw i32 1, %460
  %462 = load i32*, i32** %8, align 8
  %463 = getelementptr inbounds i32, i32* %462, i32 1
  store i32* %463, i32** %8, align 8
  store i32 %461, i32* %462, align 4
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %464, i32 0, i32 6
  %466 = load %struct.TYPE_27__*, %struct.TYPE_27__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %459
  %471 = load i32, i32* @BTM_BLE_AD_TYPE_128SRV_PART, align 4
  %472 = load i32*, i32** %8, align 8
  %473 = getelementptr inbounds i32, i32* %472, i32 1
  store i32* %473, i32** %8, align 8
  store i32 %471, i32* %472, align 4
  br label %478

474:                                              ; preds = %459
  %475 = load i32, i32* @BTM_BLE_AD_TYPE_128SRV_CMPL, align 4
  %476 = load i32*, i32** %8, align 8
  %477 = getelementptr inbounds i32, i32* %476, i32 1
  store i32* %477, i32** %8, align 8
  store i32 %475, i32* %476, align 4
  br label %478

478:                                              ; preds = %474, %470
  %479 = load i32*, i32** %8, align 8
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 6
  %482 = load %struct.TYPE_27__*, %struct.TYPE_27__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %482, i32 0, i32 0
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* @MAX_UUID_SIZE, align 4
  %486 = call i32 @ARRAY_TO_STREAM(i32* %479, i32* %484, i32 %485)
  %487 = load i32, i32* @MAX_UUID_SIZE, align 4
  %488 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %489 = add nsw i32 %487, %488
  %490 = load i32, i32* %10, align 4
  %491 = sub nsw i32 %490, %489
  store i32 %491, i32* %10, align 4
  %492 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_128, align 4
  %493 = xor i32 %492, -1
  %494 = load i32, i32* %7, align 4
  %495 = and i32 %494, %493
  store i32 %495, i32* %7, align 4
  br label %496

496:                                              ; preds = %478, %454, %451, %446, %441
  %497 = load i32, i32* %10, align 4
  %498 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %499 = icmp sgt i32 %497, %498
  br i1 %499, label %500, label %598

500:                                              ; preds = %496
  %501 = load i32, i32* %7, align 4
  %502 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_32SOL, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %598

505:                                              ; preds = %500
  %506 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %507 = icmp ne %struct.TYPE_21__* %506, null
  br i1 %507, label %508, label %598

508:                                              ; preds = %505
  %509 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %509, i32 0, i32 5
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %510, align 8
  %512 = icmp ne %struct.TYPE_28__* %511, null
  br i1 %512, label %513, label %598

513:                                              ; preds = %508
  %514 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %514, i32 0, i32 5
  %516 = load %struct.TYPE_28__*, %struct.TYPE_28__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %598

520:                                              ; preds = %513
  %521 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 5
  %523 = load %struct.TYPE_28__*, %struct.TYPE_28__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %523, i32 0, i32 1
  %525 = load i32*, i32** %524, align 8
  %526 = icmp ne i32* %525, null
  br i1 %526, label %527, label %598

527:                                              ; preds = %520
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %528, i32 0, i32 5
  %530 = load %struct.TYPE_28__*, %struct.TYPE_28__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @LEN_UUID_32, align 4
  %534 = mul nsw i32 %532, %533
  %535 = load i32, i32* %10, align 4
  %536 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %537 = sub nsw i32 %535, %536
  %538 = icmp sgt i32 %534, %537
  br i1 %538, label %539, label %551

539:                                              ; preds = %527
  %540 = load i32, i32* %10, align 4
  %541 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %542 = sub nsw i32 %540, %541
  %543 = load i32, i32* @LEN_UUID_32, align 4
  %544 = sdiv i32 %542, %543
  store i32 %544, i32* %11, align 4
  %545 = load i32, i32* %11, align 4
  %546 = load i32, i32* @LEN_UUID_32, align 4
  %547 = mul nsw i32 %545, %546
  %548 = add nsw i32 1, %547
  %549 = load i32*, i32** %8, align 8
  %550 = getelementptr inbounds i32, i32* %549, i32 1
  store i32* %550, i32** %8, align 8
  store i32 %548, i32* %549, align 4
  br label %563

551:                                              ; preds = %527
  %552 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 5
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  store i32 %556, i32* %11, align 4
  %557 = load i32, i32* %11, align 4
  %558 = load i32, i32* @LEN_UUID_32, align 4
  %559 = mul nsw i32 %557, %558
  %560 = add nsw i32 1, %559
  %561 = load i32*, i32** %8, align 8
  %562 = getelementptr inbounds i32, i32* %561, i32 1
  store i32* %562, i32** %8, align 8
  store i32 %560, i32* %561, align 4
  br label %563

563:                                              ; preds = %551, %539
  %564 = load i32, i32* @BTM_BLE_AD_TYPE_32SOL_SRV_UUID, align 4
  %565 = load i32*, i32** %8, align 8
  %566 = getelementptr inbounds i32, i32* %565, i32 1
  store i32* %566, i32** %8, align 8
  store i32 %564, i32* %565, align 4
  store i32 0, i32* %12, align 4
  br label %567

567:                                              ; preds = %583, %563
  %568 = load i32, i32* %12, align 4
  %569 = load i32, i32* %11, align 4
  %570 = icmp slt i32 %568, %569
  br i1 %570, label %571, label %586

571:                                              ; preds = %567
  %572 = load i32*, i32** %8, align 8
  %573 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %574 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %573, i32 0, i32 5
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %575, i32 0, i32 1
  %577 = load i32*, i32** %576, align 8
  %578 = load i32, i32* %12, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @UINT32_TO_STREAM(i32* %572, i32 %581)
  br label %583

583:                                              ; preds = %571
  %584 = load i32, i32* %12, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %12, align 4
  br label %567

586:                                              ; preds = %567
  %587 = load i32, i32* %11, align 4
  %588 = load i32, i32* @LEN_UUID_32, align 4
  %589 = mul nsw i32 %587, %588
  %590 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %591 = add nsw i32 %589, %590
  %592 = load i32, i32* %10, align 4
  %593 = sub nsw i32 %592, %591
  store i32 %593, i32* %10, align 4
  %594 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_32SOL, align 4
  %595 = xor i32 %594, -1
  %596 = load i32, i32* %7, align 4
  %597 = and i32 %596, %595
  store i32 %597, i32* %7, align 4
  br label %598

598:                                              ; preds = %586, %520, %513, %508, %505, %500, %496
  %599 = load i32, i32* %10, align 4
  %600 = load i32, i32* @MAX_UUID_SIZE, align 4
  %601 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %602 = add nsw i32 %600, %601
  %603 = icmp sge i32 %599, %602
  br i1 %603, label %604, label %642

604:                                              ; preds = %598
  %605 = load i32, i32* %7, align 4
  %606 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_128SOL, align 4
  %607 = and i32 %605, %606
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %642

609:                                              ; preds = %604
  %610 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %611 = icmp ne %struct.TYPE_21__* %610, null
  br i1 %611, label %612, label %642

612:                                              ; preds = %609
  %613 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %614 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %613, i32 0, i32 4
  %615 = load %struct.TYPE_29__*, %struct.TYPE_29__** %614, align 8
  %616 = icmp ne %struct.TYPE_29__* %615, null
  br i1 %616, label %617, label %642

617:                                              ; preds = %612
  %618 = load i32, i32* @MAX_UUID_SIZE, align 4
  %619 = add nsw i32 1, %618
  %620 = load i32*, i32** %8, align 8
  %621 = getelementptr inbounds i32, i32* %620, i32 1
  store i32* %621, i32** %8, align 8
  store i32 %619, i32* %620, align 4
  %622 = load i32, i32* @BTM_BLE_AD_TYPE_128SOL_SRV_UUID, align 4
  %623 = load i32*, i32** %8, align 8
  %624 = getelementptr inbounds i32, i32* %623, i32 1
  store i32* %624, i32** %8, align 8
  store i32 %622, i32* %623, align 4
  %625 = load i32*, i32** %8, align 8
  %626 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %627 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %626, i32 0, i32 4
  %628 = load %struct.TYPE_29__*, %struct.TYPE_29__** %627, align 8
  %629 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %628, i32 0, i32 0
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* @MAX_UUID_SIZE, align 4
  %632 = call i32 @ARRAY_TO_STREAM(i32* %625, i32* %630, i32 %631)
  %633 = load i32, i32* @MAX_UUID_SIZE, align 4
  %634 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %635 = add nsw i32 %633, %634
  %636 = load i32, i32* %10, align 4
  %637 = sub nsw i32 %636, %635
  store i32 %637, i32* %10, align 4
  %638 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_128SOL, align 4
  %639 = xor i32 %638, -1
  %640 = load i32, i32* %7, align 4
  %641 = and i32 %640, %639
  store i32 %641, i32* %7, align 4
  br label %642

642:                                              ; preds = %617, %612, %609, %604, %598
  %643 = load i32, i32* %10, align 4
  %644 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %645 = icmp sgt i32 %643, %644
  br i1 %645, label %646, label %804

646:                                              ; preds = %642
  %647 = load i32, i32* %7, align 4
  %648 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_DATA, align 4
  %649 = and i32 %647, %648
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %804

651:                                              ; preds = %646
  %652 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %653 = icmp ne %struct.TYPE_21__* %652, null
  br i1 %653, label %654, label %804

654:                                              ; preds = %651
  %655 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %656 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %655, i32 0, i32 3
  %657 = load %struct.TYPE_17__*, %struct.TYPE_17__** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %804

661:                                              ; preds = %654
  %662 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %663 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %662, i32 0, i32 3
  %664 = load %struct.TYPE_17__*, %struct.TYPE_17__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %664, i32 0, i32 2
  %666 = load i32*, i32** %665, align 8
  %667 = icmp ne i32* %666, null
  br i1 %667, label %668, label %804

668:                                              ; preds = %661
  %669 = load i32, i32* %10, align 4
  %670 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %671 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %670, i32 0, i32 3
  %672 = load %struct.TYPE_17__*, %struct.TYPE_17__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %677 = add nsw i32 %675, %676
  %678 = icmp sgt i32 %669, %677
  br i1 %678, label %679, label %801

679:                                              ; preds = %668
  %680 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %681 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %680, i32 0, i32 3
  %682 = load %struct.TYPE_17__*, %struct.TYPE_17__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* %10, align 4
  %686 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %687 = sub nsw i32 %685, %686
  %688 = icmp sgt i32 %684, %687
  br i1 %688, label %689, label %700

689:                                              ; preds = %679
  %690 = load i32, i32* %10, align 4
  %691 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %692 = sub nsw i32 %690, %691
  %693 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %694 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %693, i32 0, i32 3
  %695 = load %struct.TYPE_17__*, %struct.TYPE_17__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %695, i32 0, i32 1
  %697 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = sub nsw i32 %692, %698
  store i32 %699, i32* %11, align 4
  br label %706

700:                                              ; preds = %679
  %701 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %702 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %701, i32 0, i32 3
  %703 = load %struct.TYPE_17__*, %struct.TYPE_17__** %702, align 8
  %704 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 8
  store i32 %705, i32* %11, align 4
  br label %706

706:                                              ; preds = %700, %689
  %707 = load i32, i32* %11, align 4
  %708 = add nsw i32 %707, 1
  %709 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %710 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %709, i32 0, i32 3
  %711 = load %struct.TYPE_17__*, %struct.TYPE_17__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %711, i32 0, i32 1
  %713 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  %715 = add nsw i32 %708, %714
  %716 = load i32*, i32** %8, align 8
  %717 = getelementptr inbounds i32, i32* %716, i32 1
  store i32* %717, i32** %8, align 8
  store i32 %715, i32* %716, align 4
  %718 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %719 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %718, i32 0, i32 3
  %720 = load %struct.TYPE_17__*, %struct.TYPE_17__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = load i32, i32* @LEN_UUID_16, align 4
  %725 = icmp eq i32 %723, %724
  br i1 %725, label %726, label %739

726:                                              ; preds = %706
  %727 = load i32, i32* @BTM_BLE_AD_TYPE_SERVICE_DATA, align 4
  %728 = load i32*, i32** %8, align 8
  %729 = getelementptr inbounds i32, i32* %728, i32 1
  store i32* %729, i32** %8, align 8
  store i32 %727, i32* %728, align 4
  %730 = load i32*, i32** %8, align 8
  %731 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %732 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %731, i32 0, i32 3
  %733 = load %struct.TYPE_17__*, %struct.TYPE_17__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %735, i32 0, i32 2
  %737 = load i32, i32* %736, align 4
  %738 = call i32 @UINT16_TO_STREAM(i32* %730, i32 %737)
  br label %776

739:                                              ; preds = %706
  %740 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %741 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %740, i32 0, i32 3
  %742 = load %struct.TYPE_17__*, %struct.TYPE_17__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 8
  %746 = load i32, i32* @LEN_UUID_32, align 4
  %747 = icmp eq i32 %745, %746
  br i1 %747, label %748, label %761

748:                                              ; preds = %739
  %749 = load i32, i32* @BTM_BLE_AD_TYPE_32SERVICE_DATA, align 4
  %750 = load i32*, i32** %8, align 8
  %751 = getelementptr inbounds i32, i32* %750, i32 1
  store i32* %751, i32** %8, align 8
  store i32 %749, i32* %750, align 4
  %752 = load i32*, i32** %8, align 8
  %753 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %754 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %753, i32 0, i32 3
  %755 = load %struct.TYPE_17__*, %struct.TYPE_17__** %754, align 8
  %756 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %755, i32 0, i32 1
  %757 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 8
  %760 = call i32 @UINT32_TO_STREAM(i32* %752, i32 %759)
  br label %775

761:                                              ; preds = %739
  %762 = load i32, i32* @BTM_BLE_AD_TYPE_128SERVICE_DATA, align 4
  %763 = load i32*, i32** %8, align 8
  %764 = getelementptr inbounds i32, i32* %763, i32 1
  store i32* %764, i32** %8, align 8
  store i32 %762, i32* %763, align 4
  %765 = load i32*, i32** %8, align 8
  %766 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %767 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %766, i32 0, i32 3
  %768 = load %struct.TYPE_17__*, %struct.TYPE_17__** %767, align 8
  %769 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %768, i32 0, i32 1
  %770 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %770, i32 0, i32 0
  %772 = load i32*, i32** %771, align 8
  %773 = load i32, i32* @LEN_UUID_128, align 4
  %774 = call i32 @ARRAY_TO_STREAM(i32* %765, i32* %772, i32 %773)
  br label %775

775:                                              ; preds = %761, %748
  br label %776

776:                                              ; preds = %775, %726
  %777 = load i32*, i32** %8, align 8
  %778 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %779 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %778, i32 0, i32 3
  %780 = load %struct.TYPE_17__*, %struct.TYPE_17__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %780, i32 0, i32 2
  %782 = load i32*, i32** %781, align 8
  %783 = load i32, i32* %11, align 4
  %784 = call i32 @ARRAY_TO_STREAM(i32* %777, i32* %782, i32 %783)
  %785 = load i32, i32* %11, align 4
  %786 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %787 = add nsw i32 %785, %786
  %788 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %789 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %788, i32 0, i32 3
  %790 = load %struct.TYPE_17__*, %struct.TYPE_17__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  %794 = add nsw i32 %787, %793
  %795 = load i32, i32* %10, align 4
  %796 = sub nsw i32 %795, %794
  store i32 %796, i32* %10, align 4
  %797 = load i32, i32* @BTM_BLE_AD_BIT_SERVICE_DATA, align 4
  %798 = xor i32 %797, -1
  %799 = load i32, i32* %7, align 4
  %800 = and i32 %799, %798
  store i32 %800, i32* %7, align 4
  br label %803

801:                                              ; preds = %668
  %802 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %803

803:                                              ; preds = %801, %776
  br label %804

804:                                              ; preds = %803, %661, %654, %651, %646, %642
  %805 = load i32, i32* %10, align 4
  %806 = icmp sge i32 %805, 6
  br i1 %806, label %807, label %839

807:                                              ; preds = %804
  %808 = load i32, i32* %7, align 4
  %809 = load i32, i32* @BTM_BLE_AD_BIT_INT_RANGE, align 4
  %810 = and i32 %808, %809
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %839

812:                                              ; preds = %807
  %813 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %814 = icmp ne %struct.TYPE_21__* %813, null
  br i1 %814, label %815, label %839

815:                                              ; preds = %812
  %816 = load i32*, i32** %8, align 8
  %817 = getelementptr inbounds i32, i32* %816, i32 1
  store i32* %817, i32** %8, align 8
  store i32 5, i32* %816, align 4
  %818 = load i32, i32* @BTM_BLE_AD_TYPE_INT_RANGE, align 4
  %819 = load i32*, i32** %8, align 8
  %820 = getelementptr inbounds i32, i32* %819, i32 1
  store i32* %820, i32** %8, align 8
  store i32 %818, i32* %819, align 4
  %821 = load i32*, i32** %8, align 8
  %822 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %823 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %822, i32 0, i32 2
  %824 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %823, i32 0, i32 1
  %825 = load i32, i32* %824, align 4
  %826 = call i32 @UINT16_TO_STREAM(i32* %821, i32 %825)
  %827 = load i32*, i32** %8, align 8
  %828 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %829 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %828, i32 0, i32 2
  %830 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 8
  %832 = call i32 @UINT16_TO_STREAM(i32* %827, i32 %831)
  %833 = load i32, i32* %10, align 4
  %834 = sub nsw i32 %833, 6
  store i32 %834, i32* %10, align 4
  %835 = load i32, i32* @BTM_BLE_AD_BIT_INT_RANGE, align 4
  %836 = xor i32 %835, -1
  %837 = load i32, i32* %7, align 4
  %838 = and i32 %837, %836
  store i32 %838, i32* %7, align 4
  br label %839

839:                                              ; preds = %815, %812, %807, %804
  %840 = load i32, i32* %7, align 4
  %841 = load i32, i32* @BTM_BLE_AD_BIT_PROPRIETARY, align 4
  %842 = and i32 %840, %841
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %915

844:                                              ; preds = %839
  %845 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %846 = icmp ne %struct.TYPE_21__* %845, null
  br i1 %846, label %847, label %915

847:                                              ; preds = %844
  %848 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %849 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %848, i32 0, i32 1
  %850 = load %struct.TYPE_19__*, %struct.TYPE_19__** %849, align 8
  %851 = icmp ne %struct.TYPE_19__* %850, null
  br i1 %851, label %852, label %915

852:                                              ; preds = %847
  store i32 0, i32* %12, align 4
  br label %853

853:                                              ; preds = %907, %852
  %854 = load i32, i32* %12, align 4
  %855 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %856 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %855, i32 0, i32 1
  %857 = load %struct.TYPE_19__*, %struct.TYPE_19__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 8
  %860 = icmp slt i32 %854, %859
  br i1 %860, label %861, label %910

861:                                              ; preds = %853
  %862 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %863 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %862, i32 0, i32 1
  %864 = load %struct.TYPE_19__*, %struct.TYPE_19__** %863, align 8
  %865 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %864, i32 0, i32 1
  %866 = load %struct.TYPE_20__*, %struct.TYPE_20__** %865, align 8
  %867 = load i32, i32* %12, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %866, i64 %868
  store %struct.TYPE_20__* %869, %struct.TYPE_20__** %13, align 8
  %870 = load i32, i32* %10, align 4
  %871 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %872 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %873 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %872, i32 0, i32 0
  %874 = load i32, i32* %873, align 8
  %875 = add nsw i32 %871, %874
  %876 = icmp sge i32 %870, %875
  br i1 %876, label %877, label %904

877:                                              ; preds = %861
  %878 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %879 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 8
  %881 = add nsw i32 %880, 1
  %882 = load i32*, i32** %8, align 8
  %883 = getelementptr inbounds i32, i32* %882, i32 1
  store i32* %883, i32** %8, align 8
  store i32 %881, i32* %882, align 4
  %884 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %885 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %884, i32 0, i32 2
  %886 = load i32, i32* %885, align 8
  %887 = load i32*, i32** %8, align 8
  %888 = getelementptr inbounds i32, i32* %887, i32 1
  store i32* %888, i32** %8, align 8
  store i32 %886, i32* %887, align 4
  %889 = load i32*, i32** %8, align 8
  %890 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %891 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %890, i32 0, i32 1
  %892 = load i32*, i32** %891, align 8
  %893 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %894 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %893, i32 0, i32 0
  %895 = load i32, i32* %894, align 8
  %896 = call i32 @ARRAY_TO_STREAM(i32* %889, i32* %892, i32 %895)
  %897 = load i32, i32* @MIN_ADV_LENGTH, align 4
  %898 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %899 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %898, i32 0, i32 0
  %900 = load i32, i32* %899, align 8
  %901 = add nsw i32 %897, %900
  %902 = load i32, i32* %10, align 4
  %903 = sub nsw i32 %902, %901
  store i32 %903, i32* %10, align 4
  br label %906

904:                                              ; preds = %861
  %905 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %910

906:                                              ; preds = %877
  br label %907

907:                                              ; preds = %906
  %908 = load i32, i32* %12, align 4
  %909 = add nsw i32 %908, 1
  store i32 %909, i32* %12, align 4
  br label %853

910:                                              ; preds = %904, %853
  %911 = load i32, i32* @BTM_BLE_AD_BIT_PROPRIETARY, align 4
  %912 = xor i32 %911, -1
  %913 = load i32, i32* %7, align 4
  %914 = and i32 %913, %912
  store i32 %914, i32* %7, align 4
  br label %915

915:                                              ; preds = %910, %847, %844, %839
  br label %916

916:                                              ; preds = %915, %3
  %917 = load i32, i32* %7, align 4
  %918 = load i32*, i32** %4, align 8
  store i32 %917, i32* %918, align 4
  %919 = load i32*, i32** %8, align 8
  %920 = load i32**, i32*** %5, align 8
  store i32* %919, i32** %920, align 8
  %921 = load i32*, i32** %9, align 8
  ret i32* %921
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #1

declare dso_local i32 @btm_ble_map_adv_tx_power(i64) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
