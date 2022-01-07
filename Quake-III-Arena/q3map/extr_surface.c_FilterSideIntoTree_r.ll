; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterSideIntoTree_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterSideIntoTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i64, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32 }

@PLANENUM_LEAF = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_10__* null, align 8
@ON_EPSILON = common dso_local global i32 0, align 4
@numDrawSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterSideIntoTree_r(i32* %0, %struct.TYPE_9__* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %121

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PLANENUM_LEAF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %38, i64 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = call i32 @FilterSideIntoTree_r(i32* %33, %struct.TYPE_9__* %34, i32* %35, %struct.TYPE_11__* %40)
  store i32 %41, i32* %5, align 4
  br label %121

42:                                               ; preds = %24
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, 1
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %57, i64 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = call i32 @FilterSideIntoTree_r(i32* %52, %struct.TYPE_9__* %53, i32* %54, %struct.TYPE_11__* %59)
  store i32 %60, i32* %5, align 4
  br label %121

61:                                               ; preds = %42
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapplanes, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %66
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %11, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ON_EPSILON, align 4
  %76 = call i32 @ClipWindingEpsilon(i32* %68, i32 %71, i32 %74, i32 %75, i32** %12, i32** %13)
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %82, i64 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 @FilterSideIntoTree_r(i32* %77, %struct.TYPE_9__* %78, i32* %79, %struct.TYPE_11__* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = call i32 @FilterSideIntoTree_r(i32* %86, %struct.TYPE_9__* %87, i32* %88, %struct.TYPE_11__* %93)
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @FreeWinding(i32* %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %121

100:                                              ; preds = %18
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %121

106:                                              ; preds = %100
  %107 = call %struct.TYPE_12__* @malloc(i32 16)
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %10, align 8
  %108 = load i32, i32* @numDrawSurfaces, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %118, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @FreeWinding(i32* %119)
  store i32 1, i32* %5, align 4
  br label %121

121:                                              ; preds = %106, %105, %61, %51, %32, %17
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @ClipWindingEpsilon(i32*, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
