; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_CreateColocationGroup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_CreateColocationGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_dist_colocation = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_colocationid = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_shardcount = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_replicationfactor = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_distributioncolumntype = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateColocationGroup(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i32 (...) @GetNextColocationId()
  store i32 %14, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32, i32* @Natts_pg_dist_colocation, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @Natts_pg_dist_colocation, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = mul nuw i64 4, %16
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %18, i32 0, i32 %23)
  %25 = mul nuw i64 4, %20
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %21, i32 0, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @UInt32GetDatum(i32 %28)
  %30 = load i32, i32* @Anum_pg_dist_colocation_colocationid, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %18, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @UInt32GetDatum(i32 %34)
  %36 = load i32, i32* @Anum_pg_dist_colocation_shardcount, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %18, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @UInt32GetDatum(i32 %40)
  %42 = load i32, i32* @Anum_pg_dist_colocation_replicationfactor, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %18, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ObjectIdGetDatum(i32 %46)
  %48 = load i32, i32* @Anum_pg_dist_colocation_distributioncolumntype, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %18, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = call i32 (...) @DistColocationRelationId()
  %53 = load i32, i32* @RowExclusiveLock, align 4
  %54 = call i32* @heap_open(i32 %52, i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @RelationGetDescr(i32* %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @heap_form_tuple(i32* %57, i32* %18, i32* %21)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @CatalogTupleInsert(i32* %59, i32* %60)
  %62 = call i32 (...) @CommandCounterIncrement()
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @RowExclusiveLock, align 4
  %65 = call i32 @heap_close(i32* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

declare dso_local i32 @GetNextColocationId(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UInt32GetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32* @heap_form_tuple(i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleInsert(i32*, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @heap_close(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
