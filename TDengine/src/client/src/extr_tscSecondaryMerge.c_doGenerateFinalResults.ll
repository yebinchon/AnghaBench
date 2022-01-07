; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doGenerateFinalResults.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_doGenerateFinalResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_30__ }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__, i64, %struct.TYPE_27__*, i32, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { i64* }
%struct.TYPE_27__ = type { i32*, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i64 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doGenerateFinalResults(%struct.TYPE_29__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %8, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %11, align 8
  %25 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %3
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %133

47:                                               ; preds = %3
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @tColModelCompact(%struct.TYPE_27__* %48, %struct.TYPE_26__* %49, i32 %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i64 %56, i64 %59, i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %12, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %69, %73
  store i64 %74, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %75

75:                                               ; preds = %116, %47
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %91, %104
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %109, %110
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i64 %88, i64 %105, i32 %114)
  br label %116

116:                                              ; preds = %82
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %14, align 8
  br label %75

119:                                              ; preds = %75
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @taosInterpoSetStartInfo(%struct.TYPE_21__* %121, i32 %124, i32 %127)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @doInterpolateResult(%struct.TYPE_29__* %129, %struct.TYPE_20__* %130, i32 %131)
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %119, %33
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @tColModelCompact(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @taosInterpoSetStartInfo(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @doInterpolateResult(%struct.TYPE_29__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
