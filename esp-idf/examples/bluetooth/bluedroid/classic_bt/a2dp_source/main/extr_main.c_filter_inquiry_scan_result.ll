; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_filter_inquiry_scan_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_filter_inquiry_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@BT_AV_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Scanned device: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"--Class of Device: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--RSSI: %d\00", align 1
@ESP_BT_COD_SRVC_RENDERING = common dso_local global i32 0, align 4
@s_peer_bdname = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ESP_SPEAKER\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Found a target device, address %s, name %s\00", align 1
@APP_AV_STATE_DISCOVERED = common dso_local global i32 0, align 4
@s_a2d_state = common dso_local global i32 0, align 4
@s_peer_bda = common dso_local global i32 0, align 4
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Cancel device discovery ...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @filter_inquiry_scan_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_inquiry_scan_result(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [18 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 -129, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @BT_AV_TAG, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %15 = call i32 @bda2str(i32 %13, i8* %14, i32 18)
  %16 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %61, %1
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %59 [
    i32 130, label %35
    i32 128, label %44
    i32 129, label %53
    i32 131, label %58
  ]

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @BT_AV_TAG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %60

44:                                               ; preds = %24
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @BT_AV_TAG, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %60

53:                                               ; preds = %24
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %6, align 8
  br label %60

58:                                               ; preds = %24
  br label %59

59:                                               ; preds = %24, %58
  br label %60

60:                                               ; preds = %59, %53, %44, %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @esp_bt_gap_is_valid_cod(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @esp_bt_gap_get_cod_srvc(i32 %69)
  %71 = load i32, i32* @ESP_BT_COD_SRVC_RENDERING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %64
  br label %103

75:                                               ; preds = %68
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* @s_peer_bdname, align 8
  %81 = call i32 @get_name_from_eir(i32* %79, i64 %80, i32* null)
  %82 = load i64, i64* @s_peer_bdname, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %103

87:                                               ; preds = %78
  %88 = load i32, i32* @BT_AV_TAG, align 4
  %89 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %90 = load i64, i64* @s_peer_bdname, align 8
  %91 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %89, i64 %90)
  %92 = load i32, i32* @APP_AV_STATE_DISCOVERED, align 4
  store i32 %92, i32* @s_a2d_state, align 4
  %93 = load i32, i32* @s_peer_bda, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %99 = call i32 @memcpy(i32 %93, i32 %97, i32 %98)
  %100 = load i32, i32* @BT_AV_TAG, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 (...) @esp_bt_gap_cancel_discovery()
  br label %103

103:                                              ; preds = %74, %86, %87, %75
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @bda2str(i32, i8*, i32) #1

declare dso_local i32 @esp_bt_gap_is_valid_cod(i32) #1

declare dso_local i32 @esp_bt_gap_get_cod_srvc(i32) #1

declare dso_local i32 @get_name_from_eir(i32*, i64, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @esp_bt_gap_cancel_discovery(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
