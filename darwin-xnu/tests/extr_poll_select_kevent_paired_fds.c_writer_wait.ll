; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_writer_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_writer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@shared = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"wait shared.wr_wait.sem\00", align 1
@READ_SETUP_timeout = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@KERN_OPERATION_TIMED_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"THREAD_WRITER semaphore timedout after %d seconds\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"semaphore_timedwait shared.wr_wait.sem\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"writer woken up, starting to write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @writer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writer_wait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 0), align 4
  switch i32 %3, label %26 [
    i32 128, label %4
    i32 129, label %19
  ]

4:                                                ; preds = %0
  %5 = call i32 @T_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 1, i32 2), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @READ_SETUP_timeout, i32 0, i32 0), align 4
  %8 = call i32 @semaphore_timedwait(i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @KERN_OPERATION_TIMED_OUT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @READ_SETUP_timeout, i32 0, i32 0), align 4
  %14 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @T_QUIET, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %26

19:                                               ; preds = %0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 1, i32 1), align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* @T_QUIET, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 1, i32 0), align 4
  %24 = call i32 @read(i32 %23, i8* %2, i32 1)
  %25 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %24, i32* null)
  br label %26

26:                                               ; preds = %0, %19, %15
  %27 = call i32 @T_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @semaphore_timedwait(i32, i32) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*, i32) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
