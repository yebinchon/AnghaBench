; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_acceptor/main/extr_example_spp_vfs_acceptor_demo.c_esp_spp_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_acceptor/main/extr_example_spp_vfs_acceptor_demo.c_esp_spp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

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
@.str.6 = private unnamed_addr constant [21 x i8] c"ESP_SPP_SRV_OPEN_EVT\00", align 1
@spp_read_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @esp_spp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_spp_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %47 [
    i32 131, label %11
    i32 132, label %23
    i32 130, label %26
    i32 134, label %29
    i32 128, label %32
    i32 133, label %35
    i32 129, label %38
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @SPP_TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EXAMPLE_DEVICE_NAME, align 4
  %15 = call i32 @esp_bt_dev_set_device_name(i32 %14)
  %16 = load i32, i32* @ESP_BT_CONNECTABLE, align 4
  %17 = load i32, i32* @ESP_BT_GENERAL_DISCOVERABLE, align 4
  %18 = call i32 @esp_bt_gap_set_scan_mode(i32 %16, i32 %17)
  %19 = load i32, i32* @sec_mask, align 4
  %20 = load i32, i32* @role_slave, align 4
  %21 = load i32, i32* @SPP_SERVER_NAME, align 4
  %22 = call i32 @esp_spp_start_srv(i32 %19, i32 %20, i32 0, i32 %21)
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* @SPP_TAG, align 4
  %25 = call i32 @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %48

26:                                               ; preds = %2
  %27 = load i32, i32* @SPP_TAG, align 4
  %28 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %48

29:                                               ; preds = %2
  %30 = load i32, i32* @SPP_TAG, align 4
  %31 = call i32 @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %48

32:                                               ; preds = %2
  %33 = load i32, i32* @SPP_TAG, align 4
  %34 = call i32 @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %48

35:                                               ; preds = %2
  %36 = load i32, i32* @SPP_TAG, align 4
  %37 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %48

38:                                               ; preds = %2
  %39 = load i32, i32* @SPP_TAG, align 4
  %40 = call i32 @ESP_LOGI(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @spp_read_handle, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spp_wr_task_start_up(i32 %41, i32 %45)
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %38, %35, %32, %29, %26, %23, %11
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_bt_dev_set_device_name(i32) #1

declare dso_local i32 @esp_bt_gap_set_scan_mode(i32, i32) #1

declare dso_local i32 @esp_spp_start_srv(i32, i32, i32, i32) #1

declare dso_local i32 @spp_wr_task_start_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
