; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_R_WindingAreaOutsideSolid.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_R_WindingAreaOutsideSolid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@dnodes = common dso_local global %struct.TYPE_11__* null, align 8
@dplanes = common dso_local global %struct.TYPE_10__* null, align 8
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_12__* null, align 8
@dleafbrushes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @VL_R_WindingAreaOutsideSolid(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %9, align 4
  br label %15

15:                                               ; preds = %100, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %101

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dnodes, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %21
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dplanes, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %26
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VectorCopy(i32 %30, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @VL_SplitWinding(i32* %38, i32* %13, %struct.TYPE_9__* %14, double 1.000000e-01)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SIDE_FRONT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %18
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %100

49:                                               ; preds = %18
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SIDE_BACK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  br label %99

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SIDE_ON, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @DotProduct(i32 %64, i32 %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %98

83:                                               ; preds = %59
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call float @VL_R_WindingAreaOutsideSolid(i32* %13, i32 %84, i32 %89)
  %91 = load float, float* %9, align 4
  %92 = fadd float %91, %90
  store float %92, float* %9, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %83, %82
  br label %99

99:                                               ; preds = %98, %53
  br label %100

100:                                              ; preds = %99, %43
  br label %15

101:                                              ; preds = %15
  %102 = load i32, i32* %6, align 4
  %103 = sub nsw i32 0, %102
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dleafs, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %11, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %127

113:                                              ; preds = %101
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** @dleafbrushes, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @VL_WindingAreaOutsideBrushes(i32* %114, i32* %119, i32 %122)
  %124 = sitofp i64 %123 to float
  %125 = load float, float* %9, align 4
  %126 = fadd float %125, %124
  store float %126, float* %9, align 4
  br label %127

127:                                              ; preds = %113, %101
  %128 = load float, float* %9, align 4
  ret float %128
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VL_SplitWinding(i32*, i32*, %struct.TYPE_9__*, double) #1

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local i64 @VL_WindingAreaOutsideBrushes(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
