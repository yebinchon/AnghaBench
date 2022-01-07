; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_lock_graph.c_AddEdgesForWaitQueue.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_lock_graph.c_AddEdgesForWaitQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i32*)* @AddEdgesForWaitQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddEdgesForWaitQueue(i32* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = call %struct.TYPE_19__* @GetLocksMethodTable(%struct.TYPE_20__* %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %8, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %12, align 8
  br label %37

37:                                               ; preds = %71, %3
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %11, align 4
  %40 = icmp sgt i32 %38, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = icmp ne %struct.TYPE_18__* %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %77

47:                                               ; preds = %45
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @LOCKBIT_ON(i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = call i32 @IsSameLockGroup(%struct.TYPE_18__* %52, %struct.TYPE_18__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @IsConflictingLockMask(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %63 = call i32 @IsProcessWaitingForSafeOperations(%struct.TYPE_18__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @AddWaitEdge(i32* %66, %struct.TYPE_18__* %67, %struct.TYPE_18__* %68, i32* %69)
  br label %71

71:                                               ; preds = %65, %61, %56, %47
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %12, align 8
  br label %37

77:                                               ; preds = %45
  ret void
}

declare dso_local %struct.TYPE_19__* @GetLocksMethodTable(%struct.TYPE_20__*) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

declare dso_local i32 @IsSameLockGroup(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @IsConflictingLockMask(i32, i32) #1

declare dso_local i32 @IsProcessWaitingForSafeOperations(%struct.TYPE_18__*) #1

declare dso_local i32 @AddWaitEdge(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
