; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeRemoveMeterObj.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeRemoveMeterObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TSDB_MAX_VNODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vid:%d is out of range\00", align 1
@vnodeList = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"vid:%d, sid:%d is larger than max:%d or less than 0\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@TSDB_METER_STATE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeRemoveMeterObj(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TSDB_MAX_VNODES, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %3, align 4
  br label %93

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %93

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %43, align 8
  %45 = icmp eq %struct.TYPE_9__** %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %93

47:                                               ; preds = %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %6, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %93

62:                                               ; preds = %47
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @vnodeIsSafeToDeleteMeter(%struct.TYPE_10__* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %71, i32* %3, align 4
  br label %93

72:                                               ; preds = %62
  %73 = load i32, i32* @TSDB_METER_STATE_DELETED, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = call i32 (...) @taosGetTimestampMs()
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = call i32 @vnodeRemoveStream(%struct.TYPE_9__* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = call i32 @vnodeSaveMeterObjToFile(%struct.TYPE_9__* %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = call i32 @vnodeFreeMeterObj(%struct.TYPE_9__* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %72, %70, %60, %46, %31, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @dError(i8*, i32, ...) #1

declare dso_local i32 @vnodeIsSafeToDeleteMeter(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @taosGetTimestampMs(...) #1

declare dso_local i32 @vnodeRemoveStream(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeSaveMeterObjToFile(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeFreeMeterObj(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
