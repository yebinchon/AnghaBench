; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterAddTags.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterAddTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@TSDB_CODE_INVALID_TABLE = common dso_local global i64 0, align 8
@TSDB_MAX_TAGS = common dso_local global i64 0, align 8
@TSDB_CODE_APP_ERROR = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@SDB_TYPE_INSERT = common dso_local global i32 0, align 4
@meterSdb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to add tag column %s to table %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Succeed to add tag column %s to table %s\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mgmtMeterAddTags(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp eq %struct.TYPE_14__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @mgmtIsMetric(%struct.TYPE_14__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %3
  %21 = load i64, i64* @TSDB_CODE_INVALID_TABLE, align 8
  store i64 %21, i64* %4, align 8
  br label %152

22:                                               ; preds = %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64, i64* @TSDB_MAX_TAGS, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %32, i64* %4, align 8
  br label %152

33:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcasecmp(i32 %49, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %59, i64* %4, align 8
  br label %152

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %39

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %34

68:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @mgmtFindTagCol(%struct.TYPE_14__* %74, i32 %80)
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %84, i64* %4, align 8
  br label %152

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = add i64 16, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @malloc(i32 %95)
  %97 = inttoptr i64 %96 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** %12, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @memset(%struct.TYPE_16__* %98, i32 0, i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %108 = call i32 @memcpy(i32 %103, %struct.TYPE_15__* %106, i32 %107)
  %109 = load i32, i32* @SDB_TYPE_INSERT, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcpy(i32 %117, %struct.TYPE_15__* %118, i32 %122)
  %124 = load i32, i32* @meterSdb, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @sdbBatchUpdateRow(i32 %124, %struct.TYPE_16__* %125, i32 %126)
  store i64 %127, i64* %13, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %129 = call i32 @tfree(%struct.TYPE_16__* %128)
  %130 = load i64, i64* %13, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %89
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = call i32 @mError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %136, %struct.TYPE_15__* %139)
  %141 = load i64, i64* @TSDB_CODE_APP_ERROR, align 8
  store i64 %141, i64* %4, align 8
  br label %152

142:                                              ; preds = %89
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = call i32 @mTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %146, %struct.TYPE_15__* %149)
  %151 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %142, %132, %83, %58, %31, %20
  %153 = load i64, i64* %4, align 8
  ret i64 %153
}

declare dso_local i32 @mgmtIsMetric(%struct.TYPE_14__*) #1

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i64 @mgmtFindTagCol(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @sdbBatchUpdateRow(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_16__*) #1

declare dso_local i32 @mError(i8*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @mTrace(i8*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
