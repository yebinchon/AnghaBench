; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_GetTableForeignConstraintCommands.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_GetTableForeignConstraintCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i8* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetTableForeignConstraintCommands(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i8*, i8** @NIL, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %16 = load i32, i32* @CurrentMemoryContext, align 4
  %17 = call %struct.TYPE_7__* @GetOverrideSearchPath(i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load i8*, i8** @NIL, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = call i32 @PushOverrideSearchPath(%struct.TYPE_7__* %23)
  %25 = load i32, i32* @ConstraintRelationId, align 4
  %26 = load i32, i32* @AccessShareLock, align 4
  %27 = call i32* @heap_open(i32 %25, i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %29 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_OIDEQ, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %38 = call i32* @systable_beginscan(i32* %34, i32 %35, i32 1, i32* null, i32 %36, i32* %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @systable_getnext(i32* %39)
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %74, %1
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @HeapTupleIsValid(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @GETSTRUCT(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %10, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OidIsValid(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @get_relation_constraint_oid(i32 %63, i32 %67, i32 1)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i8* @pg_get_constraintdef_command(i32 %69)
  store i8* %70, i8** %13, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32* @lappend(i32* %71, i8* %72)
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %62, %56, %45
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @systable_getnext(i32* %75)
  store i32* %76, i32** %8, align 8
  br label %41

77:                                               ; preds = %41
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @systable_endscan(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @AccessShareLock, align 4
  %82 = call i32 @heap_close(i32* %80, i32 %81)
  %83 = call i32 (...) @PopOverrideSearchPath()
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local %struct.TYPE_7__* @GetOverrideSearchPath(i32) #1

declare dso_local i32 @PushOverrideSearchPath(%struct.TYPE_7__*) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_relation_constraint_oid(i32, i32, i32) #1

declare dso_local i8* @pg_get_constraintdef_command(i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i32 @PopOverrideSearchPath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
