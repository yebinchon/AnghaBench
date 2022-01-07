; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ibeacon/main/extr_ibeacon_demo.c_esp_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ibeacon/main/extr_ibeacon_demo.c_esp_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@ble_adv_params = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@DEMO_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Scan start failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Adv start failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"----------iBeacon Found----------\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"IBEACON_DEMO: Device address:\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"IBEACON_DEMO: Proximity UUID:\00", align 1
@ESP_UUID_LEN_128 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Major: 0x%04x (%d)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Minor: 0x%04x (%d)\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Measured power (RSSI at a 1m distance):%d dbm\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"RSSI of packet:%d dbm\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Scan stop failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Stop scan successfully\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Adv stop failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Stop adv successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_17__*)* @esp_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gap_cb(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %145 [
    i32 135, label %12
    i32 132, label %14
    i32 130, label %17
    i32 134, label %30
    i32 131, label %43
    i32 129, label %113
    i32 133, label %129
  ]

12:                                               ; preds = %2
  %13 = call i32 @esp_ble_gap_start_advertising(i32* @ble_adv_params)
  br label %146

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @esp_ble_gap_start_scanning(i32 %15)
  br label %146

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @DEMO_TAG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @esp_err_to_name(i32 %26)
  %28 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  br label %146

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @DEMO_TAG, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @esp_err_to_name(i32 %39)
  %41 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  br label %146

43:                                               ; preds = %2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %111 [
    i32 128, label %49
  ]

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @esp_ble_is_ibeacon_packet(i64 %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %110

60:                                               ; preds = %49
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %8, align 8
  %66 = load i32, i32* @DEMO_TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %73 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ESP_UUID_LEN_128, align 4
  %79 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ENDIAN_CHANGE_U16(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ENDIAN_CHANGE_U16(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @DEMO_TAG, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @DEMO_TAG, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* @DEMO_TAG, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @DEMO_TAG, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %60, %49
  br label %112

111:                                              ; preds = %43
  br label %112

112:                                              ; preds = %111, %110
  br label %146

113:                                              ; preds = %2
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @DEMO_TAG, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @esp_err_to_name(i32 %122)
  %124 = call i32 @ESP_LOGE(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  br label %128

125:                                              ; preds = %113
  %126 = load i32, i32* @DEMO_TAG, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  br label %146

129:                                              ; preds = %2
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* @DEMO_TAG, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @esp_err_to_name(i32 %138)
  %140 = call i32 @ESP_LOGE(i32 %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  br label %144

141:                                              ; preds = %129
  %142 = load i32, i32* @DEMO_TAG, align 4
  %143 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  br label %146

145:                                              ; preds = %2
  br label %146

146:                                              ; preds = %145, %144, %128, %112, %42, %29, %14, %12
  ret void
}

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @esp_ble_is_ibeacon_packet(i64, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32, i32) #1

declare dso_local i32 @ENDIAN_CHANGE_U16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
