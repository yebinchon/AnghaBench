; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_unregisterJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_unregisterJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }

@C_ERR = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i64 0, align 8
@JOB_STATE_ACKED = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@JOB_STATE_WAIT_REPL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"-NOREPL job removed (expired?) before the requested replication level was achieved\0D\0A\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregisterJob(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_11__* @lookupJob(i32 %7)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @C_ERR, align 4
  store i32 %12, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @JOB_STATE_ACKED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = call i32 @AOFDelJob(%struct.TYPE_11__* %26)
  br label %28

28:                                               ; preds = %25, %19, %13
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = call i32 @skiplistDelete(i32 %34, %struct.TYPE_11__* %35)
  %37 = call i32 @serverAssert(i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call i32 @dequeueJob(%struct.TYPE_11__* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @JOB_STATE_WAIT_REPL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32* @jobGetAssociatedValue(%struct.TYPE_11__* %54)
  store i32* %55, i32** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = call i32 @setJobAssociatedValue(%struct.TYPE_11__* %56, i32* null)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @sdsnew(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @addReplySds(i32* %58, i32 %59)
  %61 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = call i32 @clusterBroadcastDelJob(%struct.TYPE_11__* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @unblockClient(i32* %66)
  br label %68

68:                                               ; preds = %53, %47
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dictDelete(i32 %69, i32 %72)
  %74 = load i32, i32* @C_OK, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_11__* @lookupJob(i32) #1

declare dso_local i32 @AOFDelJob(%struct.TYPE_11__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @skiplistDelete(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dequeueJob(%struct.TYPE_11__*) #1

declare dso_local i32* @jobGetAssociatedValue(%struct.TYPE_11__*) #1

declare dso_local i32 @setJobAssociatedValue(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @addReplySds(i32*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @clusterBroadcastDelJob(%struct.TYPE_11__*) #1

declare dso_local i32 @unblockClient(i32*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
