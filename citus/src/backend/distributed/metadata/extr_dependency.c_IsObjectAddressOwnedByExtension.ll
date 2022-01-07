; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_dependency.c_IsObjectAddressOwnedByExtension.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_dependency.c_IsObjectAddressOwnedByExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4
@DEPENDENCY_EXTENSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsObjectAddressOwnedByExtension(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DependRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32* @heap_open(i32 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_depend_classid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %24 = load i32, i32* @Anum_pg_depend_objid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @ScanKeyInit(i32* %23, i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @DependDependerIndexId, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = call i32* @systable_beginscan(i32* %32, i32 %33, i32 1, i32* null, i32 2, i32* %34)
  store i32* %35, i32** %7, align 8
  br label %36

36:                                               ; preds = %69, %2
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @systable_getnext(i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = call i64 @HeapTupleIsValid(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @GETSTRUCT(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %10, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DEPENDENCY_EXTENSION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = bitcast %struct.TYPE_6__* %55 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @ObjectAddressSubSet(i64 %66, i32 %58, i32 %61, i32 %64)
  br label %68

68:                                               ; preds = %54, %51
  br label %70

69:                                               ; preds = %41
  br label %36

70:                                               ; preds = %68, %36
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @systable_endscan(i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @AccessShareLock, align 4
  %75 = call i32 @heap_close(i32* %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ObjectAddressSubSet(i64, i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
