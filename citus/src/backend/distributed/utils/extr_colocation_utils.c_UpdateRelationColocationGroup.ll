; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_UpdateRelationColocationGroup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_UpdateRelationColocationGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@Natts_pg_dist_partition = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_partition_logicalrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not find valid entry for relation %s\00", align 1
@Anum_pg_dist_partition_colocationid = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @UpdateRelationColocationGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateRelationColocationGroup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %19 = load i32, i32* @Natts_pg_dist_partition, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @Natts_pg_dist_partition, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load i32, i32* @Natts_pg_dist_partition, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %29 = call i32 (...) @DistPartitionRelationId()
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call i32* @heap_open(i32 %29, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @RelationGetDescr(i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %35 = load i32, i32* @Anum_pg_dist_partition_logicalrelid, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ObjectIdGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 (...) @DistPartitionLogicalRelidIndexId()
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %46 = call i32* @systable_beginscan(i32* %41, i32 %42, i32 %43, i32* null, i32 %44, i32* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_7__* @systable_getnext(i32* %47)
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %3, align 4
  %54 = call i8* @get_rel_name(i32 %53)
  store i8* %54, i8** %17, align 8
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = call i32 @ereport(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %52, %2
  %60 = mul nuw i64 4, %20
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i32* %22, i32 0, i32 %61)
  %63 = mul nuw i64 4, %24
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32* %25, i32 0, i32 %64)
  %66 = mul nuw i64 4, %27
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i32* %28, i32 0, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @UInt32GetDatum(i32 %69)
  %71 = load i32, i32* @Anum_pg_dist_partition_colocationid, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %22, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @Anum_pg_dist_partition_colocationid, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %25, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @Anum_pg_dist_partition_colocationid, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %28, i64 %81
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__* %83, i32* %84, i32* %22, i32* %25, i32* %28)
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %6, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = call i32 @CatalogTupleUpdate(i32* %86, i32* %88, %struct.TYPE_7__* %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @CitusInvalidateRelcacheByRelid(i32 %91)
  %93 = call i32 (...) @CommandCounterIncrement()
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @systable_endscan(i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @NoLock, align 4
  %98 = call i32 @heap_close(i32* %96, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @ShouldSyncTableMetadata(i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %59
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i8* @ColocationIdUpdateCommand(i32 %104, i32 %105)
  store i8* %106, i8** %18, align 8
  %107 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @SendCommandToWorkers(i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %103, %59
  %111 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %111)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistPartitionRelationId(...) #2

declare dso_local i32* @RelationGetDescr(i32*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @DistPartitionLogicalRelidIndexId(...) #2

declare dso_local %struct.TYPE_7__* @systable_getnext(i32*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #2

declare dso_local i8* @get_rel_name(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UInt32GetDatum(i32) #2

declare dso_local %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @systable_endscan(i32*) #2

declare dso_local i32 @heap_close(i32*, i32) #2

declare dso_local i32 @ShouldSyncTableMetadata(i32) #2

declare dso_local i8* @ColocationIdUpdateCommand(i32, i32) #2

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
