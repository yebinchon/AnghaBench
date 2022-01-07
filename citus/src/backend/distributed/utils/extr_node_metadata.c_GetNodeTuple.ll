; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_GetNodeTuple.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_GetNodeTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodename = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeport = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @GetNodeTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetNodeTuple(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @DistNodeRelationId()
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_TEXTEQ, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @CStringGetTextDatum(i8* %19)
  %21 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %23 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_INT4EQ, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @Int32GetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @InvalidOid, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = call i32* @systable_beginscan(i32 %29, i32 %30, i32 0, i32* null, i32 2, i32* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @systable_getnext(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @HeapTupleIsValid(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @heap_copytuple(i32* %39)
  store i32* %40, i32** %11, align 8
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @systable_endscan(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NoLock, align 4
  %46 = call i32 @heap_close(i32 %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  ret i32* %47
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32* @heap_copytuple(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
