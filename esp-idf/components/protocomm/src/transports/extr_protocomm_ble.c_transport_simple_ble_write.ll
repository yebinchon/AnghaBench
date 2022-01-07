; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Inside write with session - %d on attr handle = %d \0Alen = %d, is_prep = %d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Error appending to prepare buffer\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"is_prep not set\00", align 1
@protoble_internal = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to set the session attribute value\00", align 1
@ESP_GATT_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Send response error in write\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Response from  write\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Invalid content received, killing connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*)* @transport_simple_ble_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_simple_ble_write(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @TAG, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i64 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = call i64 @prepare_write_event_env(i32 %34, %struct.TYPE_7__* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @ESP_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  br label %123

44:                                               ; preds = %3
  %45 = load i32, i32* @TAG, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @protoble_internal, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @handle_to_handler(i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @protocomm_req_handle(i32 %50, i32 %55, i32 %59, i32 %63, i32 %67, i32** %7, i32* %8)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @ESP_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %47
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @esp_ble_gatts_set_attr_value(i32 %76, i32 %77, i32* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @ESP_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @TAG, align 4
  %85 = call i32 @ESP_LOGE(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %72
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ESP_GATT_OK, align 4
  %97 = call i64 @esp_ble_gatts_send_response(i32 %87, i32 %91, i32 %95, i32 %96, i32* null)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @ESP_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load i32, i32* @TAG, align 4
  %103 = call i32 @ESP_LOGE(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %86
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @hexdump(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %105, i32 %106)
  br label %117

108:                                              ; preds = %47
  %109 = load i32, i32* @TAG, align 4
  %110 = call i32 @ESP_LOGE(i32 %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @esp_ble_gatts_close(i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i32*, i32** %7, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @free(i32* %121)
  br label %123

123:                                              ; preds = %43, %120, %117
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @prepare_write_event_env(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @protocomm_req_handle(i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @handle_to_handler(i32) #1

declare dso_local i64 @esp_ble_gatts_set_attr_value(i32, i32, i32*) #1

declare dso_local i64 @esp_ble_gatts_send_response(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @esp_ble_gatts_close(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
