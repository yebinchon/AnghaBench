; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_CreateAppendDistributedShardPlacements.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_stage_protocol.c_CreateAppendDistributedShardPlacements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FOR_DDL = common dso_local global i32 0, align 4
@FILE_FINALIZED = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@CONNECTION_OK = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not connect to node \22%s:%u\22\00", align 1
@INVALID_PLACEMENT_ID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"could only create %u of %u of required shard replicas\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateAppendDistributedShardPlacements(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_6__*, align 8
  %27 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @list_length(i32* %29)
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @GetTableForeignConstraintCommands(i32 %31)
  store i32* %32, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32* @GetTableDDLEvents(i32 %33, i32 %34)
  store i32* %35, i32** %15, align 8
  %36 = load i32, i32* @FOR_DDL, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @TableOwner(i32 %37)
  store i8* %38, i8** %17, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %108, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %111

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %18, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i64 @list_nth(i32* %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %19, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %20, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %21, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  %67 = load i32, i32* @FILE_FINALIZED, align 4
  store i32 %67, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i8*, i8** %21, align 8
  %70 = load i32, i32* %22, align 4
  %71 = load i8*, i8** %17, align 8
  %72 = call %struct.TYPE_6__* @GetNodeUserDatabaseConnection(i32 %68, i8* %69, i32 %70, i8* %71, i32* null)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %26, align 8
  %73 = load i32*, i32** @NIL, align 8
  store i32* %73, i32** %27, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @PQstatus(i32 %76)
  %78 = load i64, i64* @CONNECTION_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %50
  %81 = load i32, i32* @WARNING, align 4
  %82 = load i8*, i8** %21, align 8
  %83 = load i32, i32* %22, align 4
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %82, i32 %83)
  %85 = call i32 @ereport(i32 %81, i32 %84)
  br label %108

86:                                               ; preds = %50
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32* @WorkerCreateShardCommandList(i32 %87, i32 %88, i32 %89, i32* %90, i32* %91)
  store i32* %92, i32** %27, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %94 = load i32*, i32** %27, align 8
  %95 = call i32 @ExecuteCriticalRemoteCommandList(%struct.TYPE_6__* %93, i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @INVALID_PLACEMENT_ID, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @InsertShardPlacementRow(i32 %96, i32 %97, i32 %98, i32 0, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  br label %111

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %46

111:                                              ; preds = %106, %46
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 @ereport(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %115, %111
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @GetTableForeignConstraintCommands(i32) #1

declare dso_local i32* @GetTableDDLEvents(i32, i32) #1

declare dso_local i8* @TableOwner(i32) #1

declare dso_local i64 @list_nth(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @GetNodeUserDatabaseConnection(i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @WorkerCreateShardCommandList(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ExecuteCriticalRemoteCommandList(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @InsertShardPlacementRow(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
