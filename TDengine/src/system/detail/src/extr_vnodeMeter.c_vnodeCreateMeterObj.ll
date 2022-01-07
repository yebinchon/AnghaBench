; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeCreateMeterObj.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeMeter.c_vnodeCreateMeterObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i32, i32* }

@vnodeList = common dso_local global %struct.TYPE_10__* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"vid:%d sid:%d id:%s sversion:%d, identical meterObj, ignore create\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vid:%d sid:%d id:%s, update schema\00", align 1
@TSDB_METER_STATE_UPDATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"vid:%d sid:%d id:%s, old meter is there, remove it\00", align 1
@TSDB_CODE_NO_RESOURCE = common dso_local global i32 0, align 4
@TSDB_METER_STATE_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"vid:%d sid:%d id:%s, meterObj is created, uid:%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateMeterObj(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 %17
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %73

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45, i32 %48, i64 %51)
  store i32 -1, i32* %3, align 4
  br label %162

53:                                               ; preds = %31
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %59, i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = load i32, i32* @TSDB_METER_STATE_UPDATING, align 4
  %66 = call i32 @vnodeIsMeterState(%struct.TYPE_9__* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %53
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = call i32 @vnodeUpdateMeter(%struct.TYPE_9__* %69, i32* null)
  br label %71

71:                                               ; preds = %68, %53
  %72 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %162

73:                                               ; preds = %23, %2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dWarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %79, i64 %82, i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @vnodeRemoveMeterObj(i64 %89, i64 %92)
  br label %94

94:                                               ; preds = %76, %73
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = call i32* @vnodeAllocateCacheInfo(%struct.TYPE_9__* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @TSDB_CODE_NO_RESOURCE, align 4
  store i32 %104, i32* %7, align 4
  br label %160

105:                                              ; preds = %94
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %113, i64 %116
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %117, align 8
  %118 = load i32, i32* @TSDB_METER_STATE_READY, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %123, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %105
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i64 %135, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %105
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = call i32 @vnodeSaveMeterObjToFile(%struct.TYPE_9__* %143)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = call i32 @vnodeCreateStream(%struct.TYPE_9__* %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i8*, i64, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %149, i64 %152, i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %142, %103
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %71, %39
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @dTrace(i8*, i64, i64, i32, ...) #1

declare dso_local i32 @vnodeIsMeterState(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vnodeUpdateMeter(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @dWarn(i8*, i64, i64, i32) #1

declare dso_local i32 @vnodeRemoveMeterObj(i64, i64) #1

declare dso_local i32* @vnodeAllocateCacheInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeSaveMeterObjToFile(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeCreateStream(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
