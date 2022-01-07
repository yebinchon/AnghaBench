; ModuleID = '/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_failed_assert_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/espcoredump/test/extr_test_core_dump.c_failed_assert_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Task 'failed_assert_task' start.\0A\00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Task 'failed_assert_task' run.\0A\00", align 1
@crash_flags = common dso_local global i32 0, align 4
@TCI_FAIL_ASSERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Assert.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @failed_assert_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %1, %16
  %5 = load i32, i32* @portTICK_RATE_MS, align 4
  %6 = sdiv i32 1000, %5
  %7 = call i32 @vTaskDelay(i32 %6)
  %8 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @crash_flags, align 4
  %10 = load i32, i32* @TCI_FAIL_ASSERT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @assert(i32 0)
  br label %16

16:                                               ; preds = %13, %4
  br label %4
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
