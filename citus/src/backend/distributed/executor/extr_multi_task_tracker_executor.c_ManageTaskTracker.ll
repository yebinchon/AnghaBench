; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTaskTracker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTaskTracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@TASK_CLIENT_SIDE_STATUS_FAILED = common dso_local global i8* null, align 8
@NIL = common dso_local global i8* null, align 8
@CLIENT_INVALID_RESULT_STATUS = common dso_local global i64 0, align 8
@CLIENT_RESULT_READY = common dso_local global i64 0, align 8
@CLIENT_RESULT_UNAVAILABLE = common dso_local global i64 0, align 8
@CLIENT_RESULT_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @ManageTaskTracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ManageTaskTracker(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = call i32 @TrackerHealthy(%struct.TYPE_14__* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %144

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = call i32 @TrackerConnectionUp(%struct.TYPE_14__* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = call i32 @TrackerReconnectPoll(%struct.TYPE_14__* %26)
  br label %144

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = call i32* @AssignQueuedTasks(%struct.TYPE_14__* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @list_concat(i32* %39, i32* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = call i32* @TaskStatusBatchList(%struct.TYPE_14__* %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %10, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call %struct.TYPE_15__* @TaskStatusBatchQuery(i32* %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MultiClientSendQuery(i32 %60, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  br label %88

73:                                               ; preds = %54
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @linitial(i32* %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %11, align 8
  %77 = load i8*, i8** @TASK_CLIENT_SIDE_STATUS_FAILED, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @list_free(i32* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i8*, i8** @NIL, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %73, %67
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = call i32 @pfree(%struct.TYPE_15__* %89)
  br label %91

91:                                               ; preds = %88, %49
  br label %92

92:                                               ; preds = %91, %44
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %144

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %12, align 4
  %101 = load i64, i64* @CLIENT_INVALID_RESULT_STATUS, align 8
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @MultiClientResultStatus(i32 %102)
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @CLIENT_RESULT_READY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = call i32 @ReceiveTaskStatusBatchQueryResponse(%struct.TYPE_14__* %108)
  br label %128

110:                                              ; preds = %97
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @CLIENT_RESULT_UNAVAILABLE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @linitial(i32* %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %14, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %121 = icmp ne %struct.TYPE_13__* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @Assert(i32 %122)
  %124 = load i8*, i8** @TASK_CLIENT_SIDE_STATUS_FAILED, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %114, %110
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @CLIENT_RESULT_BUSY, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @list_free(i32* %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load i8*, i8** @NIL, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  br label %143

143:                                              ; preds = %132, %128
  br label %144

144:                                              ; preds = %19, %25, %143, %92
  ret void
}

declare dso_local i32 @TrackerHealthy(%struct.TYPE_14__*) #1

declare dso_local i32 @TrackerConnectionUp(%struct.TYPE_14__*) #1

declare dso_local i32 @TrackerReconnectPoll(%struct.TYPE_14__*) #1

declare dso_local i32* @AssignQueuedTasks(%struct.TYPE_14__*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32* @TaskStatusBatchList(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @TaskStatusBatchQuery(i32*) #1

declare dso_local i32 @MultiClientSendQuery(i32, i32) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_15__*) #1

declare dso_local i64 @MultiClientResultStatus(i32) #1

declare dso_local i32 @ReceiveTaskStatusBatchQueryResponse(%struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
