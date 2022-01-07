; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doHandleLastRemainData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doHandleLastRemainData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_21__*, i32**, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@TSDB_INTERPO_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @doHandleLastRemainData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doHandleLastRemainData(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %6, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 5
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i1 [ false, %1 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = call %struct.TYPE_25__* @tscGetMeterMetaInfo(%struct.TYPE_24__* %34, i32 0)
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %9, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = call i64 @isAllSourcesCompleted(%struct.TYPE_26__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44, %31
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %56, %49, %44
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TSDB_INTERPO_NONE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i64 [ %76, %73 ], [ %80, %77 ]
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @taosGetRevisedEndKey(i64 %83, i32 %87, i32 %90, i32 %93, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @taosGetNumOfResultWithInterpo(i32* %96, i32* null, i32 0, i32 %99, i64 %100, i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %81
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = call i32 @doInterpolateResult(%struct.TYPE_23__* %110, %struct.TYPE_26__* %111, i32 1)
  br label %113

113:                                              ; preds = %109, %81
  br label %114

114:                                              ; preds = %113, %59
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = call i64 @isAllSourcesCompleted(%struct.TYPE_26__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123, %114
  store i32 1, i32* %2, align 4
  br label %140

129:                                              ; preds = %123, %119
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = call i64 @saveGroupResultInfo(%struct.TYPE_23__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %2, align 4
  br label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %138 = call i32 @resetEnvForNewResultset(%struct.TYPE_22__* %135, %struct.TYPE_24__* %136, %struct.TYPE_26__* %137)
  br label %139

139:                                              ; preds = %134, %56
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %133, %128
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_25__* @tscGetMeterMetaInfo(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @isAllSourcesCompleted(%struct.TYPE_26__*) #1

declare dso_local i64 @taosGetRevisedEndKey(i64, i32, i32, i32, i32) #1

declare dso_local i64 @taosGetNumOfResultWithInterpo(i32*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @doInterpolateResult(%struct.TYPE_23__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @saveGroupResultInfo(%struct.TYPE_23__*) #1

declare dso_local i32 @resetEnvForNewResultset(%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
