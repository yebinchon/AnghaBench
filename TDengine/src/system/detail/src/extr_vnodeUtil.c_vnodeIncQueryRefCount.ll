; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeIncQueryRefCount.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeIncQueryRefCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }

@vnodeList = common dso_local global %struct.TYPE_12__* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_METER_STATE_INSERT = common dso_local global i64 0, align 8
@TSDB_METER_STATE_DELETING = common dso_local global i32 0, align 4
@TSDB_CODE_NOT_ACTIVE_SESSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"qmsg:%p, vid:%d sid:%d, not there or will be dropped\00", align 1
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"qmsg:%p, vid:%d sid:%d id:%s, it is in state:%d, wait!\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"qmsg:%p, vid:%d sid:%d id:%s, inc query ref, numOfQueries:%d\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"qmsg:%p, query meters: %d, inc query ref %d, numOfQueries on %d meters are 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeIncQueryRefCount(%struct.TYPE_13__* %0, %struct.TYPE_14__** %1, %struct.TYPE_15__** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %6, align 8
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vnodeList, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 %17
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %19, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %134, %4
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %137

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %28, align 8
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %30, i64 %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %29, i64 %35
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %13, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %39 = icmp eq %struct.TYPE_15__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %26
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TSDB_METER_STATE_INSERT, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %40, %26
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %48 = icmp eq %struct.TYPE_15__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %51 = load i32, i32* @TSDB_METER_STATE_DELETING, align 4
  %52 = call i64 @vnodeIsMeterState(%struct.TYPE_15__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49, %46
  %55 = load i64, i64* @TSDB_CODE_NOT_ACTIVE_SESSION, align 8
  store i64 %55, i64* %11, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 %61
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %56, i64 %59, i64 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %70, i64 %71
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @vnodeSendMeterCfgMsg(i64 %69, i64 %75)
  br label %97

77:                                               ; preds = %49
  %78 = load i64, i64* @TSDB_CODE_ACTION_IN_PROGRESS, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %83, i64 %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, %struct.TYPE_13__*, i64, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %79, i64 %82, i64 %88, i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %77, %54
  br label %133

98:                                               ; preds = %40
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %100 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %100, i64 %102
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = call i32 @atomic_fetch_add_32(i32* %106, i32 1)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %132

112:                                              ; preds = %98
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, %struct.TYPE_13__*, i64, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %113, i64 %117, i64 %121, i64 %125, i32 %128)
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %112, %98
  br label %133

133:                                              ; preds = %132, %97
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %12, align 8
  br label %20

137:                                              ; preds = %20
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %8, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %8, align 8
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = sub i64 %145, %146
  %148 = call i32 (i8*, %struct.TYPE_13__*, i64, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %138, i64 %141, i64 %143, i64 %147)
  %149 = load i64, i64* %11, align 8
  ret i64 %149
}

declare dso_local i64 @vnodeIsMeterState(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @vnodeSendMeterCfgMsg(i64, i64) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_13__*, i64, i64, i64, ...) #1

declare dso_local i32 @atomic_fetch_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
