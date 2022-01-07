; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtInitMeters.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtInitMeters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i64, i8*, i32, i8*, i64, %struct.TYPE_17__, i32, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@tsMaxTables = common dso_local global i32 0, align 4
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@TSDB_MAX_SQL_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"meters\00", align 1
@SDB_KEYTYPE_STRING = common dso_local global i32 0, align 4
@mgmtDirectory = common dso_local global i32 0, align 4
@mgmtMeterAction = common dso_local global i32 0, align 4
@meterSdb = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to init meter data\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get db: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get vgroup:%i\00", align 1
@TSDB_METER_STABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"meter is initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtInitMeters() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  store i8* null, i8** %2, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32 (...) @mgmtMeterActionInit()
  %9 = load i32, i32* @tsMaxTables, align 4
  %10 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 72, %12
  %14 = load i64, i64* @TSDB_MAX_SQL_LEN, align 8
  %15 = add i64 %13, %14
  %16 = load i32, i32* @SDB_KEYTYPE_STRING, align 4
  %17 = load i32, i32* @mgmtDirectory, align 4
  %18 = load i32, i32* @mgmtMeterAction, align 4
  %19 = call i32* @sdbOpenTable(i32 %9, i64 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  store i32* %19, i32** @meterSdb, align 8
  %20 = load i32*, i32** @meterSdb, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %168

24:                                               ; preds = %0
  store i8* null, i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %40
  %26 = load i32*, i32** @meterSdb, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = bitcast %struct.TYPE_20__** %4 to i8**
  %29 = call i8* @sdbFetchRow(i32* %26, i8* %27, i8** %28)
  store i8* %29, i8** %2, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = icmp eq %struct.TYPE_20__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = call i64 @mgmtIsMetric(%struct.TYPE_20__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %25

41:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %57, %79, %164
  %43 = load i32*, i32** @meterSdb, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = bitcast %struct.TYPE_20__** %4 to i8**
  %46 = call i8* @sdbFetchRow(i32* %43, i8* %44, i8** %45)
  store i8* %46, i8** %2, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = icmp eq %struct.TYPE_20__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %165

50:                                               ; preds = %42
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_21__* @mgmtGetDbByMeterId(i32 %53)
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %6, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = icmp eq %struct.TYPE_21__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %42

62:                                               ; preds = %50
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = call i64 @mgmtIsNormalMeter(%struct.TYPE_20__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %156

66:                                               ; preds = %62
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_19__* @mgmtGetVgroup(i32 %70)
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %3, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = icmp eq %struct.TYPE_19__* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %76, align 8
  %78 = icmp eq %struct.TYPE_20__** %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74, %66
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %42

85:                                               ; preds = %74
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %89, i64 %93
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @taosIdPoolMarkStatus(i32 %97, i64 %101, i32 1)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TSDB_METER_STABLE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %85
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = getelementptr inbounds i8, i8* %112, i64 %117
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %108, %85
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = call i64 @mgmtMeterCreateFromMetric(%struct.TYPE_20__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call %struct.TYPE_20__* @mgmtGetMeter(i8* %134)
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %5, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = icmp ne %struct.TYPE_20__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %125
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = call i32 @mgmtAddMeterIntoMetric(%struct.TYPE_20__* %139, %struct.TYPE_20__* %140)
  br label %142

142:                                              ; preds = %138, %125
  br label %143

143:                                              ; preds = %142, %121
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32* @mgmtGetAcct(i32 %147)
  store i32* %148, i32** %7, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @mgmtAddMeterStatisticToAcct(%struct.TYPE_20__* %152, i32* %153)
  br label %155

155:                                              ; preds = %151, %143
  br label %164

156:                                              ; preds = %62
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = icmp ne %struct.TYPE_21__* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = call i32 @mgmtAddMetricIntoDb(%struct.TYPE_21__* %160, %struct.TYPE_20__* %161)
  br label %163

163:                                              ; preds = %159, %156
  br label %164

164:                                              ; preds = %163, %155
  br label %42

165:                                              ; preds = %49
  %166 = call i32 (...) @mgmtSetVgroupIdPool()
  %167 = call i32 @mTrace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %165, %22
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

declare dso_local i32 @mgmtMeterActionInit(...) #1

declare dso_local i32* @sdbOpenTable(i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @mError(i8*, ...) #1

declare dso_local i8* @sdbFetchRow(i32*, i8*, i8**) #1

declare dso_local i64 @mgmtIsMetric(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @mgmtGetDbByMeterId(i32) #1

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @mgmtGetVgroup(i32) #1

declare dso_local i32 @taosIdPoolMarkStatus(i32, i64, i32) #1

declare dso_local i64 @mgmtMeterCreateFromMetric(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @mgmtGetMeter(i8*) #1

declare dso_local i32 @mgmtAddMeterIntoMetric(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32* @mgmtGetAcct(i32) #1

declare dso_local i32 @mgmtAddMeterStatisticToAcct(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @mgmtAddMetricIntoDb(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mgmtSetVgroupIdPool(...) #1

declare dso_local i32 @mTrace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
