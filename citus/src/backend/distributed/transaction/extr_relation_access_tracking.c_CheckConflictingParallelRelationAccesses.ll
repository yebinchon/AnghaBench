; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_CheckConflictingParallelRelationAccesses.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_CheckConflictingParallelRelationAccesses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@InvalidOid = common dso_local global i32 0, align 4
@PLACEMENT_ACCESS_SELECT = common dso_local global i32 0, align 4
@EnforceForeignKeyRestrictions = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@MultiShardConnectionType = common dso_local global i64 0, align 8
@PARALLEL_CONNECTION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [179 x i8] c"cannot execute parallel %s on relation \22%s\22 after %s command on reference relation \22%s\22 because there is a foreign key between them and \22%s\22 has been accessed in this transaction\00", align 1
@.str.1 = private unnamed_addr constant [145 x i8] c"When there is a foreign key to a reference table, Citus needs to perform all operations over a single connection per node to ensure consistency.\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"Try re-running the transaction with \22SET LOCAL citus.multi_shard_modify_mode TO 'sequential';\22\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"switching to sequential query execution mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CheckConflictingParallelRelationAccesses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckConflictingParallelRelationAccesses(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* @InvalidOid, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @PLACEMENT_ACCESS_SELECT, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @EnforceForeignKeyRestrictions, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @IsDistributedTable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %2
  br label %79

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.TYPE_3__* @DistributedTableCacheEntry(i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NIL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %21
  br label %79

36:                                               ; preds = %29
  %37 = load i64, i64* @MultiShardConnectionType, align 8
  %38 = load i64, i64* @PARALLEL_CONNECTION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @HoldsConflictingLockWithReferencedRelations(i32 %41, i32 %42, i32* %6, i32* %7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i8* @get_rel_name(i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @get_rel_name(i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i8* @PlacementAccessTypeToText(i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @PlacementAccessTypeToText(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = call i64 (...) @ParallelQueryExecutedInTransaction()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %59, i8* %60, i8* %61, i8* %62)
  %64 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @errhint(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %57, i32 %65)
  br label %78

67:                                               ; preds = %45
  %68 = load i32, i32* @DEBUG1, align 4
  %69 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %71, i8* %72, i8* %73, i8* %74)
  %76 = call i32 @ereport(i32 %68, i32 %75)
  %77 = call i32 (...) @SetLocalMultiShardModifyModeToSequential()
  br label %78

78:                                               ; preds = %67, %56
  br label %79

79:                                               ; preds = %20, %35, %78, %40, %36
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local %struct.TYPE_3__* @DistributedTableCacheEntry(i32) #1

declare dso_local i64 @HoldsConflictingLockWithReferencedRelations(i32, i32, i32*, i32*) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i8* @PlacementAccessTypeToText(i32) #1

declare dso_local i64 @ParallelQueryExecutedInTransaction(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SetLocalMultiShardModifyModeToSequential(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
