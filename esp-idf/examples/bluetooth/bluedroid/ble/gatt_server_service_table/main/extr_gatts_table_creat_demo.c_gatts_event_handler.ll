; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_server_service_table/main/extr_gatts_table_creat_demo.c_gatts_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_server_service_table/main/extr_gatts_table_creat_demo.c_gatts_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (i64, i64, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@ESP_GATTS_REG_EVT = common dso_local global i64 0, align 8
@ESP_GATT_OK = common dso_local global i64 0, align 8
@heart_rate_profile_tab = common dso_local global %struct.TYPE_8__* null, align 8
@PROFILE_APP_IDX = common dso_local global i64 0, align 8
@GATTS_TABLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"reg app failed, app_id %04x, status %d\00", align 1
@PROFILE_NUM = common dso_local global i32 0, align 4
@ESP_GATT_IF_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_7__*)* @gatts_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_event_handler(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ESP_GATTS_REG_EVT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ESP_GATT_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @heart_rate_profile_tab, align 8
  %21 = load i64, i64* @PROFILE_APP_IDX, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  br label %35

24:                                               ; preds = %11
  %25 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %33)
  br label %80

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %3
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PROFILE_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ESP_GATT_IF_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @heart_rate_profile_tab, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %47, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %46, %42
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @heart_rate_profile_tab, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %60, align 8
  %62 = icmp ne i32 (i64, i64, %struct.TYPE_7__*)* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @heart_rate_profile_tab, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = call i32 %69(i64 %70, i64 %71, %struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %63, %55
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %38

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %24, %79
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
