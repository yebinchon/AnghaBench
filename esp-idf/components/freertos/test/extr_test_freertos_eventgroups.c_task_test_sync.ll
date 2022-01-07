; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_eventgroups.c_task_test_sync.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_eventgroups.c_task_test_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Started %d\0A\00", align 1
@COUNT = common dso_local global i32 0, align 4
@eg = common dso_local global i32 0, align 4
@ALL_RESPONSE_BITS = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Done %d = 0x%08x\0A\00", align 1
@done_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_test_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_test_sync(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* @eg, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @BIT_RESPONSE(i32 %16)
  %18 = load i32, i32* @ALL_RESPONSE_BITS, align 4
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @xEventGroupSync(i32 %15, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @eg, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BIT_RESPONSE(i32 %22)
  %24 = call i32 @xEventGroupClearBits(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* @eg, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @BIT_DONE(i32 %30)
  %32 = call i32 @xEventGroupSetBits(i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @done_sem, align 4
  %37 = call i32 @xSemaphoreGive(i32 %36)
  %38 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @xEventGroupSync(i32, i32, i32, i32) #1

declare dso_local i32 @BIT_RESPONSE(i32) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

declare dso_local i32 @BIT_DONE(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
