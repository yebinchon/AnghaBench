; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_continuous_time.c_wait_for_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_continuous_time.c_wait_for_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_sleep_tests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"waited %d seconds for sleep...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wait_for_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_sleep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @run_sleep_tests, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %32

8:                                                ; preds = %0
  %9 = call i64 (...) @time_delta_ms()
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %28, %8
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 30
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = call i64 (...) @time_delta_ms()
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = sub nsw i64 %15, %16
  %18 = call i32 @llabs(i64 %17)
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %32

23:                                               ; preds = %13
  %24 = call i32 @sleep(i32 1)
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @T_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %10

31:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %20, %7
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @time_delta_ms(...) #1

declare dso_local i32 @llabs(i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @T_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
