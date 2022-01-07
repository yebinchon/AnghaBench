; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_RecordParallelRelationAccessForTaskList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_RecordParallelRelationAccessForTaskList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@MultiShardConnectionType = common dso_local global i64 0, align 8
@SEQUENTIAL_CONNECTION = common dso_local global i64 0, align 8
@SQL_TASK = common dso_local global i64 0, align 8
@MODIFY_TASK = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecordParallelRelationAccessForTaskList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %4 = load i64, i64* @MultiShardConnectionType, align 8
  %5 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @list_length(i32* %9)
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %47

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_6__* @linitial(i32* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SQL_TASK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @RecordRelationParallelSelectAccessForTask(%struct.TYPE_6__* %22)
  br label %47

24:                                               ; preds = %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MODIFY_TASK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NIL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = call i32 @RecordRelationParallelModifyAccessForTask(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = call i32 @RecordRelationParallelSelectAccessForTask(%struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %37, %36
  br label %46

43:                                               ; preds = %24
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i32 @RecordRelationParallelDDLAccessForTask(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %7, %12, %46, %21
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local %struct.TYPE_6__* @linitial(i32*) #1

declare dso_local i32 @RecordRelationParallelSelectAccessForTask(%struct.TYPE_6__*) #1

declare dso_local i32 @RecordRelationParallelModifyAccessForTask(%struct.TYPE_6__*) #1

declare dso_local i32 @RecordRelationParallelDDLAccessForTask(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
