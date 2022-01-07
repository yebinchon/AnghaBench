; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_DistNodeMetadata.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_DistNodeMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"pg_dist_node_metadata\00", align 1
@PG_CATALOG_NAMESPACE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pg_dist_node_metadata was not found\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_node_metadata_metadata = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"could not find any entries in pg_dist_metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DistNodeMetadata() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  store i64 %10, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* @PG_CATALOG_NAMESPACE, align 4
  %12 = call i64 @get_relname_relid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @InvalidOid, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @AccessShareLock, align 4
  %23 = call i32* @heap_open(i64 %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @InvalidOid, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %27 = call i32* @systable_beginscan(i32* %24, i64 %25, i32 0, i32* null, i32 0, i32* %26)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @RelationGetDescr(i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @systable_getnext(i32* %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @HeapTupleIsValid(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @Anum_pg_dist_node_metadata_metadata, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @heap_getattr(i32* %36, i32 %37, i32* %38, i32* %9)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  br label %49

45:                                               ; preds = %20
  %46 = load i32, i32* @ERROR, align 4
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %35
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @systable_endscan(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @AccessShareLock, align 4
  %54 = call i32 @heap_close(i32* %52, i32 %53)
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @get_relname_relid(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @heap_open(i64, i32) #1

declare dso_local i32* @systable_beginscan(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
