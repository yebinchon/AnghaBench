; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionDelete.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i32, i32**, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"id:%s not in vgroup:%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vgroup:%d not in DB:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mgmtMeterActionDelete(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %10, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %17 = call i64 @mgmtIsNormalMeter(%struct.TYPE_19__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_18__* @mgmtGetVgroup(i32 %23)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %11, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  store i8* null, i8** %5, align 8
  br label %129

36:                                               ; preds = %19
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_20__* @mgmtGetDb(i32 %39)
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %12, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = icmp eq %struct.TYPE_20__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  store i8* null, i8** %5, align 8
  br label %129

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %54 = call i64 @mgmtMeterCreateFromMetric(%struct.TYPE_19__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.TYPE_19__* @mgmtGetMeter(i8* %65)
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %13, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %68 = icmp ne %struct.TYPE_19__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %71

71:                                               ; preds = %56, %52
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = call i64 @mgmtIsNormalMeter(%struct.TYPE_19__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %77 = icmp ne %struct.TYPE_19__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = call i32 @mgmtRemoveMeterFromMetric(%struct.TYPE_19__* %79, %struct.TYPE_19__* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %85, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @taosFreeId(i32 %101, i64 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %82
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = call i32 @mgmtMoveVgroupToHead(%struct.TYPE_20__* %112, %struct.TYPE_18__* %113)
  br label %115

115:                                              ; preds = %111, %82
  br label %128

116:                                              ; preds = %71
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_20__* @mgmtGetDbByMeterId(i32 %119)
  store %struct.TYPE_20__* %120, %struct.TYPE_20__** %12, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %122 = icmp ne %struct.TYPE_20__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %126 = call i32 @mgmtRemoveMetricFromDb(%struct.TYPE_20__* %124, %struct.TYPE_19__* %125)
  br label %127

127:                                              ; preds = %123, %116
  br label %128

128:                                              ; preds = %127, %115
  store i8* null, i8** %5, align 8
  br label %129

129:                                              ; preds = %128, %43, %27
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i64 @mgmtIsNormalMeter(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @mgmtGetVgroup(i32) #1

declare dso_local i32 @mError(i8*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @mgmtGetDb(i32) #1

declare dso_local i64 @mgmtMeterCreateFromMetric(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @mgmtGetMeter(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mgmtRemoveMeterFromMetric(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @taosFreeId(i32, i64) #1

declare dso_local i32 @mgmtMoveVgroupToHead(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @mgmtGetDbByMeterId(i32) #1

declare dso_local i32 @mgmtRemoveMetricFromDb(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
