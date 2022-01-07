; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_workingCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_workingCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64 }

@C_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"-NOJOB Job not known in the context of this node.\0D\0A\00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"-TOOLATE Half of job TTL already elapsed, you are no longer allowed to postpone the next delivery.\0D\0A\00", align 1
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@JOB_FLAG_BCAST_WILLQUEUE = common dso_local global i32 0, align 4
@DISQUE_TIME_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workingCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %9, i64 1
  %11 = call i64 @validateJobIDs(%struct.TYPE_14__* %6, %struct.TYPE_15__** %10, i32 1)
  %12 = load i64, i64* @C_ERR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %18, i64 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_13__* @lookupJob(i32 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = call i32 @sdsnew(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @addReplySds(%struct.TYPE_14__* %27, i32 %28)
  br label %91

30:                                               ; preds = %15
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %34, 1000
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 1000000
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 1000000
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = call i32 @sdsnew(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @addReplySds(%struct.TYPE_14__* %55, i32 %56)
  br label %91

58:                                               ; preds = %49, %30
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @dequeueJob(%struct.TYPE_13__* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @JOB_FLAG_BCAST_WILLQUEUE, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 1000
  %79 = add nsw i32 %74, %78
  %80 = load i32, i32* @DISQUE_TIME_ERR, align 4
  %81 = call i32 @randomTimeError(i32 %80)
  %82 = add nsw i32 %79, %81
  %83 = call i32 @updateJobRequeueTime(%struct.TYPE_13__* %73, i32 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = call i32 @clusterBroadcastWorking(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @addReplyLongLong(%struct.TYPE_14__* %86, i32 %89)
  br label %91

91:                                               ; preds = %67, %54, %26, %14
  ret void
}

declare dso_local i64 @validateJobIDs(%struct.TYPE_14__*, %struct.TYPE_15__**, i32) #1

declare dso_local %struct.TYPE_13__* @lookupJob(i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @dequeueJob(%struct.TYPE_13__*) #1

declare dso_local i32 @updateJobRequeueTime(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @randomTimeError(i32) #1

declare dso_local i32 @clusterBroadcastWorking(%struct.TYPE_13__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
