; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_initiator/main/extr_example_spp_vfs_initiator_demo.c_esp_bt_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_initiator/main/extr_example_spp_vfs_initiator_demo.c_esp_bt_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@SPP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ESP_BT_GAP_DISC_RES_EVT\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@ESP_BT_GAP_DEV_PROP_EIR = common dso_local global i32 0, align 4
@peer_bdname = common dso_local global i32 0, align 4
@peer_bdname_len = common dso_local global i32 0, align 4
@remote_device_name = common dso_local global i32 0, align 4
@peer_bd_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ESP_BT_GAP_DISC_STATE_CHANGED_EVT\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ESP_BT_GAP_RMT_SRVCS_EVT\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ESP_BT_GAP_RMT_SRVC_REC_EVT\00", align 1
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"authentication success: %s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"authentication failed, status:%d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ESP_BT_GAP_PIN_REQ_EVT min_16_digit:%d\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Input pin code: 0000 0000 0000 0000\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Input pin code: 1234\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*)* @esp_bt_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_bt_gap_cb(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %160 [
    i32 134, label %9
    i32 133, label %83
    i32 129, label %86
    i32 128, label %89
    i32 136, label %92
    i32 130, label %121
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @SPP_TAG, align 4
  %11 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SPP_TAG, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %18 = call i32 @esp_log_buffer_hex(i32 %12, i32 %16, i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %79, %9
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ESP_BT_GAP_DEV_PROP_EIR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %26
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @peer_bdname, align 4
  %49 = call i32 @get_name_from_eir(i32 %47, i32 %48, i32* @peer_bdname_len)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %38
  %52 = load i32, i32* @SPP_TAG, align 4
  %53 = load i32, i32* @peer_bdname, align 4
  %54 = load i32, i32* @peer_bdname_len, align 4
  %55 = call i32 @esp_log_buffer_char(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @remote_device_name, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = load i32, i32* @peer_bdname_len, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load i32, i32* @peer_bdname, align 4
  %62 = load i32, i32* @remote_device_name, align 4
  %63 = load i32, i32* @peer_bdname_len, align 4
  %64 = call i32 @strncmp(i32 %61, i32 %62, i32 %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i32, i32* @peer_bd_addr, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %73 = call i32 @memcpy(i32 %67, i32 %71, i32 %72)
  %74 = load i32, i32* @peer_bd_addr, align 4
  %75 = call i32 @esp_spp_start_discovery(i32 %74)
  %76 = call i32 (...) @esp_bt_gap_cancel_discovery()
  br label %77

77:                                               ; preds = %66, %60, %51
  br label %78

78:                                               ; preds = %77, %38, %26
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %19

82:                                               ; preds = %19
  br label %161

83:                                               ; preds = %2
  %84 = load i32, i32* @SPP_TAG, align 4
  %85 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %161

86:                                               ; preds = %2
  %87 = load i32, i32* @SPP_TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %161

89:                                               ; preds = %2
  %90 = load i32, i32* @SPP_TAG, align 4
  %91 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %161

92:                                               ; preds = %2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load i32, i32* @SPP_TAG, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @SPP_TAG, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %112 = call i32 @esp_log_buffer_hex(i32 %106, i32 %110, i32 %111)
  br label %120

113:                                              ; preds = %92
  %114 = load i32, i32* @SPP_TAG, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ESP_LOGE(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %113, %99
  br label %161

121:                                              ; preds = %2
  %122 = load i32, i32* @SPP_TAG, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %121
  %134 = load i32, i32* @SPP_TAG, align 4
  %135 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @esp_bt_gap_pin_reply(i32 %139, i32 1, i32 16, i8* %140)
  br label %159

142:                                              ; preds = %121
  %143 = load i32, i32* @SPP_TAG, align 4
  %144 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 49, i8* %146, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8 50, i8* %148, align 1
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8 51, i8* %150, align 1
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  store i8 52, i8* %152, align 1
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @esp_bt_gap_pin_reply(i32 %156, i32 1, i32 4, i8* %157)
  br label %159

159:                                              ; preds = %142, %133
  br label %161

160:                                              ; preds = %2
  br label %161

161:                                              ; preds = %160, %159, %120, %89, %86, %83, %82
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32 @get_name_from_eir(i32, i32, i32*) #1

declare dso_local i32 @esp_log_buffer_char(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_spp_start_discovery(i32) #1

declare dso_local i32 @esp_bt_gap_cancel_discovery(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_bt_gap_pin_reply(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
