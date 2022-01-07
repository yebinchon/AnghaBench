; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeSaveQueryResult.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeSaveQueryResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i8*, i32*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"QInfo:%p %d are returned, totalReturned:%d totalRead:%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"QInfo:%p set query flag, oldSig:%p\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%p freed or killed, old sig:%p abort query\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%p add query into task queue for schedule\00", align 1
@vnodeSingleMeterQuery = common dso_local global i32 0, align 4
@vnodeMultiMeterQuery = common dso_local global i32 0, align 4
@vnodeQueryData = common dso_local global i32 0, align 4
@queryQhandle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeSaveQueryResult(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @vnodeCopyQueryResultToMsg(%struct.TYPE_10__* %21, i8* %22, i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, %struct.TYPE_10__*, ...) @dTrace(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %31, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %101

44:                                               ; preds = %3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, %struct.TYPE_10__*, ...) @dTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %45, i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = call i64 @TSDB_QINFO_SET_QUERY_FLAG(%struct.TYPE_10__* %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = ptrtoint %struct.TYPE_10__* %56 to i64
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %44
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 (i8*, %struct.TYPE_10__*, ...) @dTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %60, i64 %61)
  br label %100

63:                                               ; preds = %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = call i32 (i8*, %struct.TYPE_10__*, ...) @dTrace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @vnodeSingleMeterQuery, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @vnodeMultiMeterQuery, align 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %93

84:                                               ; preds = %63
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %87, 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @vnodeQueryData, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %91, i32* %92, align 8
  br label %93

93:                                               ; preds = %84, %83
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %97, align 8
  %98 = load i32, i32* @queryQhandle, align 4
  %99 = call i32 @taosScheduleTask(i32 %98, %struct.TYPE_9__* %11)
  br label %100

100:                                              ; preds = %93, %59
  br label %101

101:                                              ; preds = %100, %3
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @vnodeCopyQueryResultToMsg(%struct.TYPE_10__*, i8*, i32, i32*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i64 @TSDB_QINFO_SET_QUERY_FLAG(%struct.TYPE_10__*) #1

declare dso_local i32 @taosScheduleTask(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
