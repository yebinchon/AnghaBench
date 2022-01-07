; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_InsertNodeRow.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_InsertNodeRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@Natts_pg_dist_node = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeid = common dso_local global i32 0, align 4
@Anum_pg_dist_node_groupid = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodename = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeport = common dso_local global i32 0, align 4
@Anum_pg_dist_node_noderack = common dso_local global i32 0, align 4
@Anum_pg_dist_node_hasmetadata = common dso_local global i32 0, align 4
@Anum_pg_dist_node_metadatasynced = common dso_local global i32 0, align 4
@Anum_pg_dist_node_isactive = common dso_local global i32 0, align 4
@Anum_pg_dist_node_noderole = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodecluster = common dso_local global i32 0, align 4
@Anum_pg_dist_node_shouldhaveshards = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.TYPE_3__*)* @InsertNodeRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InsertNodeRow(i32 %0, i8* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @Natts_pg_dist_node, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @Natts_pg_dist_node, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CStringGetDatum(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @namein, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @DirectFunctionCall1(i32 %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = mul nuw i64 4, %18
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %20, i32 0, i32 %32)
  %34 = mul nuw i64 4, %22
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %23, i32 0, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @UInt32GetDatum(i32 %37)
  %39 = load i32, i32* @Anum_pg_dist_node_nodeid, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %20, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Int32GetDatum(i32 %45)
  %47 = load i32, i32* @Anum_pg_dist_node_groupid, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %20, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @CStringGetTextDatum(i8* %51)
  %53 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %20, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @UInt32GetDatum(i32 %57)
  %59 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %20, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @CStringGetTextDatum(i8* %65)
  %67 = load i32, i32* @Anum_pg_dist_node_noderack, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %20, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @BoolGetDatum(i32 %73)
  %75 = load i32, i32* @Anum_pg_dist_node_hasmetadata, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %20, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @BoolGetDatum(i32 %81)
  %83 = load i32, i32* @Anum_pg_dist_node_metadatasynced, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %20, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @BoolGetDatum(i32 %89)
  %91 = load i32, i32* @Anum_pg_dist_node_isactive, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %20, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ObjectIdGetDatum(i32 %97)
  %99 = load i32, i32* @Anum_pg_dist_node_noderole, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %20, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @Anum_pg_dist_node_nodecluster, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %20, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @BoolGetDatum(i32 %110)
  %112 = load i32, i32* @Anum_pg_dist_node_shouldhaveshards, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %20, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = call i32 (...) @DistNodeRelationId()
  %117 = load i32, i32* @RowExclusiveLock, align 4
  %118 = call i32* @heap_open(i32 %116, i32 %117)
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32* @RelationGetDescr(i32* %119)
  store i32* %120, i32** %10, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32* @heap_form_tuple(i32* %121, i32* %20, i32* %23)
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @CatalogTupleInsert(i32* %123, i32* %124)
  %126 = call i32 (...) @DistNodeRelationId()
  %127 = call i32 @CitusInvalidateRelcacheByRelid(i32 %126)
  %128 = call i32 (...) @CommandCounterIncrement()
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* @NoLock, align 4
  %131 = call i32 @heap_close(i32* %129, i32 %130)
  %132 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UInt32GetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistNodeRelationId(...) #2

declare dso_local i32* @RelationGetDescr(i32*) #2

declare dso_local i32* @heap_form_tuple(i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32*, i32*) #2

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

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
