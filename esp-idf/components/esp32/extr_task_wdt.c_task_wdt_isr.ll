; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_task_wdt_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_task_wdt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@twdt_spinlock = common dso_local global i32 0, align 4
@TIMERG0 = common dso_local global i32 0, align 4
@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_INTR_WDT = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_4__* null, align 8
@VOID_RETURN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Task watchdog got triggered. The following tasks did not reset the watchdog in time:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"CPU 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CPU 1\00", align 1
@tskNO_AFFINITY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"CPU 0/1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" - %s (%s)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Tasks currently running:\00", align 1
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"CPU %d: %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Aborting.\00", align 1
@ESP_RST_TASK_WDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_wdt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_wdt_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @portENTER_CRITICAL_ISR(i32* @twdt_spinlock)
  %7 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 0)
  %8 = call i32 @timer_ll_wdt_feed(i32* @TIMERG0)
  %9 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 1)
  %10 = load i32, i32* @TIMER_GROUP_0, align 4
  %11 = load i32, i32* @TIMER_INTR_WDT, align 4
  %12 = call i32 @timer_group_clr_intr_sta_in_isr(i32 %10, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twdt_config, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @VOID_RETURN, align 4
  %19 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %17, i32 %18)
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %20, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twdt_config, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %3, align 8
  br label %25

25:                                               ; preds = %62, %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @xTaskGetAffinity(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i8* @DRAM_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %43

41:                                               ; preds = %33
  %42 = call i8* @DRAM_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i8* [ %40, %39 ], [ %42, %41 ]
  store i8* %44, i8** %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @xTaskGetAffinity(i32 %47)
  %49 = load i64, i64* @tskNO_AFFINITY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i8* @DRAM_STR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i32, i32* @TAG, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pcTaskGetTaskName(i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %53, %28
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %3, align 8
  br label %25

66:                                               ; preds = %25
  %67 = load i32, i32* @TAG, align 4
  %68 = call i8* @DRAM_STR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %69 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %81, %66
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @portNUM_PROCESSORS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* @TAG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @xTaskGetCurrentTaskHandleForCPU(i32 %77)
  %79 = call i32 @pcTaskGetTaskName(i32 %78)
  %80 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %70

84:                                               ; preds = %70
  %85 = call i32 (...) @esp_task_wdt_isr_user_handler()
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @twdt_config, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %93 = call i32 @portEXIT_CRITICAL_ISR(i32* @twdt_spinlock)
  %94 = load i32, i32* @ESP_RST_TASK_WDT, align 4
  %95 = call i32 @esp_reset_reason_set_hint(i32 %94)
  %96 = call i32 (...) @abort() #3
  unreachable

97:                                               ; preds = %84
  %98 = call i32 @portEXIT_CRITICAL_ISR(i32* @twdt_spinlock)
  ret void
}

declare dso_local i32 @portENTER_CRITICAL_ISR(i32*) #1

declare dso_local i32 @timer_ll_wdt_set_protect(i32*, i32) #1

declare dso_local i32 @timer_ll_wdt_feed(i32*) #1

declare dso_local i32 @timer_group_clr_intr_sta_in_isr(i32, i32) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @ESP_EARLY_LOGE(i32, i8*, ...) #1

declare dso_local i64 @xTaskGetAffinity(i32) #1

declare dso_local i8* @DRAM_STR(i8*) #1

declare dso_local i32 @pcTaskGetTaskName(i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandleForCPU(i32) #1

declare dso_local i32 @esp_task_wdt_isr_user_handler(...) #1

declare dso_local i32 @portEXIT_CRITICAL_ISR(i32*) #1

declare dso_local i32 @esp_reset_reason_set_hint(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
