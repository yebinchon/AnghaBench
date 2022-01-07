; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ProcessLimitOrderByForWorkerQuery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ProcessLimitOrderByForWorkerQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @ProcessLimitOrderByForWorkerQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessLimitOrderByForWorkerQuery(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.TYPE_6__* %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %16, align 8
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %17, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @WorkerLimitCount(i32* %19, i32* %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @WorkerSortClauseList(i32* %25, i32* %26, i32* %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @GenerateNewTargetEntriesForSortClauses(i32* %32, i32 %35, i32* %37, i32 %40)
  store i32* %41, i32** %17, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @list_concat(i32 %44, i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i32 @WorkerLimitCount(i32*, i32*, i32) #1

declare dso_local i32 @WorkerSortClauseList(i32*, i32*, i32*, i32) #1

declare dso_local i32* @GenerateNewTargetEntriesForSortClauses(i32*, i32, i32*, i32) #1

declare dso_local i32 @list_concat(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
