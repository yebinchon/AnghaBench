; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_IsChildTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_IsChildTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsChildTable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @InheritsRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32* @heap_open(i32 %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @ObjectIdGetDatum(i64 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @InvalidOid, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %22 = call i32* @systable_beginscan(i32* %19, i32 %20, i32 0, i32* null, i32 1, i32* %21)
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %37, %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @systable_getnext(i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @GETSTRUCT(i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %38

37:                                               ; preds = %27
  br label %23

38:                                               ; preds = %36, %23
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @systable_endscan(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @AccessShareLock, align 4
  %43 = call i32 @heap_close(i32* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i64, i64* %2, align 8
  %48 = call i64 @PartitionTable(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %46, %38
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i64 @PartitionTable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
