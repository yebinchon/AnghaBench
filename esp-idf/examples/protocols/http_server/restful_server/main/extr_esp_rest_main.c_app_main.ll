; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_esp_rest_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_esp_rest_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_EXAMPLE_MDNS_HOST_NAME = common dso_local global i32 0, align 4
@CONFIG_EXAMPLE_WEB_MOUNT_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = call i32 (...) @nvs_flash_init()
  %2 = call i32 @ESP_ERROR_CHECK(i32 %1)
  %3 = call i32 (...) @esp_netif_init()
  %4 = call i32 (...) @esp_event_loop_create_default()
  %5 = call i32 @ESP_ERROR_CHECK(i32 %4)
  %6 = call i32 (...) @initialise_mdns()
  %7 = call i32 (...) @netbiosns_init()
  %8 = load i32, i32* @CONFIG_EXAMPLE_MDNS_HOST_NAME, align 4
  %9 = call i32 @netbiosns_set_name(i32 %8)
  %10 = call i32 (...) @example_connect()
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i32 (...) @init_fs()
  %13 = call i32 @ESP_ERROR_CHECK(i32 %12)
  %14 = load i32, i32* @CONFIG_EXAMPLE_WEB_MOUNT_POINT, align 4
  %15 = call i32 @start_rest_server(i32 %14)
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @initialise_mdns(...) #1

declare dso_local i32 @netbiosns_init(...) #1

declare dso_local i32 @netbiosns_set_name(i32) #1

declare dso_local i32 @example_connect(...) #1

declare dso_local i32 @init_fs(...) #1

declare dso_local i32 @start_rest_server(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
