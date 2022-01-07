; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_PlanReindexStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_PlanReindexStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.ReindexIndexCallbackState = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i8*, i32, i8* }

@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i8* null, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@REINDEX_OBJECT_INDEX = common dso_local global i64 0, align 8
@REINDEX_OBJECT_TABLE = common dso_local global i64 0, align 8
@RangeVarCallbackForReindexIndex = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RangeVarCallbackOwnsTable = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanReindexStmt(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ReindexIndexCallbackState, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %130

20:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %21 = load i8*, i8** @InvalidOid, align 8
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* @AccessExclusiveLock, align 4
  store i32 %22, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REINDEX_OBJECT_INDEX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REINDEX_OBJECT_TABLE, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i1 [ true, %20 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REINDEX_OBJECT_INDEX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load i8*, i8** @InvalidOid, align 8
  %45 = getelementptr inbounds %struct.ReindexIndexCallbackState, %struct.ReindexIndexCallbackState* %12, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RangeVarCallbackForReindexIndex, align 4
  %51 = call i8* @RangeVarGetRelidExtended(%struct.TYPE_12__* %48, i32 %49, i32 0, i32 %50, %struct.ReindexIndexCallbackState* %12)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @NoLock, align 4
  %54 = call i32* @index_open(i8* %52, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @IndexGetRelation(i8* %55, i32 0)
  store i8* %56, i8** %7, align 8
  br label %71

57:                                               ; preds = %34
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @RangeVarCallbackOwnsTable, align 4
  %63 = call i8* @RangeVarGetRelidExtended(%struct.TYPE_12__* %60, i32 %61, i32 0, i32 %62, %struct.ReindexIndexCallbackState* null)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i32, i32* @NoLock, align 4
  %68 = call i32* @heap_openrv(%struct.TYPE_12__* %66, i32 %67)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @RelationGetRelid(i32* %69)
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %57, %43
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @IsDistributedTable(i8* %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @RelationGetNamespace(i32* %81)
  %83 = call i8* @get_namespace_name(i32 %82)
  store i8* %83, i8** %13, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32* @GetMemoryChunkContext(%struct.TYPE_12__* %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i32* @MemoryContextStrdup(i32* %88, i8* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32* %90, i32** %94, align 8
  br label %95

95:                                               ; preds = %80, %71
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @REINDEX_OBJECT_INDEX, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @NoLock, align 4
  %104 = call i32 @index_close(i32* %102, i32 %103)
  br label %109

105:                                              ; preds = %95
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @NoLock, align 4
  %108 = call i32 @heap_close(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = call %struct.TYPE_11__* @palloc0(i32 32)
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %14, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = call i32 @CreateReindexTaskList(i8* %122, %struct.TYPE_10__* %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = call i32* @list_make1(%struct.TYPE_11__* %127)
  store i32* %128, i32** %5, align 8
  br label %129

129:                                              ; preds = %112, %109
  br label %130

130:                                              ; preds = %129, %2
  %131 = load i32*, i32** %5, align 8
  ret i32* %131
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @RangeVarGetRelidExtended(%struct.TYPE_12__*, i32, i32, i32, %struct.ReindexIndexCallbackState*) #1

declare dso_local i32* @index_open(i8*, i32) #1

declare dso_local i8* @IndexGetRelation(i8*, i32) #1

declare dso_local i32* @heap_openrv(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @RelationGetRelid(i32*) #1

declare dso_local i32 @IsDistributedTable(i8*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @RelationGetNamespace(i32*) #1

declare dso_local i32* @GetMemoryChunkContext(%struct.TYPE_12__*) #1

declare dso_local i32* @MemoryContextStrdup(i32*, i8*) #1

declare dso_local i32 @index_close(i32*, i32) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @palloc0(i32) #1

declare dso_local i32 @CreateReindexTaskList(i8*, %struct.TYPE_10__*) #1

declare dso_local i32* @list_make1(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
