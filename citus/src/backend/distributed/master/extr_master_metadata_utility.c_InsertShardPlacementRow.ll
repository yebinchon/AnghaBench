; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_InsertShardPlacementRow.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_InsertShardPlacementRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_dist_placement = common dso_local global i32 0, align 4
@INVALID_PLACEMENT_ID = common dso_local global i64 0, align 8
@Anum_pg_dist_placement_placementid = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_shardid = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_shardstate = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_shardlength = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_groupid = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InsertShardPlacementRow(i64 %0, i64 %1, i8 signext %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @Natts_pg_dist_placement, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @Natts_pg_dist_placement, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %24 = mul nuw i64 4, %18
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %20, i32 0, i32 %25)
  %27 = mul nuw i64 4, %22
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %23, i32 0, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @INVALID_PLACEMENT_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = call i64 @master_get_new_placementid(i32* null)
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %5
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @Int64GetDatum(i64 %36)
  %38 = load i32, i32* @Anum_pg_dist_placement_placementid, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %20, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @Int64GetDatum(i64 %42)
  %44 = load i32, i32* @Anum_pg_dist_placement_shardid, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %20, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i8, i8* %8, align 1
  %49 = call i32 @CharGetDatum(i8 signext %48)
  %50 = load i32, i32* @Anum_pg_dist_placement_shardstate, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %20, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @Int64GetDatum(i64 %54)
  %56 = load i32, i32* @Anum_pg_dist_placement_shardlength, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %20, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @Int32GetDatum(i32 %60)
  %62 = load i32, i32* @Anum_pg_dist_placement_groupid, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %20, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = call i32 (...) @DistPlacementRelationId()
  %67 = load i32, i32* @RowExclusiveLock, align 4
  %68 = call i32* @heap_open(i32 %66, i32 %67)
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @RelationGetDescr(i32* %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @heap_form_tuple(i32* %71, i32* %20, i32* %23)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @CatalogTupleInsert(i32* %73, i32* %74)
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @CitusInvalidateRelcacheByShardId(i64 %76)
  %78 = call i32 (...) @CommandCounterIncrement()
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @NoLock, align 4
  %81 = call i32 @heap_close(i32* %79, i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %83)
  ret i64 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @master_get_new_placementid(i32*) #2

declare dso_local i32 @Int64GetDatum(i64) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistPlacementRelationId(...) #2

declare dso_local i32* @RelationGetDescr(i32*) #2

declare dso_local i32* @heap_form_tuple(i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32*, i32*) #2

declare dso_local i32 @CitusInvalidateRelcacheByShardId(i64) #2

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
