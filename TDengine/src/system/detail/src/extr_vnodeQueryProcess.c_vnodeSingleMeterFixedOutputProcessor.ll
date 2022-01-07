; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterFixedOutputProcessor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterFixedOutputProcessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64 }

@QUERY_COMPLETED = common dso_local global i32 0, align 4
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @vnodeSingleMeterFixedOutputProcessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnodeSingleMeterFixedOutputProcessor(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 2
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = call i32 @vnodeScanAllData(%struct.TYPE_18__* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = call i32 @doFinalizeResult(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = call i64 @isQueryKilled(%struct.TYPE_19__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %96

32:                                               ; preds = %20
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = call i64 @getNumOfResult(%struct.TYPE_18__* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @QUERY_COMPLETED, align 4
  %49 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @Q_STATUS_EQUAL(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %44, %32
  %54 = phi i1 [ false, %32 ], [ %52, %44 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i32 @isTopBottomQuery(%struct.TYPE_19__* %63)
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @isGroupbyNormalCol(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @copyFromGroupBuf(%struct.TYPE_20__* %79, i32 %82)
  br label %84

84:                                               ; preds = %72, %66
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = call i32 @doSkipResults(%struct.TYPE_18__* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = call i32 @doRevisedResultsByLimit(%struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = call i32 @moveDescOrderResultsToFront(%struct.TYPE_18__* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vnodeScanAllData(%struct.TYPE_18__*) #1

declare dso_local i32 @doFinalizeResult(%struct.TYPE_18__*) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_19__*) #1

declare dso_local i64 @getNumOfResult(%struct.TYPE_18__*) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i32 @isTopBottomQuery(%struct.TYPE_19__*) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @copyFromGroupBuf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @doSkipResults(%struct.TYPE_18__*) #1

declare dso_local i32 @doRevisedResultsByLimit(%struct.TYPE_20__*) #1

declare dso_local i32 @moveDescOrderResultsToFront(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
