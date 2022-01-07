; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_client/main/extr_spp_client_demo.c_spp_client_reg_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_spp_client/main/extr_spp_client_demo.c_spp_client_reg_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@cmd_reg_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@db = common dso_local global %struct.TYPE_8__* null, align 8
@SPP_IDX_SPP_DATA_NTY_VAL = common dso_local global i64 0, align 8
@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Index = %d,UUID = 0x%04x, handle = %d \0A\00", align 1
@spp_gattc_if = common dso_local global i32 0, align 4
@gl_profile_tab = common dso_local global %struct.TYPE_7__* null, align 8
@PROFILE_APP_ID = common dso_local global i64 0, align 8
@SPP_IDX_SPP_STATUS_VAL = common dso_local global i64 0, align 8
@SPP_IDX_SPP_HEARTBEAT_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spp_client_reg_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %82, %1
  %5 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %6 = sdiv i32 100, %5
  %7 = call i32 @vTaskDelay(i32 %6)
  %8 = load i32, i32* @cmd_reg_queue, align 4
  %9 = load i32, i32* @portMAX_DELAY, align 4
  %10 = call i64 @xQueueReceive(i32 %8, i64* %3, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SPP_IDX_SPP_DATA_NTY_VAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32, i32* @GATTC_TAG, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %23 = load i64, i64* @SPP_IDX_SPP_DATA_NTY_VAL, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %30 = load i64, i64* @SPP_IDX_SPP_DATA_NTY_VAL, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %28, i32 %33)
  %35 = load i32, i32* @spp_gattc_if, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gl_profile_tab, align 8
  %37 = load i64, i64* @PROFILE_APP_ID, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %42 = load i64, i64* @SPP_IDX_SPP_DATA_NTY_VAL, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @esp_ble_gattc_register_for_notify(i32 %35, i32 %40, i32 %45)
  br label %80

47:                                               ; preds = %15
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @SPP_IDX_SPP_STATUS_VAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i32, i32* @GATTC_TAG, align 4
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %55 = load i64, i64* @SPP_IDX_SPP_STATUS_VAL, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %62 = load i64, i64* @SPP_IDX_SPP_STATUS_VAL, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %60, i32 %65)
  %67 = load i32, i32* @spp_gattc_if, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gl_profile_tab, align 8
  %69 = load i64, i64* @PROFILE_APP_ID, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @db, align 8
  %74 = load i64, i64* @SPP_IDX_SPP_STATUS_VAL, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @esp_ble_gattc_register_for_notify(i32 %67, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %51, %47
  br label %80

80:                                               ; preds = %79, %19
  br label %81

81:                                               ; preds = %80, %12
  br label %82

82:                                               ; preds = %81, %4
  br label %4
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @xQueueReceive(i32, i64*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @esp_ble_gattc_register_for_notify(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
