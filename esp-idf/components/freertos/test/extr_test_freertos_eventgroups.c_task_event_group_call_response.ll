; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_eventgroups.c_task_event_group_call_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_eventgroups.c_task_event_group_call_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Started %d\0A\00", align 1
@COUNT = common dso_local global i32 0, align 4
@eg = common dso_local global i32 0, align 4
@BIT_CALL = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Task %d done\0A\00", align 1
@done_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_event_group_call_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_event_group_call_response(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* @eg, align 4
  %15 = load i32, i32* @BIT_CALL, align 4
  %16 = load i32, i32* @portMAX_DELAY, align 4
  %17 = call i32 @xEventGroupWaitBits(i32 %14, i32 %15, i32 1, i32 0, i32 %16)
  %18 = call i32 @TEST_ASSERT(i32 %17)
  %19 = load i32, i32* @eg, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @BIT_RESPONSE(i32 %20)
  %22 = call i32 @xEventGroupSetBits(i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @done_sem, align 4
  %30 = call i32 @xSemaphoreGive(i32 %29)
  %31 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

declare dso_local i32 @BIT_RESPONSE(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
