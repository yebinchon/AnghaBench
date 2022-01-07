; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_SchedulableTaskList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_SchedulableTaskList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@RunningTask = common dso_local global i32 0, align 4
@MaxRunningTasksPerNode = common dso_local global i64 0, align 8
@SchedulableTask = common dso_local global i32 0, align 4
@WORKER_TASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @SchedulableTaskList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SchedulableTaskList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @CountTasksMatchingCriteria(i32* %13, i32* @RunningTask)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MaxRunningTasksPerNode, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32*, i32** @NIL, align 8
  store i32* %19, i32** %2, align 8
  br label %70

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @CountTasksMatchingCriteria(i32* %21, i32* @SchedulableTask)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32*, i32** @NIL, align 8
  store i32* %26, i32** %2, align 8
  br label %70

27:                                               ; preds = %20
  %28 = load i64, i64* @MaxRunningTasksPerNode, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_7__* @SchedulableTaskPriorityQueue(i32* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %63, %36
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i32, i32* @WORKER_TASK_SIZE, align 4
  %45 = call i64 @palloc0(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call %struct.TYPE_7__* @WORKER_TASK_AT(%struct.TYPE_7__* %47, i64 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = call i32* @lappend(i32* %60, %struct.TYPE_7__* %61)
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %43
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = call i32 @pfree(%struct.TYPE_7__* %67)
  %69 = load i32*, i32** %4, align 8
  store i32* %69, i32** %2, align 8
  br label %70

70:                                               ; preds = %66, %25, %18
  %71 = load i32*, i32** %2, align 8
  ret i32* %71
}

declare dso_local i64 @CountTasksMatchingCriteria(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @SchedulableTaskPriorityQueue(i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local %struct.TYPE_7__* @WORKER_TASK_AT(%struct.TYPE_7__*, i64) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @pfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
