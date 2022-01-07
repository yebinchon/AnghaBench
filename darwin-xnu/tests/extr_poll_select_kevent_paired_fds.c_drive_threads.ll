; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_drive_threads.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_drive_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@shared = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@THREAD_WRITER = common dso_local global i32 0, align 4
@SYNC_POLICY_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"semaphore_create shared.wr_wait.sem\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@write_to_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"created writer thread\00", align 1
@T_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @drive_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drive_threads(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 0), align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1), align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 2), align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fd_pair_init(i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 6))
  %13 = load i32, i32* @THREAD_WRITER, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 5), align 4
  %14 = call i32 (...) @mach_task_self()
  %15 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  %16 = call i32 @semaphore_create(i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 4, i32 0), i32 %15, i32 0)
  %17 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @T_QUIET, align 4
  %19 = load i32, i32* @write_to_fd, align 4
  %20 = call i32 @pthread_create(i32* %7, i32* null, i32 %19, i32* null)
  %21 = call i32 @T_ASSERT_POSIX_ZERO(i32 %20, i32* null)
  %22 = call i32 @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 3), align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @read_from_fd(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pthread_join(i32 %27, i32* null)
  %29 = call i32 @T_ASSERT_POSIX_ZERO(i32 %28, i32* null)
  %30 = load i32, i32* @T_END, align 4
  ret void
}

declare dso_local i32 @fd_pair_init(i32, i32*, i32*) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @semaphore_create(i32, i32*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @read_from_fd(i32, i32, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
