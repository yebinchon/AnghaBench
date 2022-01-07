; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_thread_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_vmfault.c_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@ready_thread_count_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pthread_mutex_lock\00", align 1
@ready_thread_count = common dso_local global i64 0, align 8
@num_threads = common dso_local global i64 0, align 8
@threads_ready_cvar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"pthread_cond_signal\00", align 1
@start_cvar = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"pthread_cond_wait\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"pthread_mutex_unlock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @T_QUIET, align 4
  %8 = call i32 @pthread_mutex_lock(i32* @ready_thread_count_lock)
  %9 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @ready_thread_count, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @ready_thread_count, align 8
  %12 = load i64, i64* @ready_thread_count, align 8
  %13 = load i64, i64* @num_threads, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @T_QUIET, align 4
  %17 = call i32 @pthread_cond_signal(i32* @threads_ready_cvar)
  %18 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @T_QUIET, align 4
  %21 = call i32 @pthread_cond_wait(i32* @start_cvar, i32* @ready_thread_count_lock)
  %22 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @T_QUIET, align 4
  %24 = call i32 @pthread_mutex_unlock(i32* @ready_thread_count_lock)
  %25 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @fault_pages(i32 %26)
  ret i8* null
}

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @fault_pages(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
