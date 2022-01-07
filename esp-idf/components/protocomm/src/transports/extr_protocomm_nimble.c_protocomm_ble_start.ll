; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_protocomm_ble_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_protocomm_ble_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.uuid128_name_buf = type { %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i32*, i32, %struct.TYPE_17__, i32, i32, i32 }

@ble_uuid_base = common dso_local global i32 0, align 4
@BLE_UUID128_VAL_LENGTH = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@protoble_internal = common dso_local global %struct.TYPE_24__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Protocomm BLE already started\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Error while allocating memory for 128 bit UUID\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@BLE_UUID_TYPE_128 = common dso_local global i32 0, align 4
@adv_data = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Error allocating memory for UUID128 address database\00", align 1
@uuid128_name_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Error allocating memory for storing service UUID\00", align 1
@protocomm_ble_device_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Error allocating memory for storing BLE device name\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Error allocating internal protocomm structure\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Error allocating internal name UUID table\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Error allocating internal name UUID entry\00", align 1
@protocomm_ble_add_endpoint = common dso_local global i32 0, align 4
@protocomm_ble_remove_endpoint = common dso_local global i32 0, align 4
@BLE_ATT_MTU_DFLT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Ran out of memory for BLE config\00", align 1
@transport_simple_ble_connect = common dso_local global i32 0, align 4
@transport_simple_ble_disconnect = common dso_local global i32 0, align 4
@transport_simple_ble_set_mtu = common dso_local global i32 0, align 4
@adv_params = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Error populating GATT Database\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Free Heap size after simple_ble_start= %d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"simple_ble_start failed w/ error code 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Waiting for client to connect ......\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocomm_ble_start(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.uuid128_name_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load i32, i32* @ble_uuid_base, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BLE_UUID128_VAL_LENGTH, align 4
  %16 = call i32 @memcpy(i32 %11, i32 %14, i32 %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = icmp ne %struct.TYPE_21__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = icmp ne %struct.TYPE_22__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = icmp ne %struct.TYPE_19__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %22, %19, %2
  %33 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %33, i64* %3, align 8
  br label %266

34:                                               ; preds = %27
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %36 = icmp ne %struct.TYPE_24__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @ESP_FAIL, align 8
  store i64 %40, i64* %3, align 8
  br label %266

41:                                               ; preds = %34
  %42 = call i64 @calloc(i32 1, i32 8)
  %43 = inttoptr i64 %42 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %6, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = icmp eq %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %49, i64* %3, align 8
  br label %266

50:                                               ; preds = %41
  %51 = load i32, i32* @BLE_UUID_TYPE_128, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BLE_UUID128_VAL_LENGTH, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = bitcast %struct.TYPE_23__* %63 to i8*
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @adv_data, i32 0, i32 0), align 8
  %66 = call i64 @calloc(i32 1, i32 8)
  %67 = inttoptr i64 %66 to %struct.uuid128_name_buf*
  store %struct.uuid128_name_buf* %67, %struct.uuid128_name_buf** %7, align 8
  %68 = load %struct.uuid128_name_buf*, %struct.uuid128_name_buf** %7, align 8
  %69 = icmp eq %struct.uuid128_name_buf* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %50
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %73, i64* %3, align 8
  br label %266

74:                                               ; preds = %50
  %75 = load %struct.uuid128_name_buf*, %struct.uuid128_name_buf** %7, align 8
  %76 = load i32, i32* @link, align 4
  %77 = call i32 @SLIST_INSERT_HEAD(i32* @uuid128_name_list, %struct.uuid128_name_buf* %75, i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = load %struct.uuid128_name_buf*, %struct.uuid128_name_buf** %7, align 8
  %80 = getelementptr inbounds %struct.uuid128_name_buf, %struct.uuid128_name_buf* %79, i32 0, i32 0
  store %struct.TYPE_23__* %78, %struct.TYPE_23__** %80, align 8
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @adv_data, i32 0, i32 0), align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @TAG, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 (...) @protocomm_ble_cleanup()
  %87 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %87, i64* %3, align 8
  br label %266

88:                                               ; preds = %74
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @strdup(i32 %91)
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** @protocomm_ble_device_name, align 8
  %94 = load i32*, i32** @protocomm_ble_device_name, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i32, i32* @TAG, align 4
  %98 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %99 = call i32 (...) @protocomm_ble_cleanup()
  %100 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %100, i64* %3, align 8
  br label %266

