; ModuleID = '/home/carl/AnghaBench/disque/src/extr_ack.c_ackjobCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_ack.c_ackjobCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { i64 }

@C_ERR = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@JOB_STATE_ACKED = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ackjobCommand(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %11, i64 1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = call i64 @validateJobIDs(%struct.TYPE_18__* %8, %struct.TYPE_19__** %12, i32 %16)
  %18 = load i64, i64* @C_ERR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %108

21:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %101, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %31, i64 %33
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call %struct.TYPE_17__* @lookupJob(i8* %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = icmp eq %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %28
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = call i32 (...) @myselfLeaving()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %52, i64 %54
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @getRawTTLFromJobID(i8* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %49
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* @JOB_STATE_ACKED, align 8
  %67 = call %struct.TYPE_17__* @createJob(i8* %65, i64 %66, i32 0, i32 0)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %5, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = call i32 @setJobTTLFromID(%struct.TYPE_17__* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = call i64 @registerJob(%struct.TYPE_17__* %70)
  %72 = load i64, i64* @C_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @serverAssert(i32 %74)
  br label %76

76:                                               ; preds = %64, %49
  br label %94

77:                                               ; preds = %46, %41, %28
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @JOB_STATE_ACKED, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = call i32 @dequeueJob(%struct.TYPE_17__* %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = call i32 @acknowledgeJob(%struct.TYPE_17__* %89)
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %86, %80, %77
  br label %94

94:                                               ; preds = %93, %76
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = icmp ne %struct.TYPE_17__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = call i32 @tryJobGC(%struct.TYPE_17__* %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %22

104:                                              ; preds = %22
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @addReplyLongLong(%struct.TYPE_18__* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %20
  ret void
}

declare dso_local i64 @validateJobIDs(%struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local %struct.TYPE_17__* @lookupJob(i8*) #1

declare dso_local i32 @myselfLeaving(...) #1

declare dso_local i32 @getRawTTLFromJobID(i8*) #1

declare dso_local %struct.TYPE_17__* @createJob(i8*, i64, i32, i32) #1

declare dso_local i32 @setJobTTLFromID(%struct.TYPE_17__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @registerJob(%struct.TYPE_17__*) #1

declare dso_local i32 @dequeueJob(%struct.TYPE_17__*) #1

declare dso_local i32 @acknowledgeJob(%struct.TYPE_17__*) #1

declare dso_local i32 @tryJobGC(%struct.TYPE_17__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
