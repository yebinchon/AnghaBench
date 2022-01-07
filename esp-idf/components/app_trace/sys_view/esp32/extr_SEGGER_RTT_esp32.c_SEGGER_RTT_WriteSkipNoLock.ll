; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/esp32/extr_SEGGER_RTT_esp32.c_SEGGER_RTT_WriteSkipNoLock.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/esp32/extr_SEGGER_RTT_esp32.c_SEGGER_RTT_WriteSkipNoLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSVIEW_EVENTS_BUF_SZ = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Too large event %u bytes!\00", align 1
@s_events_buf_filled = common dso_local global i32 0, align 4
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4
@s_events_buf = common dso_local global i32* null, align 8
@SEGGER_HOST_WAIT_TMO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@SYSVIEW_EVTID_TRACE_STOP = common dso_local global i32 0, align 4
@SEGGER_STOP_WAIT_TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SEGGER_RTT_WriteSkipNoLock(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SYSVIEW_EVENTS_BUF_SZ, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @TAG, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = call i64 (...) @xPortGetCoreID()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 64
  store i32 %34, i32* %32, align 4
  br label %47

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %35
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* @s_events_buf_filled, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* @SYSVIEW_EVENTS_BUF_SZ, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @ESP_APPTRACE_DEST_TRAX, align 4
  %56 = load i32*, i32** @s_events_buf, align 8
  %57 = load i32, i32* @s_events_buf_filled, align 4
  %58 = load i32, i32* @SEGGER_HOST_WAIT_TMO, align 4
  %59 = call i64 @esp_apptrace_write(i32 %55, i32* %56, i32 %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @ESP_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %84

64:                                               ; preds = %54
  store i32 0, i32* @s_events_buf_filled, align 4
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32*, i32** @s_events_buf, align 8
  %67 = load i32, i32* @s_events_buf_filled, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @memcpy(i32* %69, i8* %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @s_events_buf_filled, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* @s_events_buf_filled, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SYSVIEW_EVTID_TRACE_STOP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @SEGGER_STOP_WAIT_TMO, align 4
  %81 = call i32 @SEGGER_RTT_ESP32_FlushNoLock(i32 0, i32 %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %63, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i64 @esp_apptrace_write(i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @SEGGER_RTT_ESP32_FlushNoLock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
