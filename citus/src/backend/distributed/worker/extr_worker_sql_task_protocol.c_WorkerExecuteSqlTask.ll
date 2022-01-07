; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_sql_task_protocol.c_WorkerExecuteSqlTask.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_sql_task_protocol.c_WorkerExecuteSqlTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WorkerExecuteSqlTask(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = call i32* (...) @CreateExecutorState()
  store i32* %11, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @CreateTaskFileDestReceiver(i8* %12, i32* %13, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = bitcast %struct.TYPE_4__* %19 to i32*
  %21 = call i32 @ExecuteQueryIntoDestReceiver(i32* %17, i32* %18, i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = bitcast %struct.TYPE_4__* %29 to i32*
  %31 = call i32 %28(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @FreeExecutorState(i32* %32)
  %34 = load i64, i64* %10, align 8
  ret i64 %34
}

declare dso_local i32* @CreateExecutorState(...) #1

declare dso_local i64 @CreateTaskFileDestReceiver(i8*, i32*, i32) #1

declare dso_local i32 @ExecuteQueryIntoDestReceiver(i32*, i32*, i32*) #1

declare dso_local i32 @FreeExecutorState(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
