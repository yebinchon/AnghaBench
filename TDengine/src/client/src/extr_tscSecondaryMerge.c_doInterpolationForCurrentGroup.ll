; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doInterpolationForCurrentGroup.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doInterpolationForCurrentGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_22__*, i64, %struct.TYPE_23__*, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@TSDB_INTERPO_NONE = common dso_local global i64 0, align 8
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @doInterpolationForCurrentGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doInterpolationForCurrentGroup(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %5, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %6, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 3
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %25 = call %struct.TYPE_27__* @tscGetMeterMetaInfo(%struct.TYPE_26__* %24, i32 0)
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %8, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = call i64 @taosHasRemainsDataForInterpolation(%struct.TYPE_19__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TSDB_INTERPO_NONE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %10, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @TSDB_KEYSIZE, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %47, %54
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = call i64 @taosNumOfRemainPoints(%struct.TYPE_19__* %58)
  store i64 %59, i64* %12, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @taosGetRevisedEndKey(i32 %60, i32 %64, i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @taosGetNumOfResultWithInterpo(%struct.TYPE_19__* %73, i32* %77, i64 %78, i32 %81, i32 %82, i32 %87)
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %14, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %34
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %94 = call i32 @doInterpolateResult(%struct.TYPE_25__* %92, %struct.TYPE_28__* %93, i32 0)
  br label %95

95:                                               ; preds = %91, %34
  store i32 1, i32* %2, align 4
  br label %97

96:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %95
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_27__* @tscGetMeterMetaInfo(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @taosHasRemainsDataForInterpolation(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @taosNumOfRemainPoints(%struct.TYPE_19__*) #1

declare dso_local i32 @taosGetRevisedEndKey(i32, i32, i32, i32, i32) #1

declare dso_local i64 @taosGetNumOfResultWithInterpo(%struct.TYPE_19__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @doInterpolateResult(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
