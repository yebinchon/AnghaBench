; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_backtracing.c_backtrace_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_backtracing.c_backtrace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backtrace_started = common dso_local global i32 0, align 4
@backtrace_go = common dso_local global i32 0, align 4
@DISPATCH_TIME_FOREVER = common dso_local global i32 0, align 4
@USER_FRAMES = common dso_local global i32 0, align 4
@RECURSE_START_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"backtrace thread calling into %d frames (already at %d frames)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @backtrace_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @backtrace_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @backtrace_started, align 4
  %8 = call i32 @dispatch_semaphore_signal(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @backtrace_go, align 4
  %13 = load i32, i32* @DISPATCH_TIME_FOREVER, align 4
  %14 = call i32 @dispatch_semaphore_wait(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @USER_FRAMES, align 4
  %17 = load i32, i32* @RECURSE_START_OFFSET, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RECURSE_START_OFFSET, align 4
  %28 = call i32 @T_LOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @recurse_a(i64 %29, i32 %30)
  ret i8* null
}

declare dso_local i32 @dispatch_semaphore_signal(i32) #1

declare dso_local i32 @dispatch_semaphore_wait(i32, i32) #1

declare dso_local i32 @T_LOG(i8*, i32, i32) #1

declare dso_local i32 @recurse_a(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
