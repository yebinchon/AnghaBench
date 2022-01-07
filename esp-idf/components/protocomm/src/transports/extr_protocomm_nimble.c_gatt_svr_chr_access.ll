; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_chr_access.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_gatt_svr_chr_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ble_gatt_access_ctxt = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLE_UUID_STR_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Read attempeted for Characterstic UUID = %s, attr_handle = %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to read characteristic with attr_handle = %d\00", align 1
@BLE_ATT_ERR_INSUFFICIENT_RES = common dso_local global i32 0, align 4
@BLE_UUID128_VAL_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error allocating memory for 128 bit UUID\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Error fetching Characteristic UUID128\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Write attempt for uuid = %s, attr_handle = %d, data_len = %d\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Error allocating memory for characteristic value\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Error getting data from memory buffers\00", align 1
@BLE_ATT_ERR_UNLIKELY = common dso_local global i32 0, align 4
@protoble_internal = common dso_local global %struct.TYPE_4__* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"Failed to set outbuf for characteristic with attr_handle = %d\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Invalid content received, killing connection\00", align 1
@BLE_ATT_ERR_INVALID_PDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ble_gatt_access_ctxt*, i8*)* @gatt_svr_chr_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_svr_chr_access(i32 %0, i32 %1, %struct.ble_gatt_access_ctxt* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ble_gatt_access_ctxt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ble_gatt_access_ctxt* %2, %struct.ble_gatt_access_ctxt** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i32, i32* @BLE_UUID_STR_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %26 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %158 [
    i32 129, label %28
    i32 128, label %61
  ]

28:                                               ; preds = %4
  %29 = load i32, i32* @TAG, align 4
  %30 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %31 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ble_uuid_to_str(i32 %34, i8* %24)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %29, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @simple_ble_gatts_get_attr_value(i32 %38, i32* %14, i32** %15)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load i32, i32* @TAG, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

47:                                               ; preds = %28
  %48 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %49 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @os_mbuf_append(i32 %50, i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

61:                                               ; preds = %4
  %62 = load i32, i32* @BLE_UUID128_VAL_LENGTH, align 4
  %63 = call i32* @calloc(i32 %62, i32 4)
  store i32* %63, i32** %16, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

70:                                               ; preds = %61
  %71 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %72 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @ble_uuid_flat(i32 %75, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @free(i32* %81)
  %83 = load i32, i32* @TAG, align 4
  %84 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

86:                                               ; preds = %70
  %87 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %88 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @OS_MBUF_PKTLEN(i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* @TAG, align 4
  %92 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %93 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ble_uuid_to_str(i32 %96, i8* %24)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGD(i32 %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %18, align 4
  %102 = call i32* @calloc(i32 1, i32 %101)
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %86
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @BLE_ATT_ERR_INSUFFICIENT_RES, align 4
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

109:                                              ; preds = %86
  %110 = load %struct.ble_gatt_access_ctxt*, %struct.ble_gatt_access_ctxt** %8, align 8
  %111 = getelementptr inbounds %struct.ble_gatt_access_ctxt, %struct.ble_gatt_access_ctxt* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @ble_hs_mbuf_to_flat(i32 %112, i32* %113, i32 %114, i32* %19)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @TAG, align 4
  %120 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %121, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

122:                                              ; preds = %109
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @protoble_internal, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @uuid128_to_handler(i32* %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32*, i32** %17, align 8
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @protocomm_req_handle(i32 %125, i32 %127, i32 %128, i32* %129, i32 %130, i32** %15, i32* %14)
  store i32 %131, i32* %11, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @free(i32* %132)
  %134 = load i32*, i32** %17, align 8
  %135 = call i32 @free(i32* %134)
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @ESP_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %122
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @simple_ble_gatts_set_attr_value(i32 %140, i32 %141, i32* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @TAG, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %147, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %15, align 8
  %151 = call i32 @free(i32* %150)
  br label %152

152:                                              ; preds = %146, %139
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

154:                                              ; preds = %122
  %155 = load i32, i32* @TAG, align 4
  %156 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %155, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i32, i32* @BLE_ATT_ERR_INVALID_PDU, align 4
  store i32 %157, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

158:                                              ; preds = %4
  %159 = load i32, i32* @BLE_ATT_ERR_UNLIKELY, align 4
  store i32 %159, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %160

160:                                              ; preds = %158, %154, %152, %118, %105, %80, %66, %59, %42
  %161 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ble_uuid_to_str(i32, i8*) #2

declare dso_local i32 @simple_ble_gatts_get_attr_value(i32, i32*, i32**) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #2

declare dso_local i32 @os_mbuf_append(i32, i32*, i32) #2

declare dso_local i32* @calloc(i32, i32) #2

declare dso_local i32 @ble_uuid_flat(i32, i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @OS_MBUF_PKTLEN(i32) #2

declare dso_local i32 @ble_hs_mbuf_to_flat(i32, i32*, i32, i32*) #2

declare dso_local i32 @protocomm_req_handle(i32, i32, i32, i32*, i32, i32**, i32*) #2

declare dso_local i32 @uuid128_to_handler(i32*) #2

declare dso_local i32 @simple_ble_gatts_set_attr_value(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
