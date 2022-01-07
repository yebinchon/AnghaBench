; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_drive_processes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_drive_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@shared = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PROCESS_WRITER = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"starting subprocesses\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reader_helper\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"writer_helper\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @drive_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @drive_processes(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 0), align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1), align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 2), align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fd_pair_init(i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 3))
  %14 = load i32, i32* @PROCESS_WRITER, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 6), align 4
  %15 = load i32, i32* @T_QUIET, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %17 = call i32 @pipe(i32* %16)
  %18 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %17, i32* null)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 5, i32 0), align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 5, i32 1), align 4
  %23 = call i32 @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %25 = call i32 @dt_fork_helper(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = call i32 @dt_fork_helper(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %26, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 4), align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 3), align 4
  %31 = call i32 @close(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = call i32 @dt_run_helpers(i32* %32, i32 2, i32 50000)
  unreachable
}

declare dso_local i32 @fd_pair_init(i32, i32*, i32*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @dt_fork_helper(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dt_run_helpers(i32*, i32, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
