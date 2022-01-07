; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterMapDrawSurfIntoTree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_FilterMapDrawSurfIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_7__* null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@numDrawSurfaces = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterMapDrawSurfIntoTree(i32 %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLANENUM_LEAF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapplanes, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call float @DotProduct(i32 %23, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = fsub float %27, %30
  store float %31, float* %9, align 4
  store i32 0, i32* %11, align 4
  %32 = load float, float* %9, align 4
  %33 = load float, float* @ON_EPSILON, align 4
  %34 = fneg float %33
  %35 = fcmp oge float %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @FilterMapDrawSurfIntoTree(i32 %37, i32* %38, %struct.TYPE_8__* %43)
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %36, %17
  %48 = load float, float* %9, align 4
  %49 = load float, float* @ON_EPSILON, align 4
  %50 = fcmp ole float %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @FilterMapDrawSurfIntoTree(i32 %52, i32* %53, %struct.TYPE_8__* %58)
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %51, %47
  %63 = load i32, i32* %11, align 4
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

102:                                              ; preds = %89, %83, %69, %62
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
