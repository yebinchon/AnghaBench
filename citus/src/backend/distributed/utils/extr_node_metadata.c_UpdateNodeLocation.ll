; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_UpdateNodeLocation.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_UpdateNodeLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@Natts_pg_dist_node = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not find valid entry for node \22%s:%d\22\00", align 1
@Anum_pg_dist_node_nodeport = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodename = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @UpdateNodeLocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateNodeLocation(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %17 = load i32, i32* @Natts_pg_dist_node, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @Natts_pg_dist_node, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* @Natts_pg_dist_node, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = call i32 (...) @DistNodeRelationId()
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call i32* @heap_open(i32 %27, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @RelationGetDescr(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @Anum_pg_dist_node_nodeid, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_INT4EQ, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @Int32GetDatum(i32 %36)
  %38 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 (...) @DistNodeNodeIdIndexId()
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %42 = call i32* @systable_beginscan(i32* %39, i32 %40, i32 1, i32* null, i32 1, i32* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call %struct.TYPE_7__* @systable_getnext(i32* %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %12, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %51)
  %53 = call i32 @ereport(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %3
  %55 = mul nuw i64 4, %25
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(i32* %26, i32 0, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @Int32GetDatum(i32 %58)
  %60 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %20, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %23, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %26, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @CStringGetTextDatum(i8* %72)
  %74 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %20, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %23, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %26, i64 %84
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__* %86, i32* %87, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %12, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = call i32 @CatalogTupleUpdate(i32* %89, i32* %91, %struct.TYPE_7__* %92)
  %94 = call i32 (...) @DistNodeRelationId()
  %95 = call i32 @CitusInvalidateRelcacheByRelid(i32 %94)
  %96 = call i32 (...) @CommandCounterIncrement()
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @systable_endscan(i32* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @NoLock, align 4
  %101 = call i32 @heap_close(i32* %99, i32 %100)
  %102 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistNodeRelationId(...) #2

declare dso_local i32* @RelationGetDescr(i32*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @DistNodeNodeIdIndexId(...) #2

declare dso_local %struct.TYPE_7__* @systable_getnext(i32*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local %struct.TYPE_7__* @heap_modify_tuple(%struct.TYPE_7__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32*, i32*, %struct.TYPE_7__*) #2

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
