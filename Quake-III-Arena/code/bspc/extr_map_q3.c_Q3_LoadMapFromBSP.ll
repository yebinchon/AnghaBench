; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_LoadMapFromBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_LoadMapFromBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.quakefile_s = type { i32 }

@__const.Q3_LoadMapFromBSP.mins = private unnamed_addr constant %struct.TYPE_4__ { i32 -1, i32 -1, i32 -1 }, align 4
@__const.Q3_LoadMapFromBSP.maxs = private unnamed_addr constant %struct.TYPE_4__ { i32 1, i32 1, i32 1 }, align 4
@.str = private unnamed_addr constant [25 x i8] c"-- Q3_LoadMapFromBSP --\0A\00", align 1
@MAPTYPE_QUAKE3 = common dso_local global i32 0, align 4
@loadedmaptype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Loading map from %s...\0A\00", align 1
@MAX_MAPFILE_BRUSHES = common dso_local global i32 0, align 4
@brushmodelnumbers = common dso_local global i32* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@map_mins = common dso_local global i32 0, align 4
@map_maxs = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_6__* null, align 8
@mapbrushes = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_LoadMapFromBSP(%struct.quakefile_s* %0) #0 {
  %2 = alloca %struct.quakefile_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store %struct.quakefile_s* %0, %struct.quakefile_s** %2, align 8
  %6 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_4__* @__const.Q3_LoadMapFromBSP.mins to i8*), i64 12, i1 false)
  %7 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @__const.Q3_LoadMapFromBSP.maxs to i8*), i64 12, i1 false)
  %8 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @MAPTYPE_QUAKE3, align 4
  store i32 %9, i32* @loadedmaptype, align 4
  %10 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %11 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %15 = call i32 @Q3_LoadBSPFile(%struct.quakefile_s* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX_MAPFILE_BRUSHES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** @brushmodelnumbers, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %16

28:                                               ; preds = %16
  store i64 0, i64* @nummapbrushsides, align 8
  store i32 0, i32* @num_entities, align 4
  %29 = call i32 (...) @Q3_ParseEntities()
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %37, %28
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @num_entities, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @Q3_ParseBSPEntity(i32 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %30

40:                                               ; preds = %30
  %41 = call i32 (...) @AAS_CreateCurveBrushes()
  %42 = load i32, i32* @map_mins, align 4
  %43 = load i32, i32* @map_maxs, align 4
  %44 = call i32 @ClearBounds(i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %80, %40
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entities, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapbrushes, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %80

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapbrushes, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @map_mins, align 4
  %69 = load i32, i32* @map_maxs, align 4
  %70 = call i32 @AddPointToBounds(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mapbrushes, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @map_mins, align 4
  %78 = load i32, i32* @map_maxs, align 4
  %79 = call i32 @AddPointToBounds(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %61, %60
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %45

83:                                               ; preds = %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Log_Print(i8*, ...) #2

declare dso_local i32 @Q3_LoadBSPFile(%struct.quakefile_s*) #2

declare dso_local i32 @Q3_ParseEntities(...) #2

declare dso_local i32 @Q3_ParseBSPEntity(i32) #2

declare dso_local i32 @AAS_CreateCurveBrushes(...) #2

declare dso_local i32 @ClearBounds(i32, i32) #2

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
