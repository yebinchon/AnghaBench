; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_SurfaceForShader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_SurfaceForShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }

@lastSurface = common dso_local global %struct.TYPE_8__* null, align 8
@surfaces = common dso_local global %struct.TYPE_8__* null, align 8
@numsurfaces = common dso_local global i32 0, align 4
@maxsurfaces = common dso_local global i32 0, align 4
@GROW_SURFACES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SurfaceForShader(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %4, align 8
  br label %108

31:                                               ; preds = %23, %17, %11, %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @surfaces, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** @lastSurface, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %58, %31
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @numsurfaces, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %4, align 8
  br label %108

57:                                               ; preds = %49, %43, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 1
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** @lastSurface, align 8
  br label %33

63:                                               ; preds = %33
  %64 = load i32, i32* @numsurfaces, align 4
  %65 = load i32, i32* @maxsurfaces, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i64, i64* @GROW_SURFACES, align 8
  %69 = load i32, i32* @maxsurfaces, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @maxsurfaces, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @surfaces, align 8
  %74 = load i32, i32* @maxsurfaces, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 16
  %77 = trunc i64 %76 to i32
  %78 = call %struct.TYPE_8__* @realloc(%struct.TYPE_8__* %73, i32 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** @surfaces, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @surfaces, align 8
  %80 = load i32, i32* @numsurfaces, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 1
  %84 = load i32, i32* @maxsurfaces, align 4
  %85 = load i32, i32* @numsurfaces, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(%struct.TYPE_8__* %83, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %67, %63
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @surfaces, align 8
  %94 = load i32, i32* @numsurfaces, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @numsurfaces, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %96
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** @lastSurface, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lastSurface, align 8
  store %struct.TYPE_8__* %107, %struct.TYPE_8__** %4, align 8
  br label %108

108:                                              ; preds = %92, %55, %29
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %109
}

declare dso_local %struct.TYPE_8__* @realloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
