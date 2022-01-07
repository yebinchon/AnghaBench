; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_StoreLightmap.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_StoreLightmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"storing lightmaps...\0A\00", align 1
@numDrawSurfaces = common dso_local global i32 0, align 4
@lsurfaceTest = common dso_local global i32** null, align 8
@drawSurfaces = common dso_local global %struct.TYPE_3__* null, align 8
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@lightFloats = common dso_local global float* null, align 8
@lightAmbientColor = common dso_local global i32 0, align 4
@lightBytes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VS_StoreLightmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = call i32 @_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @VS_FixLightmapEdges()
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %101, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @numDrawSurfaces, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %104

15:                                               ; preds = %11
  %16 = load i32**, i32*** @lsurfaceTest, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %101

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drawSurfaces, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %101

34:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %93, %41
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load float*, float** @lightFloats, align 8
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load i32, i32* @lightAmbientColor, align 4
  %74 = load float*, float** @lightFloats, align 8
  %75 = load i32, i32* %4, align 4
  %76 = mul nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  %79 = call i32 @VectorAdd(float* %72, i32 %73, float* %78)
  %80 = load float*, float** @lightFloats, align 8
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %80, i64 %83
  store float* %84, float** %7, align 8
  %85 = load i32*, i32** @lightBytes, align 8
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32* %89, i32** %8, align 8
  %90 = load float*, float** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @ColorToBytes(float* %90, i32* %91)
  br label %93

93:                                               ; preds = %48
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %42

96:                                               ; preds = %42
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %35

100:                                              ; preds = %35
  br label %101

101:                                              ; preds = %100, %33, %23
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %11

104:                                              ; preds = %11
  ret void
}

declare dso_local i32 @_printf(i8*) #1

declare dso_local i32 @VS_FixLightmapEdges(...) #1

declare dso_local i32 @VectorAdd(float*, i32, float*) #1

declare dso_local i32 @ColorToBytes(float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
