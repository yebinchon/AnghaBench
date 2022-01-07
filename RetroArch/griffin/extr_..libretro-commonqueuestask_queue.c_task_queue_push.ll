; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuestask_queue.c_task_queue_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonqueuestask_queue.c_task_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_6__*)* }

@TASK_TYPE_BLOCKING = common dso_local global i64 0, align 8
@queue_lock = common dso_local global i32 0, align 4
@tasks_running = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@impl_current = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_queue_push(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TASK_TYPE_BLOCKING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @queue_lock, align 4
  %13 = call i32 @SLOCK_LOCK(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tasks_running, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  br label %15

15:                                               ; preds = %26, %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TASK_TYPE_BLOCKING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %4, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load i32, i32* @queue_lock, align 4
  %32 = call i32 @SLOCK_UNLOCK(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %43

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @impl_current, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 %40(%struct.TYPE_6__* %41)
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @SLOCK_LOCK(i32) #1

declare dso_local i32 @SLOCK_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
