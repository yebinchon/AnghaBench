; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerConnectPoll.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerConnectPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i8*, i32 }

@INVALID_CONNECTION_ID = common dso_local global i8* null, align 8
@CLIENT_CONNECTION_READY = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BUSY = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BUSY_READ = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BUSY_WRITE = common dso_local global i32 0, align 4
@CLIENT_CONNECTION_BAD = common dso_local global i32 0, align 4
@NodeConnectionTimeout = common dso_local global float 0.000000e+00, align 4
@RemoteTaskCheckInterval = common dso_local global float 0.000000e+00, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"could not establish asynchronous connection after %u ms\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid task tracker status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @TrackerConnectPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TrackerConnectPoll(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %128 [
    i32 128, label %16
    i32 129, label %45
    i32 131, label %125
    i32 130, label %125
  ]

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %4, align 4
  %23 = call i8* (...) @CurrentDatabaseName()
  store i8* %23, i8** %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @MultiClientConnectStart(i8* %27, i32 %28, i8* %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %16
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 129, i32* %40, align 8
  br label %44

41:                                               ; preds = %16
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 130, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  br label %136

45:                                               ; preds = %1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @MultiClientConnectPoll(i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @CLIENT_CONNECTION_READY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 131, i32* %56, align 8
  br label %86

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CLIENT_CONNECTION_BUSY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @CLIENT_CONNECTION_BUSY_READ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CLIENT_CONNECTION_BUSY_WRITE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %61, %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 129, i32* %71, align 8
  br label %85

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CLIENT_CONNECTION_BAD, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 130, i32* %78, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @MultiClientDisconnect(i8* %79)
  %81 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %72
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @CLIENT_CONNECTION_BUSY_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @CLIENT_CONNECTION_BUSY_WRITE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94, %86
  %99 = load float, float* @NodeConnectionTimeout, align 4
  %100 = fmul float %99, 1.000000e+00
  %101 = load float, float* @RemoteTaskCheckInterval, align 4
  %102 = fdiv float %100, %101
  %103 = call i32 @ceil(float %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load i32, i32* @WARNING, align 4
  %112 = load float, float* @NodeConnectionTimeout, align 4
  %113 = fptosi float %112 to i32
  %114 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = call i32 @ereport(i32 %111, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 130, i32* %117, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @MultiClientDisconnect(i8* %118)
  %120 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %110, %98
  br label %124

124:                                              ; preds = %123, %94
  br label %136

125:                                              ; preds = %1, %1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  store i32 0, i32* %127, align 8
  br label %136

128:                                              ; preds = %1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* @FATAL, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = call i32 @ereport(i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %128, %125, %124, %44
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  ret i32 %139
}

declare dso_local i8* @CurrentDatabaseName(...) #1

declare dso_local i8* @MultiClientConnectStart(i8*, i32, i8*, i8*) #1

declare dso_local i32 @MultiClientConnectPoll(i8*) #1

declare dso_local i32 @MultiClientDisconnect(i8*) #1

declare dso_local i32 @ceil(float) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
