; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_PlanIndexStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_PlanIndexStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i32, i64, i32 }

@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i32 0, align 4
@ShareLock = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PlanIndexStmt(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i32*, i32** @NIL, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %111

22:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %23 = load i32, i32* @InvalidOid, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* @ShareLock, align 4
  store i32 %24, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @heap_openrv(%struct.TYPE_12__* %34, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @RelationGetRelid(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @IsDistributedTable(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %31
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @RelationGetNamespace(i32* %48)
  %50 = call i8* @get_namespace_name(i32 %49)
  store i8* %50, i8** %11, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i32* @GetMemoryChunkContext(%struct.TYPE_12__* %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i8* @MemoryContextStrdup(i32* %55, i8* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  br label %62

62:                                               ; preds = %47, %31
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @NoLock, align 4
  %65 = call i32 @heap_close(i32* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %62
  %69 = load i32, i32* @InvalidOid, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* @InvalidOid, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %14, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = call i32 @ErrorIfUnsupportedIndexStmt(%struct.TYPE_10__* %79)
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @get_namespace_oid(i8* %81, i32 0)
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @get_relname_relid(i8* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @OidIsValid(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %68
  %90 = call %struct.TYPE_11__* @palloc0(i32 32)
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %16, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = call i32 @CreateIndexTaskList(i32 %102, %struct.TYPE_10__* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = call i32* @list_make1(%struct.TYPE_11__* %107)
  store i32* %108, i32** %5, align 8
  br label %109

109:                                              ; preds = %89, %68
  br label %110

110:                                              ; preds = %109, %62
  br label %111

111:                                              ; preds = %110, %2
  %112 = load i32*, i32** %5, align 8
  ret i32* %112
}

declare dso_local i32* @heap_openrv(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RelationGetRelid(i32*) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @RelationGetNamespace(i32*) #1

declare dso_local i32* @GetMemoryChunkContext(%struct.TYPE_12__*) #1

declare dso_local i8* @MemoryContextStrdup(i32*, i8*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i32 @ErrorIfUnsupportedIndexStmt(%struct.TYPE_10__*) #1

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i32 @get_relname_relid(i8*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_11__* @palloc0(i32) #1

declare dso_local i32 @CreateIndexTaskList(i32, %struct.TYPE_10__*) #1

declare dso_local i32* @list_make1(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
