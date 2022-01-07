; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_distributed_execution_locks.c_AcquireExecutorShardLockForRowModify.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_distributed_execution_locks.c_AcquireExecutorShardLockForRowModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@NoLock = common dso_local global i64 0, align 8
@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@ROW_MODIFY_READONLY = common dso_local global i64 0, align 8
@REPLICATION_MODEL_2PC = common dso_local global i64 0, align 8
@RowExclusiveLock = common dso_local global i64 0, align 8
@AllModificationsCommutative = common dso_local global i64 0, align 8
@ROW_MODIFY_NONCOMMUTATIVE = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @AcquireExecutorShardLockForRowModify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcquireExecutorShardLockForRowModify(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @NoLock, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @INVALID_SHARD_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %66

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @ROW_MODIFY_READONLY, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @NoLock, align 8
  store i64 %21, i64* %5, align 8
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @list_length(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REPLICATION_MODEL_2PC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @RowExclusiveLock, align 8
  store i64 %35, i64* %5, align 8
  br label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @NoLock, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  br label %54

39:                                               ; preds = %22
  %40 = load i64, i64* @AllModificationsCommutative, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @RowExclusiveLock, align 8
  store i64 %43, i64* %5, align 8
  br label %53

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @ROW_MODIFY_NONCOMMUTATIVE, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @RowExclusiveLock, align 8
  store i64 %49, i64* %5, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @ExclusiveLock, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @NoLock, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = call i32* @LoadShardInterval(i64 %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @list_make1(i32* %62)
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @SerializeNonCommutativeWrites(i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %15, %59, %55
  ret void
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32* @LoadShardInterval(i64) #1

declare dso_local i32 @SerializeNonCommutativeWrites(i32, i64) #1

declare dso_local i32 @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
