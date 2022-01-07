; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_initiator/main/extr_example_spp_initiator_demo.c_esp_spp_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_initiator/main/extr_example_spp_initiator_demo.c_esp_spp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32, i32 }

@SPP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ESP_SPP_INIT_EVT\00", align 1
@EXAMPLE_DEVICE_NAME = common dso_local global i32 0, align 4
@ESP_BT_CONNECTABLE = common dso_local global i32 0, align 4
@ESP_BT_GENERAL_DISCOVERABLE = common dso_local global i32 0, align 4
@inq_mode = common dso_local global i32 0, align 4
@inq_len = common dso_local global i32 0, align 4
@inq_num_rsps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ESP_SPP_DISCOVERY_COMP_EVT status=%d scn_num=%d\00", align 1
@ESP_SPP_SUCCESS = common dso_local global i32 0, align 4
@sec_mask = common dso_local global i32 0, align 4
@role_master = common dso_local global i32 0, align 4
@peer_bd_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ESP_SPP_OPEN_EVT\00", align 1
@SPP_DATA_LEN = common dso_local global i32 0, align 4
@spp_data = common dso_local global i32 0, align 4
@time_old = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ESP_SPP_CLOSE_EVT\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ESP_SPP_START_EVT\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ESP_SPP_CL_INIT_EVT\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ESP_SPP_DATA_IND_EVT\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ESP_SPP_CONG_EVT cong=%d\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"ESP_SPP_WRITE_EVT len=%d cong=%d\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ESP_SPP_SRV_OPEN_EVT\00", align 1
@data_num = common dso_local global i32 0, align 4
@time_new = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @esp_spp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_spp_cb(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %122 [
    i32 132, label %6
    i32 133, label %18
    i32 131, label %47
    i32 137, label %58
    i32 129, label %61
    i32 136, label %64
    i32 134, label %67
    i32 135, label %70
    i32 128, label %91
    i32 130, label %119
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @SPP_TAG, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EXAMPLE_DEVICE_NAME, align 4
  %10 = call i32 @esp_bt_dev_set_device_name(i32 %9)
  %11 = load i32, i32* @ESP_BT_CONNECTABLE, align 4
  %12 = load i32, i32* @ESP_BT_GENERAL_DISCOVERABLE, align 4
  %13 = call i32 @esp_bt_gap_set_scan_mode(i32 %11, i32 %12)
  %14 = load i32, i32* @inq_mode, align 4
  %15 = load i32, i32* @inq_len, align 4
  %16 = load i32, i32* @inq_num_rsps, align 4
  %17 = call i32 @esp_bt_gap_start_discovery(i32 %14, i32 %15, i32 %16)
  br label %123

18:                                               ; preds = %2
  %19 = load i32, i32* @SPP_TAG, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ESP_SPP_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %18
  %36 = load i32, i32* @sec_mask, align 4
  %37 = load i32, i32* @role_master, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @peer_bd_addr, align 4
  %45 = call i32 @esp_spp_connect(i32 %36, i32 %37, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %18
  br label %123

47:                                               ; preds = %2
  %48 = load i32, i32* @SPP_TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPP_DATA_LEN, align 4
  %55 = load i32, i32* @spp_data, align 4
  %56 = call i32 @esp_spp_write(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @gettimeofday(%struct.TYPE_15__* @time_old, i32* null)
  br label %123

58:                                               ; preds = %2
  %59 = load i32, i32* @SPP_TAG, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %123

61:                                               ; preds = %2
  %62 = load i32, i32* @SPP_TAG, align 4
  %63 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %123

64:                                               ; preds = %2
  %65 = load i32, i32* @SPP_TAG, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %123

67:                                               ; preds = %2
  %68 = load i32, i32* @SPP_TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %123

70:                                               ; preds = %2
  %71 = load i32, i32* @SPP_TAG, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SPP_DATA_LEN, align 4
  %88 = load i32, i32* @spp_data, align 4
  %89 = call i32 @esp_spp_write(i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %70
  br label %123

91:                                               ; preds = %2
  %92 = load i32, i32* @SPP_TAG, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %96, i32 %100)
  %102 = load i32, i32* @spp_data, align 4
  %103 = load i32, i32* @SPP_DATA_LEN, align 4
  %104 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %91
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SPP_DATA_LEN, align 4
  %116 = load i32, i32* @spp_data, align 4
  %117 = call i32 @esp_spp_write(i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %110, %91
  br label %123

119:                                              ; preds = %2
  %120 = load i32, i32* @SPP_TAG, align 4
  %121 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %123

122:                                              ; preds = %2
  br label %123

123:                                              ; preds = %122, %119, %118, %90, %67, %64, %61, %58, %47, %46, %6
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_bt_dev_set_device_name(i32) #1

declare dso_local i32 @esp_bt_gap_set_scan_mode(i32, i32) #1

declare dso_local i32 @esp_bt_gap_start_discovery(i32, i32, i32) #1

declare dso_local i32 @esp_spp_connect(i32, i32, i32, i32) #1

declare dso_local i32 @esp_spp_write(i32, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
