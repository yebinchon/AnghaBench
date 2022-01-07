; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_RemoteFinalizedShardPlacementList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_RemoteFinalizedShardPlacementList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@FINALIZED_SHARD_PLACEMENTS_QUERY = common dso_local global i32 0, align 4
@masterConnection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"could not get shard placements from the master node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @RemoteFinalizedShardPlacementList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RemoteFinalizedShardPlacementList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %16 = call %struct.TYPE_6__* (...) @makeStringInfo()
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @FINALIZED_SHARD_PLACEMENTS_QUERY, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @appendStringInfo(%struct.TYPE_6__* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @masterConnection, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SendRemoteCommand(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @masterConnection, align 4
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @ReportConnectionError(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* @masterConnection, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32* @GetRemoteCommandResult(i32 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @PQresultStatus(i32* %35)
  %37 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @PQntuples(i32* %40)
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %78, %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @PQgetvalue(i32* %47, i32 %48, i32 0)
  store i8* %49, i8** %9, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @PQgetvalue(i32* %50, i32 %51, i32 1)
  %53 = call i8* @pstrdup(i8* %52)
  store i8* %53, i8** %10, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @PQgetvalue(i32* %54, i32 %55, i32 2)
  %57 = call i8* @pstrdup(i8* %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @atoll(i8* %60)
  store i32 %61, i32* %13, align 4
  %62 = call i64 @palloc0(i32 24)
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %14, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = call i32* @lappend(i32* %75, %struct.TYPE_7__* %76)
  store i32* %77, i32** %3, align 8
  br label %78

78:                                               ; preds = %46
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %42

81:                                               ; preds = %42
  br label %86

82:                                               ; preds = %31
  %83 = load i32, i32* @ERROR, align 4
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 @ereport(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @PQclear(i32* %87)
  %89 = load i32, i32* @masterConnection, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32* @GetRemoteCommandResult(i32 %89, i32 %90)
  store i32* %91, i32** %4, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32*, i32** %3, align 8
  ret i32* %97
}

declare dso_local %struct.TYPE_6__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SendRemoteCommand(i32, i32) #1

declare dso_local i32 @ReportConnectionError(i32, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
