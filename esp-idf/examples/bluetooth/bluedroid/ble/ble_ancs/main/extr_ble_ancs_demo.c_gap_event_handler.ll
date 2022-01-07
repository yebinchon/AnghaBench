; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_gap_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs_demo.c_gap_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BLE_ANCS_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GAP_EVT, event %d\0A\00", align 1
@SCAN_RSP_CONFIG_FLAG = common dso_local global i32 0, align 4
@adv_config_done = common dso_local global i32 0, align 4
@adv_params = common dso_local global i32 0, align 4
@ADV_CONFIG_FLAG = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"advertising start failed, error status = %x\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"advertising start success\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ESP_GAP_BLE_PASSKEY_REQ_EVT\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ESP_GAP_BLE_OOB_REQ_EVT\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"The passkey Notify number:%06d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"pair status = %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"fail reason = 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"config local privacy failed, error status = %x\00", align 1
@adv_config = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"config adv data failed, error code = %x\00", align 1
@scan_rsp_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*)* @gap_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_event_handler(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load i32, i32* @BLE_ANCS_TAG, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ESP_LOGV(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %165 [
    i32 130, label %11
    i32 137, label %21
    i32 136, label %31
    i32 131, label %48
    i32 133, label %51
    i32 134, label %64
    i32 129, label %78
    i32 132, label %85
    i32 135, label %93
    i32 128, label %126
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @SCAN_RSP_CONFIG_FLAG, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @adv_config_done, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @adv_config_done, align 4
  %16 = load i32, i32* @adv_config_done, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %20

20:                                               ; preds = %18, %11
  br label %166

21:                                               ; preds = %2
  %22 = load i32, i32* @ADV_CONFIG_FLAG, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @adv_config_done, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @adv_config_done, align 4
  %26 = load i32, i32* @adv_config_done, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @esp_ble_gap_start_advertising(i32* @adv_params)
  br label %30

30:                                               ; preds = %28, %21
  br label %166

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* @BLE_ANCS_TAG, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %166

45:                                               ; preds = %31
  %46 = load i32, i32* @BLE_ANCS_TAG, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %166

48:                                               ; preds = %2
  %49 = load i32, i32* @BLE_ANCS_TAG, align 4
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %166

51:                                               ; preds = %2
  %52 = load i32, i32* @BLE_ANCS_TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %54 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %54, i8 0, i64 64, i1 false)
  %55 = bitcast i8* %54 to <{ i32, [15 x i32] }>*
  %56 = getelementptr inbounds <{ i32, [15 x i32] }>, <{ i32, [15 x i32] }>* %55, i32 0, i32 0
  store i32 1, i32* %56, align 16
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %63 = call i32 @esp_ble_oob_req_reply(i32 %61, i32* %62, i32 64)
  br label %166

64:                                               ; preds = %2
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @esp_ble_confirm_reply(i32 %69, i32 1)
  %71 = load i32, i32* @BLE_ANCS_TAG, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  br label %166

78:                                               ; preds = %2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @esp_ble_gap_security_rsp(i32 %83, i32 1)
  br label %166

85:                                               ; preds = %2
  %86 = load i32, i32* @BLE_ANCS_TAG, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  br label %166

93:                                               ; preds = %2
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %100 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* @BLE_ANCS_TAG, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %110 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %93
  %118 = load i32, i32* @BLE_ANCS_TAG, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %117, %93
  br label %166

126:                                              ; preds = %2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* @BLE_ANCS_TAG, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ESP_LOGE(i32 %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %138)
  br label %166

140:                                              ; preds = %126
  %141 = call i32 @esp_ble_gap_config_adv_data(i32* @adv_config)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @BLE_ANCS_TAG, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ESP_LOGE(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %146)
  br label %152

148:                                              ; preds = %140
  %149 = load i32, i32* @ADV_CONFIG_FLAG, align 4
  %150 = load i32, i32* @adv_config_done, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* @adv_config_done, align 4
  br label %152

152:                                              ; preds = %148, %144
  %153 = call i32 @esp_ble_gap_config_adv_data(i32* @scan_rsp_config)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @BLE_ANCS_TAG, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @ESP_LOGE(i32 %157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %158)
  br label %164

160:                                              ; preds = %152
  %161 = load i32, i32* @SCAN_RSP_CONFIG_FLAG, align 4
  %162 = load i32, i32* @adv_config_done, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* @adv_config_done, align 4
  br label %164

164:                                              ; preds = %160, %156
  br label %166

165:                                              ; preds = %2
  br label %166

166:                                              ; preds = %165, %164, %133, %125, %85, %78, %64, %51, %48, %45, %38, %30, %20
  ret void
}

declare dso_local i32 @ESP_LOGV(i32, i8*, i32) #1

declare dso_local i32 @esp_ble_gap_start_advertising(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @esp_ble_oob_req_reply(i32, i32*, i32) #1

declare dso_local i32 @esp_ble_confirm_reply(i32, i32) #1

declare dso_local i32 @esp_ble_gap_security_rsp(i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32, i32) #1

declare dso_local i32 @esp_ble_gap_config_adv_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
