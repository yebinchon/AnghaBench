; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_client/components/button/extr_button.c_iot_button_set_evt_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_client/components/button/extr_button.c_iot_button_set_evt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_8__*, i8*, i8* }

@TAG = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@BUTTON_CB_PUSH = common dso_local global i64 0, align 8
@BUTTON_GLITCH_FILTER_TIME_MS = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@BUTTON_CB_RELEASE = common dso_local global i64 0, align 8
@BUTTON_CB_TAP = common dso_local global i64 0, align 8
@BUTTON_CB_SERIAL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iot_button_set_evt_cb(i64 %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @TAG, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @POINT_ASSERT(i32 %10, i64 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @BUTTON_CB_PUSH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @BUTTON_GLITCH_FILTER_TIME_MS, align 4
  %29 = load i32, i32* @portTICK_RATE_MS, align 4
  %30 = sdiv i32 %28, %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @portMAX_DELAY, align 4
  %47 = call i32 @xTimerChangePeriod(i32 %41, i32 %45, i32 %46)
  br label %118

48:                                               ; preds = %4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @BUTTON_CB_RELEASE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* @BUTTON_GLITCH_FILTER_TIME_MS, align 4
  %62 = load i32, i32* @portTICK_RATE_MS, align 4
  %63 = sdiv i32 %61, %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @portMAX_DELAY, align 4
  %80 = call i32 @xTimerChangePeriod(i32 %74, i32 %78, i32 %79)
  br label %117

81:                                               ; preds = %48
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @BUTTON_CB_TAP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* @BUTTON_GLITCH_FILTER_TIME_MS, align 4
  %95 = load i32, i32* @portTICK_RATE_MS, align 4
  %96 = sdiv i32 %94, %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %103, align 8
  br label %116

104:                                              ; preds = %81
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @BUTTON_CB_SERIAL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* @portTICK_RATE_MS, align 4
  %111 = sdiv i32 1000, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @iot_button_set_serial_cb(i64 %109, i32 1, i32 %111, i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %52
  br label %118

118:                                              ; preds = %117, %19
  %119 = load i32, i32* @ESP_OK, align 4
  ret i32 %119
}

declare dso_local i32 @POINT_ASSERT(i32, i64, i32) #1

declare dso_local i32 @xTimerChangePeriod(i32, i32, i32) #1

declare dso_local i32 @iot_button_set_serial_cb(i64, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
