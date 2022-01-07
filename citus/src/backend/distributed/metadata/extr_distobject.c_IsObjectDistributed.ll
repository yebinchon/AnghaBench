; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_IsObjectDistributed.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_IsObjectDistributed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_object_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_dist_object_objid = common dso_local global i32 0, align 4
@Anum_pg_dist_object_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsObjectDistributed(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @DistObjectRelationId()
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32* @heap_open(i32 %8, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %12 = load i32, i32* @Anum_pg_dist_object_classid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %18)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %21 = load i32, i32* @Anum_pg_dist_object_objid, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_OIDEQ, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %27)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %30 = load i32, i32* @Anum_pg_dist_object_objsubid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_INT4EQ, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @Int32GetDatum(i32 %35)
  %37 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (...) @DistObjectPrimaryKeyIndexId()
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %41 = call i32* @systable_beginscan(i32* %38, i32 %39, i32 1, i32* null, i32 3, i32* %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @systable_getnext(i32* %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @HeapTupleIsValid(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @systable_endscan(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @AccessShareLock, align 4
  %53 = call i32 @relation_close(i32* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistObjectRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistObjectPrimaryKeyIndexId(...) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @relation_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
