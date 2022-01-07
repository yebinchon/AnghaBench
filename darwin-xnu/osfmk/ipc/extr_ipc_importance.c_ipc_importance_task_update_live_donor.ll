; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_task_update_live_donor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_task_update_live_donor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }

@TASK_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@IIT_UPDATE_HOLD = common dso_local global i32 0, align 4
@IIT_UPDATE_DROP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IMP_DONOR_CHANGE = common dso_local global i32 0, align 4
@IMP_DONOR_UPDATE_LIVE_DONOR_STATE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_importance_task_update_live_donor(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = call i32 @ipc_importance_task_is_marked_live_donor(%struct.TYPE_12__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %59

16:                                               ; preds = %1
  %17 = call i32 (...) @ipc_importance_lock()
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @TASK_NULL, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = icmp eq %struct.TYPE_11__* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 (...) @ipc_importance_unlock()
  br label %59

26:                                               ; preds = %16
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i64 @ipc_importance_task_is_marked_donor(%struct.TYPE_12__* %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = call i64 @ipc_importance_task_is_marked_donor(%struct.TYPE_12__* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %26
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 0, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @IIT_UPDATE_HOLD, align 4
  store i32 %49, i32* %7, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @IIT_UPDATE_DROP, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @ipc_importance_task_propagate_assertion_locked(%struct.TYPE_12__* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %26
  %58 = call i32 (...) @ipc_importance_unlock()
  br label %59

59:                                               ; preds = %57, %24, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_importance_task_is_marked_live_donor(%struct.TYPE_12__*) #1

declare dso_local i32 @ipc_importance_lock(...) #1

declare dso_local i32 @ipc_importance_unlock(...) #1

declare dso_local i64 @ipc_importance_task_is_marked_donor(%struct.TYPE_12__*) #1

declare dso_local i32 @ipc_importance_task_propagate_assertion_locked(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
