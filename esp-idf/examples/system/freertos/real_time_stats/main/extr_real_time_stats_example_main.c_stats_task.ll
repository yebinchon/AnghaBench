; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_stats_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/freertos/real_time_stats/main/extr_real_time_stats_example_main.c_stats_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sync_stats_task = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NUM_OF_SPIN_TASKS = common dso_local global i32 0, align 4
@sync_spin_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0A\0AGetting real time stats over %d ticks\0A\00", align 1
@STATS_TICKS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Real time stats obtained\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error getting real time stats\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stats_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @sync_stats_task, align 4
  %5 = load i32, i32* @portMAX_DELAY, align 4
  %6 = call i32 @xSemaphoreTake(i32 %4, i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NUM_OF_SPIN_TASKS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @sync_spin_task, align 4
  %13 = call i32 @xSemaphoreGive(i32 %12)
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %7

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17, %29
  %19 = load i32, i32* @STATS_TICKS, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @STATS_TICKS, align 4
  %22 = call i64 @print_real_time_stats(i32 %21)
  %23 = load i64, i64* @ESP_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %29

27:                                               ; preds = %18
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %25
  %30 = call i32 @pdMS_TO_TICKS(i32 1000)
  %31 = call i32 @vTaskDelay(i32 %30)
  br label %18
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @print_real_time_stats(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
