; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_insert_select_planner.c_CoordinatorInsertSelectSupported.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_insert_select_planner.c_CoordinatorInsertSelectSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }

@DISTRIBUTE_BY_APPEND = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"INSERT ... SELECT into an append-distributed table is not supported\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"INSERT ... SELECT cannot generate sequence values when selecting from a distributed table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*)* @CoordinatorInsertSelectSupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CoordinatorInsertSelectSupported(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32* @ErrorIfOnConflictNotSupported(%struct.TYPE_11__* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call %struct.TYPE_10__* @ExtractResultRelationRTE(%struct.TYPE_11__* %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @PartitionMethod(i32 %19)
  %21 = load i64, i64* @DISTRIBUTE_BY_APPEND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %25 = call i32* @DeferredError(i32 %24, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32* %25, i32** %2, align 8
  br label %47

26:                                               ; preds = %14
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call %struct.TYPE_10__* @ExtractSelectRangeTableEntry(%struct.TYPE_11__* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = call i64 @NeedsDistributedPlanning(%struct.TYPE_11__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = call i64 @contain_nextval_expression_walker(i32* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32* @DeferredError(i32 %44, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %45, i32** %2, align 8
  br label %47

46:                                               ; preds = %36, %26
  store i32* null, i32** %2, align 8
  br label %47

47:                                               ; preds = %46, %43, %23, %12
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32* @ErrorIfOnConflictNotSupported(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @ExtractResultRelationRTE(%struct.TYPE_11__*) #1

declare dso_local i64 @PartitionMethod(i32) #1

declare dso_local i32* @DeferredError(i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @ExtractSelectRangeTableEntry(%struct.TYPE_11__*) #1

declare dso_local i64 @NeedsDistributedPlanning(%struct.TYPE_11__*) #1

declare dso_local i64 @contain_nextval_expression_walker(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
