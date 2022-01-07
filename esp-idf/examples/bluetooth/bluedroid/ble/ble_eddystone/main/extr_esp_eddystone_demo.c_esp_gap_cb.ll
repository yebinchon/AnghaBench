; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_demo.c_esp_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_eddystone/main/extr_esp_eddystone_demo.c_esp_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@DEMO_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Scan start failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Start scanning...\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"--------Eddystone Found----------\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"EDDYSTONE_DEMO: Device address:\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"RSSI of packet:%d dbm\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Scan stop failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Stop scan successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @esp_gap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gap_cb(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %85 [
    i32 132, label %11
    i32 130, label %14
    i32 131, label %30
    i32 129, label %69
  ]

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @esp_ble_gap_start_scanning(i32 %12)
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @DEMO_TAG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @esp_err_to_name(i32 %23)
  %25 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @DEMO_TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  br label %86

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %67 [
    i32 128, label %36
  ]

36:                                               ; preds = %30
  %37 = call i32 @memset(i32* %8, i32 0, i32 4)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @esp_eddystone_decode(i32 %41, i32 %45, i32* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %86

50:                                               ; preds = %36
  %51 = load i32, i32* @DEMO_TAG, align 4
  %52 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %58 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @DEMO_TAG, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = call i32 @esp_eddystone_show_inform(i32* %8)
  br label %66

66:                                               ; preds = %50
  br label %68

67:                                               ; preds = %30
  br label %68

68:                                               ; preds = %67, %66
  br label %86

69:                                               ; preds = %2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @DEMO_TAG, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @esp_err_to_name(i32 %78)
  %80 = call i32 @ESP_LOGE(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %69
  %82 = load i32, i32* @DEMO_TAG, align 4
  %83 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  br label %86

85:                                               ; preds = %2
  br label %86

86:                                               ; preds = %49, %85, %84, %68, %29, %11
  ret void
}

declare dso_local i32 @esp_ble_gap_start_scanning(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @esp_eddystone_decode(i32, i32, i32*) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32, i32) #1

declare dso_local i32 @esp_eddystone_show_inform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
