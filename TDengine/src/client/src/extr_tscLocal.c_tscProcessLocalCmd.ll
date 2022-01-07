; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscProcessLocalCmd.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscProcessLocalCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 (i32, %struct.TYPE_11__*, i32)*, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@TSDB_SQL_CFG_LOCAL = common dso_local global i64 0, align 8
@TSDB_SQL_DESCRIBE_TABLE = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_TAGS = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_EMPTY_RESULT = common dso_local global i64 0, align 8
@TSDB_SQL_RESET_CACHE = common dso_local global i64 0, align 8
@tscCacheHandle = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%p not support command:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscProcessLocalCmd(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TSDB_SQL_CFG_LOCAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @tsCfgDynamicOptions(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TSDB_SQL_DESCRIBE_TABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = call i64 @tscProcessDescribeTable(%struct.TYPE_11__* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %85

36:                                               ; preds = %22
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TSDB_SQL_RETRIEVE_TAGS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i64 @tscProcessQueryTags(%struct.TYPE_11__* %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  br label %84

50:                                               ; preds = %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  br label %83

63:                                               ; preds = %50
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_SQL_RESET_CACHE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @tscCacheHandle, align 4
  %71 = call i32 @taosClearDataCache(i32 %70)
  br label %82

72:                                               ; preds = %63
  %73 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @tscError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %77, i64 %80)
  br label %82

82:                                               ; preds = %72, %69
  br label %83

83:                                               ; preds = %82, %56
  br label %84

84:                                               ; preds = %83, %42
  br label %85

85:                                               ; preds = %84, %28
  br label %86

86:                                               ; preds = %85, %12
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %4, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32 (i32, %struct.TYPE_11__*, i32)*, i32 (i32, %struct.TYPE_11__*, i32)** %92, align 8
  %94 = icmp ne i32 (i32, %struct.TYPE_11__*, i32)* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %86
  %96 = load i64, i64* %4, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32 (i32, %struct.TYPE_11__*, i32)*, i32 (i32, %struct.TYPE_11__*, i32)** %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = call i32 %101(i32 %104, %struct.TYPE_11__* %105, i32 0)
  br label %110

107:                                              ; preds = %95
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = call i32 @tscQueueAsyncRes(%struct.TYPE_11__* %108)
  br label %110

110:                                              ; preds = %107, %98
  br label %111

111:                                              ; preds = %110, %86
  %112 = load i64, i64* %4, align 8
  %113 = trunc i64 %112 to i32
  ret i32 %113
}

declare dso_local i64 @tsCfgDynamicOptions(i32) #1

declare dso_local i64 @tscProcessDescribeTable(%struct.TYPE_11__*) #1

declare dso_local i64 @tscProcessQueryTags(%struct.TYPE_11__*) #1

declare dso_local i32 @taosClearDataCache(i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
