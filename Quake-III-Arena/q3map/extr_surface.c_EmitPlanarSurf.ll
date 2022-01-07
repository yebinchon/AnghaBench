; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_EmitPlanarSurf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_EmitPlanarSurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@numDrawSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_SURFS\00", align 1
@drawSurfaces = common dso_local global %struct.TYPE_12__* null, align 8
@MST_PLANAR = common dso_local global i32 0, align 4
@numDrawVerts = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_VERTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_VERTS\00", align 1
@drawVerts = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitPlanarSurf(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i64, i64* @numDrawSurfaces, align 8
  %7 = load i64, i64* @MAX_MAP_DRAW_SURFS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @drawSurfaces, align 8
  %13 = load i64, i64* @numDrawSurfaces, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i64 %13
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load i64, i64* @numDrawSurfaces, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @numDrawSurfaces, align 8
  %17 = load i32, i32* @MST_PLANAR, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EmitShader(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* @numDrawVerts, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @VectorCopy(i32 %68, i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VectorCopy(i32 %77, i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VectorCopy(i32 %88, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @VectorCopy(i32 %99, i32 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %148, %11
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %106
  %113 = load i64, i64* @numDrawVerts, align 8
  %114 = load i64, i64* @MAX_MAP_DRAW_VERTS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @drawVerts, align 8
  %120 = load i64, i64* @numDrawVerts, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %120
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %5, align 8
  %122 = load i64, i64* @numDrawVerts, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* @numDrawVerts, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @memcpy(%struct.TYPE_13__* %124, i32* %130, i32 8)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 255, i32* %135, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 255, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 255, i32* %143, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  store i32 255, i32* %147, align 4
  br label %148

148:                                              ; preds = %118
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %106

151:                                              ; preds = %106
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = call i32 @SurfaceAsTristrip(%struct.TYPE_12__* %152)
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @EmitShader(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @SurfaceAsTristrip(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
