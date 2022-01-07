; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_recursive_planning.c_ShouldRecursivelyPlanSubquery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_recursive_planning.c_ShouldRecursivelyPlanSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@IsLocalTableRTE = common dso_local global i32 0, align 4
@TaskExecutorType = common dso_local global i64 0, align 8
@MULTI_EXECUTOR_TASK_TRACKER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @ShouldRecursivelyPlanSubquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldRecursivelyPlanSubquery(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IsLocalTableRTE, align 4
  %10 = call i64 @FindNodeCheckInRangeTableList(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = call i32* @DeferErrorIfCannotPushdownSubquery(%struct.TYPE_9__* %14, i32 0)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AllDistributionKeysInSubqueryAreEqual(%struct.TYPE_9__* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %43

30:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %43

31:                                               ; preds = %13
  %32 = load i64, i64* @TaskExecutorType, align 8
  %33 = load i64, i64* @MULTI_EXECUTOR_TASK_TRACKER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i64 @SingleRelationRepartitionSubquery(%struct.TYPE_9__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %43

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %12
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %30, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @FindNodeCheckInRangeTableList(i32, i32) #1

declare dso_local i32* @DeferErrorIfCannotPushdownSubquery(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AllDistributionKeysInSubqueryAreEqual(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @SingleRelationRepartitionSubquery(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
