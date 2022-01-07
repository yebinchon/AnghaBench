; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskStartScheduler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskStartScheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@configMAX_TASK_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"IDLE%d\00", align 1
@prvIdleTask = common dso_local global i32 0, align 4
@tskIDLE_STACK_SIZE = common dso_local global i32 0, align 4
@tskIDLE_PRIORITY = common dso_local global i32 0, align 4
@portPRIVILEGE_BIT = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i32 0, align 4
@xTickCount = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i32 0, align 4
@xSchedulerRunning = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i64 0, align 8
@xIdleTaskHandle = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskStartScheduler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @portNUM_PROCESSORS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @prvIdleTask, align 4
  %18 = load i32, i32* @tskIDLE_STACK_SIZE, align 4
  %19 = load i32, i32* @tskIDLE_PRIORITY, align 4
  %20 = load i32, i32* @portPRIVILEGE_BIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @xTaskCreatePinnedToCore(i32 %17, i8* %13, i32 %18, i8* null, i32 %21, i32* null, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %24)
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @pdPASS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = call i32 (...) @portDISABLE_INTERRUPTS()
  store i64 0, i64* @xTickCount, align 8
  %34 = call i32 (...) @portCONFIGURE_TIMER_FOR_RUN_TIME_STATS()
  %35 = load i32, i32* @pdTRUE, align 4
  store i32 %35, i32* @xSchedulerRunning, align 4
  %36 = call i64 (...) @xPortStartScheduler()
  %37 = load i64, i64* @pdFALSE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %39
  br label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @configASSERT(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i8*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @portDISABLE_INTERRUPTS(...) #2

declare dso_local i32 @portCONFIGURE_TIMER_FOR_RUN_TIME_STATS(...) #2

declare dso_local i64 @xPortStartScheduler(...) #2

declare dso_local i32 @configASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
