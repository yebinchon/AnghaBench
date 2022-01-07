; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_GetLocalGroupId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_GetLocalGroupId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@LocalGroupId = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pg_dist_local_group\00", align 1
@PG_CATALOG_NAMESPACE = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_local_groupid = common dso_local global i32 0, align 4
@GROUP_ID_UPGRADING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetLocalGroupId() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load i64, i64* @InvalidOid, align 8
  store i64 %12, i64* %9, align 8
  %13 = call i32 (...) @InitializeCaches()
  %14 = load i32, i32* @LocalGroupId, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @LocalGroupId, align 4
  store i32 %17, i32* %1, align 4
  br label %58

18:                                               ; preds = %0
  %19 = load i32, i32* @PG_CATALOG_NAMESPACE, align 4
  %20 = call i64 @get_relname_relid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @InvalidOid, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %58

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32* @heap_open(i64 %26, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* @InvalidOid, align 8
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %33 = call i32* @systable_beginscan(i32* %29, i64 %30, i32 0, i32* null, i32 %31, i32* %32)
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @RelationGetDescr(i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i32* @systable_getnext(i32* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @HeapTupleIsValid(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @Anum_pg_dist_local_groupid, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @heap_getattr(i32* %42, i32 %43, i32* %44, i32* %10)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @DatumGetInt32(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* @LocalGroupId, align 4
  br label %51

49:                                               ; preds = %25
  %50 = load i32, i32* @GROUP_ID_UPGRADING, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @systable_endscan(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @AccessShareLock, align 4
  %56 = call i32 @heap_close(i32* %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %51, %24, %16
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @InitializeCaches(...) #1

declare dso_local i64 @get_relname_relid(i8*, i32) #1

declare dso_local i32* @heap_open(i64, i32) #1

declare dso_local i32* @systable_beginscan(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32*, i32*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
