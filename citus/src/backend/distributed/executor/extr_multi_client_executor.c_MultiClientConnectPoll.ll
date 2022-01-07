; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientConnectPoll.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientConnectPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PGRES_POLLING_OK = common dso_local global i64 0, align 8
@CLIENT_INVALID_CONNECT = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@ClientConnectionArray = common dso_local global %struct.TYPE_5__** null, align 8
@ClientPollingStatusArray = common dso_local global i64* null, align 8
@CLIENT_CONNECTION_READY = common dso_local global i32 0, align 4
@PGRES_POLLING_READING = common dso_local global i64 0, align 8
@CLIENT_CONNECTION_BUSY = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BUSY_READ = common dso_local global i32 0, align 4
@PGRES_POLLING_WRITING = common dso_local global i64 0, align 8
@CLIENT_CONNECTION_BUSY_WRITE = common dso_local global i32 0, align 4
@PGRES_POLLING_FAILED = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiClientConnectPoll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  %8 = load i64, i64* @PGRES_POLLING_OK, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @CLIENT_INVALID_CONNECT, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ClientConnectionArray, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i64*, i64** @ClientPollingStatusArray, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @PGRES_POLLING_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @CLIENT_CONNECTION_READY, align 4
  store i32 %31, i32* %5, align 4
  br label %88

32:                                               ; preds = %1
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @PGRES_POLLING_READING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i64, i64* @PGRES_POLLING_READING, align 8
  %39 = call i32 @ClientConnectionReady(%struct.TYPE_5__* %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @PQconnectPoll(i32 %45)
  %47 = load i64*, i64** @ClientPollingStatusArray, align 8
  %48 = load i64, i64* %2, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @CLIENT_CONNECTION_BUSY, align 4
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @CLIENT_CONNECTION_BUSY_READ, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %42
  br label %87

54:                                               ; preds = %32
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  %61 = call i32 @ClientConnectionReady(%struct.TYPE_5__* %59, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @PQconnectPoll(i32 %67)
  %69 = load i64*, i64** @ClientPollingStatusArray, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* @CLIENT_CONNECTION_BUSY, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @CLIENT_CONNECTION_BUSY_WRITE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %64
  br label %86

76:                                               ; preds = %54
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = load i32, i32* @WARNING, align 4
  %83 = call i32 @ReportConnectionError(%struct.TYPE_5__* %81, i32 %82)
  %84 = load i32, i32* @CLIENT_CONNECTION_BAD, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %30
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ClientConnectionReady(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @PQconnectPoll(i32) #1

declare dso_local i32 @ReportConnectionError(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
