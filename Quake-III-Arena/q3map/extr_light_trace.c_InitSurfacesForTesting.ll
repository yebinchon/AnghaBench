; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_InitSurfacesForTesting.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_InitSurfacesForTesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_19__* null, align 8
@dshaders = common dso_local global %struct.TYPE_21__* null, align 8
@CONTENTS_TRANSLUCENT = common dso_local global i32 0, align 4
@SURF_ALPHASHADOW = common dso_local global i32 0, align 4
@surfaceTest = common dso_local global %struct.TYPE_17__** null, align 8
@drawVerts = common dso_local global %struct.TYPE_20__* null, align 8
@MST_TRIANGLE_SOUP = common dso_local global i64 0, align 8
@MST_PLANAR = common dso_local global i64 0, align 8
@MST_PATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitSurfacesForTesting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %132, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @numDrawSurfaces, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %135

11:                                               ; preds = %7
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** @drawSurfaces, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i64 %14
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %3, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %132

26:                                               ; preds = %20, %11
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** @dshaders, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_18__* @ShaderInfoForShader(i32 %33)
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %6, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SURF_ALPHASHADOW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %132

49:                                               ; preds = %41, %26
  %50 = call %struct.TYPE_17__* @malloc(i32 16)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @surfaceTest, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %52, i64 %54
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ClearBounds(i32 %58, i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** @drawVerts, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i64 %66
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %85, %49
  %69 = load i32, i32* %2, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AddPointToBounds(i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 1
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %5, align 8
  br label %68

90:                                               ; preds = %68
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = call i32 @SphereFromBounds(i32 %93, i32 %96, i32 %99, i32* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MST_TRIANGLE_SOUP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %90
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MST_PLANAR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %90
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = call i32 @FacetsForTriangleSurface(%struct.TYPE_19__* %115, %struct.TYPE_18__* %116, %struct.TYPE_17__* %117)
  br label %131

119:                                              ; preds = %108
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MST_PATCH, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = call i32 @FacetsForPatch(%struct.TYPE_19__* %126, %struct.TYPE_18__* %127, %struct.TYPE_17__* %128)
  br label %130

130:                                              ; preds = %125, %119
  br label %131

131:                                              ; preds = %130, %114
  br label %132

132:                                              ; preds = %131, %48, %25
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %7

135:                                              ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_18__* @ShaderInfoForShader(i32) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @SphereFromBounds(i32, i32, i32, i32*) #1

declare dso_local i32 @FacetsForTriangleSurface(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @FacetsForPatch(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
