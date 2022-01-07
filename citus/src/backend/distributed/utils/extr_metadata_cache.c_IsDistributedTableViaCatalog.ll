; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_IsDistributedTableViaCatalog.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_IsDistributedTableViaCatalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_partition_logicalrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IsDistributedTableViaCatalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsDistributedTableViaCatalog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %9 = call i32 (...) @DistPartitionRelationId()
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @heap_open(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_dist_partition_logicalrelid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (...) @DistPartitionLogicalRelidIndexId()
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %23 = call i32* @systable_beginscan(i32 %19, i32 %20, i32 %21, i32* null, i32 1, i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @systable_getnext(i32* %24)
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @systable_endscan(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AccessShareLock, align 4
  %30 = call i32 @heap_close(i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @HeapTupleIsValid(i32* %31)
  ret i32 %32
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistPartitionRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistPartitionLogicalRelidIndexId(...) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
