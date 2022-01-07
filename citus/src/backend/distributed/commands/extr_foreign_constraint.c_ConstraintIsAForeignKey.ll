; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ConstraintIsAForeignKey.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ConstraintIsAForeignKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_contype = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConstraintIsAForeignKey(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* @ConstraintRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32* @heap_open(i32 %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_constraint_contype, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_CHAREQ, align 4
  %20 = load i32, i32* @CONSTRAINT_FOREIGN, align 4
  %21 = call i32 @CharGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @InvalidOid, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %27 = call i32* @systable_beginscan(i32* %23, i32 %24, i32 0, i32* null, i32 %25, i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @systable_getnext(i32* %28)
  store i32* %29, i32** %10, align 8
  br label %30

30:                                               ; preds = %60, %2
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @HeapTupleIsValid(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @GETSTRUCT(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @NAMEDATALEN, align 4
  %46 = call i64 @strncmp(i8* %43, i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @systable_endscan(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @AccessShareLock, align 4
  %59 = call i32 @heap_close(i32* %57, i32 %58)
  store i32 1, i32* %3, align 4
  br label %69

60:                                               ; preds = %48, %34
  %61 = load i32*, i32** %7, align 8
  %62 = call i32* @systable_getnext(i32* %61)
  store i32* %62, i32** %10, align 8
  br label %30

63:                                               ; preds = %30
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @systable_endscan(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @AccessShareLock, align 4
  %68 = call i32 @heap_close(i32* %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
