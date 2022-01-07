; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_foreign_key_relationship.c_CreateForeignConstraintRelationshipGraph.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_foreign_key_relationship.c_CreateForeignConstraintRelationshipGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Forign Constraint Relationship Graph Context\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@fConstraintRelationshipGraph = common dso_local global %struct.TYPE_7__* null, align 8
@oid_hash = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"foreign key relationship map (oid)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CreateForeignConstraintRelationshipGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateForeignConstraintRelationshipGraph() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i64 (...) @IsForeignConstraintRelationshipGraphValid()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %42

8:                                                ; preds = %0
  %9 = call i32 (...) @ClearForeignConstraintRelationshipGraphContext()
  %10 = load i32, i32* @CacheMemoryContext, align 4
  %11 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %12 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %13 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %14 = call i32* @AllocSetContextCreateExtended(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @MemoryContextSwitchTo(i32* %15)
  store i32* %16, i32** %1, align 8
  %17 = call i64 @palloc(i32 8)
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** @fConstraintRelationshipGraph, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fConstraintRelationshipGraph, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 16)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 4, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* @oid_hash, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @CurrentMemoryContext, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @HASH_ELEM, align 4
  %29 = load i32, i32* @HASH_FUNCTION, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HASH_CONTEXT, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @hash_create(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 32, %struct.TYPE_6__* %3, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fConstraintRelationshipGraph, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = call i32 (...) @PopulateAdjacencyLists()
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fConstraintRelationshipGraph, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = call i32* @MemoryContextSwitchTo(i32* %40)
  br label %42

42:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @IsForeignConstraintRelationshipGraphValid(...) #1

declare dso_local i32 @ClearForeignConstraintRelationshipGraphContext(...) #1

declare dso_local i32* @AllocSetContextCreateExtended(i32, i8*, i32, i32, i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @PopulateAdjacencyLists(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
