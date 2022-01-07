; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ConstraintIsAForeignKeyToReferenceTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ConstraintIsAForeignKeyToReferenceTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_contype = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@NAMEDATALEN = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConstraintIsAForeignKeyToReferenceTable(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @ConstraintRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32* @heap_open(i32 %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_constraint_contype, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_CHAREQ, align 4
  %21 = load i32, i32* @CONSTRAINT_FOREIGN, align 4
  %22 = call i32 @CharGetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* @InvalidOid, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %28 = call i32* @systable_beginscan(i32* %24, i64 %25, i32 0, i32* null, i32 %26, i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @systable_getnext(i32* %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %71, %56, %2
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @HeapTupleIsValid(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i64, i64* @InvalidOid, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @GETSTRUCT(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %12, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* @NAMEDATALEN, align 4
  %48 = call i64 @strncmp(i8* %45, i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %35
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @systable_getnext(i32* %57)
  store i32* %58, i32** %9, align 8
  br label %31

59:                                               ; preds = %50
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @IsDistributedTable(i64 %63)
  %65 = call i32 @Assert(i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @PartitionMethod(i64 %66)
  %68 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %74

71:                                               ; preds = %59
  %72 = load i32*, i32** %6, align 8
  %73 = call i32* @systable_getnext(i32* %72)
  store i32* %73, i32** %9, align 8
  br label %31

74:                                               ; preds = %70, %31
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @systable_endscan(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @AccessShareLock, align 4
  %79 = call i32 @heap_close(i32* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsDistributedTable(i64) #1

declare dso_local i64 @PartitionMethod(i64) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
