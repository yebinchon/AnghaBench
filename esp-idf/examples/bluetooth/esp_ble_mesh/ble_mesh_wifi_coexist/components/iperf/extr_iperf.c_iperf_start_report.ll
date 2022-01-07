; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_iperf.c_iperf_start_report.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_iperf.c_iperf_start_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iperf_report_task = common dso_local global i32 0, align 4
@IPERF_REPORT_TASK_NAME = common dso_local global i32 0, align 4
@IPERF_REPORT_TASK_STACK = common dso_local global i32 0, align 4
@IPERF_REPORT_TASK_PRIORITY = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i64 0, align 8
@pdPASS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"create task %s failed\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iperf_start_report() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @iperf_report_task, align 4
  %4 = load i32, i32* @IPERF_REPORT_TASK_NAME, align 4
  %5 = load i32, i32* @IPERF_REPORT_TASK_STACK, align 4
  %6 = load i32, i32* @IPERF_REPORT_TASK_PRIORITY, align 4
  %7 = load i64, i64* @portNUM_PROCESSORS, align 8
  %8 = sub nsw i64 %7, 1
  %9 = call i32 @xTaskCreatePinnedToCore(i32 %3, i32 %4, i32 %5, i32* null, i32 %6, i32* null, i64 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @pdPASS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* @IPERF_REPORT_TASK_NAME, align 4
  %16 = call i32 @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %1, align 4
  br label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @ESP_OK, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i32, i32, i32*, i32, i32*, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
