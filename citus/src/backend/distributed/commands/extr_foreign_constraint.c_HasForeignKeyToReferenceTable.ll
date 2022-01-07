; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_HasForeignKeyToReferenceTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_HasForeignKeyToReferenceTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HasForeignKeyToReferenceTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @ConstraintRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32* @heap_open(i32 %11, i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %24 = call i32* @systable_beginscan(i32* %20, i32 %21, i32 1, i32* null, i32 %22, i32* %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @systable_getnext(i32* %25)
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %59, %52, %42, %1
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @HeapTupleIsValid(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32, i32* @InvalidOid, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @GETSTRUCT(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %10, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @systable_getnext(i32* %43)
  store i32* %44, i32** %7, align 8
  br label %27

45:                                               ; preds = %31
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @IsDistributedTable(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %27

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @PartitionMethod(i32 %54)
  %56 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* @systable_getnext(i32* %60)
  store i32* %61, i32** %7, align 8
  br label %27

62:                                               ; preds = %58, %27
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @systable_endscan(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @NoLock, align 4
  %67 = call i32 @heap_close(i32* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i64 @PartitionMethod(i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
