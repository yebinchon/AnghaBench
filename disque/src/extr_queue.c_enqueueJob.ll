; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_enqueueJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_enqueueJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@JOB_FLAG_DELIVERED = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"QUEUED %.*s\00", align 1
@JOB_ID_LEN = common dso_local global i32 0, align 4
@JOB_FLAG_BCAST_WILLQUEUE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DISQUE_TIME_ERR = common dso_local global i32 0, align 4
@JOB_FLAG_BCAST_QUEUED = common dso_local global i32 0, align 4
@CLUSTERMSG_FLAG0_INCR_NACKS = common dso_local global i8 0, align 1
@CLUSTERMSG_FLAG0_INCR_DELIV = common dso_local global i8 0, align 1
@QUEUE_FLAG_PAUSED_OUT = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enqueueJob(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @C_ERR, align 4
  store i32 %19, i32* %3, align 4
  br label %154

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @JOB_FLAG_DELIVERED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @C_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %154

34:                                               ; preds = %25, %20
  %35 = load i32, i32* @LL_VERBOSE, align 4
  %36 = load i32, i32* @JOB_ID_LEN, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @serverLog(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %34
  %49 = load i32, i32* @JOB_FLAG_BCAST_WILLQUEUE, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 1000
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = load i32, i32* @DISQUE_TIME_ERR, align 4
  %62 = call i64 @randomTimeError(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %69

66:                                               ; preds = %34
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %48
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @JOB_FLAG_BCAST_QUEUED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8, i8* @CLUSTERMSG_FLAG0_INCR_NACKS, align 1
  %84 = zext i8 %83 to i32
  br label %88

85:                                               ; preds = %79
  %86 = load i8, i8* @CLUSTERMSG_FLAG0_INCR_DELIV, align 1
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %6, align 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = load i8, i8* %6, align 1
  %93 = call i32 @clusterBroadcastQueued(%struct.TYPE_12__* %91, i8 zeroext %92)
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %106

101:                                              ; preds = %88
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %96
  br label %113

107:                                              ; preds = %76
  %108 = load i32, i32* @JOB_FLAG_BCAST_QUEUED, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %106
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = call i32 @updateJobAwakeTime(%struct.TYPE_12__* %114, i32 0)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.TYPE_11__* @lookupQueue(i32 %118)
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %7, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = icmp ne %struct.TYPE_11__* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %113
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.TYPE_11__* @createQueue(i32 %125)
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %7, align 8
  br label %127

127:                                              ; preds = %122, %113
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = call i32* @skiplistInsert(i32 %130, %struct.TYPE_12__* %131)
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @serverAssert(i32 %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 1), align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %127
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = call i32 @signalQueueAsReady(%struct.TYPE_11__* %150)
  br label %152

152:                                              ; preds = %149, %127
  %153 = load i32, i32* @C_OK, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %32, %18
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local i64 @randomTimeError(i32) #1

declare dso_local i32 @clusterBroadcastQueued(%struct.TYPE_12__*, i8 zeroext) #1

declare dso_local i32 @updateJobAwakeTime(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @lookupQueue(i32) #1

declare dso_local %struct.TYPE_11__* @createQueue(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32* @skiplistInsert(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @signalQueueAsReady(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
