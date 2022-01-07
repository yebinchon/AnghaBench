; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_init.c_esp_wifi_set_debug_log.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_init.c_esp_wifi_set_debug_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIFI_LOG_DEBUG = common dso_local global i32 0, align 4
@WIFI_LOG_INFO = common dso_local global i32 0, align 4
@WIFI_LOG_MODULE_ALL = common dso_local global i32 0, align 4
@WIFI_LOG_MODULE_COEX = common dso_local global i32 0, align 4
@WIFI_LOG_MODULE_MESH = common dso_local global i32 0, align 4
@WIFI_LOG_MODULE_WIFI = common dso_local global i32 0, align 4
@WIFI_LOG_SUBMODULE_ALL = common dso_local global i32 0, align 4
@WIFI_LOG_SUBMODULE_CONN = common dso_local global i32 0, align 4
@WIFI_LOG_SUBMODULE_INIT = common dso_local global i32 0, align 4
@WIFI_LOG_SUBMODULE_IOCTL = common dso_local global i32 0, align 4
@WIFI_LOG_SUBMODULE_SCAN = common dso_local global i32 0, align 4
@WIFI_LOG_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @esp_wifi_set_debug_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_wifi_set_debug_log() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
