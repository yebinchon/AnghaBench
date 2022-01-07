; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTransmitTracker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTransmitTracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@TRANSMIT_WITH_USER_COMMAND = common dso_local global i32 0, align 4
@TASK_ASSIGNED = common dso_local global i32 0, align 4
@TASK_CLIENT_SIDE_TRANSMIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @ManageTransmitTracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ManageTransmitTracker(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = call i32 @TrackerHealthy(%struct.TYPE_15__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = call i32 @TrackerConnectionUp(%struct.TYPE_15__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @TrackerReconnectPoll(%struct.TYPE_15__* %23)
  br label %86

25:                                               ; preds = %17
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %86

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_14__* @NextQueuedFileTransmit(i32 %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %3, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %86

38:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_16__* @JobDirectoryName(i32 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_16__* @TaskFilename(%struct.TYPE_16__* %46, i32 %49)
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %9, align 8
  %51 = call i8* (...) @CurrentUserName()
  store i8* %51, i8** %10, align 8
  %52 = call %struct.TYPE_16__* (...) @makeStringInfo()
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %11, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = load i32, i32* @TRANSMIT_WITH_USER_COMMAND, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @quote_literal_cstr(i8* %58)
  %60 = call i32 @appendStringInfo(%struct.TYPE_16__* %53, i32 %54, i32 %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MultiClientSendQuery(i32 %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %38
  %69 = load i32, i32* @TASK_ASSIGNED, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %76, align 8
  br label %85

77:                                               ; preds = %38
  %78 = load i32, i32* @TASK_CLIENT_SIDE_TRANSMIT_FAILED, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %84, align 8
  br label %85

85:                                               ; preds = %77, %68
  br label %86

86:                                               ; preds = %16, %22, %30, %85, %31
  ret void
}

declare dso_local i32 @TrackerHealthy(%struct.TYPE_15__*) #1

declare dso_local i32 @TrackerConnectionUp(%struct.TYPE_15__*) #1

declare dso_local i32 @TrackerReconnectPoll(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @NextQueuedFileTransmit(i32) #1

declare dso_local %struct.TYPE_16__* @JobDirectoryName(i32) #1

declare dso_local %struct.TYPE_16__* @TaskFilename(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @CurrentUserName(...) #1

declare dso_local %struct.TYPE_16__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i32 @MultiClientSendQuery(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
