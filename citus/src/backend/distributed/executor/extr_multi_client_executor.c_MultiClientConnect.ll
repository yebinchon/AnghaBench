; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientConnect.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CONNECTION_OK = common dso_local global i64 0, align 8
@FORCE_NEW_CONNECTION = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"could not allocate connection in connection pool\00", align 1
@XactModificationLevel = common dso_local global i64 0, align 8
@XACT_MODIFICATION_NONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"cannot open new connections after the first modification command within a transaction\00", align 1
@ClientConnectionArray = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MultiClientConnect(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %14 = load i64, i64* @CONNECTION_OK, align 8
  store i64 %14, i64* %11, align 8
  %15 = call i64 (...) @AllocateConnectionId()
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @FORCE_NEW_CONNECTION, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @WARNING, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %21, i32 %22)
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %5, align 8
  br label %63

25:                                               ; preds = %4
  %26 = load i64, i64* @XactModificationLevel, align 8
  %27 = load i64, i64* @XACT_MODIFICATION_NONE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %13, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call %struct.TYPE_6__* @GetNodeUserDatabaseConnection(i32 %36, i8* %37, i32 %38, i8* %39, i8* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @PQstatus(i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @CONNECTION_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @ClientConnectionArray, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %52
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %53, align 8
  br label %61

54:                                               ; preds = %35
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load i32, i32* @WARNING, align 4
  %57 = call i32 @ReportConnectionError(%struct.TYPE_6__* %55, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = call i32 @CloseConnection(%struct.TYPE_6__* %58)
  %60 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %20
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @AllocateConnectionId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local %struct.TYPE_6__* @GetNodeUserDatabaseConnection(i32, i8*, i32, i8*, i8*) #1

declare dso_local i64 @PQstatus(i32) #1

declare dso_local i32 @ReportConnectionError(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CloseConnection(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
