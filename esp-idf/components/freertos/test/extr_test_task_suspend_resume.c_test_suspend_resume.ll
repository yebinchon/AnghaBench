; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_task_suspend_resume.c_test_suspend_resume.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_task_suspend_resume.c_test_suspend_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@task_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@UNITY_FREERTOS_PRIORITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Suspending @ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Still suspended @ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Resumed @ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_suspend_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_suspend_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store volatile i32 0, i32* %3, align 4
  %8 = load i32, i32* @task_count, align 4
  %9 = bitcast i32* %3 to i8*
  %10 = load i64, i64* @UNITY_FREERTOS_PRIORITY, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @xTaskCreatePinnedToCore(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2048, i8* %9, i64 %11, i32* %4, i32 %12)
  %14 = call i32 @vTaskDelay(i32 10)
  %15 = load volatile i32, i32* %3, align 4
  %16 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 0, i32 %15)
  store i32 5, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %40, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @vTaskSuspend(i32 %21)
  %23 = load volatile i32, i32* %3, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @vTaskDelay(i32 2)
  %27 = load volatile i32, i32* %3, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load volatile i32, i32* %3, align 4
  %31 = call i32 @TEST_ASSERT_EQUAL(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vTaskResume(i32 %32)
  %34 = call i32 @vTaskDelay(i32 2)
  %35 = load volatile i32, i32* %3, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load volatile i32, i32* %3, align 4
  %39 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @vTaskDelete(i32 %44)
  ret void
}

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i8*, i64, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #1

declare dso_local i32 @vTaskSuspend(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @vTaskResume(i32) #1

declare dso_local i32 @vTaskDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
