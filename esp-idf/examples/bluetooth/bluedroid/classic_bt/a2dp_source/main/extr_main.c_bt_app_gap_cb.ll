; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_bt_app_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_bt_app_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ESP_BT_GAP_DISCOVERY_STOPPED = common dso_local global i32 0, align 4
@s_a2d_state = common dso_local global i32 0, align 4
@APP_AV_STATE_DISCOVERED = common dso_local global i32 0, align 4
@APP_AV_STATE_CONNECTING = common dso_local global i32 0, align 4
@BT_AV_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Device discovery stopped.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"a2dp connecting to peer: %s\00", align 1
@s_peer_bdname = common dso_local global i32 0, align 4
@s_peer_bda = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Device discovery failed, continue to discover...\00", align 1
@ESP_BT_INQ_MODE_GENERAL_INQUIRY = common dso_local global i32 0, align 4
@ESP_BT_GAP_DISCOVERY_STARTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Discovery started.\00", align 1
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"authentication success: %s\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"authentication failed, status:%d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ESP_BT_GAP_PIN_REQ_EVT min_16_digit:%d\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Input pin code: 0000 0000 0000 0000\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Input pin code: 1234\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"event: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_app_gap_cb(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %118 [
    i32 134, label %8
    i32 133, label %11
    i32 129, label %49
    i32 128, label %49
    i32 136, label %50
    i32 130, label %79
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i32 @filter_inquiry_scan_result(%struct.TYPE_14__* %9)
  br label %122

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ESP_BT_GAP_DISCOVERY_STOPPED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load i32, i32* @s_a2d_state, align 4
  %20 = load i32, i32* @APP_AV_STATE_DISCOVERED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* @APP_AV_STATE_CONNECTING, align 4
  store i32 %23, i32* @s_a2d_state, align 4
  %24 = load i32, i32* @BT_AV_TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @BT_AV_TAG, align 4
  %27 = load i32, i32* @s_peer_bdname, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @s_peer_bda, align 4
  %30 = call i32 @esp_a2d_source_connect(i32 %29)
  br label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @BT_AV_TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @ESP_BT_INQ_MODE_GENERAL_INQUIRY, align 4
  %35 = call i32 @esp_bt_gap_start_discovery(i32 %34, i32 10, i32 0)
  br label %36

36:                                               ; preds = %31, %22
  br label %48

37:                                               ; preds = %11
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ESP_BT_GAP_DISCOVERY_STARTED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @BT_AV_TAG, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %36
  br label %122

49:                                               ; preds = %2, %2
  br label %122

50:                                               ; preds = %2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load i32, i32* @BT_AV_TAG, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @BT_AV_TAG, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %70 = call i32 @esp_log_buffer_hex(i32 %64, i32 %68, i32 %69)
  br label %78

71:                                               ; preds = %50
  %72 = load i32, i32* @BT_AV_TAG, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %71, %57
  br label %122

79:                                               ; preds = %2
  %80 = load i32, i32* @BT_AV_TAG, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = load i32, i32* @BT_AV_TAG, align 4
  %93 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @esp_bt_gap_pin_reply(i32 %97, i32 1, i32 16, i8* %98)
  br label %117

100:                                              ; preds = %79
  %101 = load i32, i32* @BT_AV_TAG, align 4
  %102 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 49, i8* %104, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 50, i8* %106, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8 51, i8* %108, align 1
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  store i8 52, i8* %110, align 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @esp_bt_gap_pin_reply(i32 %114, i32 1, i32 4, i8* %115)
  br label %117

117:                                              ; preds = %100, %91
  br label %122

118:                                              ; preds = %2
  %119 = load i32, i32* @BT_AV_TAG, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %117, %78, %49, %48, %8
  ret void
}

declare dso_local i32 @filter_inquiry_scan_result(%struct.TYPE_14__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_a2d_source_connect(i32) #1

declare dso_local i32 @esp_bt_gap_start_discovery(i32, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_bt_gap_pin_reply(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
