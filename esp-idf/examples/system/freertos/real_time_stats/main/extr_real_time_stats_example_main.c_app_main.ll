; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_OF_SPIN_TASKS = common dso_local global i32 0, align 4
@sync_spin_task = common dso_local global i32 0, align 4
@sync_stats_task = common dso_local global i32 0, align 4
@task_names = common dso_local global i8** null, align 8
@configMAX_TASK_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"spin%d\00", align 1
@spin_task = common dso_local global i32 0, align 4
@SPIN_TASK_PRIO = common dso_local global i32 0, align 4
@tskNO_AFFINITY = common dso_local global i32 0, align 4
@stats_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@STATS_TASK_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @pdMS_TO_TICKS(i32 100)
  %3 = call i32 @vTaskDelay(i32 %2)
  %4 = load i32, i32* @NUM_OF_SPIN_TASKS, align 4
  %5 = call i32 @xSemaphoreCreateCounting(i32 %4, i32 0)
  store i32 %5, i32* @sync_spin_task, align 4
  %6 = call i32 (...) @xSemaphoreCreateBinary()
  store i32 %6, i32* @sync_stats_task, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %29, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @NUM_OF_SPIN_TASKS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i8**, i8*** @task_names, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @configMAX_TASK_NAME_LEN, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @spin_task, align 4
  %21 = load i8**, i8*** @task_names, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @SPIN_TASK_PRIO, align 4
  %27 = load i32, i32* @tskNO_AFFINITY, align 4
  %28 = call i32 @xTaskCreatePinnedToCore(i32 %20, i8* %25, i32 1024, i32* null, i32 %26, i32* null, i32 %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* @stats_task, align 4
  %34 = load i32, i32* @STATS_TASK_PRIO, align 4
  %35 = load i32, i32* @tskNO_AFFINITY, align 4
  %36 = call i32 @xTaskCreatePinnedToCore(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 4096, i32* null, i32 %34, i32* null, i32 %35)
  %37 = load i32, i32* @sync_stats_task, align 4
  %38 = call i32 @xSemaphoreGive(i32 %37)
  ret void
}

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @xSemaphoreCreateCounting(i32, i32) #1

declare dso_local i32 @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
