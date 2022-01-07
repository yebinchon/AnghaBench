; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_ClusterHasDistributedFunctionWithDistArgument.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_ClusterHasDistributedFunctionWithDistArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i64 0, align 8
@Anum_pg_dist_object_distribution_argument_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClusterHasDistributedFunctionWithDistArgument() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = call i32 (...) @DistObjectRelationId()
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32 @heap_open(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @RelationGetDescr(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @InvalidOid, align 4
  %15 = call i32* @systable_beginscan(i32 %13, i32 %14, i32 0, i32* null, i32 0, i32* null)
  store i32* %15, i32** %2, align 8
  br label %16

16:                                               ; preds = %40, %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @systable_getnext(i32* %17)
  store i32* %18, i32** %3, align 8
  %19 = call i64 @HeapTupleIsValid(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @GETSTRUCT(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %6, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ProcedureRelationId, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @Anum_pg_dist_object_distribution_argument_index, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @heap_attisnull(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %21
  br label %16

41:                                               ; preds = %38, %16
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @systable_endscan(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AccessShareLock, align 4
  %46 = call i32 @relation_close(i32 %44, i32 %45)
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistObjectRelationId(...) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @heap_attisnull(i32*, i32, i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
