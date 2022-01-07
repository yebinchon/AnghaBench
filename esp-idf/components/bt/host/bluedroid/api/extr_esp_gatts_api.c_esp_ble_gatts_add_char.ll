; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_add_char.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_add_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GATTS = common dso_local global i32 0, align 4
@BTC_GATTS_ACT_ADD_CHAR = common dso_local global i32 0, align 4
@btc_gatts_arg_deep_copy = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_ble_gatts_add_char(i32 %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_18__* %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca %struct.TYPE_21__, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  %17 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %18 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %21 = call i64 @esp_ble_gatts_add_char_desc_param_check(%struct.TYPE_18__* %19, %struct.TYPE_19__* %20)
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* @ESP_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i64, i64* %16, align 8
  store i64 %26, i64* %7, align 8
  br label %90

27:                                               ; preds = %6
  %28 = call i32 @memset(%struct.TYPE_21__* %15, i32 0, i32 32)
  %29 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BTC_PID_GATTS, align 4
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @BTC_GATTS_ACT_ADD_CHAR, align 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %27
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %46, %27
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %67 = icmp ne %struct.TYPE_19__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @memcpy(i32* %77, i32* %78, i32 4)
  %80 = load i32, i32* @btc_gatts_arg_deep_copy, align 4
  %81 = call i64 @btc_transfer_context(%struct.TYPE_20__* %14, %struct.TYPE_21__* %15, i32 32, i32 %80)
  %82 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i64, i64* @ESP_OK, align 8
  br label %88

86:                                               ; preds = %75
  %87 = load i64, i64* @ESP_FAIL, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %88, %25
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i64 @esp_ble_gatts_add_char_desc_param_check(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
