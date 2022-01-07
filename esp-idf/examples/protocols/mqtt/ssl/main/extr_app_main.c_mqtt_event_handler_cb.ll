; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/ssl/main/extr_app_main.c_mqtt_event_handler_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/ssl/main/extr_app_main.c_mqtt_event_handler_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MQTT_EVENT_CONNECTED\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/topic/qos0\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sent subscribe successful, msg_id=%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/topic/qos1\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"sent unsubscribe successful, msg_id=%d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MQTT_EVENT_DISCONNECTED\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"MQTT_EVENT_SUBSCRIBED, msg_id=%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"sent publish successful, msg_id=%d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"MQTT_EVENT_UNSUBSCRIBED, msg_id=%d\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"MQTT_EVENT_PUBLISHED, msg_id=%d\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"MQTT_EVENT_DATA\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TOPIC=%.*s\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"DATA=%.*s\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"send binary please\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Sending the binary\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"MQTT_EVENT_ERROR\00", align 1
@MQTT_ERROR_TYPE_ESP_TLS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"Last error code reported from esp-tls: 0x%x\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Last tls stack error number: 0x%x\00", align 1
@MQTT_ERROR_TYPE_CONNECTION_REFUSED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"Connection refused error: 0x%x\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Unknown error type: 0x%x\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Other event id:%d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @mqtt_event_handler_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_event_handler_cb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %137 [
    i32 134, label %11
    i32 132, label %29
    i32 129, label %32
    i32 128, label %43
    i32 130, label %49
    i32 133, label %55
    i32 131, label %86
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @esp_mqtt_client_subscribe(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @esp_mqtt_client_subscribe(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @TAG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @esp_mqtt_client_unsubscribe(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @TAG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  br label %143

29:                                               ; preds = %1
  %30 = load i32, i32* @TAG, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %143

32:                                               ; preds = %1
  %33 = load i32, i32* @TAG, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @esp_mqtt_client_publish(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  br label %143

43:                                               ; preds = %1
  %44 = load i32, i32* @TAG, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %47)
  br label %143

49:                                               ; preds = %1
  %50 = load i32, i32* @TAG, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %53)
  br label %143

55:                                               ; preds = %1
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %60, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %67, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strncmp(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %55
  %81 = load i32, i32* @TAG, align 4
  %82 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @send_binary(i32 %83)
  br label %85

85:                                               ; preds = %80, %55
  br label %143

86:                                               ; preds = %1
  %87 = load i32, i32* @TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MQTT_ERROR_TYPE_ESP_TLS, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %86
  %97 = load i32, i32* @TAG, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @TAG, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %109)
  br label %136

111:                                              ; preds = %86
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MQTT_ERROR_TYPE_CONNECTION_REFUSED, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32, i32* @TAG, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %125)
  br label %135

127:                                              ; preds = %111
  %128 = load i32, i32* @TAG, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ESP_LOGW(i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %127, %119
  br label %136

136:                                              ; preds = %135, %96
  br label %143

137:                                              ; preds = %1
  %138 = load i32, i32* @TAG, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %136, %85, %49, %43, %32, %29, %11
  %144 = load i32, i32* @ESP_OK, align 4
  ret i32 %144
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_mqtt_client_subscribe(i32, i8*, i32) #1

declare dso_local i32 @esp_mqtt_client_unsubscribe(i32, i8*) #1

declare dso_local i32 @esp_mqtt_client_publish(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i8*) #1

declare dso_local i32 @send_binary(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
