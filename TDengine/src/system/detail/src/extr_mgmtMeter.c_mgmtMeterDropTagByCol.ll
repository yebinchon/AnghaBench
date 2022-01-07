; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterDropTagByCol.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterDropTagByCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@TSDB_CODE_APP_ERROR = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i64 0, align 8
@SDB_TYPE_DELETE = common dso_local global i32 0, align 4
@meterSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to drop tag column: %d from table: %s\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Succeed to drop tag column: %d from table: %s\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mgmtMeterDropTagByCol(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = call i32 @mgmtIsMetric(%struct.TYPE_11__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %15, %11, %2
  %25 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %25, i64* %3, align 8
  br label %102

26:                                               ; preds = %18
  store i32 40, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memset(%struct.TYPE_12__* %30, i32 0, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %40 = call i32 @memcpy(i32 %35, i32 %38, i64 %39)
  %41 = load i32, i32* @SDB_TYPE_DELETE, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @mgmtGetTagsLength(%struct.TYPE_11__* %52, i32 %53)
  %55 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store i64 %56, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = add i64 %64, %71
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_10__*
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @meterSdb, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @sdbBatchUpdateRow(i32 %80, %struct.TYPE_12__* %81, i32 %82)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = call i32 @tfree(%struct.TYPE_12__* %84)
  %86 = load i64, i64* %8, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %26
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @mError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %94, i64* %3, align 8
  br label %102

95:                                               ; preds = %26
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mTrace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %95, %88, %24
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @mgmtIsMetric(%struct.TYPE_11__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @mgmtGetTagsLength(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sdbBatchUpdateRow(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_12__*) #1

declare dso_local i32 @mError(i8*, i32, i32) #1

declare dso_local i32 @mTrace(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
