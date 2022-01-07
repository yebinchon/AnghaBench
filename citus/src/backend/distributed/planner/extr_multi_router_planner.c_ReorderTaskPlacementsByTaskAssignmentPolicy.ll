; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_ReorderTaskPlacementsByTaskAssignmentPolicy.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_ReorderTaskPlacementsByTaskAssignmentPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TASK_ASSIGNMENT_ROUND_ROBIN = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"assigned task %u to node %s:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i32*)* @ReorderTaskPlacementsByTaskAssignmentPolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReorderTaskPlacementsByTaskAssignmentPolicy(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @TASK_ASSIGNMENT_ROUND_ROBIN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %14 = load i32*, i32** @NIL, align 8
  store i32* %14, i32** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @list_length(i32* %17)
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @linitial(i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ReadOnlyTask(i32 %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @RemoveCoordinatorPlacement(i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @RoundRobinReorder(%struct.TYPE_6__* %34, i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @linitial(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %9, align 8
  %43 = load i32, i32* @DEBUG3, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  %54 = call i32 @ereport(i32 %43, i32 %53)
  br label %55

55:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @ReadOnlyTask(i32) #1

declare dso_local i32* @RemoveCoordinatorPlacement(i32*) #1

declare dso_local i32* @RoundRobinReorder(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
