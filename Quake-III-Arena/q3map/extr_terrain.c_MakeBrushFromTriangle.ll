; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_MakeBrushFromTriangle.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_terrain.c_MakeBrushFromTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i64, i32, i64 }

@MIN_WORLD_COORD = common dso_local global i64 0, align 8
@buildBrush = common dso_local global %struct.TYPE_4__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@num_entities = common dso_local global i64 0, align 8
@entitySourceBrushes = common dso_local global i32 0, align 4
@CONTENTS_DETAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeBrushFromTriangle(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @MIN_WORLD_COORD, align 8
  %21 = add nsw i64 %20, 10
  %22 = call i32 @VectorSet(i32* %13, i32 %16, i32 %19, i64 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @MIN_WORLD_COORD, align 8
  %31 = add nsw i64 %30, 10
  %32 = call i32 @VectorSet(i32* %23, i32 %26, i32 %29, i64 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @MIN_WORLD_COORD, align 8
  %41 = add nsw i64 %40, 10
  %42 = call i32 @VectorSet(i32* %33, i32 %36, i32 %39, i64 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @qfalse, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @AddBrushSide(i32* %48, i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @AddBrushSide(i32* %53, i32* %54, i32* %55, i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @AddBrushSide(i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @AddBrushSide(i32* %63, i32* %64, i32* %65, i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @AddBrushSide(i32* %68, i32* %69, i32* %70, i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 -1, i32* %80, align 4
  %81 = load i64, i64* @num_entities, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @entitySourceBrushes, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %89 = call i32 @RemoveDuplicateBrushPlanes(%struct.TYPE_4__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %4
  br label %104

92:                                               ; preds = %4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %94 = call i32 @SetBrushContents(%struct.TYPE_4__* %93)
  %95 = load i32, i32* @CONTENTS_DETAIL, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buildBrush, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = call i32* (...) @FinishBrush()
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %91, %103, %92
  ret void
}

declare dso_local i32 @VectorSet(i32*, i32, i32, i64) #1

declare dso_local i32 @AddBrushSide(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RemoveDuplicateBrushPlanes(%struct.TYPE_4__*) #1

declare dso_local i32 @SetBrushContents(%struct.TYPE_4__*) #1

declare dso_local i32* @FinishBrush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
