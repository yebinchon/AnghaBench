; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_IsParentTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_IsParentTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsParentIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsParentTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @InheritsRelationId, align 4
  %8 = load i32, i32* @AccessShareLock, align 4
  %9 = call i32* @heap_open(i32 %7, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %10, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @InheritsParentIndexId, align 4
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %20 = call i32* @systable_beginscan(i32* %17, i32 %18, i32 1, i32* null, i32 1, i32* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @systable_getnext(i32* %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @systable_endscan(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @AccessShareLock, align 4
  %30 = call i32 @heap_close(i32* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @PartitionedTable(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %33, %25
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i64 @PartitionedTable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
