; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscDoGetMeterMeta.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscDoGetMeterMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_16__*, i32*, %struct.TYPE_18__, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { i32*, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%p malloc failed for new sqlobj to get meter meta\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TSDB_SQL_META = common dso_local global i32 0, align 4
@TSDB_DEFAULT_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%p malloc failed for payload to get meter meta\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%p new pSqlObj:%p to get meterMeta\00", align 1
@tscCacheHandle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%p get meter meta complete, code:%d, pMeterMeta:%p\00", align 1
@tscMeterMetaCallBack = common dso_local global i32* null, align 8
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32)* @tscDoGetMeterMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscDoGetMeterMeta(%struct.TYPE_16__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  %13 = call %struct.TYPE_16__* @calloc(i32 1, i32 80)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %15 = icmp eq %struct.TYPE_16__* null, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = call i32 @tscError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %17)
  %19 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %19, i32* %4, align 4
  br label %145

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 6
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %28, align 8
  %29 = load i32, i32* @TSDB_SQL_META, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i32, i32* @TSDB_DEFAULT_PAYLOAD_SIZE, align 4
  %54 = call i32 @tscAllocPayload(%struct.TYPE_18__* %52, i32 %53)
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %20
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = call i32 @tscError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = call i32 @free(%struct.TYPE_16__* %59)
  %61 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %61, i32* %4, align 4
  br label %145

62:                                               ; preds = %20
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = call %struct.TYPE_17__* @tscAddEmptyMeterMetaInfo(%struct.TYPE_18__* %64)
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %10, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strcpy(i32 %68, i8* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @TSDB_DEFAULT_PAYLOAD_SIZE, align 4
  %80 = call i32 @memcpy(i32* %74, i32* %78, i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = call i32 (i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, ...) @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %81, %struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %122

88:                                               ; preds = %62
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 5
  %91 = call i32 @tsem_init(i32* %90, i32 0, i32 0)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = call i32 @tsem_init(i32* %93, i32 0, i32 1)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = call i32 @tscProcessSql(%struct.TYPE_16__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %7, align 4
  %100 = call %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_18__* %98, i32 %99)
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %88
  %105 = load i32, i32* @tscCacheHandle, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @taosGetDataFromCache(i32 %105, i8* %106)
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %88
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_16__*
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 (i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, ...) @tscTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %112, %struct.TYPE_16__* %115, i32* %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = call i32 @tscFreeSqlObj(%struct.TYPE_16__* %120)
  br label %143

122:                                              ; preds = %62
  %123 = load i32*, i32** @tscMeterMetaCallBack, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @strdup(i32 %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = call i32 @tscProcessSql(%struct.TYPE_16__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %122
  %141 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %122
  br label %143

143:                                              ; preds = %142, %111
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %56, %16
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @tscAllocPayload(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @tscAddEmptyMeterMetaInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, ...) #1

declare dso_local i32 @tsem_init(i32*, i32, i32) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @taosGetDataFromCache(i32, i8*) #1

declare dso_local i32 @tscFreeSqlObj(%struct.TYPE_16__*) #1

declare dso_local i32 @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
