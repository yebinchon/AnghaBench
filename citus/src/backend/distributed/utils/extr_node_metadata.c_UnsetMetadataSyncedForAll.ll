; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_UnsetMetadataSyncedForAll.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_UnsetMetadataSyncedForAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@ExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_node_hasmetadata = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_BOOLEQ = common dso_local global i32 0, align 4
@Anum_pg_dist_node_metadatasynced = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Natts_pg_dist_node = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @UnsetMetadataSyncedForAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UnsetMetadataSyncedForAll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = call i32 (...) @DistNodeRelationId()
  %16 = load i32, i32* @ExclusiveLock, align 4
  %17 = call i32* @heap_open(i32 %15, i32 %16)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @RelationGetDescr(i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* @Anum_pg_dist_node_hasmetadata, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_BOOLEQ, align 4
  %24 = call i32 @BoolGetDatum(i32 1)
  %25 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %27 = load i32, i32* @Anum_pg_dist_node_metadatasynced, align 4
  %28 = load i32, i32* @BTEqualStrategyNumber, align 4
  %29 = load i32, i32* @F_BOOLEQ, align 4
  %30 = call i32 @BoolGetDatum(i32 1)
  %31 = call i32 @ScanKeyInit(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @CatalogOpenIndexes(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @InvalidOid, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %39 = call i32* @systable_beginscan(i32* %34, i32 %35, i32 %36, i32* null, i32 %37, i32* %38)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call %struct.TYPE_8__* @systable_getnext(i32* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = call i64 @HeapTupleIsValid(%struct.TYPE_8__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %0
  br label %47

47:                                               ; preds = %51, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = call i64 @HeapTupleIsValid(%struct.TYPE_8__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %52 = load i32, i32* @Natts_pg_dist_node, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %11, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %12, align 8
  %56 = load i32, i32* @Natts_pg_dist_node, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %13, align 8
  %59 = load i32, i32* @Natts_pg_dist_node, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %14, align 8
  %62 = mul nuw i64 4, %60
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %61, i32 0, i32 %63)
  %65 = mul nuw i64 4, %57
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %58, i32 0, i32 %66)
  %68 = mul nuw i64 4, %53
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i32* %55, i32 0, i32 %69)
  %71 = call i32 @BoolGetDatum(i32 0)
  %72 = load i32, i32* @Anum_pg_dist_node_metadatasynced, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %55, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @Anum_pg_dist_node_metadatasynced, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %61, i64 %78
  store i32 1, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call %struct.TYPE_8__* @heap_modify_tuple(%struct.TYPE_8__* %80, i32* %81, i32* %55, i32* %58, i32* %61)
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %10, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @CatalogTupleUpdateWithInfo(i32* %83, i32* %85, %struct.TYPE_8__* %86, i32 %87)
  %89 = call i32 (...) @CommandCounterIncrement()
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = call i32 @heap_freetuple(%struct.TYPE_8__* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call %struct.TYPE_8__* @systable_getnext(i32* %92)
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %7, align 8
  %94 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %47

95:                                               ; preds = %47
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @systable_endscan(i32* %96)
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @CatalogCloseIndexes(i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @NoLock, align 4
  %102 = call i32 @heap_close(i32* %100, i32 %101)
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32 @CatalogOpenIndexes(i32*) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @heap_modify_tuple(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleUpdateWithInfo(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @CatalogCloseIndexes(i32) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
