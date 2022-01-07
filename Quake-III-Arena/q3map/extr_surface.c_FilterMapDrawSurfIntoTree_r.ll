; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterMapDrawSurfIntoTree_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterMapDrawSurfIntoTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_7__* null, align 8
@ON_EPSILON = common dso_local global i32 0, align 4
@numDrawSurfaces = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterMapDrawSurfIntoTree_r(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLANENUM_LEAF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapplanes, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %22
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ON_EPSILON, align 4
  %32 = call i32 @ClipWindingEpsilon(i32* %24, i32 %27, i32 %30, i32 %31, i32** %11, i32** %12)
  store i32 0, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %18
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %40, i64 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @FilterMapDrawSurfIntoTree_r(i32* %36, i32* %37, %struct.TYPE_8__* %42)
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %35, %18
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @FilterMapDrawSurfIntoTree_r(i32* %50, i32* %51, %struct.TYPE_8__* %56)
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %49, %46
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @FreeWinding(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %102

64:                                               ; preds = %3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %102

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %8, align 8
  br label %74

74:                                               ; preds = %85, %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @numDrawSurfaces, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %102

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %8, align 8
  br label %74

89:                                               ; preds = %74
  %90 = call %struct.TYPE_9__* @malloc(i32 16)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %8, align 8
  %91 = load i64, i64* @numDrawSurfaces, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %101, align 8
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %83, %69, %60
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ClipWindingEpsilon(i32*, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
