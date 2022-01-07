; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_task_drain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_task_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_task = type { i64 }

@bstp_task_mtx = common dso_local global i32 0, align 4
@bstp_task_queue_running = common dso_local global %struct.bstp_task* null, align 8
@bstp_task_queue = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bstp_task_queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_task*)* @bstp_task_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_task_drain(%struct.bstp_task* %0) #0 {
  %2 = alloca %struct.bstp_task*, align 8
  store %struct.bstp_task* %0, %struct.bstp_task** %2, align 8
  %3 = load i32, i32* @bstp_task_mtx, align 4
  %4 = call i32 @lck_mtx_lock(i32 %3)
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.bstp_task*, %struct.bstp_task** %2, align 8
  %7 = getelementptr inbounds %struct.bstp_task, %struct.bstp_task* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load %struct.bstp_task*, %struct.bstp_task** @bstp_task_queue_running, align 8
  %12 = load %struct.bstp_task*, %struct.bstp_task** %2, align 8
  %13 = icmp eq %struct.bstp_task* %11, %12
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ true, %5 ], [ %13, %10 ]
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = call i32 @wakeup(i32* @bstp_task_queue)
  %18 = load i32, i32* @bstp_task_mtx, align 4
  %19 = load i32, i32* @PZERO, align 4
  %20 = call i32 @msleep(%struct.bstp_task** @bstp_task_queue_running, i32 %18, i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %5

21:                                               ; preds = %14
  %22 = load i32, i32* @bstp_task_mtx, align 4
  %23 = call i32 @lck_mtx_unlock(i32 %22)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(%struct.bstp_task**, i32, i32, i8*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
