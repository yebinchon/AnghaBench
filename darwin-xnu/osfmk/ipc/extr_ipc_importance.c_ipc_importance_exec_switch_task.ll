; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_exec_switch_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_exec_switch_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@III_NULL = common dso_local global i32 0, align 4
@IIT_NULL = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_importance_exec_switch_task(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load i32, i32* @III_NULL, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IIT_NULL, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IIT_NULL, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @task_importance_reset(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @ipc_importance_inherit_from_task(%struct.TYPE_10__* %13, %struct.TYPE_10__* %14)
  store i32 %15, i32* %5, align 4
  %16 = call i32 (...) @ipc_importance_lock()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = call i32 (...) @ipc_importance_unlock()
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @task_importance_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @ipc_importance_inherit_from_task(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ipc_importance_lock(...) #1

declare dso_local i32 @ipc_importance_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
