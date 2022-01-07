; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_throughput/throughput_client/main/extr_example_ble_client_throughput.c_esp_gattc_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_throughput/throughput_client/main/extr_example_ble_client_throughput.c_esp_gattc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (i64, i64, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@ESP_GATTC_REG_EVT = common dso_local global i64 0, align 8
@ESP_GATT_OK = common dso_local global i64 0, align 8
@gl_profile_tab = common dso_local global %struct.TYPE_8__* null, align 8
@GATTC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"reg app failed, app_id %04x, status %d\00", align 1
@PROFILE_NUM = common dso_local global i32 0, align 4
@ESP_GATT_IF_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_7__*)* @esp_gattc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gattc_cb(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ESP_GATTC_REG_EVT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ESP_GATT_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i64 %19, i64* %26, align 8
  br label %38

27:                                               ; preds = %11
  %28 = load i32, i32* @GATTC_TAG, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %36)
  br label %83

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38, %3
  br label %40

40:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %79, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PROFILE_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @ESP_GATT_IF_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %50, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %49, %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %63, align 8
  %65 = icmp ne i32 (i64, i64, %struct.TYPE_7__*)* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gl_profile_tab, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32 (i64, i64, %struct.TYPE_7__*)*, i32 (i64, i64, %struct.TYPE_7__*)** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = call i32 %72(i64 %73, i64 %74, %struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %66, %58
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %27, %82
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
