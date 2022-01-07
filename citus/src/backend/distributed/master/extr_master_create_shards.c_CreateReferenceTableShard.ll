; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_create_shards.c_CreateReferenceTableShard.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_create_shards.c_CreateReferenceTableShard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@INVALID_SHARD_ID = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"table \22%s\22 has already had shards created for it\00", align 1
@ShareLock = common dso_local global i32 0, align 4
@CompareWorkerNodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateReferenceTableShard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* @INVALID_SHARD_ID, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @EnsureTableOwner(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ExclusiveLock, align 4
  %23 = call i32 @LockRelationOid(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call signext i8 @ShardStorageType(i32 %24)
  store i8 %25, i8* %3, align 1
  %26 = load i32, i32* %2, align 4
  %27 = call i32* @LoadShardList(i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** @NIL, align 8
  %30 = icmp ne i32* %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = call i8* @get_rel_name(i32 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load i32, i32* @ShareLock, align 4
  %42 = call i32* @ReferenceTablePlacementNodeList(i32 %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @CompareWorkerNodes, align 4
  %45 = call i32* @SortList(i32* %43, i32 %44)
  store i32* %45, i32** %4, align 8
  %46 = call i32 (...) @ReferenceTableReplicationFactor()
  store i32 %46, i32* %8, align 4
  %47 = call i32 (...) @GetNextShardId()
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ExclusiveLock, align 4
  %50 = call i32 @LockShardDistributionMetadata(i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i8, i8* %3, align 1
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @InsertShardRow(i32 %51, i32 %52, i8 signext %53, i32* %54, i32* %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32* @InsertShardPlacementRows(i32 %57, i32 %58, i32* %59, i32 %60, i32 %61)
  store i32* %62, i32** %13, align 8
  %63 = load i32, i32* %2, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @CreateShardsOnWorkers(i32 %63, i32* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @EnsureTableOwner(i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local signext i8 @ShardStorageType(i32) #1

declare dso_local i32* @LoadShardList(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32* @ReferenceTablePlacementNodeList(i32) #1

declare dso_local i32* @SortList(i32*, i32) #1

declare dso_local i32 @ReferenceTableReplicationFactor(...) #1

declare dso_local i32 @GetNextShardId(...) #1

declare dso_local i32 @LockShardDistributionMetadata(i32, i32) #1

declare dso_local i32 @InsertShardRow(i32, i32, i8 signext, i32*, i32*) #1

declare dso_local i32* @InsertShardPlacementRows(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @CreateShardsOnWorkers(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
