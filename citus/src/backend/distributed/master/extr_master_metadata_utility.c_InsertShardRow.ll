; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_InsertShardRow.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_InsertShardRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_dist_shard = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_logicalrelid = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_shardid = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_shardstorage = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_shardalias_DROPPED = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_shardminvalue = common dso_local global i32 0, align 4
@Anum_pg_dist_shard_shardmaxvalue = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertShardRow(i32 %0, i32 %1, i8 signext %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @Natts_pg_dist_shard, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @Natts_pg_dist_shard, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %24 = mul nuw i64 4, %18
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %20, i32 0, i32 %25)
  %27 = mul nuw i64 4, %22
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %23, i32 0, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = load i32, i32* @Anum_pg_dist_shard_logicalrelid, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %20, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @Int64GetDatum(i32 %36)
  %38 = load i32, i32* @Anum_pg_dist_shard_shardid, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %20, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i8, i8* %8, align 1
  %43 = call i32 @CharGetDatum(i8 signext %42)
  %44 = load i32, i32* @Anum_pg_dist_shard_shardstorage, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %20, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @Anum_pg_dist_shard_shardalias_DROPPED, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %23, i64 %50
  store i32 1, i32* %51, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %5
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @PointerGetDatum(i32* %58)
  %60 = load i32, i32* @Anum_pg_dist_shard_shardminvalue, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %20, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @PointerGetDatum(i32* %64)
  %66 = load i32, i32* @Anum_pg_dist_shard_shardmaxvalue, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  store i32 %65, i32* %69, align 4
  br label %79

70:                                               ; preds = %54, %5
  %71 = load i32, i32* @Anum_pg_dist_shard_shardminvalue, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %23, i64 %73
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @Anum_pg_dist_shard_shardmaxvalue, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %23, i64 %77
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %57
  %80 = call i32 (...) @DistShardRelationId()
  %81 = load i32, i32* @RowExclusiveLock, align 4
  %82 = call i32* @heap_open(i32 %80, i32 %81)
  store i32* %82, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @RelationGetDescr(i32* %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32* @heap_form_tuple(i32* %85, i32* %20, i32* %23)
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @CatalogTupleInsert(i32* %87, i32* %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @CitusInvalidateRelcacheByRelid(i32 %90)
  %92 = call i32 (...) @CommandCounterIncrement()
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @NoLock, align 4
  %95 = call i32 @heap_close(i32* %93, i32 %94)
  %96 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int64GetDatum(i32) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32 @DistShardRelationId(...) #2

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
