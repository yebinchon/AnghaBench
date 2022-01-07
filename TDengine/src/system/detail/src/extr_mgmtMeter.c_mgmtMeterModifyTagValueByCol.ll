; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterModifyTagValueByCol.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterModifyTagValueByCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@TSDB_CODE_APP_ERROR = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i64 0, align 8
@TSDB_MAX_BYTES_PER_ROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to allocate message memory while modify tag value\00", align 1
@meterSdb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to modify tag column %d of table %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Succeed to modify tag column %d of table %s\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mgmtMeterModifyTagValueByCol(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i32 @mgmtMeterCreateFromMetric(%struct.TYPE_12__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %16, %3
  %24 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %24, i64* %4, align 8
  br label %138

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.TYPE_12__* @mgmtGetMeter(i64 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %25
  %43 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %43, i64* %4, align 8
  br label %138

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = add i64 %47, %54
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = call i32 @removeMeterFromMetricIndex(%struct.TYPE_12__* %62, %struct.TYPE_12__* %63)
  br label %65

65:                                               ; preds = %59, %44
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @mgmtGetTagsLength(%struct.TYPE_12__* %69, i32 %70)
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i64 %74, i8* %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %65
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = call i32 @addMeterIntoMetricIndex(%struct.TYPE_12__* %83, %struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %82, %65
  %87 = load i32, i32* @TSDB_MAX_BYTES_PER_ROW, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 32, %88
  %90 = add i64 %89, 1
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @malloc(i32 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %99 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %99, i64* %4, align 8
  br label %138

100:                                              ; preds = %86
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @memset(i8* %101, i32 0, i32 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @mgmtMeterActionEncode(%struct.TYPE_12__* %104, i8* %105, i32 %106, i32* %8)
  %108 = load i32, i32* @meterSdb, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @sdbUpdateRow(i32 %108, i8* %109, i32 %110, i32 1)
  store i64 %111, i64* %13, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @tfree(i8* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %100
  %122 = load i64, i64* %13, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %128)
  %130 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %130, i64* %4, align 8
  br label %138

131:                                              ; preds = %121
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @mTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %131, %124, %97, %42, %23
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i32 @mgmtMeterCreateFromMetric(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @mgmtGetMeter(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @removeMeterFromMetricIndex(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @mgmtGetTagsLength(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @addMeterIntoMetricIndex(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @mError(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mgmtMeterActionEncode(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i64 @sdbUpdateRow(i32, i8*, i32, i32) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @mTrace(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
