; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_commonErrorHandler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_commonErrorHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@RTC_WDT_SYS_RESET_SIG = common dso_local global i32 0, align 4
@RTC_WDT_LENGTH_3_2us = common dso_local global i32 0, align 4
@RTC_WDT_CPU_RESET_SIG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE_ACTION_RESET_SYSTEM = common dso_local global i32 0, align 4
@other_core_frame = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Re-enable cpu cache.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CPU halted.\0D\0A\00", align 1
@APPTRACE_ONPANIC_HOST_FLUSH_TMO = common dso_local global i32 0, align 4
@CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH = common dso_local global i32 0, align 4
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4
@PANIC_RSN_CACHEERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @commonErrorHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @commonErrorHandler(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call i32 (...) @xPortGetCoreID()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @rtc_wdt_is_on()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @rtc_wdt_protect_off()
  %9 = call i32 (...) @rtc_wdt_disable()
  %10 = load i32, i32* @RTC_WDT_SYS_RESET_SIG, align 4
  %11 = load i32, i32* @RTC_WDT_LENGTH_3_2us, align 4
  %12 = call i32 @rtc_wdt_set_length_of_reset_signal(i32 %10, i32 %11)
  %13 = load i32, i32* @RTC_WDT_CPU_RESET_SIG, align 4
  %14 = load i32, i32* @RTC_WDT_LENGTH_3_2us, align 4
  %15 = call i32 @rtc_wdt_set_length_of_reset_signal(i32 %13, i32 %14)
  %16 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %17 = load i32, i32* @RTC_WDT_STAGE_ACTION_RESET_SYSTEM, align 4
  %18 = call i32 @rtc_wdt_set_stage(i32 %16, i32 %17)
  %19 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %20 = call i32 @rtc_wdt_set_time(i32 %19, i32 7000)
  %21 = call i32 (...) @rtc_wdt_enable()
  %22 = call i32 (...) @rtc_wdt_protect_on()
  br label %23

23:                                               ; preds = %7, %1
  %24 = call i32 (...) @reconfigureAllWdts()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @commonErrorHandler_dump(%struct.TYPE_7__* %25, i32 %26)
  %28 = load i32*, i32** @other_core_frame, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32*, i32** @other_core_frame, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_7__*
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = call i32 @commonErrorHandler_dump(%struct.TYPE_7__* %32, i32 %36)
  br label %38

38:                                               ; preds = %30, %23
  %39 = call i32 (...) @spi_flash_cache_enabled()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @spi_flash_enable_cache(i32 %42)
  %44 = call i32 @panicPutStr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  %46 = call i32 (...) @rtc_wdt_disable()
  %47 = call i32 (...) @disableAllWdts()
  %48 = call i32 @panicPutStr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %49
  br label %49
}

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @rtc_wdt_is_on(...) #1

declare dso_local i32 @rtc_wdt_protect_off(...) #1

declare dso_local i32 @rtc_wdt_disable(...) #1

declare dso_local i32 @rtc_wdt_set_length_of_reset_signal(i32, i32) #1

declare dso_local i32 @rtc_wdt_set_stage(i32, i32) #1

declare dso_local i32 @rtc_wdt_set_time(i32, i32) #1

declare dso_local i32 @rtc_wdt_enable(...) #1

declare dso_local i32 @rtc_wdt_protect_on(...) #1

declare dso_local i32 @reconfigureAllWdts(...) #1

declare dso_local i32 @commonErrorHandler_dump(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spi_flash_cache_enabled(...) #1

declare dso_local i32 @spi_flash_enable_cache(i32) #1

declare dso_local i32 @panicPutStr(i8*) #1

declare dso_local i32 @disableAllWdts(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
