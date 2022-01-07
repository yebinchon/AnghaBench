; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_CreateBrushesFromBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_CreateBrushesFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { i32*, i32* }

@hl_dnodes = common dso_local global %struct.TYPE_9__* null, align 8
@hl_dmodels = common dso_local global %struct.TYPE_11__* null, align 8
@map_mins = common dso_local global i32* null, align 8
@map_maxs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"brush size: %5.0f,%5.0f,%5.0f to %5.0f,%5.0f,%5.0f\0A\00", align 1
@hl_numbrushes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @HL_CreateBrushesFromBSP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @hl_dnodes, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hl_dmodels, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i64 %17
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @VectorCopy(i32* %21, i32* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @VectorCopy(i32* %26, i32* %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %1
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 8
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** @map_mins, align 8
  %51 = load i32*, i32** @map_maxs, align 8
  %52 = call i32 @AddPointToBounds(i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** @map_mins, align 8
  %55 = load i32*, i32** @map_maxs, align 8
  %56 = call i32 @AddPointToBounds(i32* %53, i32* %54, i32* %55)
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %48
  %60 = load i32*, i32** @map_mins, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @map_mins, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @map_mins, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @map_maxs, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @map_maxs, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @map_maxs, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @Log_Print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %59, %48
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call %struct.TYPE_10__* @BrushFromBounds(i32* %80, i32* %81)
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @VectorCopy(i32* %83, i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @VectorCopy(i32* %88, i32* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hl_dmodels, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = call %struct.TYPE_10__* @HL_CreateBrushes_r(%struct.TYPE_10__* %93, i64 %101)
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %3, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %103
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AddPointToBounds(i32*, i32*, i32*) #1

declare dso_local i32 @Log_Print(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @BrushFromBounds(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @HL_CreateBrushes_r(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
