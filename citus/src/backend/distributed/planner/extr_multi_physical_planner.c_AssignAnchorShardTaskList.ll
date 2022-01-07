; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_AssignAnchorShardTaskList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_AssignAnchorShardTaskList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@TaskAssignmentPolicy = common dso_local global i64 0, align 8
@TASK_ASSIGNMENT_GREEDY = common dso_local global i64 0, align 8
@TASK_ASSIGNMENT_FIRST_REPLICA = common dso_local global i64 0, align 8
@TASK_ASSIGNMENT_ROUND_ROBIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AssignAnchorShardTaskList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** @NIL, align 8
  store i32* %4, i32** %3, align 8
  %5 = load i64, i64* @TaskAssignmentPolicy, align 8
  %6 = load i64, i64* @TASK_ASSIGNMENT_GREEDY, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @GreedyAssignTaskList(i32* %9)
  store i32* %10, i32** %3, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load i64, i64* @TaskAssignmentPolicy, align 8
  %13 = load i64, i64* @TASK_ASSIGNMENT_FIRST_REPLICA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @FirstReplicaAssignTaskList(i32* %16)
  store i32* %17, i32** %3, align 8
  br label %26

18:                                               ; preds = %11
  %19 = load i64, i64* @TaskAssignmentPolicy, align 8
  %20 = load i64, i64* @TASK_ASSIGNMENT_ROUND_ROBIN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @RoundRobinAssignTaskList(i32* %23)
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %15
  br label %27

27:                                               ; preds = %26, %8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** @NIL, align 8
  %30 = icmp ne i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32* @GreedyAssignTaskList(i32*) #1

declare dso_local i32* @FirstReplicaAssignTaskList(i32*) #1

declare dso_local i32* @RoundRobinAssignTaskList(i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
