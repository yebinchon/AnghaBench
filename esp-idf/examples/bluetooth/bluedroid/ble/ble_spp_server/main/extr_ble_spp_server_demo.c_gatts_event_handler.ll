; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_gatts_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_server/main/extr_ble_spp_server_demo.c_gatts_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (i64, i64, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@GATTS_TABLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EVT %d, gatts if %d\0A\00", align 1
@ESP_GATTS_REG_EVT = common dso_local global i64 0, align 8
@ESP_GATT_OK = common dso_local global i64 0, align 8
@spp_profile_tab = common dso_local global %struct.TYPE_8__* null, align 8
@SPP_PROFILE_APP_IDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Reg app failed, app_id %04x, status %d\0A\00", align 1
@SPP_PROFILE_NUM = common dso_local global i32 0, align 4
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
  %8 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ESP_GATTS_REG_EVT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ESP_GATT_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @spp_profile_tab, align 8
  %25 = load i64, i64* @SPP_PROFILE_APP_IDX, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  br label %39

28:                                               ; preds = %15
  %29 = load i32, i32* @GATTS_TABLE_TAG, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ESP_LOGI(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %37)
  br label %84

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %3
  br label %41

41:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SPP_PROFILE_NUM, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @ESP_GATT_IF_NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @spp_profile_tab, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %51, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50, %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @spp_profile_tab, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %64, align 8
  %66 = icmp ne i32 (i64, i64, %struct.TYPE_7__*)* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @spp_profile_tab, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = call i32 %73(i64 %74, i64 %75, %struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %67, %59
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %42

83:                                               ; preds = %42
  br label %84

84:                                               ; preds = %28, %83
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
