; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_placement_connection.c_FindOrCreatePlacementEntry.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_placement_connection.c_FindOrCreatePlacementEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@ConnectionPlacementHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8
@ColocatedPlacementsHash = common dso_local global i32 0, align 4
@TopTransactionContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_12__*)* @FindOrCreatePlacementEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @FindOrCreatePlacementEntry(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_14__, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ConnectionPlacementHash, align 4
  %16 = load i32, i32* @HASH_ENTER, align 4
  %17 = call i8* @hash_search(i32 %15, %struct.TYPE_14__* %3, i32 %16, i32* %5)
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35, %21
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @ColocatedPlacementsHash, align 4
  %55 = load i32, i32* @HASH_ENTER, align 4
  %56 = call i8* @hash_search(i32 %54, %struct.TYPE_14__* %6, i32 %55, i32* %5)
  %57 = bitcast i8* %56 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %41
  %61 = load i32, i32* @TopTransactionContext, align 4
  %62 = call i8* @MemoryContextAllocZero(i32 %61, i32 8)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %9, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %60, %41
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %88, align 8
  br label %96

89:                                               ; preds = %35
  %90 = load i32, i32* @TopTransactionContext, align 4
  %91 = call i8* @MemoryContextAllocZero(i32 %90, i32 8)
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_13__*
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  br label %96

96:                                               ; preds = %89, %80
  br label %97

97:                                               ; preds = %96, %1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = call i32 @AssociatePlacementWithShard(%struct.TYPE_15__* %98, %struct.TYPE_12__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %101
}

declare dso_local i8* @hash_search(i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i8* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @AssociatePlacementWithShard(%struct.TYPE_15__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
