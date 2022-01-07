; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_TetrahedronVolume.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_TetrahedronVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, %struct.TYPE_13__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { float, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32* }

@thworld = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @TH_TetrahedronVolume(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 3), align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @abs(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %19
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %59, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 2), align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @abs(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  br label %58

46:                                               ; preds = %24
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 2), align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %46, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 3), align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @abs(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %69
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %119, %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 2), align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i64 @abs(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %102

93:                                               ; preds = %74
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 2), align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %93, %84
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112, %107, %102
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %71

122:                                              ; preds = %117, %71
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 1), align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %126
  store %struct.TYPE_13__* %127, %struct.TYPE_13__** %12, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @thworld, i32 0, i32 0), align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call float @DotProduct(i32 %133, i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load float, float* %139, align 4
  %141 = fsub float %137, %140
  %142 = fneg float %141
  store float %142, float* %9, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = call float @TH_TriangleArea(%struct.TYPE_11__* %143)
  %145 = load float, float* %9, align 4
  %146 = fmul float %144, %145
  %147 = fdiv float %146, 3.000000e+00
  store float %147, float* %8, align 4
  %148 = load float, float* %8, align 4
  ret float %148
}

declare dso_local i64 @abs(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local float @TH_TriangleArea(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
