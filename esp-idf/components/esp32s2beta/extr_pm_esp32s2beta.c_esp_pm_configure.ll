; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_pm_esp32s2beta.c_esp_pm_configure.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_pm_esp32s2beta.c_esp_pm_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@PM_MODE_APB_MAX = common dso_local global i64 0, align 8
@PM_MODE_APB_MIN = common dso_local global i64 0, align 8
@PM_MODE_CPU_MAX = common dso_local global i64 0, align 8
@PM_MODE_LIGHT_SLEEP = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_160M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_240M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_2M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_80M = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@s_config_changed = common dso_local global i32 0, align 4
@s_cpu_freq_by_mode = common dso_local global i64* null, align 8
@s_freq_names = common dso_local global i32* null, align 8
@s_light_sleep_en = common dso_local global i64 0, align 8
@s_switch_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_pm_configure(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
