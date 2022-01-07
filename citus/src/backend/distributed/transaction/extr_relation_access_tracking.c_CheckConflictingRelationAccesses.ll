; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_CheckConflictingRelationAccesses.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_relation_access_tracking.c_CheckConflictingRelationAccesses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@InvalidOid = common dso_local global i32 0, align 4
@PLACEMENT_ACCESS_SELECT = common dso_local global i64 0, align 8
@EnforceForeignKeyRestrictions = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"cannot execute %s on reference relation \22%s\22 because there was a parallel %s access to distributed relation \22%s\22 in the same transaction\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"Try re-running the transaction with \22SET LOCAL citus.multi_shard_modify_mode TO 'sequential';\22\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"cannot modify reference table \22%s\22 because there was a parallel operation on a distributed table\00", align 1
@.str.3 = private unnamed_addr constant [145 x i8] c"When there is a foreign key to a reference table, Citus needs to perform all operations over a single connection per node to ensure consistency.\00", align 1
@MultiShardConnectionType = common dso_local global i64 0, align 8
@PARALLEL_CONNECTION = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"switching to sequential query execution mode\00", align 1
@.str.5 = private unnamed_addr constant [318 x i8] c"Reference relation \22%s\22 is modified, which might lead to data inconsistencies or distributed deadlocks via parallel accesses to hash distributed relations due to foreign keys. Any parallel modification to those hash distributed relations in the same transaction can only be executed in sequential query execution mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @CheckConflictingRelationAccesses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckConflictingRelationAccesses(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* @InvalidOid, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @PLACEMENT_ACCESS_SELECT, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @EnforceForeignKeyRestrictions, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @IsDistributedTable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %2
  br label %95

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_3__* @DistributedTableCacheEntry(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NIL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %22
  br label %95

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @HoldsConflictingLockWithReferencingRelations(i32 %38, i64 %39, i32* %6, i64* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i8* @get_rel_name(i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @get_rel_name(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i8* @PlacementAccessTypeToText(i64 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i8* @PlacementAccessTypeToText(i64 %49)
  store i8* %50, i8** %11, align 8
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53, i8* %54, i8* %55)
  %57 = call i32 @errhint(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %51, i32 %57)
  br label %95

59:                                               ; preds = %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NIL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @PLACEMENT_ACCESS_SELECT, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = call i8* @get_rel_name(i32 %70)
  store i8* %71, i8** %12, align 8
  %72 = call i64 (...) @ParallelQueryExecutedInTransaction()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @errhint(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @ereport(i32 %75, i32 %79)
  br label %93

81:                                               ; preds = %69
  %82 = load i64, i64* @MultiShardConnectionType, align 8
  %83 = load i64, i64* @PARALLEL_CONNECTION, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @DEBUG1, align 4
  %87 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([318 x i8], [318 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = call i32 @ereport(i32 %86, i32 %89)
  %91 = call i32 (...) @SetLocalMultiShardModifyModeToSequential()
  br label %92

92:                                               ; preds = %85, %81
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %65, %59
  br label %95

95:                                               ; preds = %21, %36, %94, %42
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local %struct.TYPE_3__* @DistributedTableCacheEntry(i32) #1

declare dso_local i64 @HoldsConflictingLockWithReferencingRelations(i32, i64, i32*, i64*) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i8* @PlacementAccessTypeToText(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @ParallelQueryExecutedInTransaction(...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @SetLocalMultiShardModifyModeToSequential(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
