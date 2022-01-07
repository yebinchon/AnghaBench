; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscBuildMetricTagSqlFunctionResult.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscBuildMetricTagSqlFunctionResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_26__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_27__* }

@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"not support operations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @tscBuildMetricTagSqlFunctionResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscBuildMetricTagSqlFunctionResult(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %3, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = call %struct.TYPE_19__* @tscGetMeterMetaInfo(%struct.TYPE_26__* %17, i32 0)
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %5, align 8
  store i64 1, i64* %6, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %22 = call i64 @tscGetResRowLength(%struct.TYPE_26__* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @tscInitResObjForLocalQuery(%struct.TYPE_24__* %23, i64 %24, i64 %25)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %85, %1
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %32
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call %struct.TYPE_25__* @tscSqlExprGet(%struct.TYPE_26__* %40, i64 %41)
  store %struct.TYPE_25__* %42, %struct.TYPE_25__** %11, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %76

48:                                               ; preds = %39
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call %struct.TYPE_22__* @tscFieldInfoGetField(%struct.TYPE_26__* %55, i64 %56)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %12, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @tscFieldInfoGetOffset(%struct.TYPE_26__* %61, i64 %62)
  %64 = load i64, i64* %6, align 8
  %65 = mul nsw i64 %63, %64
  %66 = add nsw i64 %60, %65
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = mul nsw i64 %69, %70
  %72 = add nsw i64 %66, %71
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = call i32 @memcpy(i64 %72, i32* %74, i32 4)
  br label %78

76:                                               ; preds = %48, %39
  %77 = call i32 @tscError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %79

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %76
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %32

82:                                               ; preds = %32
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %27

88:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct.TYPE_19__* @tscGetMeterMetaInfo(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @tscGetResRowLength(%struct.TYPE_26__*) #1

declare dso_local i32 @tscInitResObjForLocalQuery(%struct.TYPE_24__*, i64, i64) #1

declare dso_local %struct.TYPE_25__* @tscSqlExprGet(%struct.TYPE_26__*, i64) #1

declare dso_local %struct.TYPE_22__* @tscFieldInfoGetField(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @tscFieldInfoGetOffset(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @tscError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
