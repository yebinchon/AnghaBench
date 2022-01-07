; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_compatibility_test/main/extr_ble_compatibility_test.c_gap_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_compatibility_test/main/extr_ble_compatibility_test.c_gap_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@ADV_CONFIG_FLAG = common dso_local global i32 0, align 4
@adv_config_done = common dso_local global i32 0, align 4
@adv_params = common dso_local global i32 0, align 4
@SCAN_RSP_CONFIG_FLAG = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"advertising start failed\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"(0) ***** advertising start successfully ***** \0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Advertising stop failed\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Stop adv successfully\0A\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ESP_GAP_BLE_PASSKEY_REQ_EVT\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"The passkey notify number:%d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"key type = %s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"remote BD_ADDR: %08x%04x\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"address type = %d\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"(1) ***** pair status = success ***** \0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"***** pair status = fail, reason = 0x%x *****\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_REMOVE_BOND_DEV_COMPLETE_EVT status = %d\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @gap_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_event_handler(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %188 [
    i32 140, label %7
    i32 130, label %17
    i32 139, label %27
    i32 138, label %41
    i32 128, label %55
    i32 133, label %82
    i32 135, label %85
    i32 129, label %93
    i32 134, label %100
    i32 136, label %108
    i32 137, label %117
    i32 132, label %179
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ADV_CONFIG_FLAG, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @adv_config_done, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @adv_config_done, align 4
  %12 = load i32, i32* @adv_config_done, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %16

16:                                               ; preds = %14, %7
  br label %189

17:                                               ; preds = %2
  %18 = load i32, i32* @SCAN_RSP_CONFIG_FLAG, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @adv_config_done, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @adv_config_done, align 4
  %22 = load i32, i32* @adv_config_done, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %26

26:                                               ; preds = %24, %17
  br label %189

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EXAMPLE_TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EXAMPLE_TAG, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  br label %189

41:                                               ; preds = %2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EXAMPLE_TAG, align 4
  %50 = call i32 @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EXAMPLE_TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  br label %189

55:                                               ; preds = %2
  %56 = load i32, i32* @EXAMPLE_TAG, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %56, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %64, i32 %68, i32 %72, i32 %76, i32 %80)
  br label %189

82:                                               ; preds = %2
  %83 = load i32, i32* @EXAMPLE_TAG, align 4
  %84 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %189

85:                                               ; preds = %2
  %86 = load i32, i32* @EXAMPLE_TAG, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %86, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %189

93:                                               ; preds = %2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @esp_ble_gap_security_rsp(i32 %98, i32 1)
  br label %189

100:                                              ; preds = %2
  %101 = load i32, i32* @EXAMPLE_TAG, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %189

108:                                              ; preds = %2
  %109 = load i32, i32* @EXAMPLE_TAG, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @esp_key_type_to_str(i32 %114)
  %116 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  br label %189

117:                                              ; preds = %2
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @memcpy(i32* %118, i32 %123, i32 8)
  %125 = load i32, i32* @EXAMPLE_TAG, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 24
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 16
  %134 = add nsw i32 %129, %133
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = add nsw i32 %134, %138
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  %152 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %143, i32 %151)
  %153 = load i32, i32* @EXAMPLE_TAG, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %117
  %167 = load i32, i32* @EXAMPLE_TAG, align 4
  %168 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %177

169:                                              ; preds = %117
  %170 = load i32, i32* @EXAMPLE_TAG, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %170, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %169, %166
  %178 = call i32 (...) @show_bonded_devices()
  br label %189

179:                                              ; preds = %2
  %180 = load i32, i32* @EXAMPLE_TAG, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %180, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @EXAMPLE_TAG, align 4
  %187 = call i32 (i32, i8*, ...) @EXAMPLE_DEBUG(i32 %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %189

188:                                              ; preds = %2
  br label %189

189:                                              ; preds = %188, %179, %177, %108, %100, %93, %85, %82, %55, %54, %40, %26, %16
  ret void
}

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @EXAMPLE_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @esp_ble_gap_security_rsp(i32, i32) #1

declare dso_local i32 @esp_key_type_to_str(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @show_bonded_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
