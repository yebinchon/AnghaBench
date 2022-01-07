; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_ResetMapLoading.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map.c_ResetMapLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@nummapbrushsides = common dso_local global i32 0, align 4
@brushsides = common dso_local global %struct.TYPE_12__* null, align 8
@nummapbrushes = common dso_local global i64 0, align 8
@mapbrushes = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i32 0, align 4
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i32 0, align 4
@side_brushtextures = common dso_local global %struct.TYPE_12__* null, align 8
@nummapplanes = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_MAPFILE_PLANES = common dso_local global i32 0, align 4
@planehash = common dso_local global %struct.TYPE_12__* null, align 8
@PLANE_HASHES = common dso_local global i32 0, align 4
@map_texinfo = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_MAPFILE_TEXINFO = common dso_local global i32 0, align 4
@map_numtexinfo = common dso_local global i64 0, align 8
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@c_boxbevels = common dso_local global i64 0, align 8
@c_edgebevels = common dso_local global i64 0, align 8
@c_areaportals = common dso_local global i64 0, align 8
@c_clipbrushes = common dso_local global i64 0, align 8
@c_writtenbrushes = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_MAP_ENTITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetMapLoading() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = call i32 (...) @Q2_ResetMapLoading()
  %5 = call i32 (...) @Sin_ResetMapLoading()
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %27, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @nummapbrushsides, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @brushsides, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @brushsides, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @FreeWinding(i64 %24)
  br label %26

26:                                               ; preds = %18, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %6

30:                                               ; preds = %6
  store i64 0, i64* @nummapbrushes, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mapbrushes, align 8
  %32 = load i32, i32* @MAX_MAPFILE_BRUSHES, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.TYPE_12__* %31, i32 0, i32 %35)
  store i32 0, i32* @nummapbrushsides, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @brushsides, align 8
  %38 = load i32, i32* @MAX_MAPFILE_BRUSHSIDES, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(%struct.TYPE_12__* %37, i32 0, i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @side_brushtextures, align 8
  %44 = load i32, i32* @MAX_MAPFILE_BRUSHSIDES, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(%struct.TYPE_12__* %43, i32 0, i32 %47)
  store i64 0, i64* @nummapplanes, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mapplanes, align 8
  %50 = load i32, i32* @MAX_MAPFILE_PLANES, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.TYPE_12__* %49, i32 0, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @planehash, align 8
  %56 = load i32, i32* @PLANE_HASHES, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(%struct.TYPE_12__* %55, i32 0, i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @map_texinfo, align 8
  %62 = load i32, i32* @MAX_MAPFILE_TEXINFO, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(%struct.TYPE_12__* %61, i32 0, i32 %65)
  store i64 0, i64* @map_numtexinfo, align 8
  %67 = load i32, i32* @map_mins, align 4
  %68 = call i32 @VectorClear(i32 %67)
  %69 = load i32, i32* @map_maxs, align 4
  %70 = call i32 @VectorClear(i32 %69)
  store i64 0, i64* @c_boxbevels, align 8
  store i64 0, i64* @c_edgebevels, align 8
  store i64 0, i64* @c_areaportals, align 8
  store i64 0, i64* @c_clipbrushes, align 8
  store i64 0, i64* @c_writtenbrushes, align 8
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %102, %30
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @num_entities, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %2, align 8
  br label %82

82:                                               ; preds = %99, %75
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = icmp ne %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %3, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 @FreeMemory(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i32 @FreeMemory(%struct.TYPE_11__* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = call i32 @FreeMemory(%struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %85
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %2, align 8
  br label %82

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %71

105:                                              ; preds = %71
  store i32 0, i32* @num_entities, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %107 = load i32, i32* @MAX_MAP_ENTITIES, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(%struct.TYPE_12__* %106, i32 0, i32 %110)
  ret void
}

declare dso_local i32 @Q2_ResetMapLoading(...) #1

declare dso_local i32 @Sin_ResetMapLoading(...) #1

declare dso_local i32 @FreeWinding(i64) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
