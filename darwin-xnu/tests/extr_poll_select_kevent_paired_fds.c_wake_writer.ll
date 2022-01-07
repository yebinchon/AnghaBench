; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_wake_writer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_wake_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"waking writer\00", align 1
@shared = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"signal shared.wr_wait.sem\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wake_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_writer() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @T_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 0), align 4
  switch i32 %3, label %15 [
    i32 128, label %4
    i32 129, label %8
  ]

4:                                                ; preds = %0
  %5 = call i32 @T_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1, i32 2), align 4
  %7 = call i32 @semaphore_signal(i32 %6)
  br label %15

8:                                                ; preds = %0
  store i8 97, i8* %1, align 1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1, i32 1), align 4
  %10 = call i32 @close(i32 %9)
  %11 = load i32, i32* @T_QUIET, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @shared, i32 0, i32 1, i32 0), align 4
  %13 = call i32 @write(i32 %12, i8* %1, i32 1)
  %14 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %13, i32* null)
  br label %15

15:                                               ; preds = %0, %8, %4
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @semaphore_signal(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
