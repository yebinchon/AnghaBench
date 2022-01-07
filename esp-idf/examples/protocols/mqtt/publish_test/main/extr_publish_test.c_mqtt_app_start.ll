; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/publish_test/main/extr_publish_test.c_mqtt_app_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/publish_test/main/extr_publish_test.c_mqtt_app_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@mqtt_event_group = common dso_local global i32 0, align 4
@mqtt_eclipse_org_pem_start = common dso_local global i64 0, align 8
@mqtt_event_handler = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[APP] Free memory: %d bytes\00", align 1
@mqtt_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mqtt_app_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqtt_app_start() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = call i32 (...) @xEventGroupCreate()
  store i32 %2, i32* @mqtt_event_group, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i64, i64* @mqtt_eclipse_org_pem_start, align 8
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %7 = load i32, i32* @mqtt_event_handler, align 4
  store i32 %7, i32* %6, align 8
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 (...) @esp_get_free_heap_size()
  %10 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @esp_mqtt_client_init(%struct.TYPE_3__* %1)
  store i32 %11, i32* @mqtt_client, align 4
  ret void
}

declare dso_local i32 @xEventGroupCreate(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local i32 @esp_mqtt_client_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
