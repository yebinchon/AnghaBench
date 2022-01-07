; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [25 x i8] c"-- Q2_LoadMapFromBSP --\0A\00", align 1
@MAPTYPE_QUAKE2 = common dso_local global i32 0, align 4
@loadedmaptype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Loading map from %s...\0A\00", align 1
@MAX_MAPFILE_BRUSHES = common dso_local global i32 0, align 4
@brushmodelnumbers = common dso_local global i32* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_4__* null, align 8
@mapbrushes = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_LoadMapFromBSP(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @MAPTYPE_QUAKE2, align 4
  store i32 %9, i32* @loadedmaptype, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @Q2_LoadBSPFile(i8* %12, i32 %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %25, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MAX_MAPFILE_BRUSHES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** @brushmodelnumbers, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %16

28:                                               ; preds = %16
  store i64 0, i64* @nummapbrushsides, align 8
  store i32 0, i32* @num_entities, align 4
  %29 = call i32 (...) @Q2_ParseEntities()
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %37, %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @num_entities, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @Q2_ParseBSPEntity(i32 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i32, i32* @map_mins, align 4
  %42 = load i32, i32* @map_maxs, align 4
  %43 = call i32 @ClearBounds(i32 %41, i32 %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %81, %40
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entities, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 4096
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %81

62:                                               ; preds = %51
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @map_mins, align 4
  %70 = load i32, i32* @map_maxs, align 4
  %71 = call i32 @AddPointToBounds(i32* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mapbrushes, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @map_mins, align 4
  %79 = load i32, i32* @map_maxs, align 4
  %80 = call i32 @AddPointToBounds(i32* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %62, %61
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %44

84:                                               ; preds = %44
  %85 = call i32 (...) @PrintMapInfo()
  %86 = call i32 (...) @Q2_CreateMapTexinfo()
  ret void
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @Q2_LoadBSPFile(i8*, i32, i32) #1

declare dso_local i32 @Q2_ParseEntities(...) #1

declare dso_local i32 @Q2_ParseBSPEntity(i32) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32*, i32, i32) #1

declare dso_local i32 @PrintMapInfo(...) #1

declare dso_local i32 @Q2_CreateMapTexinfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
