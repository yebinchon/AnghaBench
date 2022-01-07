; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/main/extr_pppos_client_main.c_mqtt_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/main/extr_pppos_client_main.c_mqtt_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MQTT_EVENT_CONNECTED\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/topic/esp-pppos\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sent subscribe successful, msg_id=%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"MQTT_EVENT_DISCONNECTED\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"MQTT_EVENT_SUBSCRIBED, msg_id=%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"esp32-pppos\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"sent publish successful, msg_id=%d\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"MQTT_EVENT_UNSUBSCRIBED, msg_id=%d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"MQTT_EVENT_PUBLISHED, msg_id=%d\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"MQTT_EVENT_DATA\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"TOPIC=%.*s\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"DATA=%.*s\0D\0A\00", align 1
@event_group = common dso_local global i32 0, align 4
@GOT_DATA_BIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"MQTT_EVENT_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"MQTT other event id: %d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mqtt_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqtt_event_handler(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %68 [
    i32 134, label %11
    i32 132, label %19
    i32 129, label %22
    i32 128, label %33
    i32 130, label %39
    i32 133, label %45
    i32 131, label %65
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @esp_mqtt_client_subscribe(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  br label %74

19:                                               ; preds = %1
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %74

22:                                               ; preds = %1
  %23 = load i32, i32* @TAG, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @esp_mqtt_client_publish(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @TAG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  br label %74

33:                                               ; preds = %1
  %34 = load i32, i32* @TAG, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  br label %74

39:                                               ; preds = %1
  %40 = load i32, i32* @TAG, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  br label %74

45:                                               ; preds = %1
  %46 = load i32, i32* @TAG, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %50, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %57, i32 %60)
  %62 = load i32, i32* @event_group, align 4
  %63 = load i32, i32* @GOT_DATA_BIT, align 4
  %64 = call i32 @xEventGroupSetBits(i32 %62, i32 %63)
  br label %74

65:                                               ; preds = %1
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %74

68:                                               ; preds = %1
  %69 = load i32, i32* @TAG, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %65, %45, %39, %33, %22, %19, %11
  %75 = load i32, i32* @ESP_OK, align 4
  ret i32 %75
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_mqtt_client_subscribe(i32, i8*, i32) #1

declare dso_local i32 @esp_mqtt_client_publish(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
