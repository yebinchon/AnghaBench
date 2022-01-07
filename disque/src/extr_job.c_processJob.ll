; ModuleID = '/home/carl/AnghaBench/disque/src/extr_job.c_processJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_job.c_processJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PROCESSING\00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"EVICT %.*s\00", align 1
@JOB_ID_LEN = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i64 0, align 8
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@JOB_FLAG_BCAST_WILLQUEUE = common dso_local global i32 0, align 4
@JOB_WILLQUEUE_ADVANCE = common dso_local global i64 0, align 8
@QUEUE_FLAG_PAUSED_IN = common dso_local global i32 0, align 4
@DISQUE_TIME_ERR = common dso_local global i32 0, align 4
@JOB_STATE_ACKED = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"~~~WARNING~~~ NOT PROCESSABLE JOB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processJob(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @LL_VERBOSE, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = call i32 @logJobsDebugInfo(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @LL_VERBOSE, align 4
  %18 = load i32, i32* @JOB_ID_LEN, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @serverLog(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @unregisterJob(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @freeJob(%struct.TYPE_15__* %25)
  br label %177

27:                                               ; preds = %1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @JOB_FLAG_BCAST_WILLQUEUE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @JOB_WILLQUEUE_ADVANCE, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = call i32 @clusterSendWillQueue(%struct.TYPE_15__* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @JOB_FLAG_BCAST_WILLQUEUE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = call i32 @updateJobAwakeTime(%struct.TYPE_15__* %70, i32 0)
  br label %72

72:                                               ; preds = %63, %46, %39, %33
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %72
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_14__* @lookupQueue(i32 %92)
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %4, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @QUEUE_FLAG_PAUSED_IN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 1000
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %104, %109
  %111 = load i32, i32* @DISQUE_TIME_ERR, align 4
  %112 = call i64 @randomTimeError(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = call i32 @updateJobRequeueTime(%struct.TYPE_15__* %103, i64 %113)
  br label %118

115:                                              ; preds = %95, %89, %84
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = call i32 @enqueueJob(%struct.TYPE_15__* %116, i32 0)
  br label %118

118:                                              ; preds = %115, %102
  br label %119

119:                                              ; preds = %118, %78, %72
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %119
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load i32, i32* @JOB_FLAG_BCAST_WILLQUEUE, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 1000
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %142, %147
  %149 = load i32, i32* @DISQUE_TIME_ERR, align 4
  %150 = call i64 @randomTimeError(i32 %149)
  %151 = add nsw i64 %148, %150
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %155 = call i32 @updateJobAwakeTime(%struct.TYPE_15__* %154, i32 0)
  br label %156

156:                                              ; preds = %136, %131, %125, %119
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @JOB_STATE_ACKED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = call i32 @tryJobGC(%struct.TYPE_15__* %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %166 = call i32 @updateJobAwakeTime(%struct.TYPE_15__* %165, i32 0)
  br label %167

167:                                              ; preds = %162, %156
  %168 = load i64, i64* %3, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* @LL_WARNING, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %176 = call i32 @logJobsDebugInfo(i32 %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %175)
  br label %177

177:                                              ; preds = %16, %173, %167
  ret void
}

declare dso_local i32 @logJobsDebugInfo(i32, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local i32 @unregisterJob(%struct.TYPE_15__*) #1

declare dso_local i32 @freeJob(%struct.TYPE_15__*) #1

declare dso_local i32 @clusterSendWillQueue(%struct.TYPE_15__*) #1

declare dso_local i32 @updateJobAwakeTime(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @lookupQueue(i32) #1

declare dso_local i32 @updateJobRequeueTime(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @randomTimeError(i32) #1

declare dso_local i32 @enqueueJob(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tryJobGC(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
