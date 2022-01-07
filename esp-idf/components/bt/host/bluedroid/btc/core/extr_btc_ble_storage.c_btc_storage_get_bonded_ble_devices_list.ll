; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c_btc_storage_get_bonded_ble_devices_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c_btc_storage_get_bonded_ble_devices_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i8*, i32 }

@BTC_BLE_STORAGE_DEV_TYPE_STR = common dso_local global i32 0, align 4
@BT_DEVICE_TYPE_BLE = common dso_local global i32 0, align 4
@BTM_LE_KEY_PENC = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_BLE_ENC_KEY_MASK = common dso_local global i32 0, align 4
@BTM_LE_KEY_PCSRK = common dso_local global i32 0, align 4
@ESP_BLE_CSR_KEY_MASK = common dso_local global i32 0, align 4
@BTM_LE_KEY_PID = common dso_local global i32 0, align 4
@ESP_BLE_ID_KEY_MASK = common dso_local global i32 0, align 4
@BT_OCTET16_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btc_storage_get_bonded_ble_devices_list(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 4, i1 false)
  %12 = call i32 (...) @btc_config_lock()
  %13 = call i32* (...) @btc_config_section_begin()
  store i32* %13, i32** %7, align 8
  br label %14

14:                                               ; preds = %128, %2
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* (...) @btc_config_section_end()
  %17 = icmp ne i32* %15, %16
  br i1 %17, label %18, label %131

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp sle i32 %19, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %131

23:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @btc_config_section_name(i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @string_is_bdaddr(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @BTC_BLE_STORAGE_DEV_TYPE_STR, align 4
  %32 = call i32 @btc_config_get_int(i8* %30, i32 %31, i32* %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29, %23
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %128

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @string_to_bdaddr(i8* %43, %struct.TYPE_13__* %5)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @memcpy(i32* %47, i8* %49, i32 8)
  %51 = load i32, i32* @BTM_LE_KEY_PENC, align 4
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %53 = call i64 @_btc_storage_get_ble_bonding_key(%struct.TYPE_13__* %5, i32 %51, i8* %52, i32 4)
  %54 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load i32, i32* @ESP_BLE_ENC_KEY_MASK, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %67 = call i32 @memcpy(i32* %65, i8* %66, i32 4)
  br label %68

68:                                               ; preds = %56, %42
  %69 = load i32, i32* @BTM_LE_KEY_PCSRK, align 4
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %71 = call i64 @_btc_storage_get_ble_bonding_key(%struct.TYPE_13__* %5, i32 %69, i8* %70, i32 4)
  %72 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* @ESP_BLE_CSR_KEY_MASK, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %85 = call i32 @memcpy(i32* %83, i8* %84, i32 4)
  br label %86

86:                                               ; preds = %74, %68
  %87 = load i32, i32* @BTM_LE_KEY_PID, align 4
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %89 = call i64 @_btc_storage_get_ble_bonding_key(%struct.TYPE_13__* %5, i32 %87, i8* %88, i32 24)
  %90 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %86
  %93 = load i32, i32* @ESP_BLE_ID_KEY_MASK, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %100 = bitcast i8* %99 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %10, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @BT_OCTET16_LEN, align 4
  %109 = call i32 @memcpy(i32* %104, i8* %107, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @memcpy(i32* %120, i8* %123, i32 4)
  br label %125

125:                                              ; preds = %92, %86
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 1
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %3, align 8
  br label %128

128:                                              ; preds = %125, %39
  %129 = load i32*, i32** %7, align 8
  %130 = call i32* @btc_config_section_next(i32* %129)
  store i32* %130, i32** %7, align 8
  br label %14

131:                                              ; preds = %22, %14
  %132 = call i32 (...) @btc_config_unlock()
  %133 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  ret i64 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_config_lock(...) #2

declare dso_local i32* @btc_config_section_begin(...) #2

declare dso_local i32* @btc_config_section_end(...) #2

declare dso_local i8* @btc_config_section_name(i32*) #2

declare dso_local i32 @string_is_bdaddr(i8*) #2

declare dso_local i32 @btc_config_get_int(i8*, i32, i32*) #2

declare dso_local i32 @string_to_bdaddr(i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i64 @_btc_storage_get_ble_bonding_key(%struct.TYPE_13__*, i32, i8*, i32) #2

declare dso_local i32* @btc_config_section_next(i32*) #2

declare dso_local i32 @btc_config_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
