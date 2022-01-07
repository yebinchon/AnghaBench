; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_AggregateFunctionOid.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_AggregateFunctionOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@InvalidOid = common dso_local global i64 0, align 8
@ProcedureRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_proc_proname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ProcedureNameArgsNspIndexId = common dso_local global i32 0, align 4
@ANYELEMENTOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no matching oid for function: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @AggregateFunctionOid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AggregateFunctionOid(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* @InvalidOid, align 8
  store i64 %13, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %14 = load i32, i32* @ProcedureRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32* @heap_open(i32 %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_proc_proname, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_NAMEEQ, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @CStringGetDatum(i8* %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @ProcedureNameArgsNspIndexId, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %28 = call i32* @systable_beginscan(i32* %24, i32 %25, i32 1, i32* null, i32 %26, i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @systable_getnext(i32* %29)
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %67, %2
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @HeapTupleIsValid(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @GETSTRUCT(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %11, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ANYELEMENTOID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54, %45
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @HeapTupleGetOid(i32* %64)
  store i64 %65, i64* %5, align 8
  br label %74

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i32, i32* %12, align 4
  %69 = icmp sle i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @Assert(i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @systable_getnext(i32* %72)
  store i32* %73, i32** %10, align 8
  br label %31

74:                                               ; preds = %63, %31
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @InvalidOid, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = call i32 @ereport(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @systable_endscan(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @AccessShareLock, align 4
  %88 = call i32 @heap_close(i32* %86, i32 %87)
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @HeapTupleGetOid(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
