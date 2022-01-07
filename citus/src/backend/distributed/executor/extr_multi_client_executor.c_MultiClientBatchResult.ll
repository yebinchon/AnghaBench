; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientBatchResult.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientBatchResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CONNECTION_OK = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@CLIENT_INVALID_BATCH_QUERY = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@ClientConnectionArray = common dso_local global %struct.TYPE_5__** null, align 8
@CONNECTION_BAD = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not maintain connection to worker node\00", align 1
@CLIENT_BATCH_QUERY_FAILED = common dso_local global i32 0, align 4
@CLIENT_BATCH_QUERY_DONE = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@CLIENT_BATCH_QUERY_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiClientBatchResult(i64 %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i64, i64* @CONNECTION_OK, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* @PGRES_COMMAND_OK, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* @CLIENT_INVALID_BATCH_QUERY, align 4
  store i32 %18, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ClientConnectionArray, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i8**, i8*** %7, align 8
  store i8* null, i8** %32, align 8
  %33 = load i32*, i32** %8, align 8
  store i32 -1, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 -1, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @PQstatus(i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @CONNECTION_BAD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32, i32* @WARNING, align 4
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %43, i32 %44)
  %46 = load i32, i32* @CLIENT_BATCH_QUERY_FAILED, align 4
  store i32 %46, i32* %5, align 4
  br label %94

47:                                               ; preds = %4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32* @GetRemoteCommandResult(%struct.TYPE_5__* %48, i32 %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @CLIENT_BATCH_QUERY_DONE, align 4
  store i32 %54, i32* %5, align 4
  br label %94

55:                                               ; preds = %47
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @PQresultStatus(i32* %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32*, i32** %11, align 8
  %63 = bitcast i32* %62 to i8**
  %64 = bitcast i8** %63 to i8*
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @PQntuples(i32* %66)
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @PQnfields(i32* %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @CLIENT_BATCH_QUERY_CONTINUE, align 4
  store i32 %72, i32* %14, align 4
  br label %92

73:                                               ; preds = %55
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = bitcast i32* %78 to i8**
  %80 = bitcast i8** %79 to i8*
  %81 = load i8**, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @CLIENT_BATCH_QUERY_CONTINUE, align 4
  store i32 %82, i32* %14, align 4
  br label %91

83:                                               ; preds = %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @WARNING, align 4
  %87 = call i32 @ReportResultError(%struct.TYPE_5__* %84, i32* %85, i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @PQclear(i32* %88)
  %90 = load i32, i32* @CLIENT_BATCH_QUERY_FAILED, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %83, %77
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %53, %42
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @GetRemoteCommandResult(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @ReportResultError(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
