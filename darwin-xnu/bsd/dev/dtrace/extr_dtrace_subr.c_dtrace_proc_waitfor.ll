; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_subr.c_dtrace_proc_waitfor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_subr.c_dtrace_proc_waitfor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@dtrace_procwaitfor_lock = common dso_local global i32 0, align 4
@dtrace_proc_awaited_head = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@dtrace_proc_exec_notification = common dso_local global i32 0, align 4
@dtrace_proc_waitfor_exec_ptr = common dso_local global i32* null, align 8
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dtrace_proc_waitfor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_proc_waitfor(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @ASSERT(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = call i32 @strnlen(%struct.TYPE_9__* %14, i32 8)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = call i32 @lck_mtx_lock(i32* @dtrace_procwaitfor_lock)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %28, align 8
  %29 = load i32, i32* @entries, align 4
  %30 = call i32 @LIST_INSERT_HEAD(i32* @dtrace_proc_awaited_head, %struct.TYPE_10__* %4, i32 %29)
  store i32* @dtrace_proc_exec_notification, i32** @dtrace_proc_waitfor_exec_ptr, align 8
  %31 = load i32, i32* @PCATCH, align 4
  %32 = call i32 @msleep(%struct.TYPE_10__* %4, i32* @dtrace_procwaitfor_lock, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @entries, align 4
  %34 = call i32 @LIST_REMOVE(%struct.TYPE_10__* %4, i32 %33)
  %35 = call i64 @LIST_EMPTY(i32* @dtrace_proc_awaited_head)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32* null, i32** @dtrace_proc_waitfor_exec_ptr, align 8
  br label %38

38:                                               ; preds = %37, %23
  %39 = call i32 @lck_mtx_unlock(i32* @dtrace_procwaitfor_lock)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT(%struct.TYPE_9__*) #1

declare dso_local i32 @strnlen(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @msleep(%struct.TYPE_10__*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
