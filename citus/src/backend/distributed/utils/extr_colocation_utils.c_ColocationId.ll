; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_ColocationId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_ColocationId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@INVALID_COLOCATION_ID = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_shardcount = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_replicationfactor = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_distributioncolumntype = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ColocationId(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @INVALID_COLOCATION_ID, align 4
  store i32 %15, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 3, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %16 = call i32 (...) @DistColocationRelationId()
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @heap_open(i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %20 = load i32, i32* @Anum_pg_dist_colocation_shardcount, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_INT4EQ, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @UInt32GetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %27 = load i32, i32* @Anum_pg_dist_colocation_replicationfactor, align 4
  %28 = load i32, i32* @BTEqualStrategyNumber, align 4
  %29 = load i32, i32* @F_INT4EQ, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @Int32GetDatum(i32 %30)
  %32 = call i32 @ScanKeyInit(i32* %26, i32 %27, i32 %28, i32 %29, i32 %31)
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %34 = load i32, i32* @Anum_pg_dist_colocation_distributioncolumntype, align 4
  %35 = load i32, i32* @BTEqualStrategyNumber, align 4
  %36 = load i32, i32* @F_OIDEQ, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %33, i32 %34, i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (...) @DistColocationConfigurationIndexId()
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %44 = call i32 @systable_beginscan(i32 %40, i32 %41, i32 %42, i32* null, i32 3, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @systable_getnext(i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @HeapTupleIsValid(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @GETSTRUCT(i32* %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %14, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %3
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @systable_endscan(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @AccessShareLock, align 4
  %63 = call i32 @heap_close(i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UInt32GetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistColocationConfigurationIndexId(...) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
