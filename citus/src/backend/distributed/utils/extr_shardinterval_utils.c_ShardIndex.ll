; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_shardinterval_utils.c_ShardIndex.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_shardinterval_utils.c_ShardIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8 }

@INVALID_SHARD_INDEX = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"finding index of a given shard is only supported for hash distributed and reference tables\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShardIndex(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_7__* @DistributedTableCacheEntry(i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %26, %1
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = call i32 @FindShardIntervalIndex(i32 %47, %struct.TYPE_7__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_7__* @DistributedTableCacheEntry(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @FindShardIntervalIndex(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
