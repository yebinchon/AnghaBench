; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/esp32/extr_SEGGER_RTT_esp32.c_SEGGER_RTT_ESP32_FlushNoLock.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/esp32/extr_SEGGER_RTT_esp32.c_SEGGER_RTT_ESP32_FlushNoLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_events_buf_filled = common dso_local global i64 0, align 8
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4
@s_events_buf = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to flush buffered events (%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to flush apptrace data (%d)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_RTT_ESP32_FlushNoLock(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @s_events_buf_filled, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* @ESP_APPTRACE_DEST_TRAX, align 4
  %10 = load i32, i32* @s_events_buf, align 4
  %11 = load i64, i64* @s_events_buf_filled, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @esp_apptrace_write(i32 %9, i32 %10, i64 %11, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load i32, i32* @TAG, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %17, %8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* @ESP_APPTRACE_DEST_TRAX, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @esp_apptrace_flush_nolock(i32 %23, i64 %24, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ESP_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @TAG, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %22
  store i64 0, i64* @s_events_buf_filled, align 8
  ret void
}

declare dso_local i64 @esp_apptrace_write(i32, i32, i64, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @esp_apptrace_flush_nolock(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
