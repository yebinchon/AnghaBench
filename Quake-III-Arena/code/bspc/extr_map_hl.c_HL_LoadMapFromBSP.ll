; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"-- HL_LoadMapFromBSP --\0A\00", align 1
@MAPTYPE_HALFLIFE = common dso_local global i32 0, align 4
@loadedmaptype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"loading map from %s at %d\0A\00", align 1
@hl_numclipbrushes = common dso_local global i32 0, align 4
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"creating Half-Life brushes\0A\00", align 1
@lessbrushes = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"creating minimum number of brushes\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"placing textures correctly\0A\00", align 1
@num_entities = common dso_local global i32 0, align 4
@nummapbrushes = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"worldspawn\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%5d map brushes\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%5d clip brushes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HL_LoadMapFromBSP(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 @Log_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MAPTYPE_HALFLIFE, align 4
  store i32 %12, i32* @loadedmaptype, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @HL_LoadBSPFile(i8* %16, i32 %17, i32 %18)
  store i32 0, i32* @hl_numclipbrushes, align 4
  %20 = call i32 (...) @HL_ParseEntities()
  %21 = load i32, i32* @map_mins, align 4
  %22 = load i32, i32* @map_maxs, align 4
  %23 = call i32 @ClearBounds(i32 %21, i32 %22)
  %24 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @lessbrushes, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %31

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %86, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @num_entities, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load i32, i32* @nummapbrushes, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = call i8* @ValueForKey(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %36
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %79

60:                                               ; preds = %55, %36
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = call i8* @ValueForKey(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 42
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %60
  br label %86

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @atoi(i8* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %59
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @HL_CreateMapBrushes(%struct.TYPE_4__* %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %32

89:                                               ; preds = %32
  %90 = load i32, i32* @nummapbrushes, align 4
  %91 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @hl_numclipbrushes, align 4
  %93 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  ret void
}

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @HL_LoadBSPFile(i8*, i32, i32) #1

declare dso_local i32 @HL_ParseEntities(...) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @HL_CreateMapBrushes(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
