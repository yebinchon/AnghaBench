; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_acceptor/main/extr_example_spp_acceptor_demo.c_esp_spp_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_acceptor/main/extr_example_spp_acceptor_demo.c_esp_spp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SPP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ESP_SPP_INIT_EVT\00", align 1
@EXAMPLE_DEVICE_NAME = common dso_local global i32 0, align 4
@ESP_BT_CONNECTABLE = common dso_local global i32 0, align 4
@ESP_BT_GENERAL_DISCOVERABLE = common dso_local global i32 0, align 4
@sec_mask = common dso_local global i32 0, align 4
@role_slave = common dso_local global i32 0, align 4
@SPP_SERVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ESP_SPP_DISCOVERY_COMP_EVT\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ESP_SPP_OPEN_EVT\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ESP_SPP_CLOSE_EVT\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ESP_SPP_START_EVT\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ESP_SPP_CL_INIT_EVT\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"ESP_SPP_DATA_IND_EVT len=%d handle=%d\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ESP_SPP_CONG_EVT\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ESP_SPP_WRITE_EVT\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ESP_SPP_SRV_OPEN_EVT\00", align 1
@time_old = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@data_num = common dso_local global i32 0, align 4
@time_new = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @esp_spp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_spp_cb(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %63 [
    i32 132, label %6
    i32 133, label %18
    i32 131, label %21
    i32 137, label %24
    i32 129, label %27
    i32 136, label %30
    i32 134, label %33
    i32 135, label %53
    i32 128, label %56
    i32 130, label %59
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @SPP_TAG, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EXAMPLE_DEVICE_NAME, align 4
  %10 = call i32 @esp_bt_dev_set_device_name(i32 %9)
  %11 = load i32, i32* @ESP_BT_CONNECTABLE, align 4
  %12 = load i32, i32* @ESP_BT_GENERAL_DISCOVERABLE, align 4
  %13 = call i32 @esp_bt_gap_set_scan_mode(i32 %11, i32 %12)
  %14 = load i32, i32* @sec_mask, align 4
  %15 = load i32, i32* @role_slave, align 4
  %16 = load i32, i32* @SPP_SERVER_NAME, align 4
  %17 = call i32 @esp_spp_start_srv(i32 %14, i32 %15, i32 0, i32 %16)
  br label %64

18:                                               ; preds = %2
  %19 = load i32, i32* @SPP_TAG, align 4
  %20 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* @SPP_TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %64

24:                                               ; preds = %2
  %25 = load i32, i32* @SPP_TAG, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %64

27:                                               ; preds = %2
  %28 = load i32, i32* @SPP_TAG, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %64

30:                                               ; preds = %2
  %31 = load i32, i32* @SPP_TAG, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %64

33:                                               ; preds = %2
  %34 = load i32, i32* @SPP_TAG, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32 %51)
  br label %64

53:                                               ; preds = %2
  %54 = load i32, i32* @SPP_TAG, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %64

56:                                               ; preds = %2
  %57 = load i32, i32* @SPP_TAG, align 4
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %64

59:                                               ; preds = %2
  %60 = load i32, i32* @SPP_TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %62 = call i32 @gettimeofday(%struct.TYPE_9__* @time_old, i32* null)
  br label %64

63:                                               ; preds = %2
  br label %64

64:                                               ; preds = %63, %59, %56, %53, %33, %30, %27, %24, %21, %18, %6
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_bt_dev_set_device_name(i32) #1

declare dso_local i32 @esp_bt_gap_set_scan_mode(i32, i32) #1

declare dso_local i32 @esp_spp_start_srv(i32, i32, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
