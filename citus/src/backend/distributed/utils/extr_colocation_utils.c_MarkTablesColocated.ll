; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_MarkTablesColocated.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_MarkTablesColocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @MarkTablesColocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MarkTablesColocated(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  store i64 %13, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @CheckReplicationModel(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CheckDistributionColumnType(i32 %17, i32 %18)
  %20 = call i32 (...) @DistColocationRelationId()
  %21 = load i32, i32* @ExclusiveLock, align 4
  %22 = call i32* @heap_open(i32 %20, i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ErrorIfShardPlacementsNotColocated(i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @TableColocationId(i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @ShardIntervalCount(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @TableShardReplicationFactor(i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.TYPE_3__* @DistPartitionKey(i32 %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %10, align 8
  %38 = load i32, i32* @InvalidOid, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @CreateColocationGroup(i64 %46, i64 %47, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @UpdateRelationColocationGroup(i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %45, %2
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @TableColocationId(i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @UpdateRelationColocationGroup(i32 %56, i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @DeleteColocationGroupIfNoTablesBelong(i64 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @NoLock, align 4
  %63 = call i32 @heap_close(i32* %61, i32 %62)
  ret void
}

declare dso_local i32 @CheckReplicationModel(i32, i32) #1

declare dso_local i32 @CheckDistributionColumnType(i32, i32) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i32 @ErrorIfShardPlacementsNotColocated(i32, i32) #1

declare dso_local i64 @TableColocationId(i32) #1

declare dso_local i64 @ShardIntervalCount(i32) #1

declare dso_local i64 @TableShardReplicationFactor(i32) #1

declare dso_local %struct.TYPE_3__* @DistPartitionKey(i32) #1

declare dso_local i64 @CreateColocationGroup(i64, i64, i32) #1

declare dso_local i32 @UpdateRelationColocationGroup(i32, i64) #1

declare dso_local i32 @DeleteColocationGroupIfNoTablesBelong(i64) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
