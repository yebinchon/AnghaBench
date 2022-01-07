; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_jobReplicationAchieved.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_jobReplicationAchieved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32*, i32, i32, i32 }

@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Replication ACHIEVED %.*s\00", align 1
@JOB_ID_LEN = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_14__* null, align 8
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jobReplicationAchieved(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load i32, i32* @LL_VERBOSE, align 4
  %8 = load i32, i32* @JOB_ID_LEN, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @serverLog(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load i32, i32* @JOB_STATE_ACTIVE, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = call i32* @jobGetAssociatedValue(%struct.TYPE_13__* %16)
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = call i32 @setJobAssociatedValue(%struct.TYPE_13__* %18, i32* null)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @addReplyJobID(i32* %20, %struct.TYPE_13__* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @unblockClient(i32* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @myself, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @dictFind(i32 %27, i32 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32* @dictGetRandomKey(i32* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @dictGetVal(i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @clusterSendEnqueue(i32* %43, %struct.TYPE_13__* %44, i64 %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i32 @unregisterJob(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @freeJob(%struct.TYPE_13__* %52)
  %54 = load i32, i32* @C_ERR, align 4
  store i32 %54, i32* %2, align 4
  br label %82

55:                                               ; preds = %1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dictRelease(i32* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call i32 @enqueueJob(%struct.TYPE_13__* %73, i32 0)
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = call i32 @updateJobAwakeTime(%struct.TYPE_13__* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = call i32 @AOFLoadJob(%struct.TYPE_13__* %79)
  %81 = load i32, i32* @C_OK, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %49
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local i32* @jobGetAssociatedValue(%struct.TYPE_13__*) #1

declare dso_local i32 @setJobAssociatedValue(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @addReplyJobID(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @unblockClient(i32*) #1

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32* @dictGetRandomKey(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @clusterSendEnqueue(i32*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @unregisterJob(%struct.TYPE_13__*) #1

declare dso_local i32 @freeJob(%struct.TYPE_13__*) #1

declare dso_local i32 @dictRelease(i32*) #1

declare dso_local i32 @enqueueJob(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @updateJobAwakeTime(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AOFLoadJob(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