101:                                              ; preds = %88
  %102 = call i64 @calloc(i32 1, i32 24)
  %103 = inttoptr i64 %102 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %103, %struct.TYPE_24__** @protoble_internal, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %105 = icmp eq %struct.TYPE_24__* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @TAG, align 4
  %108 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i32 (...) @protocomm_ble_cleanup()
  %110 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %110, i64* %3, align 8
  br label %266

111:                                              ; preds = %101
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call %struct.TYPE_16__* @malloc(i32 %122)
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 3
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %125, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = icmp eq %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %111
  %131 = load i32, i32* @TAG, align 4
  %132 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %133 = call i32 (...) @protocomm_ble_cleanup()
  %134 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %134, i64* %3, align 8
  br label %266

135:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %190, %135
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %193

142:                                              ; preds = %136
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  store i32 %150, i32* %157, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @strdup(i32 %165)
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  store i32* %167, i32** %174, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %142
  %185 = load i32, i32* @TAG, align 4
  %186 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %185, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %187 = call i32 (...) @protocomm_ble_cleanup()
  %188 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %188, i64* %3, align 8
  br label %266

189:                                              ; preds = %142
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %136

193:                                              ; preds = %136
  %194 = load i32, i32* @protocomm_ble_add_endpoint, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @protocomm_ble_remove_endpoint, align 4
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 2
  store %struct.TYPE_21__* %200, %struct.TYPE_21__** %202, align 8
  %203 = load i32, i32* @BLE_ATT_MTU_DFLT, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** @protoble_internal, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = call i64 @calloc(i32 1, i32 48)
  %207 = inttoptr i64 %206 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %207, %struct.TYPE_20__** %9, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %209 = icmp eq %struct.TYPE_20__* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %193
  %211 = load i32, i32* @TAG, align 4
  %212 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %213 = call i32 (...) @protocomm_ble_cleanup()
  %214 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %214, i64* %3, align 8
  br label %266

215:                                              ; preds = %193
  %216 = load i32, i32* @transport_simple_ble_connect, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* @transport_simple_ble_disconnect, align 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @transport_simple_ble_set_mtu, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 3
  %227 = bitcast %struct.TYPE_17__* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 bitcast (%struct.TYPE_17__* @adv_data to i8*), i64 8, i1 false)
  %228 = load i32, i32* @adv_params, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load i32*, i32** @protocomm_ble_device_name, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  store i32* %231, i32** %233, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = call i64 @populate_gatt_db(i32* %235, %struct.TYPE_22__* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %215
  %240 = load i32, i32* @TAG, align 4
  %241 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %240, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %243 = call i32 @free_gatt_ble_misc_memory(%struct.TYPE_20__* %242)
  %244 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %244, i64* %3, align 8
  br label %266

245:                                              ; preds = %215
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %247 = call i64 @simple_ble_start(%struct.TYPE_20__* %246)
  store i64 %247, i64* %10, align 8
  %248 = load i32, i32* @TAG, align 4
  %249 = call i32 (...) @esp_get_free_heap_size()
  %250 = call i32 @ESP_LOGD(i32 %248, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* @ESP_OK, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %245
  %255 = load i32, i32* @TAG, align 4
  %256 = load i64, i64* %10, align 8
  %257 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %255, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %259 = call i32 @free_gatt_ble_misc_memory(%struct.TYPE_20__* %258)
  %260 = call i32 (...) @protocomm_ble_cleanup()
  %261 = load i64, i64* %10, align 8
  store i64 %261, i64* %3, align 8
  br label %266

262:                                              ; preds = %245
  %263 = load i32, i32* @TAG, align 4
  %264 = call i32 @ESP_LOGV(i32 %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %265 = load i64, i64* @ESP_OK, align 8
  store i64 %265, i64* %3, align 8
  br label %266

266:                                              ; preds = %262, %254, %239, %210, %184, %130, %106, %96, %83, %70, %46, %37, %32
  %267 = load i64, i64* %3, align 8
  ret i64 %267
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.uuid128_name_buf*, i32) #1

declare dso_local i32 @protocomm_ble_cleanup(...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @populate_gatt_db(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @free_gatt_ble_misc_memory(%struct.TYPE_20__*) #1

declare dso_local i64 @simple_ble_start(%struct.TYPE_20__*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
