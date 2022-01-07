; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_receiveYourJobs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_receiveYourJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32*, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32 }

@SER_MESSAGE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"The %d-th job received via YOURJOBS from %.40s is corrupted.\00", align 1
@JOB_STATE_ACTIVE = common dso_local global i32 0, align 4
@JOB_FLAG_BCAST_QUEUED = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@C_ERR = common dso_local global i64 0, align 8
@clusterNodesDictType = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiveYourJobs(%struct.TYPE_18__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %127, %4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sub nsw i64 %22, %27
  store i64 %28, i64* %13, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i32, i32* @SER_MESSAGE, align 4
  %32 = call %struct.TYPE_17__* @deserializeJob(i8* %29, i64 %30, i8** %12, i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %15, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* @LL_WARNING, align 4
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @serverLog(i32 %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  br label %130

44:                                               ; preds = %21
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_17__* @lookupJob(i32 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %14, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %50 = icmp ne %struct.TYPE_17__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %53 = call i32 @freeJob(%struct.TYPE_17__* %52)
  br label %61

54:                                               ; preds = %44
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %14, align 8
  %56 = load i32, i32* @JOB_STATE_ACTIVE, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %60 = call i32 @registerJob(%struct.TYPE_17__* %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* @JOB_FLAG_BCAST_QUEUED, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 1), align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %61
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = call i64 @enqueueJob(%struct.TYPE_17__* %77, i32 0)
  %79 = load i64, i64* @C_ERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %127

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_16__* @lookupQueue(i32 %85)
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %10, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = icmp ne %struct.TYPE_16__* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_16__* @createQueue(i32 %92)
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %10, align 8
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = call i32* @dictCreate(i32* @clusterNodesDictType, i32* null)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = call i64 @dictAdd(i32* %106, %struct.TYPE_18__* %107, i32* null)
  %109 = load i64, i64* @DICT_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = call i32* @dictFind(i32* %117, %struct.TYPE_18__* %118)
  store i32* %119, i32** %9, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %122 = call i32 @dictSetSignedIntegerVal(i32* %120, i32 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = call i32 @updateQueueImportRate(%struct.TYPE_16__* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %114, %81
  %128 = load i64, i64* %11, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %11, align 8
  br label %17

130:                                              ; preds = %35, %17
  ret void
}

declare dso_local %struct.TYPE_17__* @deserializeJob(i8*, i64, i8**, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @lookupJob(i32) #1

declare dso_local i32 @freeJob(%struct.TYPE_17__*) #1

declare dso_local i32 @registerJob(%struct.TYPE_17__*) #1

declare dso_local i64 @enqueueJob(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @lookupQueue(i32) #1

declare dso_local %struct.TYPE_16__* @createQueue(i32) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i64 @dictAdd(i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @dictFind(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @dictSetSignedIntegerVal(i32*, i32) #1

declare dso_local i32 @updateQueueImportRate(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
