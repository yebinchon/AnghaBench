; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_task_wdt_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_task_wdt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }

@twdt_spinlock = common dso_local global i32 0, align 4
@TIMG_WDT_WKEY_VALUE = common dso_local global i64 0, align 8
@TIMERG0 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@twdt_config = common dso_local global %struct.TYPE_7__* null, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_wdt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_wdt_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @portENTER_CRITICAL_ISR(i32* @twdt_spinlock)
  %7 = load i64, i64* @TIMG_WDT_WKEY_VALUE, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TIMERG0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TIMERG0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TIMERG0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @TIMERG0, i32 0, i32 1, i32 0), align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twdt_config, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @VOID_RETURN, align 4
  %14 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %12, i32 %13)
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %15, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twdt_config, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %3, align 8
  br label %20

20:                                               ; preds = %57, %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @xTaskGetAffinity(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i8* @DRAM_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %38

36:                                               ; preds = %28
  %37 = call i8* @DRAM_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i8* [ %35, %34 ], [ %37, %36 ]
  store i8* %39, i8** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @xTaskGetAffinity(i32 %42)
  %44 = load i64, i64* @tskNO_AFFINITY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i8* @DRAM_STR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* @TAG, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pcTaskGetTaskName(i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %48, %23
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %3, align 8
  br label %20

61:                                               ; preds = %20
  %62 = load i32, i32* @TAG, align 4
  %63 = call i8* @DRAM_STR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %76, %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @portNUM_PROCESSORS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* @TAG, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @xTaskGetCurrentTaskHandleForCPU(i32 %72)
  %74 = call i32 @pcTaskGetTaskName(i32 %73)
  %75 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %65

79:                                               ; preds = %65
  %80 = call i32 (...) @esp_task_wdt_isr_user_handler()
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twdt_config, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* @TAG, align 4
  %87 = call i32 (i32, i8*, ...) @ESP_EARLY_LOGE(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %88 = call i32 @portEXIT_CRITICAL_ISR(i32* @twdt_spinlock)
  %89 = call i32 (...) @abort() #3
  unreachable

90:                                               ; preds = %79
  %91 = call i32 @portEXIT_CRITICAL_ISR(i32* @twdt_spinlock)
  ret void
}

declare dso_local i32 @portENTER_CRITICAL_ISR(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @ESP_EARLY_LOGE(i32, i8*, ...) #1

declare dso_local i64 @xTaskGetAffinity(i32) #1

declare dso_local i8* @DRAM_STR(i8*) #1

declare dso_local i32 @pcTaskGetTaskName(i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandleForCPU(i32) #1

declare dso_local i32 @esp_task_wdt_isr_user_handler(...) #1

declare dso_local i32 @portEXIT_CRITICAL_ISR(i32*) #1

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
