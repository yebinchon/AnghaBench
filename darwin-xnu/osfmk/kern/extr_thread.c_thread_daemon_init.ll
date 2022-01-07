; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_daemon_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_daemon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_terminate_lock = common dso_local global i32 0, align 4
@thread_terminate_queue = common dso_local global i32 0, align 4
@thread_deallocate_queue = common dso_local global i32 0, align 4
@workq_deallocate_queue = common dso_local global i32 0, align 4
@turnstile_deallocate_queue = common dso_local global i32 0, align 4
@crashed_threads_queue = common dso_local global i32 0, align 4
@thread_terminate_daemon = common dso_local global i64 0, align 8
@MINPRI_KERNEL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"thread_daemon_init: thread_terminate_daemon\00", align 1
@thread_stack_lock = common dso_local global i32 0, align 4
@thread_stack_queue = common dso_local global i32 0, align 4
@thread_stack_daemon = common dso_local global i64 0, align 8
@BASEPRI_PREEMPT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"thread_daemon_init: thread_stack_daemon\00", align 1
@thread_exception_lock = common dso_local global i32 0, align 4
@thread_exception_queue = common dso_local global i32 0, align 4
@thread_exception_daemon = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"thread_daemon_init: thread_exception_daemon\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_daemon_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = call i32 @simple_lock_init(i32* @thread_terminate_lock, i32 0)
  %4 = call i32 @queue_init(i32* @thread_terminate_queue)
  %5 = call i32 @queue_init(i32* @thread_deallocate_queue)
  %6 = call i32 @queue_init(i32* @workq_deallocate_queue)
  %7 = call i32 @queue_init(i32* @turnstile_deallocate_queue)
  %8 = call i32 @queue_init(i32* @crashed_threads_queue)
  %9 = load i64, i64* @thread_terminate_daemon, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @MINPRI_KERNEL, align 4
  %12 = call i64 @kernel_thread_start_priority(i32 %10, i32* null, i32 %11, i32** %2)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @thread_deallocate(i32* %19)
  %21 = call i32 @simple_lock_init(i32* @thread_stack_lock, i32 0)
  %22 = call i32 @queue_init(i32* @thread_stack_queue)
  %23 = load i64, i64* @thread_stack_daemon, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @BASEPRI_PREEMPT_HIGH, align 4
  %26 = call i64 @kernel_thread_start_priority(i32 %24, i32* null, i32 %25, i32** %2)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @thread_deallocate(i32* %33)
  %35 = call i32 @simple_lock_init(i32* @thread_exception_lock, i32 0)
  %36 = call i32 @queue_init(i32* @thread_exception_queue)
  %37 = load i64, i64* @thread_exception_daemon, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @MINPRI_KERNEL, align 4
  %40 = call i64 @kernel_thread_start_priority(i32 %38, i32* null, i32 %39, i32** %2)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @KERN_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %32
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @thread_deallocate(i32* %47)
  ret void
}

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i32 @queue_init(i32*) #1

declare dso_local i64 @kernel_thread_start_priority(i32, i32*, i32, i32**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
