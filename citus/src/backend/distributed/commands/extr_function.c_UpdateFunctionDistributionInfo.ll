; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_UpdateFunctionDistributionInfo.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_UpdateFunctionDistributionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@Natts_pg_dist_object = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_object_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_dist_object_objid = common dso_local global i32 0, align 4
@Anum_pg_dist_object_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"could not find valid entry for node \22%d,%d,%d\22 in pg_dist_object\00", align 1
@Anum_pg_dist_object_distribution_argument_index = common dso_local global i32 0, align 4
@Anum_pg_dist_object_colocationid = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*)* @UpdateFunctionDistributionInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateFunctionDistributionInfo(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %17 = load i32, i32* @Natts_pg_dist_object, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @Natts_pg_dist_object, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* @Natts_pg_dist_object, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = call i32 (...) @DistObjectRelationId()
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call i32* @heap_open(i32 %27, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @RelationGetDescr(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @Anum_pg_dist_object_classid, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_OIDEQ, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ObjectIdGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %39)
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %42 = load i32, i32* @Anum_pg_dist_object_objid, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_OIDEQ, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ObjectIdGetDatum(i32 %47)
  %49 = call i32 @ScanKeyInit(i32* %41, i32 %42, i32 %43, i32 %44, i32 %48)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %51 = load i32, i32* @Anum_pg_dist_object_objsubid, align 4
  %52 = load i32, i32* @BTEqualStrategyNumber, align 4
  %53 = load i32, i32* @F_INT4EQ, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ObjectIdGetDatum(i32 %56)
  %58 = call i32 @ScanKeyInit(i32* %50, i32 %51, i32 %52, i32 %53, i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 (...) @DistObjectPrimaryKeyIndexId()
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %62 = call i32* @systable_beginscan(i32* %59, i32 %60, i32 1, i32* null, i32 3, i32* %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call %struct.TYPE_10__* @systable_getnext(i32* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %12, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %3
  %69 = load i32, i32* @ERROR, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75, i32 %78)
  %80 = call i32 @ereport(i32 %69, i32 %79)
  br label %81

81:                                               ; preds = %68, %3
  %82 = mul nuw i64 4, %25
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(i32* %26, i32 0, i32 %83)
  %85 = load i32, i32* @Anum_pg_dist_object_distribution_argument_index, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %26, i64 %87
  store i32 1, i32* %88, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %81
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @Int32GetDatum(i32 %93)
  %95 = load i32, i32* @Anum_pg_dist_object_distribution_argument_index, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %20, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @Anum_pg_dist_object_distribution_argument_index, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %23, i64 %101
  store i32 0, i32* %102, align 4
  br label %108

103:                                              ; preds = %81
  %104 = load i32, i32* @Anum_pg_dist_object_distribution_argument_index, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %23, i64 %106
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %91
  %109 = load i32, i32* @Anum_pg_dist_object_colocationid, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %26, i64 %111
  store i32 1, i32* %112, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @Int32GetDatum(i32 %117)
  %119 = load i32, i32* @Anum_pg_dist_object_colocationid, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %20, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @Anum_pg_dist_object_colocationid, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %23, i64 %125
  store i32 0, i32* %126, align 4
  br label %132

127:                                              ; preds = %108
  %128 = load i32, i32* @Anum_pg_dist_object_colocationid, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %23, i64 %130
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %115
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %133, i32* %134, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %12, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = call i32 @CatalogTupleUpdate(i32* %136, i32* %138, %struct.TYPE_10__* %139)
  %141 = call i32 (...) @DistObjectRelationId()
  %142 = call i32 @CitusInvalidateRelcacheByRelid(i32 %141)
  %143 = call i32 (...) @CommandCounterIncrement()
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @systable_endscan(i32* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* @NoLock, align 4
  %148 = call i32 @heap_close(i32* %146, i32 %147)
  %149 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistObjectRelationId(...) #2

declare dso_local i32* @RelationGetDescr(i32*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @DistObjectPrimaryKeyIndexId(...) #2

declare dso_local %struct.TYPE_10__* @systable_getnext(i32*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @systable_endscan(i32*) #2

declare dso_local i32 @heap_close(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
