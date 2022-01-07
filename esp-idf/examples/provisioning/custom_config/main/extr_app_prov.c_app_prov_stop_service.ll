; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_stop_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_stop_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g_prov = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"custom-config\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"prov-config\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"prov-session\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"proto-ver\00", align 1
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@app_prov_event_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @app_prov_stop_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_prov_stop_service() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @protocomm_remove_endpoint(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @protocomm_remove_endpoint(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @protocomm_unset_security(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @protocomm_unset_version(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @protocomm_httpd_stop(i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @protocomm_delete(i32 %23)
  %25 = load i32, i32* @WIFI_EVENT, align 4
  %26 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %27 = load i32, i32* @app_prov_event_handler, align 4
  %28 = call i32 @esp_event_handler_unregister(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @IP_EVENT, align 4
  %30 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %31 = load i32, i32* @app_prov_event_handler, align 4
  %32 = call i32 @esp_event_handler_unregister(i32 %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @protocomm_remove_endpoint(i32, i8*) #1

declare dso_local i32 @protocomm_unset_security(i32, i8*) #1

declare dso_local i32 @protocomm_unset_version(i32, i8*) #1

declare dso_local i32 @protocomm_httpd_stop(i32) #1

declare dso_local i32 @protocomm_delete(i32) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
